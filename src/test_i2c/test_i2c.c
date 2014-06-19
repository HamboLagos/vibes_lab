/*! \file test_i2c.c
 * \brief Used to test the transmission speed of the I<sup>2</sup>C bus.
 *
 * Used to perform tests of the vibes_lab_dac_protocol.h library developed
 * for communicating with the DAC via the I<sup>2</sup>C interface.
 */

/* Dependencies **************************************************************/
#include <wixel.h>
#include <usb.h>
#include <usb_com.h>
#include <vibes_lab_dac_protocol.h>
#include <stdio.h>

/* DAC definitions ***********************************************************/

/*! First byte sent to DAC <br>
 * device code = 1100, address = 000 (A0 tied to ground), R/W = 0 (write)
 */
uint8 CODE DAC_ADDRESS = 0b11000000;
/*! First 4 bits of second byte sent to DAC <br>
 * fast mode = 00, power down = 00 (normal)
 */
uint8 CODE DAC_COMMAND = 0b00000000;

/*! 1 if DAC NACK'd last transmission, 0 if ACK'd */
uint8 nacks[10];

/* Parameters ****************************************************************/

/*! Run time. Used in updateLeds(). */
uint32 DATA operationalTimeStamp;

uint32 DATA tempTimeStamp;

/*! dummy code to send to dac */
uint16 CODE voltage = 0b101010101010;

/*! number of successful transfers in 10 second */
uint32 transfers[10];

/* Functions *****************************************************************/

/*!
 * Updates status of LEDS on board wixel as a visual way to represent wixel's
 * progess.
 *
 * Green LED will only turn on if we are connected to USB.<br>
 * Yellow LED will stay on constantly if powered through Vin pin.<br>
 * Red LED will blink every 100 ms if we are receiving packets.
 */
void updateLeds()
{
   usbShowStatusWithGreenLed();
   LED_YELLOW(vinPowerPresent());

   if (getMs() - operationalTimeStamp > 50)
   {

      operationalTimeStamp = getMs();

      LED_RED_TOGGLE();
   }
}

void reportResults(uint32 ts, uint8 ns, uint8 testNum, uint8 time)
{
   if (usbComTxAvailable() > 64)
   {
      uint8 XDATA buffer[64];
      uint8 bufferLength;

      uint32 transPerSecond = (uint32) (ts / time);
      uint32 dataRateKbps = (uint32) ((ts * 24) / (time * 1000));

      bufferLength = sprintf(
         buffer, "Transmissions/second: %Lu x "
         "bits/transmission: 24 equals: %LuKbps (Effective)\r\n "
         "nacks: %d        Test: %d \r\n\r\n",
         transPerSecond, dataRateKbps, ns, testNum);

      usbComTxSend(buffer, bufferLength);
   }
}

/*! main operational loop
 */
void main()
{
   uint8 i;

   // initialize needed systems
   systemInit();
   usbInit();
   dacInit();

   tempTimeStamp = getMs();

   // allow us time to open a putty terminal to see results
   while (getMs() - tempTimeStamp < 4000)
   {
      updateLeds(); // blinks red LED every 50ms if we are receiving packets
      boardService(); // so we can start bootloader by shorting P2_2 to 3V3
      usbComService(); // so we can start bootloader from wixel config GUI
   }

   for (i = 0; i < 10; i++)
   {
      transfers[i] = 0;
      nacks[i] = FALSE;

      // run for 5 seconds
      tempTimeStamp = getMs();
      while (getMs() - tempTimeStamp < 2000)
      {
         dacStart();
         nacks[i] |= dacSendByte(DAC_ADDRESS);
         nacks[i] |= dacSendByte(
            DAC_COMMAND | (uint8) ((voltage & 0xF00) >> 8));
         nacks[i] |= dacSendByte((uint8) (voltage & 0xFF));
         dacStop();

         transfers[i]++;
      }

      LED_RED_TOGGLE();
   }

   i = 0;

   // operational loop
   while (TRUE)
   {
      updateLeds(); // blinks red LED every 50ms if we are receiving packets
      boardService(); // so we can start bootloader by shorting P2_2 to 3V3
      usbComService(); // so we can start bootloader from wixel config GUI

      if ((i % 5 == 0) && (i / 5 <= 9))
      {
         reportResults(transfers[i / 5], nacks[i / 5], i / 5, 2);
      }
      else if (i / 5 > 9)
      {
         i--;
      }

      i++;

   }
}
