//#define TEST_MASTER
#define TEST_SLAVE

#ifdef TEST_SLAVE
/* Dependencies **************************************************************/
#include <Wixel.h>
#include <usb.h>
#include <usb_com.h>
#include <vibes_lab_dac_protocol.h>
#include <vibes_lab_radio_protocol.h>

#include <stdio.h>

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

#define PACKET_BUFFER_EMPTY_ERROR 1
#define DAC_NAK_ERROR 2
#define SAMPLE_ERROR 3
#define PACKET_ID_ERROR 4

static volatile uint8 cause = 0;

static volatile uint16 dummySample = 0;

static volatile uint8 packetID = 0;

void reportResults()
{
   if(usbComTxAvailable() > 64)
   {
      uint8 XDATA buffer[64];
      uint8 bufferLength;

      if(cause == PACKET_BUFFER_EMPTY_ERROR)
      {
         bufferLength = sprintf(buffer, "Packet Buffer Empty");
      }
      else if(cause == DAC_NAK_ERROR)
      {
         bufferLength = sprintf(buffer, "DAC NAK'd");
      }
      else if(cause == SAMPLE_ERROR)
      {
         bufferLength = sprintf(
            buffer, "Sample Error\r\n packet[%d]: %d\r\n expected: %d",
            sampleIndex, accSample, dummySample);
      }
      else if(cause == PACKET_ID_ERROR)
      {
         bufferLength = sprintf(buffer, "Packet ID Error");
      }
      else
      {
         bufferLength = sprintf(buffer, "Unknown Error");
      }

      usbComTxSend(buffer, bufferLength);
   }
}

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

          if(dacNAKd)
          {
             cause = DAC_NAK_ERROR;
          }

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

          // increment dummySample
          if(dummySample == 2047)
          {
             dummySample = 0;
          }
          else
          {
             ++dummySample;
          }

          // check the data from the packet
          if(accSample != dummySample)
          {
             cause = SAMPLE_ERROR;
             lostSample = TRUE;
          }

          // flip isrCounter
          isrCounter ^= 1;

          // If we have finished processing the latest packet
          if(sampleIndex == RADIO_PAYLOAD_SIZE)
          {
             // check the packetID
             if(packet[RADIO_PAYLOAD_SIZE + 1] != packetID)
             {
                lostSample = TRUE;
                cause = PACKET_ID_ERROR;
             }
             else
             {
                ++packetID;
             }

             radioRxDoneWithPacket(); // Release current packet
             packet = radioRxCurrentPacket(); // get next packet to process
             sampleIndex = 0; // reset sampleIndex

             if(packet == 0)
             {
                cause = PACKET_BUFFER_EMPTY_ERROR;
             }
          }
       }

       // data is being lost, either by radio or during i2c transfer
       else
       {
          dacStop(); // DAC will hold at last sample sent to it;
          lostSample = TRUE;
       }
    }

    if(!lostSample)
    {
       // Re-enable timer 3 ISRQ mask
       T3IE = 1;
    }
    else
    {
       reportResults();
    }
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
#endif

#ifdef TEST_MASTER
 /* Dependencies **************************************************************/

