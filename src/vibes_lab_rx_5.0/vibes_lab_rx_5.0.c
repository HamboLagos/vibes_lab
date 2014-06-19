/*! \file vibes_lab_rx_5.0.c
 * \brief Receiver Wixel Source Code
 *
 * Receives packets from the transmitter, decodes the packet to recreate
 * the original 12-bit samples, and sends them to the DAC. The DAC acts as
 * the analog interface between the receiver Wixel and the
 * oscilloscope/spectrom analyzer.
 *
 * Receiver Wixel should be running this application, transmitter Wixel should
 * be running: vibes_lab_tx_4.0.c
 *
 * \section brief_notes BRIEF NOTES
 *
 * -# Received packets are stored in XDATA memory.
 *    - vibes_lab_radio_protocol.h library handles access to the packet buffer
 *    - #packet is a pointer to the first byte of the data packet in XDATA
 *      currently being processed.
 * -# XDATA memory is made of 8-bit registers, but our samples are 12-bits each.
 *      - It takes 3 bytes of the packet buffer to encode 2 samples.
 *      - The samples are encoded by the tx Wixel and decoded by the rx Wixel.
 *      - See \ref packet_format "packet format".
 * -# I<sup>2</sup>C communication protocol is used to transmit sample data to
 *    DAC.
 *
 * \section packet_format PACKET FORMAT
 *
 *  Sample 1 is 12-bits:<br>
 *  \f$(B_1)(A_1)(9_1)(8_1)(7_1)(6_1)(5_1)(4_1)(3_1)(2_1)(1_1)(0_1)\f$
 *  <p>
 *  Sample 2 is is similar:<br>
 *  \f$(B_2)(A_2)(9_2)(8_2)(7_2)(6_2)(5_2)(4_2)(3_2)(2_2)(1_2)(0_1)\f$
 *  <p>
 *  Where B is the MSB and 0 is the LSB
 *  <p>
 *  The 2 12-bit samples are split into 3 bytes in the following format:<br>
 *  packet[1] = \f$(7_1)(6_1)(5_1)(4_1)(3_1)(2_1)(1_1)(0_1)\f$
 *  | bit7 - LSB of sample 1.<br>
 *  packet[2] = \f$(B_1)(A_1)(9_1)(8_1)(B_2)(A_2)(9_2)(8_2)\f$
 *  | MSB - bit8 of sample 1, MSB - bit8 of sample 2.<br>
 *  packet[3] = \f$(7_2)(6_2)(5_2)(4_2)(3_2)(2_2)(1_2)(0_1)\f$
 *  | bit7 - LSB of sample 2.
 *  <p>
 *  This pattern is repeated for packet[4], packet[5], packet[6]...until we have
 *  reached the #RADIO_PAYLOAD_SIZE limit.
 *
 * \section pinout Pinout
 *
 * P1_0 is SDA (port 1, channel 0)<br>
 * P1_1 is SCL (port1, channel 1)
 *
 * \section error_handling ERROR HANDLING
 *
 * &nbsp;&nbsp;&nbsp;&nbsp;<i>Radio</i>
 *
 * Only the minimally necessary error handling for internal radio errors
 * (rx overflow, tx underflow, rx timeout) are implemented.
 *
 * If the radio was receiving a packet and an rx underflow occurs, the packet
 * will be lost and the radio will restart in reception mode to prepare for the
 * next packet. There is no ACK/NACK protocol included in
 * vibes_lab_radio_protocol.h, so there is no way to ask the transmitter to
 * re-send the packet.
 *
 * If the radio was in receive mode and a timeout occurred (default 50 ms),
 * the radio will restart in receive mode with the default time out again. This
 * can occur if the receiver Wixel is powered on before the transmitter,
 * or if the Wixels are not operating on the same channel. This is ok behavior,
 * as we need to recalibrate the radio often, and if a timeout occurs, the
 * Wixel automatically recalibrates before beginning up again.
 *
 * see vibes_lab_tx_4.0.c for information about tx radio errors.
 *
 * There is no error handling for radio errors which occur in the higher level
 * code that uses the vibes_lab_radio_protocol.h library. If the reception
 * packet buffer overflows (ie. there is no free space in the XDATA buffer to save
 * the data from the next received packet) it will be reported by setting the
 * #lostSample flag. You can detect if this error has occurred because the
 * red LED will stop blinking, and radio reception will cease permanently. The
 * only solution is to reset the Wixel.
 *
 * With this in mind, the source code has been written such that higher level
 * code should never cause a radio error (but then again, Murphy has a way of
 * showing up where you'd never expect him).
 *
 * Internal radio errors are a bit trickier. Radio interference is always a
 * possibility, and all supplementary features of the radio (checksums,
 * data-whitening, and FEC interleaving) have been turned off in favor of
 * improved transmission speed. Enabling some of these features may improve the
 * robustness of the radio. Also, adding an ACK/NACK handshake feature may
 * improve the radio's robustness, but this was not implemented, again, to keep
 * transmission speeds high. It has not been tested that implementing these
 * features would bog down the radio below an allowable threshold.
 *
 * &nbsp;&nbsp;&nbsp;&nbsp;<i>I<sup>2</sup>C</i>
 *
 * The only detectable error when transferring sample data to the DAC is if
 * the DAC fails to ACK (acknowledge) a byte transfer (the technical term is
 * NAK, or not ACK).
 *
 * If the DAC NAK's a byte transfer, it will be reported by setting the #dacNAKd
 * flag. You can detect if this error has occurred because the red LED will
 * stop blinking, and data transmission to the DAC will cease permanently.
 *
 * \section updates UPDATES
 *
 * &nbsp;&nbsp;&nbsp;&nbsp;<i>1.0</i>
 *
 *  First draft of source code written. Using radio_link.h to define
 *  transmission protocol.
 *
 *  <b>Results:</b><br>
 *  RF speed was too low (between 250 and 500 hz, need > 2000 for lab).
 *
 * &nbsp;&nbsp;&nbsp;&nbsp;<i>1.1</i>
 *
 *  Removed many supplementary functions defined in 1.0 version. This is
 *  in an effort to more accurately test whether the radio_link.h library
 *  is too slow, or if there was an unnecessary amount of overhead in the
 *  source file.
 *
 *  <b>Results:</b><br>
 *  Radio speed improved, but still orders less than needed.
 *
 * &nbsp;&nbsp;&nbsp;&nbsp;<i>1.2</i>
 *
 *  Performed testing of the 1.1 version source code to get accurate results
 *  on the actual radio transmission speed. Collect 12 samples, send
 *  immediately, and repeat for 1 second. Report number of samples over usb
 *  line to determine effective radio baud rate.
 *
 *  The information from the tx Wixel is also compared against the report from
 *  the rx Wixel to see if we are losing any data as well.
 *
 *  <b>Revisions:</b><br>
 *  Edited the radio_link.h and saved it as radio_link_large.h. The new library
 *  allows for packet sizes > 18 bytes.
 *
 *  <b>Results:</b><br>
 *  Radio transmission speed is too slow, further augmentation of radio
 *  protocol necessary.
 *
 * &nbsp;&nbsp;&nbsp;&nbsp;<i>2.0</i>
 *
 *  We are using an interrupt which fires every 200us (based on Timer 3,
 *  see time.h) to determine when to sample the accelerometer. We have
 *  increased the max packet size to 125 to reduce the number of radio tx
 *  function calls (more efficient to send larger packets less often). 10-bit
 *  sampling is used to decrease ADC overhead (was 12-bit). A reception buffer
 *  is introduced on the receiver side, such that it waits until it receives
 *  the second packet before processing the first, so at no time will the
 *  receiver be waiting for a packet to process.
 *
 *  <b>Results:</b><br>
 *  Radio speeds are still less than desirable. Further augmentation is
 *  necessary to speed up the transmission speed.
 *
 * &nbsp;&nbsp;&nbsp;&nbsp;<i>3.0</i>
 *
 *  Any radio protocol based on radio_link.h was determined to be too slow for
 *  the purpose of the lab. Now working with libraries modified from
 *  radio_queue.h; they are radio_queue_tx.h and radio_queue_rx.h. Each is
 *  specialized for the tx or rx Wixel, respectively.
 *
 *  <b>Results:</b><br>
 *  Radio is still too slow. Careful inspection of all pre-written radio
 *  libraries finds that there is too much overhead added by code which adds
 *  functionality that is unnecessary for the lab. The libraries are well
 *  written to provide flexibility, but performance suffers significantly
 *  because of this.
 *
 * &nbsp;&nbsp;&nbsp;&nbsp;<i>4.0</i>
 *
 *  A radio protocol library is written from scratch, which is specialized
 *  for the purposes of the lab (vibes_lab_radio_protocol.h). This gives great
 *  great transmission speeds (~350 Kbps), fast enough to keep up with 12-bit
 *  sampling every 200us
 *  (\f$ 12 \frac{bits}{sample} \cdot 5000 \frac{samples}{second}\f$ = 60Kbps).
 *  Limiting factor of sampling speed is now the ADC, which takes 132us to
 *  complete an A/d conversion at 12 bit resolution.
 *
 *  Note that the radio baud rate is the theoretical transmission speed, and
 *  does not take into account the necessary overhead when using the radio.
 *
 *  <b>Revisions:</b><br>
 *  A new software implementation of the I<sup>2</sup>C protocol was written
 *  because the pre-written library was too slow. pre-written i2c.h gives
 *  ~40Kbps data rate, newly authored vibes_lab_dac_protocol.h gives ~400Kbps
 *  data rate.
 *
 *  <b>Results:</b><br>
 *  Sampling speed cannot be improved above 5KHz without lowering resolution
 *  of sampling performed. A 10KHz sampling rate is desired.
 *
 * &nbsp;&nbsp;&nbsp;&nbsp;<i>4.1</i>
 *
 *  Sampling rate is brought down to 10-bit resolution, suffering a small
 *  loss in accuracy in favor of doubling the sample rate to 10KHz.
 *
 *  The receiver Wixel makes more effecient use of its processing power by
 *  interpolating between samples. This reduces the step size and period of
 *  samples "seen" by the oscilloscope/spectrum analyzer. 1 interpolated sample
 *  is added between each actual sample, so the "apparent" sample rate is 20KHz.
 *  This has no effect on the actual sample rate, and does not increase the
 *  accuracy of sampling.
 *
 *  To improve the efficiency of the I<sup>2</sup>C bus, we are using the
 *  repeat mode of the DAC. The data required to update the DAC with a sample
 *  is reduced from 24 bits to 16 bits.
 *
 *  <b>Results:</b><br>
 *  Interpolated sampling added additional overhead to the isr of the rx Wixel,
 *  placing it above the allowable threshold. The isr is called every 50us,
 *  but it takes longer than this to return from it. This caused the 6 packet
 *  reception buffer in XDATA to overflow, because we were not processing
 *  packets as quickly as they are being received.
 *
 * &nbsp;&nbsp;&nbsp;&nbsp;<i>4.2</i>
 *
 *  The interpolated sample functionality introduced in update 4.1 has been
 *  removed. The sampling rate of the tx Wixel and rx Wixel now match.
 *
 * &nbsp;&nbsp;&nbsp;&nbsp;<i>5.0</i>
 *
 *  The vibes_lab_radio.h library has been re-written to improve the robustness
 *  of the radio; the receiver can now respond to a data transmission ACK
 *  or NAK based on whether the transmission was processed successfully or not.
 *
 *  This does not constitute a change in the way the source code for each wixel
 *  is written, but the update was considered significant so it was documented
 *  by considering it an upgrade of the source code contained herein.
 */

