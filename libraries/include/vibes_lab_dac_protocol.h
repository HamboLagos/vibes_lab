/*! \file vibes_lab_dac_protocol.h
 * \brief Provides the public interface for communicating with the DAC (uses the
 * I<sup>2</sup>C protocol).
 *
 * This library makes many improvements over the pre-written I<sup>2</sup>C
 * library, but it does so at the cost of flexibility (which we do not care
 * about). The most significant changes are:
 * -# SDA pin is set permanently to P1_1
 * -# SCL pin is set permanently to P1_0
 * -# No delay function is specified
 *    - Timing delays are a side-effect of driving pins high/low
 * -# SDA and SCL are set by writing to pin SFRs directly
 * -# The Wixel drives SCL line
 *    - Slave devices cannot stretch clock to slow transfer rates
 *    - There is no bus timeout functionality implemented
 * -# Frequency is permanently set to ~430Kbps data rate
 * -# We only implement master-transmit-slave-receive operations
 *
 * The 430KHz figure above was gathered by thoroughly testing this library
 * with the DAC used in the lab.
 *
 * In the lab we are sending 16 bits of data/sample (12 bits for the sample and
 * 4 bits to specify the operating mode of the DAC), so to transfer 1 sample to
 * the DAC takes 37.21us.
 *
 * \sa i2c_doc
 */

#ifndef VIBES_LAB_DAC_PROTOCOL_H_
#define VIBES_LAB_DAC_PROTOCOL_H_

/* Dependencies **************************************************************/

#include <cc2511_types.h>
#include <cc2511_map.h>

/* Pin Definitions ***********************************************************/

//! \name Pin Definitions
///@{

/*!\brief P1_0 is Serial Clock */
#define SCL P1_0

/*!\brief P1_1 is Serial Data */
#define SDA P1_1

///@}

/* Library Initializer *******************************************************/

//! \name Library Initializer
///@{

/*!\brief configures the #SDA and #SCL pins.
 *
 * P1_0 is SCL and P1_1 is SDA.
 */
void dacInit();

///@}

/* Functions *****************************************************************/

/*!\brief sends the I<sup>2</sup>C start command.
 *
 * Used to initiate data transfers.
 */
void dacStart();

/*!\brief sends the I<sup>2</sup>C stop command.
 *
 * Used to end data transfers.
 */
void dacStop();

/*!\brief Sends the specified byte to the DAC.
 *
 * The First byte sent after a dacStart() command must be the address byte,
 * which also contains the R/W bit. All I<sup>2</sup>C communications should be
 * ended with the dacStop() command, unless the device being addressed supports
 * a repeat transfer mode.
 *
 * Here is an example how to use this library:
 *
 * \code
 * #define ADDRESS ...;
 *
 *      dacStart(); // Wake up all devices on bus
 *      dacSendByte(ADDRESS); // Address the device you want
 *      // send data byte 0, 1, 2, ...
 *      dacStop(); // Signals the is bus free to all devices on the bus
 * \endcode
 *
 * \param byte
 *          the data byte to transfer
 * \return
 *          TRUE if DAC nak'd the transmission, FALSE if ack'd
 */
BIT dacSendByte(uint8 byte);

#endif
