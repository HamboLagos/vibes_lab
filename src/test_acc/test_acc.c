/*! \file vibes_lab_tx_5.1.c
 * \brief Transmitter Wixel Source Code
 *
 * Samples accelerometer readings from #INPUT_CHANNEL at 10KHz. Each sample is
 * a 10-bit resolution A/D conversion. These samples are used to populate data
 * packets which are sent to the receiver Wixel.
 *
 * Transmitter Wixel should be running this application, receiver Wixel should
 * be running: vibes_lab_rx_x.x.c, where x.x is the latest version of SW.
 *
 * \section brief_notes BRIEF NOTES
 *
 * -# Internal ADC performs 10-bit conversion every 100us
 *    (\f$10 bits \cdot 10K \frac{samples}{second} \f$ = 100Kbps data rate).
 *    - Internally, ADC result is a number 0-1023 inclusive (10 bits)
 *    - However, A/D conversion has only 10-bit resolution
 *    - Therefore, the LSB of ADC result is unreliable
 * -# The DAC used has 12-bit resolution
 *    - Samples are up-converted from 10-bits to 12-bits
 *    - Therefore, the 2 LSB of ADC result are now unreliable
 *    - Max error induced from lack of resolution is:
 *       \f$ \frac{2 bits}{12 bits} = \frac{2^2}{2^{12}} = \frac{1}{2^{10}} =
 *       \frac{1}{1024} \approx  0.1 \% \f$ <br>
 *      and new data rate is
 *       (\f$12 bits \cdot 10K \frac{samples}{second} \f$ = 120Kbps).
 * -# Samples are saved in a packet buffer in XDATA memory.
 *    - vibes_lab_radio_protocol.h library handles access to the packet buffer
 *    - #packet is a pointer to the first byte of the current packet buffer
 *      being populated.
 * -# XDATA memory is made of 8 bit registers, but our samples are 12 bits
 *    (as explained above).
 *      - Therefore, it takes 3 bytes from the packet buffer to encode 2
 *         samples.
 *      - See \ref packet_format "packet format".
 * -# The input pins on the Wixel are <b>NOT</b> 5v tolerant.
 *      - The input pins will only handle inputs of 0-3.3v.
 *      - Accelerometer is connected to Wixel using 2/3 voltage divider to
 *        bring 5v-max output down to ~3.3v
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
 * \section pinout PINOUT
 *
 * P0_1 is accelerometer input pin (port 0, channel 1)
 *
 * \section error_handling ERROR HANDLING
 *
 * &nbsp;&nbsp;&nbsp;&nbsp;<i>Radio</i>
 *
 * Only the minimally necessary error handling for internal radio errors
 * (rx overflow, tx underflow, rx timeout) are implemented.
 *
 * If the radio was transmitting a packet and a tx underflow occurred, the radio
 * will try to resend the packet. Note that if the size of the packet being sent
 * is less than #RADIO_PAYLOAD_SIZE, this error will continue to occur, and the
 * Wixel must be reset.
 *
 * see vibes_lab_rx_4.2.c for information about rx radio errors.
 *
 * There is no error handling for radio errors which occur in the higher level
 * code that uses the vibes_lab_radio_protocol.h library. If the transmission
 * packet buffer overflows (ie. there are no free packets available to populate)
 * it will be reported by setting the global BIT #lostSample. You can detect if
 * this error has occurred because the red LED will stop blinking, and radio
 * transmissions will cease permanently. The only solution is to reset the
 * Wixel.
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
 * \section updated UPDATES
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

#include <stdio.h>

/* ADC Definitions ***********************************************************/

//! \name ADC Definitions
///@{

/*!\brief Accelerometer input pin = P0_1.<br>
 * Currently, only P0_1 is supported by adc.h library. Must update ADCCFG line
 * in adcInit() to support additional pins.
 */
#define ACC_PIN 1

///@}


/* Radio Variables ***********************************************************/

//! \name Radio Variables
///@{
/*!\brief 12-bit accelerometer sample.
 */
static volatile uint16 DATA accSample;


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
static uint32 XDATA operationalTimeStamp;

static uint16 counter;

///@}


/* Functions *****************************************************************/

/*!\brief Samples the accelerometer (from P0_0) every 100us (10KHz sampling
 * rate).
 *
 * Operational flow
 *  -# Proceeds only if #initComplete has been set
 *  -# Gets a new sample
 *    - We want this to happen as soon as possible after entering ISR
 *
 * When conversion is complete, ADCIF will be asserted, and we encode this
 * reading in the next available space in the packet buffer using the ADC
 * ISR
 */
