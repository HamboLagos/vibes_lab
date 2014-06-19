/*! \file vibes_lab_radio_protocol.c
 * \brief Source code for the radio protocol developed for the vibes lab.
 *
 * This source code implements the internal steps neccesarry to take in order
 * to send data over the radio. See vibes_lab_radio_protocol.h for details on
 * how to use this library, or the CC2511f32 data sheet for more information on
 * what is done here.
 */

/* Dependencies **************************************************************/

#include <vibes_lab_radio_protocol.h>
#include <dma.h>

/* Prototypes ****************************************************************/

static void radioRxReceievePacket(uint8);
static void radioTxShortPacket(uint8);
static void radioRxShortPacket(uint8);

/* Global Radio Definitions *************************************************/
//! \name Global Radio Definitions
///@{
/*! \brief Specifies the maximum allowable size of a packet.
 * This includes the length byte, payload, and packetID. For Rx, we have to
 * add 2 bytes for the RSSI/CRC/LQI data appended to the packet.
 */
#define MAX_PACKET_SIZE (1 + RADIO_PAYLOAD_SIZE + 1 + 2)

int32 CODE param_radio_channel = 128;

///@}

/* Global Flags **************************************************************/
//! \name Global Flags
///@{
/*! \brief State variable of Wixel.
 * Is set depending on parameter passed to radioInit() by higher code, and
 * restricts the types of actions performable based on operating mode specified
 * (ie. transmitter or receiver).
 */
static volatile BIT isTransmitter;

volatile BIT sendReceiveComplete;

///@}

/* Transmission Specific Flag ***********************************************************/
//! \name Transmission Specific Flag
///@{
/*! \brief This flag is set when the master begins a transmission, and is
 * cleared when it has received an ACK from the slave. If the slave responds
 * NAK, this bit will remain set until the slave ACKs a subsequent
 * re-transmission of the data.
 */
static volatile BIT txBusy;

///@}

/* Transmission/Reception Packet Variables *********************************************/
//! \name Transmission/Reception Packet Variables
///@{
/*! \brief Defines the XDATA memory space used for the packet buffer. In the
 * master, this is where packets are stored before being sent. In the slave,
 * this is where received data packets are saved.
 */
static volatile uint8 XDATA packetBuffer[PACKET_BUFFER_SIZE][MAX_PACKET_SIZE];

/*! \brief The index of the packet higher level code can use next. In the master,
 * this is the index of the next packet higher level code can populate. In the
 * slave, this is the index of the next packet higher level code can process.
 */
static volatile uint8 DATA mainLoopIndex;

/*! \brief The index of the next packet this library cares about. In the master,
 * This is the index of the oldest unsent packet in the tx packet buffer. In the
 * slave, this is the index of where to save the next received packet.
 */
static volatile uint8 DATA interruptIndex;

/*! \brief The number of available (free) packets in the #packetBuffer. In
 * the master, this is the number of packets available to be populated. In the
 * slave, this is the number of packets that are available to save data received
 * over the radio */
static volatile uint8 DATA freePackets;

///@}

/* Handshake Variables *******************************************************/
//! \name Handshake Variables
///@{
/*! \brief This number is appended to every data packet the master sends. The
 * slave checks this number so it can ignore packets which are sent twice. see
 * \ref handshake for more information.
 */
static volatile uint8 packetID;

/*! \brief This packet buffer is used explicitly by radioTxShortPacket() and
 * radioRxShortPacket() whenever the slave is sending a response to a data
 * transmission or the master is receiving a response, respectively. See their
 * documentation for more information..
 */
static volatile uint8 XDATA shortPacket[2];

/*! \brief Code sent when the slave NAK's a transmission */
static const uint8 CODE NAK_FILTER = 1;

/*! \brief Set in slave when responding NAK to the last transmission */
static volatile BIT sendingNAK;

/*! \brief Code sent when the slave ACK's a transmission */
static const uint8 CODE ACK_FILTER = 255;

/*! \brief Set in slave when responding ACK to the last transmission */
static volatile BIT sendingACK;

/*! \brief Set in master after a data transmission to indicate the next step
 * is to wait for a response from the slave. This BIT is cleared after a
 * response is received from the slave.
 */
