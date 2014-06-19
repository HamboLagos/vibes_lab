#include <cc2511_map.h>
#include <cc2511_types.h>
#include <adc.h>

void adcInit(void)
{
   // Clear ADC Interrupt Mask and Flag (Disable ADC Interrupts)
   ADCIE = 0;
   ADCIF = 0;

   // Set up ADC
   ADCCFG |= 0x02;    // Enble P0_1 as ADC input (A1IN)

   // Re-enable ADC Interrupts
   ADCIE = 1;
}

uint16 adcRead(uint8 channel) __reentrant
{
   // Writing to ADCCON3 starts the extra conversion
   // ADCCON3 = 0b10110000 ^ channel;  // [7:6] Vref = VDD on AVDD pin (3.3v)
                                    // [5:4] Decimation Rate = 512 (12bits res.)
                                    // [3:0] Extra Channel Select = A0IN (P0_0)

   // return;


    ADCIF = 0;               // Clear the flag.
    ADCCON3 = 0b10110000 ^ channel;
    while(!ADCIF){};         // Wait for the reading to finish.

    if (ADCH & 0x80)
    {
        // Despite what the datasheet says, the result was negative.
        return 0;
    }
    else
    {
        // Note: Despite what the datasheet says, bits 2 and 3 of ADCL are not
        // always zero (they seem to be pretty random).  We throw them away
        // here.
        return ADC >> 4;
    }
}
