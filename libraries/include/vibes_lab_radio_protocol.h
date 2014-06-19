/*! \file vibes_lab_radio_protocol.h
 * \brief Provides the public interface for using the radio to transmit data.
 *
 * This library handles the various necessary internal steps when using the
 * Wixel's radio to transmit or receive data. This includes configuring the
 * radio SFRs, using DMA to transfer between RFD and the packet buffer in XDATA
 * memory, and implementing an ACK/NAK handshake feature to ensure robustness.
 * A full instruction in methodology is given below, however, the interface
 * is self-explanatory.
 *
 * This library creates a one way data pipe between a transmitter (master) and
 * receiver (slave) Wixel. #TRANSMITTER or #RECEIVER is appropriately passed to
 * radioInit() by higher level code to set up the Wixel in master or slave mode.
 * See \ref master or \ref slave for a quick start guide, or continue reading
 * for more details.
 *
 * \section Packet Format
 *
 * Packets sent and received on the radio should be formatted as such
 *
 * - packet[0] is the length byte
 *    - This is the number of data bytes (not including the length byte) the
 *      packet contains
 *    - In tx, this is set by the user to indicate how many data bytes the
 *      packet has been populated with
 *    - In rx, this can be read by the user to determine how many bytes of
 *      data the packet holds
 * - packet[1] is the start of the data
 *    - The user will write data at this offset up to packet[n], where n
 *      is the number of bytes of data (the value packet[0] is set to)
 *
 * \section por Establishing a Radio Link and the POR Sequence
 *
 * The Wixel will perform a power on reset (POR) after any call to radioInit().
 *
 * During the POR, the Wixel's radio SFRs are configured and the radio is
 * calibrated before initial use. radioInit() will return when this is complete.
 * If radioInit() is passed #RECEIVER as its parameter, it will start listening
 * for packets right away.
 *
 * \section handshake High Level Errors and the ACK/NAK Handshake
 *
 * An ACK/NAK handshake is implemented to provide error recovery in the case of
 * over the air data corruption and/or interference. These steps are followed
 * to allow the slave to respond to a master's transmit with an
 * ACKnowledge or a Not-AcKnowledge.
 *
 * -# In the master, a CRC checksum is calculated over the entire field of data
 *    which is appended to the packet
 * -# The slave performs the same checksum over the received data and compares
 *    it to the value calculated by the master
 *    -# If the values do not match, slave responds NAK
 *       - Data is retransmitted from the master, and operational flow returns
 *         to bullet 1
 *    -# If the values match, slave responds ACK
 *       - Data has been sent successfully, business continues as usual
 * -# If the master does not receive a response, it is assumed this is because
 *    the slave's response was interfered with
 *       - The packet it resent. See below for information on how the slave
 *         handles packets which are sent twice
 *
 * Each packet has a #packetID which is appended to the data automatically
 * by this library. The packetID is a number 0-255 inclusive which is
 * incremented by the master each time it sends a <i>unique</i> packet. If a
 * data packet is retransmitted for any reason, each time the same packet is
 * retransmitted, it will contain the same #packetID. The slave checks this
 * #packetID, and if it is the same as the last packet the slave received, the
 * slave will discard it.
 *
 * This is useful as the situation often arises where the slave will ACK a
 * packet, but the master will miss this ACK. When this happens, the default
 * behavior of the master is to resend the last data packet (ie. the master
 * assumes the muddled response was a NAK). The slave checks the packetID and
 * realizes that it is a retransmission. The slave will respond ACK again, but
 * it will not save the duplicate packet in the reception packet buffer.
 * Instead, the next unique data packet the master transmits will overwrite the
 * data from this duplicate packet.
 *
 * \section master Master
 *
 * Below is an example of how to use this library to transmit data over the
 * radio. Following the code are key notes to be aware of.
 *
 * \code
 * #include<vibes_lab_radio_protocol.h>
 *
 * // function prototype. Called by main (below)
 * void transmitData(uint8*, uint8);
 *
 * void main()
 * {
 *    uint8 data[]; // some data to transmit over the radio
 *    uint8 dataSize; // the number of bytes of data to be sent
 *
 *    radioInit(TRANSMITTER); // Initialize this library
 *
 *    while(1)
 *    {
 *       // collect data to be transmitted, set dataSize appropriately (omitted)
 *
 *       transmitData(data, dataSize); // this function handles sending the data
 *    }
 * }
 *
 * // Transmit data of length dataSize
 * // Data is an array of bytes to be sent
 * // dataSize must be between 1 and RADIO_PAYLOAD_SIZE, inclusive
 * void transmitData(uint8* data, uint8 dataSize)
 * {
 *    uint8 XDATA* packet = radioTxCurrentPacket();
 *    uint8 i;
 *
 *    if(packet) // Check there was a free packet to populate
 *    {
 *       for(i = 1; i <= dataSize; i++) // start data at offset 1
 *       {
 *          packet[i] = data[i]; // copy data to transmission packet buffer
 *       }
 *       packet[0] = dataSize; // Set the length byte of the packet
 *    }
 *
 *
 *    if(!radioTxAvailable())
 *    {
 *       // The radio is currently transmitting a packet, wait for it to finish
 *       NOP; // or any other operations to be performed while waiting
 *    }
 *
 *    radioTxSendPacket(); // send it already, geez
 *
 *    // can come before or after radioTxSendPacket(), as long as it precedes
 *    // the next call to radioTxCurrentPacket()
 *    radioTxDoneWithPacket();
 * }
 * \endcode
 *
 * It is important to note that packet[0] must contain the length byte, and
 * that data starts at packet[1].
 *
 * The length byte is read by the radio and DMA of both the transmitter and
 * receiver to determine the number of byte transmissions about to occur. If it
 * is not set correctly, strange and unexplainable errors can occur. The length
 * byte must be a value between 1 and RADIO_PAYLOAD_SIZE, inclusive.
 *
 * It is recommended, for greater efficiency, that the user increment a counter
 * variable every time they have filled a packet with data, and check that
 * variable in their main loop to determine how many calls to
 * radioTxSendPacket() should be initiated, as in the following example.
 *
 * \code
 * // inside main loop
 * while(1)
 * {
 *    // some code omitted
 *
 *    // transmissionsReady is incremented elsewhere whenever a packet has been
 *    // filled with data and is ready to be sent
 *    while(transmissionsReady > 0)
 *    {
 *       if(radioTxAvailable())
 *       {
 *          radioTxSendPacket();
 *       }
 *    }
 * }
 * \endcode
 *
 *
 * \section slave Slave
 *
 * Below is an example of how to use this library to receive data over the
 * radio. Following the code are key notes to be aware of.
 *
 * \code
 * #include<vibes_lab_radio_protocol.h>
 *
 * // function prototype. Called by main (below)
 * void getData(uint8*);
 *
 * void main()
 * {
 *    while(1)
 *    {
 *       // some code omitted
 *
 *       uint8 data[]; // a local variable where received data will be saved
 *
 *       if(radioRxCurrentPacket()) // Check for a received packet
 *       {
 *          getData(data); // save the data to local memory
 *       }
 *    }
 * }
 *
 * void getData(uint8* ptrData)
 * {
 *    uint8 XDATA* packet = radioRxCurrentPacket(); // Get the packet
 *    uint8 i;
 *
 *    for(i = 1; i <=  packet[0]; i++) // data starts at offset 1
 *    {
 *       ptrData[i] = packet[i]; // save data in main's local variable
 *    }
 *
 *    radioRxDoneWithPacket(); // Release packet back to the reception buffer
 * }
 * \endcode
 *
 * Receiving packets is fundamentally different from sending them because
 * transmission is an active task initiated by the user, whereas reception
 * is a passive task expected to happen automatically.
 *
 * It is up to the user to determine an appropriate time period between checks
 * for newly received data. Note that if these checks are not performed often
 * enough, the receiver's reception packet buffer will overflow, and data
 * transmissions will be lost (the newer received packets will overwrite older,
 * unprocessed packets in the reception buffer)
 *
 * Note that instead of saving the data from packet into local memory space,
 * you can simply use the data stored in the packet itself. Calling
 * radioRxDoneWithPacket() should then be saved until higher level code has
 * finished processing the data from the packet.
 *
 * \section errors Internal Error Handling
 *
 * Data corruption errors are covered in \ref handshake. The errors which are
 * accounted for there are considered "High Level Errors", as they arise because
 * of the way the radio protocol has been written. The errors discussed below
 * are considered "Low Level Errors", as they arise because of the way the
 * Wixel's hardware supports radio transmissions.
 *
 * There are 3 "Low Level Errors" which can occur. These are
 *
 * - Transmission Underflow
 * - Receptino Overflow
 * - Reception Timeout
 *
 * Each of these errors are explained in detail below.
 *
 * &nbsp;&nbsp;&nbsp;&nbsp;<i>Transmission Underflow</i>
 *
 * This error occurs when the length byte of the packet being sent is larger
 * than the amount of data actually transferred to the RFD register. This will
 * not occur if the user incorrectly sets the length byte too high, as the
 * radio will simply transmit the valid data, followed by invalid data until the
 * length byte number of bytes have been sent. This error will only occur if
 * the DMA failed to transfer an adequate number of bytes to the RFD register.
 *
 * In order to recover from this error, the transmission is simply repeated.
 *
 * We never expect this to happen though, because we are using the DMA to
 * transfer data to the RFD. If this error does occur, it implies an error
 * in the way we have set up the DMA. This library has been tested to ensure
 * that the DMA is configured correctly.
 *
 * &nbsp;&nbsp;&nbsp;&nbsp;<i>Rx Overflow</i>
 *
 * This error occurs when new data is written to the RFD register before it
 * has been read. This error also cannot be instantiated by the user; it can
 * only occur if the DMA fails to transfer the contents of the RFD register
 * into XDATA memory before the next byte is received. If this error occurs, all
 * data from the packet which caused the overflow is unrecoverable.
 *
 * In order to recover from this error, reception is restarted, and the next
 * packet received will overwrite the partial data saved from the packet which
 * caused the overflow event.
 *
 * We never expect this to happen though, because we are using the DMA to
 * transfer data from the RFD. If this error does occur, it implies an error
 * in the way we have set up the DMA. This library has been tested to ensure
 * that the DMA is configured correctly.
 *
 * &nbsp;&nbsp;&nbsp;&nbsp;<i>Rx Timeout</i>
 *
 * This error occurs when the radio is started in rx mode and no transmission
 * is detected before the set timeout period is reached. This does not
 * necessarily signal a bad condition; f.e. the slave is constantly listening
 * for packets, and if no packets are being sent by the master, it is inevitable
 * a timeout will occur.
 *
 * We use this feature in the slave to schedule radio calibrations during radio
 * down time (ie. when data packets are not being sent). The default timeout
 * period is 50ms, so this ensures slave's radio will be calibrated atleast once
 * every 50ms.
 *
 * See \ref handshake for information on the steps the master takes if it times
 * out while waiting for a response from the slave.
 *
 * \section calibration Calibration
 *
 * Radio calibration must be performed often in both the master and slave,
 * as the radio is sensitive to changes in environment such as temperature.
 * It is suggested to perform calibration often, however, no time period is
 * suggested by the CC2511f32's user manual.
 *
 * Calibration in the slave is performed every time just before starting the
 * Wixel in reception mode. After each packet reception, the slave restarts in
 * reception mode, so slave calibration frequency is at most the same as
 * the packet transmission frequency. The slave's default timeout period is
 * 50ms, and calibration is performed after each timeout before beginning in
 * reception mode again, so the slave's calibration frequency is at least 20Hz.
 * See the Rx Timeout section of \ref errors for more information on this
 * second detail.
 *
 * Calibration is performed in the master before every packet transmission.
 * This ensures that the radio is properly calibrated each time a packet is
 * sent.
 */