static volatile BIT awaitingResponse;

/*! \brief Set in slave after a data reception to indicate the next step
 * is to send a response to the master. This BIT is cleared after the response
 * is sent.
 */
static volatile BIT sendingResponse;

/*! \brief Set in master if a data packet is being resent (ie. the current
 * packet is being sent for its second, third, fourth...etc. time).
 */
static volatile BIT reTransmitting;

///@}

/* Command Strobes ***********************************************************/
//! \name Command Strobes
//@{
/*! \brief Radio command strobe. See CC2511f32 data sheet for details */
#define SFSTXON 0
/*! \brief Radio command strobe. See CC2511f32 data sheet for details */
#define SCAL    1
/*! \brief Radio command strobe. See CC2511f32 data sheet for details */
#define SRX     2
/*! \brief Radio command strobe. See CC2511f32 data sheet for details */
#define STX     3
/*! \brief Radio command strobe. See CC2511f32 data sheet for details */
#define SIDLE   4

//@}

/* Library Initializer *******************************************************/
//! \name Library Initializer
///@{
void radioInit(BIT isTx)
{
   // variable initializations
   isTransmitter = isTx;

   sendReceiveComplete = FALSE;

   txBusy = FALSE;

   mainLoopIndex = 0;
   interruptIndex = 0;
   freePackets = PACKET_BUFFER_SIZE;

   packetID = 0;

   sendingNAK = FALSE;
   sendingACK = FALSE;

   awaitingResponse = FALSE;
   sendingResponse = FALSE;
   reTransmitting = FALSE;

   // SFR initializations
   PKTLEN = MAX_PACKET_SIZE; // max packet size stored
   CHANNR = param_radio_channel; // channel setting stored

   // Transmit power: the highest setting.
   PA_TABLE0 = 0xFF;

   // Set the center frequency of channel 0 to 2403.47 MHz.
   // Freq = 24/2^16*(0xFREQ) = 2403.47 MHz
   // FREQ[23:0] = 2^16*(fCarrier/fRef) = 2^16*(2400.156/24) = 0x6401AA
   FREQ2 = 0x64;
   FREQ1 = 0x25;
   FREQ0 = 0x00;

   // Note: We had to modify MDMCFG1 from the settings given by
   // SmartRF Studio to be compatible with the datasheet.
   // (NUM_PREAMBLE should be 8 at 500 kbps and having it be high is a good idea in general).
   // MDMCFG1.FEC_EN = 0,1 : 0=Disable,1=Enable Forward Error Correction
   // MDMCFG1.NUM_PREAMBLE = 100 : Minimum number of preamble bytes is 8.
   // MDMCFG1.CHANSPC_E = 11 : Channel spacing exponent.
   // MDMCFG0.CHANSPC_M = 0xFF : Channel spacing mantissa.
   // Channel spacing = (256 + CHANSPC_M)*2^(CHANSPC_E) * f_ref / 2^18
   // So the center of channel 255 is
   //   2403.47 + 255 * ((256 + 0x87)*2^(3) * 24/2^18) = 2476.50 MHz
   // NOTE: The radio's Forward Error Correction feature requires CLKSPD=000.
   MDMCFG1 = 0x43; // FEC disabled
   MDMCFG0 = 0x87; // Modem Configuration

   // Controls the FREQ_IF used for RX.
   // This is affected by MDMCFG2.DEM_DCFILT_OFF according to p.212 of datasheet.
   FSCTRL1 = 0x0A; // Frequency Synthesizer Control
   FSCTRL0 = 0x00; // Frequency Synthesizer Control

   // Sets the data rate (symbol rate) used in TX and RX.  See Sec 13.5 of the datasheet.
   // Also sets the channel bandwidth.
   // We tried different data rates: 375 kbps was pretty good, but 400 kbps and above caused lots of packet errors.
   // NOTE: If you change this, you must change RSSI_OFFSET in radio_registers.h
   MDMCFG4 = 0x1D;
   MDMCFG3 = 0xDE; // Modem configuration (data rate = 350 kbps, bandwidth = 600 kHz).

   // MDMCFG2.DEM_DCFILT_OFF = 0, enable digital DC blocking filter before
   //   demodulator.  This affects the FREQ_IF according to p.212 of datasheet.
   // MDMCFC2.MANCHESTER_EN = 0 is required because we are using MSK (see Sec 13.9.2)
   // MDMCFG2.MOD_FORMAT = 111: MSK modulation
   // MDMCFG2.SYNC_MODE = 111: Strictest requirements for receiving a packet.
   MDMCFG2 = 0x73; // Modem Configuration

   //DEVIATN = 0x00;  // Modem Deviation Setting.  No effect because we are using MSK.
   // See Sec 13.9.2.

   FREND1 = 0xB6; // Front End RX Configuration (adjusts various things, not well documented)
   FREND0 = 0x10; // Front End TX Configuration (adjusts current TX LO buffer, not well documented)

   // F0CFG and BSCFG configure details of the PID loop used to correct the
   // bit rate and frequency of the signal (RX only I believe).
   FOCCFG = 0x1D; // Frequency Offset Compensation Configuration
   BSCFG = 0x1C; // Bit Synchronization Configuration

   // AGC Control:
   // This affects many things, including:
   //    Carrier Sense Absolute Threshold (Sec 13.10.5).
   //    Carrier Sense Relative Threshold (Sec 13.10.6).
   AGCCTRL2 = 0xC7;
   AGCCTRL1 = 0x00;
   AGCCTRL0 = 0xB2;

   // Frequency Synthesizer registers that are not fully documented.
   FSCAL3 = 0xEA;
   FSCAL2 = 0x0A;
   FSCAL1 = 0x00;
   FSCAL0 = 0x11;

   // Mostly-undocumented test settings.
   // NOTE: The datasheet says TEST1 must be 0x31, but SmartRF Studio recommends 0x11.
   TEST2 = 0x88;
   TEST1 = 0x31; //0x31;//0x11;
   TEST0 = 0x09; //0x09;//0x0B;

   // Packet control settings.
   PKTCTRL1 = 0x04; // no address check, append crc, always accept sync word
   PKTCTRL0 = 0x45; // data whitening, use CRC, variable packet lengths

   // MCSM.FS_AUTOCAL = 1: Calibrate freq when going from IDLE to RX or TX (or FSTXON).
   MCSM0 = 0x14; // Main Radio Control State Machine Configuration
   MCSM1 = 0x00; // Disable CCA.  After RX or TX, go to IDLE;
   MCSM2 = 0x07; // NOTE: MCSM2 also gets set every time we go into RX mode.

   IEN2 |= 0x01; // Enable RF general interrupt
   RFIM = 0xF0; // Enable these interrupts: DONE, RXOVF, TXUNF, TIMEOUT

   //RFIF priority = 2
   IP1 |= 1 << 0;
   IP0 &= 0 << 0;

   // calibrate radio for first time use
   RFST = SIDLE;
   RFST = SCAL;

   EA = 1; // Enable interrupts in general

   // if this is the slave, start listening for packets right away
   if(!isTransmitter)
   {
      packetID = 255; // change packetID, to ensure the first packet is saved

      radioRxReceievePacket(50); // default timeout is 50ms
   }
}

