/*! \file adc.h
 * \brief Provides the public interface for using the ADC to measure the voltage
 *  output of the accelerometer.
 *
 * The <code>adc.lib</code> library provides functions for using the CC2511's
 * Analog-to-Digital Converter (ADC).  The ADC can measure several
 * different things, including voltages on any of the six Port 0 pins, the
 * voltage on the VDD line (the 3V3 pin on the Wixel), and the temperature.
 *
 * The ADC has 14 channels:
 *
 * <table><caption>CC2511 ADC Channels</caption>
 * <tr><th>Channel Number</th><th>Name</th><th>Appropriate Function</tr>
 * <tr><td>0</td><td>AIN0 (P0_0)</td><td>adcRead()</td></tr>
 * <tr><td>1</td><td>AIN1 (P0_1)</td><td>adcRead()</td></tr>
 * <tr><td>2</td><td>AIN2 (P0_2)</td><td>adcRead()</td></tr>
 * <tr><td>3</td><td>AIN3 (P0_3)</td><td>adcRead()</td></tr>
 * <tr><td>4</td><td>AIN4 (P0_4)</td><td>adcRead()</td></tr>
 * <tr><td>5</td><td>AIN5 (P0_5)</td><td>adcRead()</td></tr>
 * <tr><td>8</td><td>AIN0 - AIN1</td><td>adcReadDifferential()</td></tr>
 * <tr><td>9</td><td>AIN2 - AIN3</td><td>adcReadDifferential()</td></tr>
 * <tr><td>10</td><td>AIN4 - AIN5</td><td>adcReadDifferential()</td></tr>
 * <tr><td>11</td><td>AIN6 - AIN7</td><td>adcReadDifferential()</td></tr>
 * <tr><td>12</td><td>GND</td><td></td></tr>
 * <tr><td>13</td><td>Internal 1.25 V Reference</td><td>adcRead()</td></tr>
 * <tr><td>14</td><td>Temperature Sensor</td><td>adcRead()</td></tr>
 * <tr><td>15</td><td>VDD/3</td><td></td></tr>
 * </table>
 *
 * \section channelparam The channel parameter
 *
 * Most functions in this library require a channel parameter to
 * specify which channel to use.  The value of this parameter should
 * be one of the channel numbers in the table above.
 *
 * <b>Revisions</b>:
 * Currently, only P0_0 (AIN0) is supported for use as an ADC input pin. To
 * enable additional pins as ADC input pins, use the ADCCFG SFR.
 *
 * You can also use the bitwise OR operator (|) to specify advanced options
 * in the channel parameter:
 * - By default, VDD is used as a reference but you can use the internal
 *   1.25 V source as a reference by specifying #ADC_REFERENCE_INTERNAL
 *   in the channel parameter.
 * - By default, and ADC resolution of 12 bits is used, but you can
 *   use a different resolution by specifying #ADC_BITS_10, #ADC_BITS_9, or
 *   #ADC_BITS_7 in the channel parameter.
 *
 */

#ifndef _ADC_H
#define _ADC_H


/* Reference Voltage Settings *************************************************/
//! \name Reference Voltage Settings
///@{

/*! Specifies that the internal 1.25 voltage reference should be used.
 * This means that a value of 2047 corresponds to 1.25 V instead of
 * 3.3 V. */
#define ADC_REFERENCE_INTERNAL  0b10000000

/*! Specifies that the VDD line should be used as a voltage reference.
 * This means that a value of 2047 corresponds to VDD (usually 3.3 V).
 * This is the default setting. */
#define ADC_REFERENCE_VDD       0

///@}

/* Resolution Settings ********************************************************/
//! \name Resolution Settings
///@{

/*! Specifies that the decimation rate should be 64, which gives
 * 7 bits of resolution.  With this setting, each conversion takes 20
 * microseconds.
 */
#define ADC_BITS_7              0b00110000

/*! Specifies that the decimation rate should be 128, which gives
 * 9 bits of resolution.  With this setting, each conversion takes 36
 * microseconds.
 */
#define ADC_BITS_9              0b00100000

/*! Specifies that the decimation rate should be 256, which gives
 * 10 bits of resolution.  With this setting, each conversion takes 68
 * microseconds.
 */
#define ADC_BITS_10             0b00010000

/*! Specifies that the decimation rate should be 512, which gives
 * 12 bits of resolution.  With this setting, each conversion takes 132
 * microseconds.  This is the default setting.
 */
#define ADC_BITS_12             0

///@}


/* Library Initializer *******************************************************/
//! \name Library Initializer
///@{

/*! \brief Initializes the ADC for use with an analog input voltage on P0_0.
 *
 *  Must be called before this library can be used. Sets up P0_1 as analog
 *  input, and configures ISRQ assertion upon completion of Analog-Digital
 *  Conversion.
 */
void adcInit(void);

///@}


/* Analog-Digital Conversion Functions *****************************************/
//! \name Analog-Digital Conversion Functions
///@{

/*! Reads the voltage on the specified channel.
 *
 * \param channel The number of the channel to measure (0-6 or 13-15).
 *   This parameter can also contain advanced options (see above).
 *
 * \return A number between 0 and 2047, where 0 represents a voltage
 *   of 0 V and 2047 represents a voltage equal to the selected
 *   voltage reference (usually 3.3 V).
 *
 * Example:
 * \code
uint16 result1, result2;
result1 = adcRead(3);  // Measures voltage on P0_3.
result2 = adcRead(4 | ADC_REFERENCE_INTERNAL | ADC_BITS_7);
 * \endcode
 *
 * <b>Revisions:</b>
 * Currently, only P0_1 (AIN1) is supported as an analog input for ADC.
 *
 * This function returns an unsigned number so it is not appropriate for
 * differential channels.  See adcReadDifferential().
 *
 * <b>Revisions</b>:
 * This function no longer returns the ADC result. Instead, the result is
 * intended to be read from the ADC ISRQ asserted by the successful completion
 * of an ADC conversion, as in the following example:
 * \code
ISR(ADC, bank) {

   ADCresult = ADC >> 4; // [3:0] of ADC are unreliable, we throw them away

   // rest of processing code
}
 * \endcode
 */
uint16 adcRead(uint8 channel);

///@}

#endif