/* Dependencies **************************************************************/
#include <Wixel.h>
#include <usb.h>
#include <usb_com.h>
#include <vibes_lab_dac_protocol.h>
#include <vibes_lab_radio_protocol.h>

/* DAC Definitions ***********************************************************/

//! \name DAC Definitions
///@{
/*!\brief Used to address the DAC.<br>
 * always the first byte sent. device code = 1100, address = 000 (A0 tied to
 * ground), R/W = 0 (write).
 */
static uint8 CODE DAC_ADDRESS = 0b11000000;

/*!\brief Specifies operation mode of DAC.<br>
 *  first 4 bits of second byte sent. fast mode = 00, power down = 00 (normal).
 */
static uint8 CODE DAC_COMMAND = 0b00000000;

///@}

/* Radio Variables ***********************************************************/

//! \name Radio Variables
///@{
/*!\brief 12-bit accelerometer sample.<br>
 * Decoded from #packet. see \ref packet_format "packet format".
 */
static volatile uint16 DATA accSample;

/*!\brief Reception packet we are currently processing.<br>
 * Accelerometer samples are decoded from it according to
 * \ref packet_format "packet format".
 */
static volatile uint8 XDATA* packet;

/*!\brief Current index within reception packet.<br>
 * Used in conjunction with isrCounter to decode samples.
 */