///@}

/* Transmission Functions ***************************************************/
//! \name Transmission Functions
///@{
BIT radioTxAvailable(void)
{
   if(isTransmitter)
   {
      // Assumption: the only reason the radio would not be available is if it
      // is currently sending a packet or waiting for the response (ACK/NAK)
      return !txBusy;
   }

   return FALSE; // If slave, this is an unsupported operation
}

uint8 XDATA * radioTxCurrentPacket()
{
   // check we have a packet available to be populated from the transmission
   // packet buffer
   // if slave, this is an unsupported operation
   if(!isTransmitter || !freePackets)
   {
      return 0;
   }

   return packetBuffer[mainLoopIndex];
}

void radioTxSendPacket(void)
{
   // only send the data packet if we are not currently sending one or waiting
   // for the response from the last data transmission
   if(isTransmitter && !txBusy) // If slave, this is an unsupported operation
   {
      txBusy = TRUE; // set txBusy first, so higher level code cannot interrupt

      if(!reTransmitting) // if retransmitting, this has already been done
      {
         // Add 1 to the length byte for appending the packetNumber
         ++packetBuffer[interruptIndex][0];

         // Set the packetID of the packet about to be sent.
         packetBuffer[interruptIndex][packetBuffer[interruptIndex][0]] =
            packetID;
      }

      // Set up DMA to transfer data to the RFD register
      dmaConfig.radio.SRCADDRH =
         (unsigned int) packetBuffer[interruptIndex] >> 8;
      dmaConfig.radio.SRCADDRL =
         (unsigned int) packetBuffer[interruptIndex];
      dmaConfig.radio.DESTADDRH = XDATA_SFR_ADDRESS(RFD) >> 8;
      dmaConfig.radio.DESTADDRL = XDATA_SFR_ADDRESS(RFD);
      dmaConfig.radio.VLEN_LENH = 0b00100000; // Transfer length is FirstByte+1
      dmaConfig.radio.LENL = 0b10011010; // max length = MAX_PACKET_SIZE
      dmaConfig.radio.DC6 = 19; // WORDSIZE = 0, TMODE = 0, TRIG = 19
      dmaConfig.radio.DC7 = 0x42; // SRCINC = 1, DESTINC = 0, IRQMASK = 0, M8 = 0, PRIORITY = 2

      // arm DMA channel 1
      DMAARM |= 1 << DMA_CHANNEL_RADIO;

      // Send STX strobe to radio to start transfer
      RFST = STX;
   }
}