#ifndef _VIBES_LAB_RADIO_TX_H_
#define _VIBES_LAB_RADIO_TX_H_


/* Dependencies **************************************************************/
#include <cc2511_types.h>
#include <cc2511_map.h>


/* Library Initialization Definitions ****************************************/
//! \name Library Initialization Definitions
///@{

/*! \brief Pass as parameter to radioInit() if this is the master (tx) Wixel */
#define TRANSMITTER TRUE

/*! \brief Pass as parameter to radioInit() if this is the slave (rx) Wixel */
#define RECEIVER FALSE

///@}


/* Packet Definitions ********************************************************/
//! \name Packet Definitions
///@{

/*! \brief Each packet can contain at most 150 bytes of payload. This is chosen
 * to be in the middle of the the range of 0-255 imposed by the cc2511f32.
 * */
#define RADIO_PAYLOAD_SIZE 150

/*! \brief This is the number of packets the radio can hold in XDATA memory.
 * For the master, this corresponds to the number of unsent data packets that
 * can be held in memory. For the slave, this is the number of unprocessed
 * data packets that can be held in memory.
 */
#define PACKET_BUFFER_SIZE 20
///@}

/* Global Flags **************************************************************/
//! \name Global Flags
///@{
/*! \brief This flag is set after a successful transmission or reception. It
 * should be read and cleared by higher level code. Note that if an attempt
 * fails, but the flag is not read before a following attempt succeeds, reading
 * the flag will return true; there will be no memory of the previously failed
 * attempt. Therefore, this flag should not be used to indicate whether
 * transmissions/receptions are failing, but it is a useful indicator as to if,
 * on the whole, radio transmissions/receptions are succeeding.
 */