#include <Wixel.h>
#include <usb.h>
#include <usb_com.h>
#include <vibes_lab_radio_protocol.h>

 /* ADC Definitions ***********************************************************/

 //! \name ADC Definitions
 ///@{
 /*!\brief Accelerometer input pin = P0_1.<br>
  * See adc.h for other options (pin must be available to adcRead())
  */
 static uint8 CODE INPUT_CHANNEL = 1;

 ///@}

 /* Radio Variables ***********************************************************/

 //! \name Radio Variables
 ///@{
 /*!\brief 12-bit accelerometer sample.
  */
 static volatile uint16 DATA accSample;

 /*!\brief Transmission packet we are currently populating.<br>
  * Populated with accelerometer samples according to
  * \ref packet_format "packet format"
  */
 static volatile uint8 XDATA* packet;

 /*!\brief Current index within transmission packet.<br>
  * Used in conjunction with isrCounter to encode accelerometer samples.
  */
 static volatile uint8 DATA sampleIndex;

 /*!\brief Helper variable used when encoding samples in the radio packet.<br>
  * Always 1 or 2, based on whether we are encoding an odd or even sample.
  */
 static volatile BIT isrCounter;

 /*!\brief The number of data packet waiting to be sent.<br>
  * Read by main loop to determine how many times to call radioTxSendPacket().
  * See brief notes section of file documentation, and main() for details.
  */
 static volatile uint8 DATA transmissionsReady;

 ///@}

 /* Error Handling Variables **************************************************/

 //! \name Error Handling Variables
 ///@{
 /*!\brief Set, ifar, a sample could not be saved in current packet buffer.<br>
  * See \ref error_handling "error handling".
  */
 static volatile BIT lostSample;

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

 static volatile uint16 dummySample = 0;

 /*!\brief Samples the accelerometer every 100us (10KHz sampling rate)
  *
  * Operational flow
  *  -# Proceeds only if #initComplete has been set
  *  -# Gets a new sample
  *    - We want this to happen as soon as possible after entering ISR
  *  -# Encodes the sample in the current packet
  *      - See \ref packet_format "packet format"
  *  -# If we have filled the packet up to the #RADIO_PAYLOAD_SIZE limit
  *      -# Increments #transmissionsReady. See main().
  *      -# Gets the next free packet from the XDATA buffer to populate
  *
  * Will set #lostSample if an error is detected. See
  * \ref error_handling "error handling".
  */ISR(T3, 3)
 {
     // disable timer3 ISR mask (still counting, just won't raise flag)
     // this is to ensure we dont get another ISRQ in the middle of this one
     T3IE = 0;

     // Do not do anything is initComplete is not set
     if(initComplete)
     {
        // get a sample. Conversion takes 68us.
        // We want this to happen as soon as possible after entering the ISR
        accSample = adcRead(INPUT_CHANNEL | ADC_BITS_10);

        // Multiply accSample by 2. This is because, adcRead() return a number
        // between 0-2047, but dac wants 0-4095. Simplifies rx code if done here.
        // x <<= 3 is the same as x *= 2^3, but MUCH faster.
        accSample <<= 1;

        // Save the reading in the packet buffer
        if(packet)
        {

           if(dummySample == 2047)
           {
              dummySample = 0;
              accSample = 0;
           }
           else
           {
              accSample = ++dummySample;
           }

           // Used to encode samples. See packet format in file documentation.
           if(isrCounter)
           {
              packet[++sampleIndex] = (uint8) (accSample & 0xFF);
              packet[++sampleIndex] = (uint8) ((accSample & 0xF00) >> 4);
           }
           else
           {
              packet[sampleIndex] |= (uint8) ((accSample & 0xF00) >> 8);
              packet[++sampleIndex] = (uint8) (accSample & 0xFF);
           }

           // flip isrCounter
           isrCounter ^= 1;

           // if we have filled the packet up
           if(sampleIndex == RADIO_PAYLOAD_SIZE)
           {
              // set the payload size byte
              packet[0] = RADIO_PAYLOAD_SIZE;

              // get new packet to populate, reset sampleIndex
              radioTxDoneWithPacket();
              packet = radioTxCurrentPacket();
              sampleIndex = 0;

              // alert main loop to send the packet soon
              ++transmissionsReady;
           }
        }

        // Packets are being lost
        else
        {
           lostSample = TRUE;
        }
     }

     // Re-enable timer 3 ISR mask
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
   *       - #lostSample is not set
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
   *    or from Wixel Configuration GUI.
   * -# Checks if #transmissionsReady is > 0
   *      - Sends oldest packet first, then second oldest packet, etc. until all
   *        full packets have been sent.
   *
   * Packet transmission is handled by the main loop to reduce the overhead inside
   * of ISR(T3, 3). The other option is to call radioTxSendPacket() from the ISR
   * whenever we have filled up a packet, but then it would take longer than 100us
   * to return from the ISR. It has been experimentally tested, but not proven,
   * that the transmission packet buffer in XDATA does not overflow when radio
   * transmission is handled by main.
   */
  void main()
  {
     // Don't allow ISR to start until finished initializing
     initComplete = FALSE;

     // initialize needed systems
     systemInit();
     usbInit();

     radioInit(TRANSMITTER);
     isrTimerInit();

     // Set INPUT_CHANNEL as input, pulled low if left floating
     setPort0PullType(LOW);
     setDigitalInput(INPUT_CHANNEL, PULLED);

     // initialize global variables
     lostSample = FALSE;

     packet = radioTxCurrentPacket();
     sampleIndex = 0;
     isrCounter = TRUE;
     accSample = 0;
     transmissionsReady = 0;

     operationalTimeStamp = getMs();

     // initializations complete, allow ISR to proceed
     initComplete = TRUE;

     // operational loop
     while(TRUE)
     {
        updateLeds(); // blinks red LED every 50ms if we are receiving packets
        boardService();// so we can start bootloader by shorting P2_2 to 3V3
        usbComService();// so we can start bootloader from Wixel config GUI

        // Send all new data packets
        while(transmissionsReady)
        {
           // check that radio is available
           if(radioTxAvailable())
           {
              // Send the packet, decrement transmissionsReady
              radioTxSendPacket();
              --transmissionsReady;
           }
        }
     }
  }
#endif

