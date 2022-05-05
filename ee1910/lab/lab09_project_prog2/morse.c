/*
 * morse.c
 *
 *  Created on: Feb 16, 2022
 *      Author: bailey-waltzo
 ***************************************
 * EE 1910 LAB 9 PART 2
 * Owen Bailey
 * Program to display the Morse code for
 * a letter (A-Z) inputted via the
 * console on an LED via the MSP
 *
 * INPUTS:  character a-z in a console
 * OUTPUTS: Morse code on LED
 ***************************************/

#include <stdio.h>
#include "msp.h"

// clock rate in milliseconds and the length of one dot (dash is three units - ISO)
#define CLOCKRATE 3000
#define UNIT 500

void setup_led(void);
char read_character(void);
void get_morse(char c, int morse[4]); // A-Z morse codes are a maximum of four characters, 1 and 0 will represent dash and dot respectively, with -1 representing null/invalid
void morse_out(char c, int morse[4]);

void main(void)
{
    char c;
    int code[4];

    setup_led();

    // infinite loop to keep things running
    while (1)
    {
        c = read_character();
        get_morse(c, code);
        morse_out(c, code);
    }
}

// set LED port direction and initialize to off
void setup_led(void)
{
    P4->DIR |= 0x01;
    P4->OUT &= ~0x01;
}

// read a character from the stream
char read_character(void)
{
    char in;
    printf("Enter a character from A-Z into the console: ");
    scanf(" %c", &in);
    return in;
}

// convert a character to Morse code
void get_morse(char c, int morse[4])
{
    // switches for each Morse digit
    // set digit 1
    switch (c)
    {
    case 'a': case 'A':
        morse[0] = 0;
        morse[1] = 1;
        morse[2] = -1;
        morse[3] = -1;
        break;
    case 'b': case 'B':
        morse[0] = 1;
        morse[1] = 0;
        morse[2] = 0;
        morse[3] = 0;
        break;
    case 'c': case 'C':
        morse[0] = 1;
        morse[1] = 0;
        morse[2] = 1;
        morse[3] = 0;
        break;
    case 'd': case 'D':
        morse[0] = 1;
        morse[1] = 0;
        morse[2] = 0;
        morse[3] = -1;
        break;
    case 'e': case 'E':
        morse[0] = 0;
        morse[1] = -1;
        morse[2] = -1;
        morse[3] = -1;
        break;
    case 'f': case 'F':
        morse[0] = 0;
        morse[1] = 0;
        morse[2] = 1;
        morse[3] = 0;
        break;
    case 'g': case 'G':
        morse[0] = 1;
        morse[1] = 1;
        morse[2] = 0;
        morse[3] = -1;
        break;
    case 'h': case 'H':
        morse[0] = 0;
        morse[1] = 0;
        morse[2] = 0;
        morse[3] = 0;
        break;
    case 'i': case 'I':
        morse[0] = 0;
        morse[1] = 0;
        morse[2] = -1;
        morse[3] = -1;
        break;
    case 'j': case 'J':
        morse[0] = 0;
        morse[1] = 1;
        morse[2] = 1;
        morse[3] = 1;
        break;
    case 'k': case 'K':
        morse[0] = 1;
        morse[1] = 0;
        morse[2] = 1;
        morse[3] = -1;
        break;
    case 'l': case 'L':
        morse[0] = 0;
        morse[1] = 1;
        morse[2] = 0;
        morse[3] = 0;
        break;
    case 'm': case 'M':
        morse[0] = 1;
        morse[1] = 1;
        morse[2] = -1;
        morse[3] = -1;
        break;
    case 'n': case 'N':
        morse[0] = 1;
        morse[1] = 0;
        morse[2] = -1;
        morse[3] = -1;
        break;
    case 'o': case 'O':
        morse[0] = 1;
        morse[1] = 1;
        morse[2] = 1;
        morse[3] = -1;
        break;
    case 'p': case 'P':
        morse[0] = 0;
        morse[1] = 1;
        morse[2] = 1;
        morse[3] = 0;
        break;
    case 'q': case 'Q':
        morse[0] = 1;
        morse[1] = 1;
        morse[2] = 0;
        morse[3] = 1;
        break;
    case 'r': case 'R':
        morse[0] = 0;
        morse[1] = 1;
        morse[2] = 0;
        morse[3] = -1;
        break;
    case 's': case 'S':
        morse[0] = 0;
        morse[1] = 0;
        morse[2] = 0;
        morse[3] = -1;
        break;
    case 't': case 'T':
        morse[0] = 1;
        morse[1] = -1;
        morse[2] = -1;
        morse[3] = -1;
        break;
    case 'u': case 'U':
        morse[0] = 0;
        morse[1] = 0;
        morse[2] = 1;
        morse[3] = -1;
        break;
    case 'v': case 'V':
        morse[0] = 0;
        morse[1] = 0;
        morse[2] = 0;
        morse[3] = 1;
        break;
    case 'w': case 'W':
        morse[0] = 0;
        morse[1] = 1;
        morse[2] = 1;
        morse[3] = -1;
        break;
    case 'x': case 'X':
        morse[0] = 1;
        morse[1] = 0;
        morse[2] = 0;
        morse[3] = 1;
        break;
    case 'y': case 'Y':
        morse[0] = 1;
        morse[1] = 0;
        morse[2] = 1;
        morse[3] = 1;
        break;
    case 'z': case 'Z':
        morse[0] = 1;
        morse[1] = 1;
        morse[2] = 0;
        morse[3] = 0;
        break;
    default:
        morse[0] = -1;
    }
}

void morse_out(char c, int morse[4])
{
    int i;
    if (morse[0] == -1)
        printf("Illegal character, please enter a valid character from A-Z.\n\n");
    else
    {
        printf("Morse code for character %c is ", c);

        // dump each Morse value to console and LED
        for (i = 0 ; i < 4 ; i++)
            if (morse[i] == 1)
            {
                printf("-");
                P4->OUT |= 0x01;
                __delay_cycles(3 * UNIT * CLOCKRATE);
                P4->OUT &= ~0x01;
                __delay_cycles(UNIT * CLOCKRATE); // on for three units, off for one
            }
            else if (morse[i] == 0)
            {
                printf(".");
                P4->OUT |= 0x01;
                __delay_cycles(UNIT * CLOCKRATE);
                P4->OUT &= ~0x01;
                __delay_cycles(UNIT * CLOCKRATE); // on and off for only one unit
            }
            else
                P4->OUT &= ~0x01; // disable LED if neither a dot or dash and do not delay
        printf("\n\n");
    }
}