static volatile uint8 DATA sampleIndex;

/*!\brief Helper variable used when decoding samples from received packets.<br>
 * Always 1 or 2, based on whether we are processing an odd or even sample.
 */
static volatile uint8 DATA isrCounter;

/*!\brief Set when a sufficient rx buffer has been reached.<br>
 * Sufficient rx buffer is 4 packets. Keeps ISR(T3, 3) from beginning until
 * there is a backlog of received packets. Necessary because there is jitter
 * inherent in time period between transfers from tx Wixel.
 */
static volatile BIT sufficientRxBuffer;

///@}

/* Error Handling Variables **************************************************/

//! \name Error Handling Variables
///@{
/*!\brief Set, ifar, the next sample could not be sent to the DAC.<br>
 * See \ref error_handling "error handling".
 */
static volatile BIT lostSample;

/*!\brief Set, ifar, DAC fails to ACK a byte transmission.<br>
 * See \ref error_handling "error handling".
 */
static volatile BIT dacNAKd;

///@}

/* Parameter Variables *******************************************************/

//! \name Parameter Variables
///@{
/*!\brief Set when completed initialization.<br>
 * Used to keep ISR(T3, 3) from beginning until completed initializing
 * lower level libraries and global variables.
 */
static volatile BIT initComplete;

