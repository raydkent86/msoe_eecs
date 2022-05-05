/*
 * button.c
 *
 *  Created on: Dec 15, 2021
 *      Author: bailey-waltzo
 *
 ***************************************
 * EE 1910 LAB 3
 * Owen Bailey
 * Program to use a button to digitally
 * toggle a set of LEDs
 *
 * INPUTS:  button push
 * OUTPUTS: LED lights
 ***************************************/

// Includes
#include "msp432.h"
#include <stdio.h>

#define CLOCKRATE 3000000

// Global Variables (none)

// Function Prototypes (none)

void main(void)
{
    // Local Variables
    uint8_t in_val_1; // port 1
    uint8_t in_bit_1; // 1.5
    uint8_t in_val_2; // port 5
    uint8_t in_bit_2; // 5.5
    uint8_t P4_2_on; // LED 1
    uint8_t P4_2_off;
    uint8_t P4_1_on; // LED 2
    uint8_t P4_1_off;
    uint8_t P3_2_on; // LED 3 (green/both)
    uint8_t P3_2_off;

    // Setup LED
    // Note: Port 4, bit 2 (P4.2) is pin 25
    P4->DIR |= 0x06;        // Configure P4.0 through P4.2 as output (abcd e11h)
    P4->OUT &= ~0x06;       // initialize the red LEDs to off (abcd e00h)
    P3->DIR |= 0x04;        // Configure P3.2 as output
    P3->OUT &= ~0x04;       // initialize the green LED to off

    // Setup button
    // Button pushed - pin -> 0
    // Note: Port 1, bit 5 (P1.5) is pin 7
    P1->DIR &= ~0x20;       // Configure P1.5 as input
    P5->DIR &= ~0x20;       // Configure P5.5 as input

    // Splash
    printf(" !! EE 1910 LAB 3 !!\n");

    // Infinite Loop
    while(1)
    {
        // Read the button
        in_val_1 = P1->IN & 0x20;       // read first input port and isolate bit 5(0 or 32)
        in_bit_1 = in_val_1 && 1;       // get logical value for bit 5 (0 or 1)
        in_val_2 = P5->IN & 0x20;       // read second input port and isolate bit 5
        in_bit_2 = in_val_2 && 1;

        // Prepare to output to the LED
        // Here we don't want to change any other bits in the output port
        // Note - this approach is in-efficient but instructive
        P4_2_on = P4->OUT | 0x04;   // define required 'on' output - only sets P4.2 to 1, others unchanged (abcd e1gh)
        P4_2_off = P4->OUT & ~0x04; // define required 'off' output - only sets P4.2 to 0, others unchanged (abcd e0gh)
        P4->OUT = (P4_2_on * (!in_bit_1)) + (P4_2_off * in_bit_1);
        P4_1_on = P4->OUT | 0x02; // define required 'on' output for P4.1 (abcd ef1h)
        P4_1_off = P4->OUT & ~0x02; // define required 'off' output for P4.1 (abcd ef0h)
        P4->OUT = (P4_1_on * (!in_bit_2)) + (P4_1_off * in_bit_2);
        P3_2_on = P3->OUT | 0x04; // define required 'on' output for P4.0 (abcd efg1)
        P3_2_off = P3->OUT & ~0x04; // define required 'off' output for P4.0 (abcd efg0)
        P3->OUT = (P3_2_on * (!(in_bit_1 || in_bit_2))) + (P3_2_off * (in_bit_1 || in_bit_2)); // inverted because physical network is pull-down

        printf("SWITCH 1 AND 2 STATUS: %i %i\n", in_bit_1, in_bit_2);

        __delay_cycles(CLOCKRATE / 4); // 250ms
    } // end while

    return;
} // end main