void radioTxDoneWithPacket(void)
{
   if(isTransmitter) // If slave, this is an unsupported operation
   {
      // Update the index of which packet higher level code can populate next
      if(mainLoopIndex == PACKET_BUFFER_SIZE - 1)
      {
         mainLoopIndex = 0;
      }
      else
      {
         ++mainLoopIndex;
      }

      // Lock the data in the packet buffer until after it has been sent
      --freePackets;
   }
}

///@}

/* Reception Functions *******************************************************/
//! \name Reception Functions
///@{
uint8 XDATA * radioRxCurrentPacket()
{
   // Check that there is atleast 1 unprocessed packet in the reception packet
   // buffer
   // If master, this is an unsupported operation
   if(isTransmitter || (freePackets == PACKET_BUFFER_SIZE))
   {
      return 0;
   }

   return packetBuffer[mainLoopIndex];
}

BIT radioRxCheckRxBuffer(uint8 threshold)
{
   // Check that there is a backlog of atleast "threshold" unprocessed packets
   // if master, this is an unsupported operation
   if(!isTransmitter && ((PACKET_BUFFER_SIZE - freePackets) >= threshold))
   {
      return TRUE;
   }

   return FALSE;
}

void radioRxDoneWithPacket()
{
   if(!isTransmitter) // If master, this is an unsupported operation
   {
      // update the index of which packet higher level code should process next
      if(mainLoopIndex == PACKET_BUFFER_SIZE - 1)
      {
         mainLoopIndex = 0;
      }
      else
      {
         ++mainLoopIndex;
      }

      // This packet has been released from the reception packet buffer, and can
      // now be used to store a new received data packet
      ++freePackets;
   }
}

///@}

/* ISR Functions *************************************************************/
//! \name ISR Functions
///@{
/*! \brief Used by slave to respond ACK/NAK to a reception.
 *
 * \param response
 *          Should be either #ACK_FILTER or #NAK_FILTER appropriately
 * \sa \ref handshake
 */
