/*! \file time.h
 * \brief Allows timing abilities by setting up various timers.
 *
 * &nbsp;&nbsp;&nbsp;&nbsp;<i>Timer 4</i>
 *
 * This module helps you keep track of time in milliseconds. Calling timeInit()
 * sets up a timer 4 to overflow (on average) every millisecond. You can then
 * get the elapsed time by calling getMs().
 *
 * &nbsp;&nbsp;&nbsp;&nbsp;<i>Timer 3</i>
 *
 * This module also defines the sampling rate. calling isrTimerInit() set sets
 * up timer 3 to overflow every 100us. This defines our sampling rate as 10KHz.
 *
 * Timer 3 will create an ISRQ every time it overflows. Defining
 * an ISR with T3 as its source will allows us to capture the event and use it
 * for sampling.
 *
 * For these interrupt to work, you must write
 * <code>#include <time.h></code>
 * or
 * <code>#include <wixel.h></code>
 * in the source file that contains your main() function.
 * Also, you must call boardClockInit() or else the timing will
 * be wrong.
 *
 * Both boardClockInit() and timeInit() are called from systemInit(), so you
 * can simply call systemInit() to initialize everything.
 */

#ifndef _WIXEL_TIME_H
#define _WIXEL_TIME_H

/* Dependencies **************************************************************/

#include <cc2511_map.h>

/* Millisecond Timing Functions **********************************************/

//! \name Millisecond Timing Functions
///@{
/*!\brief Returns the number of ms elapsed.
 *
 * \return
 *       the number of milliseconds elapsed since timeInit() was called.
 */
uint32 getMs();

/*!\brief Keeps track of time in ms.
 *
 * This interrupt fires (on average) every millisecond and increments an
 * an internal counter which represents the number of milliseconds elapsed since
 * timeInit() was called.
 */
ISR(T4, 1);

///@}

/* Delay Functions **********************************************************/

//! \name Delay Functions
///@{
/*!\brief Delays for the given number of microseconds.
 *
 * This function delays for the specified number of microseconds using
 * a simple loop.  If an interrupt occurs during this function, the delay
 * will be longer than specified.
 *
 * \param microseconds
 *    The number of microseconds delay; any value between 0 and 255.
 */
void delayMicroseconds(uint8 microseconds);

/*!\brief Delays for the given number of milliseconds.
 *
 * This function delays for the specified number of milliseconds using
 * a simple loop.  If an interrupt occurs during this function, the delay
 * will be longer than specified.
 *
 * \param milliseconds
 *       The number of milliseconds delay; any value between 0 and 65535.
 */
void delayMs(uint16 milliseconds);

///@}

/* Library Initializers *****************************************************/

//! \name Library Initializers
///@{
/*!\brief Initializes Timer 4 to tick (on average) every millisecond.
 *
 * Note that you will also have to call boardClockInit() or systemInit(), to get
 * the system clock running at the right speed, otherwise the millisecond
 * timing will be off by a large factor.
 *
 * The number of milliseconds which have elapsed can be obtained by calling
 * getMs().
 *
 * This function is called by systemInit().
 */
void timeInit();

/*!\brief Initializes Timer 3 to overflow every 100us.
 *
 * Timer 3 will assert an ISRQ every time it reaches overflow. This
 * is used to define the sampling rate. See the ISR defined in
 * vibes_lab_tx_4.2.c or vibes_lab_rx_4.2.c for more information.
 *
 * Current sampling rate is 10KHz.
 */
void isrTimerInit();

///@}

#endif
