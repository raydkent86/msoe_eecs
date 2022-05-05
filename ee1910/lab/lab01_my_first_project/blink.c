/*************************
 * Owen Bailey - EE 1910
 * Johnson 031
 *
 * EE 1910 - first program
 * blinkey blinkey lights
 */

#include <stdio.h>
#include "msp.h"

void main(void)
{
	uint32_t i;

	// port 01, bit 0 is onboard LED
	P1->DIR |= 0x01;

	// splash
	printf(" !! HELLO EE1910! !!\n");

	// infinite loop
	while(1)
	{
	    // blink the LED
	    P1->OUT ^= 0x01;

	    // print to console
	    if (P1->OUT & 0x01)
	        printf("ON\n");
	    else
	        printf("OFF\n");

	    // delay
	    for (i = 600000 ; i > 0; i--)
	        ;
	}

	return 0; // unreachable code
}