extern volatile BIT sendReceiveComplete;

///@}

/* Global Radio Definitions **************************************************/
//! \name Global Radio Defintions
///@{
/*! \brief Defines the frequency channel to use. Valid values are from 0 to 255.
 * To avoid interference, the channel numbers of different Wixel pairs operating
 * within range of each other should be at least 2 channels apart.  (This is a
 * Wixel App parameter; the user can set it using the Wixel Configuration
 * Utility.)
 */
extern int32 CODE param_radio_channel;

///@}

/* Library Initializer *******************************************************/
//! \name Library Initializer
///@{
/*! \brief Initializes the library in either master or slave mode.
 *
 *  \param selectTxRx should be either #TRANSMITTER or #RECEIVER
 *  \sa \ref por
 */
void radioInit(BIT selectTxRx);

///@}

/* Transmission Functions ****************************************************/
//! \name Transmission Functions
///@{
/*! \brief Returns whether the radio is available to send a packet.
 *
 * This function will return false if the Wixel is currently sending a packet,
 * otherwise it will return true.
 *
 * \return whether the radio is available to send a packet
 * \sa \ref master for an example of how to use this library to transmit data
 */
BIT radioTxAvailable(void);

/*!\brief Returns a pointer to the next available packet from the transmission
 *        packet buffer available to be populated.
 *
 * This function will return 0 if there are no free packets in the tx buffer.
 *
 * \return a pointer to the current packet, or 0 if no packet is available
 * \sa \ref master for an example of how to use this library to transmit data
 */