ISR(T3, 3) {

   // disable timer3 ISR mask (still counting, just won't raise flag)
   // this is to ensure we dont get another ISRQ in the middle of this one
   T3IE = 0;

   if(initComplete) {

      // calling adcRead starts conversion, result is captured in ADC ISR
      // 10 bit resolution conversion takes 68us to complete
      ADCCON3 = 0b10100001;
   }

   // Re-enable timer 3 ISR mask
   T3IE = 1;
}



/*!\brief Encodes result of accelerometer sampling
 *
 * Operational flow
 *  -# Proceeds only if #initComplete has been set
 *  -# Grabs ADC conversion result (accelerometer sample)
 *  -# Encodes the sample in the current packet
 *      - See \ref packet_format "packet format"
 *  -# If we have filled the packet up to the #RADIO_PAYLOAD_SIZE limit
 *      -# Increments #transmissionsReady. See main().
 *      -# Gets the next free packet from the XDATA buffer to populate
 *
 * Will set #lostSample if an error is detected. See
 * \ref error_handling "error handling".
 */
ISR(ADC, 2)
{
   // disable ADC Interrupt Enable mask, to ensure we don't get another ISRQ
   // while we are within this one
   ADCIE = 0;

   // Do not do anything is initComplete is not set
   if(initComplete)
   {
      // Get the sample
      accSample = ADC >> 5;   // [3:0] of ADC are unreliable, we throw them away
                              // Result lies in MSB of ADC, so we add'ly get rid
                              // of 2 more LSBs to get appropriate 10 bit rslt
   }

   // Re-enable ADC IE mask
   ADCIE = 1;
}



/*!\brief Sets status of LEDs on board Wixel.
  *
  * Provides visual representation of status of Wixel
  *
  * - Green LED: On if connected to USB
  * - Yellow LED: On if power is being supplied to Vin
  * - Red LED: 2Hz blink period iff
  *    - Sending packets successfully
  *       - #sendReceiveComplete is set
  *    - No errors have occurred
  *       - #lostSample and #dacNAKd are not set
  *          - lostSample will be set if dacNAKd is set, so we only have to check
  *            lostSample to ensure neither are set
  * - Red LED: 1/3Hz blink period iff
  *    - lostSample is set
  *    - lostSample is cleared after Red LED left on for 3 seconds
  */
 static void updateLeds()
 {
    usbShowStatusWithGreenLed(); // USB connected
    LED_YELLOW(vinPowerPresent());
    // Powered from Vin

    // 10Hz blink period, only if receiving packets and no errors occurred
    if(getMs() - operationalTimeStamp > 500)
    {
       // Blink red LED
       LED_RED_TOGGLE();

       // Reset variables
       operationalTimeStamp = getMs();
    }
 }


static void reportResults()
{
   if(usbComTxAvailable() > 32)
   {
      static uint8 XDATA buffer[32];
      uint8 bufferLength;


      bufferLength = sprintf(buffer, "%d \r\n", accSample);

      usbComTxSend(buffer, bufferLength);
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
 *    or from Wixel Configuration GUI.
 * -# Checks if #transmissionsReady is > 0
 *      - Sends oldest packet first, then second oldest packet, etc. until all
 *        full packets have been sent.
 *
 * Packet transmission is handled by the main loop to reduce the overhead inside
 * of ISR(ADC, 2). The other option is to call radioTxSendPacket() from the ISR
 * whenever we have filled up a packet, but then it would take longer than 100us
 * to return from the ISR. It has been experimentally tested, but not proven,
 * that the transmission packet buffer in XDATA does not overflow when radio
 * transmission is handled by main.
 */
void main()
{
   // Don't allow ISRs to start until finished initializing
   initComplete = FALSE;

   // initialize dependent libraries
   systemInit();     // configures getMs() function, among others
   usbInit();        // Allows bootloader to be entered by USB command

   //radioInit(TRANSMITTER);    // Initializes radio for use in lab
   isrTimerInit();            // Initializes T3 timer for 10KHz sampling freq.
   adcInit();                 // Initializes P0_0 as analog input

   accSample = 0;
   counter = 0;

   operationalTimeStamp = getMs();

   // initializations complete, allow ISR to proceed
   initComplete = TRUE;

   // operational loop
   while(TRUE)
   {
      ++counter;
      if(counter == 1000) {
         counter = 0;
      }

      if(!counter) {
      reportResults();  // Display results from Accelerometer ADC conversion
      }
      updateLeds();     // blinks red LED every 50ms if we are receiving packets
      boardService();   // so we can start bootloader by shorting P2_2 to 3V3
      usbComService();  // so we can start bootloader from Wixel config GUI
   }
}

