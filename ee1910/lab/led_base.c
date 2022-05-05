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
    // set direction for pin 0 of port 4 to output
    // requires port 4 direction register bit to 1
    // if P4 DIR is abcdefgh -> abcdefg1
    // to do this, we'll OR it with 0x01 [0000 0001]
    // that will require P4->DIR = P4->DIR | 0x01
    P4->DIR = P4->DIR | 0x01;

    // splash
    printf("LAB 2: MSP432 TRAFFIC LIGHTS\n");

    // infinite loop
    while(1)
    {
        // set output value to 1 for Port 4 bit 0 and print
        P4->OUT = P4->OUT | 0x01;
        printf("STOP\n");

        // delay for one second
        __delay_cycles(5 * CLKRATE);

        // set output value to 0 for Port 4 bit 0 and print
        P4->OUT = P4->OUT & ~(0x01);
        printf("GO\n");

        // delay for one second
        __delay_cycles(1 * CLKRATE);
    }

    return;
}