static void radioTxShortPacket(uint8 response)
{
   // Assumption: Will only be called by ISR in slave to respond ACK/NAK
   shortPacket[0] = 1; // set length byte
   shortPacket[1] = response; // set response byte

   // Set up DMA to transfer data to the RFD register
   dmaConfig.radio.SRCADDRH = (unsigned int) shortPacket >> 8;
   dmaConfig.radio.SRCADDRL = (unsigned int) shortPacket;
   dmaConfig.radio.DESTADDRH = XDATA_SFR_ADDRESS(RFD) >> 8;
   dmaConfig.radio.DESTADDRL = XDATA_SFR_ADDRESS(RFD);
   dmaConfig.radio.VLEN_LENH = 0b00100000; // Transfer length is FirstByte+1
   dmaConfig.radio.LENL = 0b00000010; // max length = 2
   dmaConfig.radio.DC6 = 19; // WORDSIZE = 0, TMODE = 0, TRIG = 19
   dmaConfig.radio.DC7 = 0x42; // SRCINC = 1, DESTINC = 0, IRQMASK = 0, M8 = 0, PRIORITY = 2

   // arm DMA channel 1
   DMAARM |= 1 << DMA_CHANNEL_RADIO;

   // Send STX strobe to radio to start transfer
   RFST = STX;
}

/*! \brief Used by master to receive ACK/NAK response.
 *
 * \param timeout
 *          The amount of time to wait for the response
 * \sa \ref handshake
 */
static void radioRxShortPacket(uint8 timeout)
{
   // Assumption: Will only be used by ISR in master to listen for a response

   // set up DMA to transfer data from the RFD
   if(timeout)
   {
      MCSM2 = 0x00; // RX_TIME = 0.  Helps determine the units of the RX timeout period.
      WORCTRL = 0; // WOR_RES = 0.  Helps determine the units of the RX timeout period.
      WOREVT1 = timeout;
      WOREVT0 = 0;
   }
   else
   {
      MCSM2 = 0x07; // RX_TIME = 7: No timeout.
   }

   dmaConfig.radio.SRCADDRH = XDATA_SFR_ADDRESS(RFD) >> 8;
   dmaConfig.radio.SRCADDRL = XDATA_SFR_ADDRESS(RFD);
   dmaConfig.radio.DESTADDRH = (unsigned int) shortPacket >> 8;
   dmaConfig.radio.DESTADDRL = (unsigned int) shortPacket;
   dmaConfig.radio.VLEN_LENH = 0b10000000; // Transfer length is FirstByte+3
   dmaConfig.radio.LENL = 0b00000100; // max length = 4
   dmaConfig.radio.DC6 = 19; // WORDSIZE = 0, TMODE = 0, TRIG = 19
   dmaConfig.radio.DC7 = 0x12; // SRCINC = 0, DESTINC = 1, IRQMASK = 0, M8 = 0, PRIORITY = 2

   // arm DMA channel 1
   DMAARM |= 1 << DMA_CHANNEL_RADIO;

   // Set up radio to transmit data
   RFST = SRX;
}

/*! \brief Sets the radio to receive mode with the specified timeout.
 *
 * Radio enters reception mode with the timeout specified. If no sync word is
 * detected after the specified amount of time has passed, the radio will set
 * the rx timeout flag, and an ISRQ will be asserted.
 *
 * \param timeout time in ms to wait in rx mode for sync word detection. If the
 *                parameter is 0, timeout is infinite.
 */
static void radioRxReceievePacket(uint8 timeout)
{
   // set up DMA to transfer data from the RFD
   if(timeout)
   {
      MCSM2 = 0x00; // RX_TIME = 0.  Helps determine the units of the RX timeout period.
      WORCTRL = 0; // WOR_RES = 0.  Helps determine the units of the RX timeout period.
      WOREVT1 = timeout;
      WOREVT0 = 0;
   }
   else
   {
      MCSM2 = 0x07; // RX_TIME = 7: No timeout.
   }

   dmaConfig.radio.SRCADDRH = XDATA_SFR_ADDRESS(RFD) >> 8;
   dmaConfig.radio.SRCADDRL = XDATA_SFR_ADDRESS(RFD);
   dmaConfig.radio.DESTADDRH =
      (unsigned int) packetBuffer[interruptIndex] >> 8;
   dmaConfig.radio.DESTADDRL =
      (unsigned int) packetBuffer[interruptIndex];
   dmaConfig.radio.VLEN_LENH = 0b10000000; // Transfer length is FirstByte+3
   dmaConfig.radio.LENL = 0b10011010; // max length = MAX_PACKET_SIZE
   dmaConfig.radio.DC6 = 19; // WORDSIZE = 0, TMODE = 0, TRIG = 19
   dmaConfig.radio.DC7 = 0x12; // SRCINC = 0, DESTINC = 1, IRQMASK = 0, M8 = 0, PRIORITY = 2

   // arm DMA channel 1
   DMAARM |= 1 << DMA_CHANNEL_RADIO;

   // Set up radio to transmit data
   RFST = SRX;
}