/*!\brief Run time.<br>
 * Used in updateLeds() to blink red LED <= 10Hz.
 */
static uint32 DATA operationalTimeStamp;

///@}

/* Functions *****************************************************************/

/*!\brief Sends samples to DAC every 100us (10KHz sample rate)
 *
 * Operational flow
 *  -# Proceeds only if #initComplete and #sufficientRxBuffer have been set
 *  -# Updates the DAC with a new sample
 *    - We want this to occur as soon as possible after entering ISR
 *  -# Decodes a new sample from the current packet
 *      - Will be sent to DAC the next time this ISR fires
 *      - See \ref packet_format "packet format"
 *  -# If we have processed all the data in this packet (reached the
 *     #RADIO_PAYLOAD_SIZE limit)
 *      -# Releases the current packet back to the XDATA buffer
 *      -# Gets the next packet to process
 *
 * Will set #lostSample and/or #dacNAKd if an error is detected. See
 * \ref error_handling "error handling".
 *
 * Note that transferring data to the DAC before decoding the next sample means
 * that the first, and only the first, sample sent to the DAC when the Wixel is
 * powered on will be invalid.
 */ISR(T3, 3)
{
   // disable timer3 ISRQ mask (still counting, just won't raise flag)
   // this is to ensure we dont get another ISR in the middle of this one
   T3IE = 0;

   // Do not process anything if initComplete or sufficientRxBuffer are not set
   if(initComplete && sufficientRxBuffer)
   {
      // Send a sample to the DAC and decode the next sample
      // Check there has never been an i2c error, and that we have a packet
      if(!dacNAKd && packet)
      {
         // I2C transfer to DAC
         // We want this to happen as soon as possible after entering the ISR
         dacNAKd |= dacSendByte(
            DAC_COMMAND | (uint8) ((accSample & 0xF00) >> 8));
         dacNAKd |= dacSendByte((uint8) (accSample & 0xFF));

         // decode next sample. This will be the sample sent to the DAC the
         // next time we enter this ISR
         if(isrCounter)
         {
            accSample = (uint16) packet[++sampleIndex]
               | ((uint16) (packet[++sampleIndex] & 0xF0)) << 4;
         }
         else
         {
            accSample = ((uint16) (packet[sampleIndex] & 0x0F)) << 8
               | (uint16) packet[++sampleIndex];
         }

         // flip isrCounter
         isrCounter ^= 1;

         // If we have finished processing the latest packet
         if(sampleIndex == RADIO_PAYLOAD_SIZE)
         {
            radioRxDoneWithPacket(); // Release current packet
            packet = radioRxCurrentPacket(); // get next packet to process
            sampleIndex = 0; // reset sampleIndex
         }
      }

      // data is being lost, either by radio or during i2c transfer
      else
      {
         dacStop(); // DAC will hold at last sample sent to it;
         lostSample = TRUE;
      }
   }

   // Re-enable timer 3 ISRQ mask
   T3IE = 1;
}

