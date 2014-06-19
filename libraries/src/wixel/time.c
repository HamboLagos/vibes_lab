/*! \file time.c
 * \brief source file for time component of <code>wixel.lib</code>.
 *
 * Sets up timer 4 (ms timer) and timer 3(sampling rate timer). See time.h for
 * details on how to use this library.
 */

/* Dependencies **************************************************************/

#include <cc2511_types.h>
#include <time.h>

/* Variables *****************************************************************/

/*! \brief Time elapsed, in ms, since timeInit() was called. */
PDATA volatile uint32 timeMs = 0;

/* Millisecond Timing Functions **********************************************/

//! \name Millisecond Timing Functions
///@{
uint32 getMs()
{
   uint8 oldT4IE = T4IE; // store state of timer 4 interrupt (active or not?)
   uint32 time;
   T4IE = 0; // disable timer 4 interrupt
   time = timeMs; // copy millisecond timer count into a safe variable
   T4IE = oldT4IE; // restore timer 4 interrupt to its original state
   return time; // return timer count copy
}

ISR(T4, 1)
{
   timeMs++;

   // If we do this, then on average the interrupts will occur 1ms apart
   T4CC0 ^= 1;
}

///@}

/* Delay Functions **********************************************************/

//! \name Delay Functions
///@{
void delayMs(uint16 milliseconds)
{
   // TODO: make this more accurate.
   // A great way would be to use the compare feature of Timer 4 and then
   // wait for the right number of compare events to happen, but then we
   // can't use that channel for PWM in the future.
   while(milliseconds--)
   {
      delayMicroseconds(250);
      delayMicroseconds(250);
      delayMicroseconds(250);
      delayMicroseconds(249); // there's some overhead, so only delay by 249 here
   }
}

///@}

/* Library Initializers *****************************************************/

//! \name Library Initializers
///@{
void timeInit()
{
   // Timer 4 set up
   T4CC0 = 187; // Reaches overflow every 1 ms (1KHz cycle)

   T4IE = 1; // Enable Timer 4 interrupt.  (IEN1.T4IE=1)

   // DIV=111: 1:128 prescaler (tick speed is now 187.5KHz)
   // START=1: Start the timer
   // OVFIM=1: Enable the overflow interrupt.
   // CLR=1  : Reset timer to 0
   // MODE=10: Modulo (count to T4CC0)
   T4CTL = 0b11111110;

   EA = 1; // Globally enable interrupts (IEN0.EA=1).
}

void isrTimerInit()
{
   // Timer 3 set up
   T3CC0 = 150; // Reaches overflow every 100us (10KHz cycle)

   T3IE = 1; // Enable Timer 3 interrupt.   (IEN1.T3IE=1)

   // DIV=100: 1:16 prescaler (tick speed is now 1.5MHz)
   // START=1: Start the timer
   // OVFIM=1: Enable the overflow interrupt.
   // CLR=1  : Reset timer to 0
   // MODE=10: Modulo (count to T3CC0)
   T3CTL = 0b10011110;

   // Timer 3 IRQ priority = 3 (highest)
   IP1 |= 1 << 3;
   IP0 |= 1 << 3;
}

///@}
