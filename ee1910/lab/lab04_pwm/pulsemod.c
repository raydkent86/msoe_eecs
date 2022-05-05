/*
 * pulsemod.c
 *
 *  Created on: Jan 5, 2022
 *      Author: bailey-waltzo
 *
 ***************************************
 * EE 1910 LAB 4
 * Owen Bailey
 * Program to use pulse wave modulation
 * to alter the brightness of an LED
 * over time
 *
 * INPUTS:  none
 * OUTPUTS: one LED at constant 100%
 *          brightness, another LED
 *          cycling between 0%, 20%,
 *          40%, 60%, 80%, and 100%
 ***************************************/

// includes
#include <stdio.h>
#include "msp432.h"

// define clock speed and PWM period
#define CLOCKRATE 3000 // 30 mHz conversion factor for milliseconds
#define PERIOD 50 // in milliseconds

void main(void)
{
    // splash
    printf(" !! EE 1910 LAB 4 !!\n");

    // setup output ports
    P6->DIR |= 0x01;
    P6->OUT |= 0x01; // initialize first LED to on
    P4->DIR |= 0x01;
    P4->OUT &= !0x01; // initialize second LED to off
    printf("LED 1 set to ON\n\n");

    // infinite loop
    while(1)
    {
        // off (duty cycle 0%)
        printf("LED 2 set to 0%%\n");
        P4->OUT &= !0x01; // turn off LED
        __delay_cycles(CLOCKRATE * 500); // wait half a second

        // duty cycle 20%
        printf("LED 2 set to 20%%\n");
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);

        // duty cycle 40%
        printf("LED 2 set to 40%%\n");
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);

        // duty cycle 60%
        printf("LED 2 set to 60%%\n");
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.6);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.4);

        // duty cycle 80%
        printf("LED 2 set to 80%%\n");
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);
        P4->OUT |= 0x01; // on cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.8);
        P4->OUT &= !0x01; // off cycle
        __delay_cycles(CLOCKRATE * PERIOD * 0.2);

        // duty cycle 100% (full on)
        printf("LED 2 set to 100%%\n");
        P4->OUT |= 0x01; // turn on LED
        __delay_cycles(CLOCKRATE * 500); // wait half a second
    }
}