uint8 XDATA * radioTxCurrentPacket(void);

/*! \brief Sends a radio packet.
 *
 * Calling this function sends the oldest packet from the transmission packet
 * buffer.
 *
 * \sa \ref master for an example of how to use this library to transmit data
 */
void radioTxSendPacket(void);

/*! \brief Releases the current packet back to the transmission packet buffer.
 *
 * This functions should be called every time after higher level code has
 * finished populating a packet with data.
 *
 * A call to this function should precede every call to radioTxCurrentPacket(),
 * except for the first, in which case it is optional.
 *
 * \sa \ref master for an example of how to use this library to transmit data
 */
void radioTxDoneWithPacket(void);

///@}

/* Reception Functions *******************************************************/
//! \name Reception Functions
///@{
/*! \brief Returns a pointer to the next packet from the reception packet buffer
 *         which contains unprocessed data.
 *
 * This function will return 0 if there are no unprocessed packets in the
 * reception buffer.
 *
 * \return a pointer to the oldest unproccessed data packet, or 0 if there are
 *         no unprocessed data packets in the rx buffer.
 * \sa \ref slave for an example of how to use this library to receive data
 */
uint8 XDATA * radioRxCurrentPacket(void);

/*! \brief Checks if the rx buffer has been filled with unprocessed packets
 *         up to the specified amount
 *
 * This method is useful when using a buffered reception protocol. This function
 * can be used to prevent processing data until a specified backlog of packets
 * has been received.
 *
 * \param threshold number of unprocessed packets in rx buffer to check for
 * \return true if rx buffer has atleast threshold unprocessed packets,
 *         otherwise false
 * \sa \ref slave for an example of how to use this library to receive data
 */
BIT radioRxCheckRxBuffer(uint8 threshold);

/*! \brief Releases the current packet back to the rx packet buffer.
 *
 * This releases a lock on the memory space the packet occupied and allows it
 * to be used to store a newer packet when it is received. This should be called
 * every time after higher level code has processed a packet.
 *
 * A call to this function must precede every call to radioRxCurrentPacket(),
 * except for the first, in which case it is optional.
 *
 * \sa \ref slave for an example of how to use this library to receive data
 */
void radioRxDoneWithPacket(void);

///@}

/*! \brief The radio's Interrupt Service Routine (ISR).
 *
 * Used to control behavior of radio after a successful transmission/reception,
 * including slave ACK/NAK response, and handles both "high level" and "low
 * level" errors which can occur when using this library.
 *
 * \sa \ref handshake, \ref errors
 */
ISR(RF, 2);

#endif
