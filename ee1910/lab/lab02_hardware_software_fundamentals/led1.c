/*
 * led1.c
 *
 *  Created on: Dec 8, 2021
 *      Author: bailey-waltzo
 *
 *******************************************************
 * EE 1910 LAB 2
 * Owen Bailey
 * Program to run a set of three external LEDs through a
 * traffic light sequence emulation
 *
 * The external LEDS is connected to:
 * RED:     Port 4, bit 0 [P4.0]
 * YELLOW:  Port 4, bit 1 [P4.1]
 * GREEN:   Port 4, bit 2 [P4.2]
 * Inputs: none
 * Outputs: LED flashing and console message
 ********************************************************/

#include <stdio.h>
#include "msp.h"

// clock rate
#define CLKRATE 3000000

void main(void)
{
    // set direction for pins 0-2 of port 4 to output
    // if P4 DIR is abcdefgh -> abcde111
    // to do this, we'll OR it with 0x07 [0000 0111]
    P4->DIR = P4->DIR | 0x07;

    // splash
    printf("LAB 2: MSP432 TRAFFIC LIGHTS\n");

    // infinite loop
    while(1)
    {
        // turn everything off
        P4->OUT = P4->OUT & 0x01;
        // set output value to 1 for Port 4 bit 0 and print
        // P4->OUT => abcd efg1
        P4->OUT = P4->OUT | 0x01;
        printf("STOP\n");

        // delay for five seconds
        __delay_cycles(5 * CLKRATE);

        // set output value to 0 for Port 4 bit 0
        // set output value to 1 for Port 4 bit 2
        // print
        // abcd efg1 AND NOT 0000 0001 = abcd efg0
        // abcd efg0 OR 0000 0100 = abcd e1g0
        P4->OUT = P4->OUT & ~(0x01);
        P4->OUT = P4->OUT | 0x04;
        printf("GO\n");

        // delay for five seconds
        __delay_cycles(5 * CLKRATE);

        // set output value to 0 for Port 4 bit 2
        // set output value to 1 for Port 4 bit 1
        // print
        // abcd e1g0 AND NOT 0000 0100 = abcd e1g0 AND 1111 1011 = abcd e0g0
        // abcd e0g0 OR 0000 0010 = abcd e010
        P4->OUT = P4->OUT & ~(0x04);
        P4->OUT = P4->OUT | 0x02;
        printf("CAUTION\n");

        // delay for one second
        __delay_cycles(1 * CLKRATE);

        // set output value to 0 for port 4 bit 1
        P4->OUT = P4->OUT & ~(0x02);
    }

    return;
}