/*!\brief Sets status of LEDs on board Wixel.
 *
 * Provides visual representation of status of Wixel
 *
 * - Green LED: On if connected to USB
 * - Yellow LED: On if power is being supplied to Vin
 * - Red LED: 10Hz blink period iff
 *    - Sending packets successfully
 *       - #sendReceiveComplete is set
 *    - No errors have occurred
 *       - #lostSample and #dacNAKd are not set
 *          - lostSample will be set if dacNAKd is set, so we only have to check
 *            lostSample to ensure neither are set
 */
static void updateLeds()
{
   usbShowStatusWithGreenLed(); // USB connected
   LED_YELLOW(vinPowerPresent());
   // Powered from Vin

   // 10Hz blink period, only if receiving packets and no errors occurred
   if((getMs() - operationalTimeStamp > 500) && sendReceiveComplete
      && !lostSample)
   {
      // Blink red LED
      LED_RED_TOGGLE();

      // Reset variables
      sendReceiveComplete = FALSE;
      operationalTimeStamp = getMs();
   }
}

/*!\brief Entry point to Wixel operation.
 *
 * Initializes libraries this Wixel depends on, sets global variables to
 * default initial values, and runs main operational loop.
 *
 * The operational loop is
 * -# Update the LEDs
 * -# service calls to allow bootloader to be started by shorting 3v3 to P2_2
 *    and from Wixel Configuration GUI.
 * -# While there is not a sufficient rx buffer to begin processing sample
 *    data, check if there is now a sufficient rx buffer.
 *      - Sets #sufficientRxBuffer when a backlog of 4 reception packets has
 *        been reached.
 */
void main()
{
   // Don't allow ISR to start until finished initializing
   initComplete = FALSE;

   // initialize needed systems
   systemInit();
   usbInit();

   radioInit(RECEIVER);
   isrTimerInit();
   dacInit();

   // Initialize global variables
   sufficientRxBuffer = FALSE;
   lostSample = FALSE;
   dacNAKd = FALSE;

   packet = 0;
   sampleIndex = 0;
   isrCounter = TRUE;
   accSample = 1;

   operationalTimeStamp = getMs();

   // initializations complete, allow ISR to proceed
   initComplete = TRUE;

   // operational loop
   while(TRUE)
   {
      updateLeds(); // blinks red LED every 50ms if we are receiving packets
      boardService(); // so we can start bootloader by shorting P2_2 to 3V3
      usbComService(); // so we can start bootloader from Wixel config GUI

      // Only check if sufficientRxBufer has not been set
      if(!sufficientRxBuffer)
      {
         // T3 ISR waits until sufficientRxBuffer has been set
         // set sufficientRxBuffer when the has only 2 free packets left
         if(radioRxCheckRxBuffer(PACKET_BUFFER_SIZE - 2))
         {
            // get the first packet, let ISR begin processing packets
            packet = radioRxCurrentPacket();

            // Adress the DAC (only needs to be done once)
            dacStart();
            dacNAKd |= dacSendByte(DAC_ADDRESS);

            // Let ISR begin processing packets
            sufficientRxBuffer = TRUE;
         }
      }
   }
}