ISR(RF, 2)
{
   S1CON &= ~0x03; // Clear the general RFIF interrupt registers

   // Shut down DMA
   DMAARM = 0x80 | (1 << DMA_CHANNEL_RADIO); // Abort any ongoing radio DMA transfer.
   DMAIRQ &= ~(1 << DMA_CHANNEL_RADIO); // Clear any pending radio DMA interrupt.

   if(RFIF & 0x10) // Check IRQ_DONE
   {
      RFIF = ~0x10; // Clear IRQ_DONE

      if(RFIF & 0x80) // Check IRQ_TXUNF (transmission underflow)
      {
         RFIF &= ~0x80; // Clear IRQ_TXUNF

         // strobe idle and calibrate
         RFST = SIDLE;
         RFST = SCAL;

         // error when transferring data master to slave. Try re-transmitting
         // the data. This will cause an rx overflow in the slave, which will
         // automatically restart in reception mode (especially important, the
         // slave will not NAK the transmission). When the master times out
         // waiting for the response, it will transmit the data a third time,
         // and this re-transmission will be accepted by the slave.
         if(isTransmitter)
         {
            awaitingResponse = FALSE; // we are about to retransmit data

            txBusy = 0; // clear txBusy so we can initiate a new transmission
            reTransmitting = TRUE; // a retransmission is about to occur
            radioTxSendPacket(); // retransmit data
         }
         // error when sending response slave to master. Restart reception (when
         // master times out waiting for response, it will resend the last data
         // packet, so we just wait for this to happen, and then we will proceed
         // to either NAK or ACK the re-transmission)
         else
         {
            sendingResponse = FALSE; // clear all the handshake variables
            sendingACK = FALSE;
            sendingNAK = FALSE;

            radioRxReceievePacket(50); // restart in reception mode
         }
      }
      else if(RFIF & 0x40) // Check IRQ_RXOVF (reception overflow)
      {
         RFIF &= ~0x40; // CLear IRQ_RXOVF

         // strobe idle and calibrate
         RFST = SIDLE;
         RFST = SCAL;

         // error when receiving data slave from master. Restart reception (when
         // master times out waiting for response, it will resend the last data
         // packet, so we just wait for this to happen, and then we will proceed
         // to either NAK or ACK the re-transmission)
         if(!isTransmitter)
         {
            sendingResponse = FALSE; // clear all the handshake variables
            sendingACK = FALSE;
            sendingNAK = FALSE;

            radioRxReceievePacket(50); // restart in reception mode
         }
         // error when receiving response master from slave. The default
         // behavior is to re-transmit the data, and the slave will handle
         // saving the packet or discarding it based on the packetID of the last
         // data packet the slave received.
         else
         {
            awaitingResponse = FALSE; // we are about to retransmit data

            txBusy = 0; // clear txBusy so we can initiate a new transmission
            reTransmitting = TRUE; // a retransmission is about to occur
            radioTxSendPacket(); // retransmit data
         }
      }
      else // Packet Sent/Received successfully
      {
         if(isTransmitter) // This is the master
         {
            if(!awaitingResponse) // we just sent a data packet
            {
               awaitingResponse = TRUE; // check the response on next ISR

               shortPacket[1] = 0; // clear the last response
               radioRxShortPacket(2); // slave has 2ms to respond
            }
            else // we just received a response
            {
               awaitingResponse = FALSE; // we just got the response

               // If the slave ACK'd the transmission, update appropriate
               // indices and clear appropriate flags
               if(shortPacket[1] == ACK_FILTER) // slave ACK'd transmission
               {
                  // Update interrupt index (next data packet to send)
                  if(interruptIndex == PACKET_BUFFER_SIZE - 1)
                  {
                     interruptIndex = 0;
                  }
                  else
                  {
                     ++interruptIndex;
                  }

                  // Update the packetID (will reset to 0 after 255)
                  ++packetID;

                  // Free the memory from this packet back to the transmission
                  // packet buffer, so it can store data for a future tx
                  ++freePackets;

                  // transmission was successful, let higher level code know
                  sendReceiveComplete = TRUE;

                  reTransmitting = FALSE; // clear reTransmitting
                  txBusy = 0; // clear txBusy b.c transmission is finished
               }
               // The slave either NAK'd the transmission, or the resposne was
               // muddled by interference. Resend the last transmission, and
               // slave will handle saving the data packet or discarding it
               // based on the packetID
               else
               {
                  // awaitingResponse was cleared above, so we don't have to
                  // do it here

                  txBusy = 0; // clear txBusy so we can initiate a new transmission
                  reTransmitting = TRUE; // a retransmission is about to occur
                  radioTxSendPacket(); // retransmit data
               }
            }
         }
         else // this is the slave
         {
            if(!sendingResponse) // we just received a data packet
            {
               sendingResponse = TRUE; // restart in receive mode next ISR

               if(PKTSTATUS & 0x80) // Check CRC passed
               {
                  // Reception was successful, let master know
                  sendingACK = TRUE;
                  radioTxShortPacket(ACK_FILTER);
               }
               else // the CRC check failed
               {
                  // Reception was unsuccessful, let master know
                  sendingNAK = TRUE;
                  radioTxShortPacket(NAK_FILTER);
               }
            }
            else // we just sent a response
            {
               sendingResponse = FALSE;

               // If we just responded ACK, update appropriate indices and clear
               // appropriate flags
               if(sendingACK)
               {
                  sendingACK = FALSE; // clear sendingACK

                  // Check that the packetID of the packet just received is
                  // unique. If not, the next packet received will overwrite the
                  // data in this packet.
                  if(packetBuffer[interruptIndex][packetBuffer[interruptIndex][0]]
                     != packetID)
                  {
                     // update packet number
                     packetID =
                        packetBuffer[interruptIndex][packetBuffer[interruptIndex][0]];

                     // decrement the length byte, so that the packetID is
                     // invisible to the user
                     --packetBuffer[interruptIndex][0];

                     // Update interrupt index (where to store next received)
                     if(interruptIndex == PACKET_BUFFER_SIZE - 1)
                     {
                        interruptIndex = 0;
                     }
                     else
                     {
                        ++interruptIndex;
                     }

                     // Lock this packet in the reception packet buffer until
                     // higher level code has processed it
                     --freePackets;

                     // reception was successful, let higher level code know
                     sendReceiveComplete = TRUE;
                  }

                  // restart radio in receive mode. This will also calibrate
                  radioRxReceievePacket(50);
               }
               // If we responded NAK, restart in reception and overwrite the
               // data from the packet we just NAK'd with the master's
               // retransmission
               else
               {
                  sendingNAK = FALSE; // Clear sendingNAK

                  // restart radio in receive mode. The next packet received
                  // will overwrite the data received from the packet we just
                  // NAK'd
                  radioRxReceievePacket(50);
               }
            }
         }
      }
   }
   else if(RFIF & 0x20) // Check IRQ_TIMEOUT (Reception Timeout)
   {
      RFIF &= ~0x20; // Clear IRQ_TIMEOUT

      // The slave timed out waiting for a transmission master to slave. This is
      // ok behavior, because probably no data was being sent, and we use it
      // to schedule regular calibrations of the slave's radio during down time
      if(!isTransmitter)
      {
         sendingResponse = FALSE; // clear all the handshake variables
         sendingACK = FALSE;
         sendingNAK = FALSE;

         // restart radio in receive mode. calibration happens automatically
         radioRxReceievePacket(50);
      }
      // The master timed out waiting for a response from the slave. If the
      // response was lost during transmission, assume it was a NAK and resend
      // the last data packet. The slave will handle saving the packet or
      // discarding it based on the packetID
      else
      {
         awaitingResponse = FALSE; // we are about to retransmit data

         txBusy = 0; // clear txBusy so we can initiate a new transmission
         reTransmitting = TRUE; // a retransmission is about to occur
         radioTxSendPacket(); // retransmit data
      }
   }
}

///@}
