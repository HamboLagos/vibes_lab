/*! \file vibes_lab_dac_protocol.c
 * \brief Source code for the I<sup>2</sup>C library developed to communicate
 *       with the DAC.
 *
 * Note that in I<sup>2</sup>C, data is only allowed to change during the
 * low period of SCL, otherwise it will be interpreted as a start or stop
 * condition.
 *
 * \sa vibes_lab_dac_protocol.h<br>
 *     i2c_doc
 */

/* Dependencies **************************************************************/

#include <vibes_lab_dac_protocol.h>

/* Library Initializer *******************************************************/

//! \name Library Initializer
///@{

void dacInit()
{
   P1SEL &= ~0x03; // P1_1 and P1_0 are general purpose I/O
   P1DIR |= 0x03; // P1_1 and P1_0 are outputs

   // drive SCL, then SDA low
   SCL = 0;
   SDA = 0;

   // drive SDA, then SCL high (signals bus free to DAC)
   SDA = 1;
   SCL = 1;

   // Leave SCL, SDA high for start operation
}

///@}

/* Functions *****************************************************************/

// SDA 1->0 when SCL 1
void dacStart()
{
   // Assume SCL and SDA are high

   SDA = 0; // start happens here
   SCL = 0; // Leave SCL and SDA low
}

// SDA 0->1 when SCL 1
void dacStop()
{
   // Assume SCL and SDA are low

   SCL = 1; // Drive SCL high
   SDA = 1; // stop happens here

   // Leave SCL, SDA high for next start operation
}

BIT dacSendByte(uint8 byte)
{
   BIT nack;
   uint8 i;

   // Assume SCL and SDA are low

   for (i = 0; i < 8; i++)
   {
      SDA = byte & 0x80; // Data sent MSB->LSB

      SCL = 1; // DAC reads the SCL line

      byte <<= 1; // shift byte

      SCL = 0; // Drive SCL low for next bit

   }

   // Check for ack
   // release SDA so DAC can drive it low (P1_1 = SDA)
   // there are no pull up or pull down resistors for P1_1 (or P1_0)
   P1DIR &= ~0x02;

   SCL = 1;
   nack = SDA; // read the state of the SDA line (high if nack'd)

   SCL = 0;

   // Take back control of SDA
   P1DIR |= 0x02;
   SDA = 0; // Leave SCL and SDA low for next write operation or stop

   return nack;
}

