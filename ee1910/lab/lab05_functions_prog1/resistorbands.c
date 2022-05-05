/*
 * resistorbands.c
 *
 *  Created on: Jan 12, 2022
 *      Author: bailey-waltzo
 ***************************************
 * EE 1910 LAB 5 PROGRAM 1
 * Owen Bailey
 * MSP432 program to read console inputs
 * and print the value of a resistor
 *
 * INPUTS:  three characters dictating
 *          resistor band colors [console]
 * OUTPUTS: resistance value [console]
 ***************************************/

// includes
#include <stdio.h>
#include <math.h>
#include "msp432.h"

// no clock speed def needed

void main(void)
{
    // splash
    printf(" !! EE 1910 LAB 5 PROGRAM 1 !!\n");

    // input and output declarations
    char band;
    int val; // value of each band, manipulated further down
    int r;
    int i; // counter, exploiting the nature of the infinite loop

    // initialize counter and resistance to zero
    i = 0;
    r = 0;

    // infinite loop
    while(1)
    {
        band = 0; // reset character value
        if (i < 3)
        {
            if (i == 0)
                printf("Please enter the first resistor band value\n");
                    else
                        if (i == 1)
                            printf("Please enter the second resistor band value\n");
                        else
                            if (i == 2)
                                printf("Please enter the third resistor band value\n");
            printf("k - black, b - brown, r - red, o - orange, y - yellow, g - green, l - blue, v - violet, e - grey, w - white:\n");
            scanf(" %c", &band);
            if (band == 'k' || band == 'K')
                val = 0;
            else
                if (band == 'b' || band == 'B')
                    val = 1;
                else
                    if (band == 'r' || band == 'R')
                        val = 2;
                    else
                        if (band == 'o' || band == 'O')
                            val = 3;
                        else
                            if (band == 'y' || band == 'Y')
                                val = 4;
                            else
                                if (band == 'g' || band == 'G')
                                    val = 5;
                                else
                                    if (band == 'l' || band == 'L')
                                        val = 6;
                                    else
                                        if (band == 'v' || band == 'V')
                                            val = 7;
                                        else
                                            if (band == 'e' || band == 'E')
                                                val = 8;
                                            else
                                                if (band == 'w' || band == 'W')
                                                    val = 9;
                                                else
                                                {
                                                    val = -1;  // exception handling case, will prevent execution of code ahead
                                                    printf("ee1910_lab4_prog1: not a valid resistor band value, try again!\n");
                                                }

            if (val != -1) // only executes (and therefore increments the counter) with a valid value for the resistor band
            {
                if (i == 0)
                    r += (val * 10);
                else
                    if (i == 1)
                        r += val;
                    else
                        if (i == 2)
                            r *= (pow(10, val));
                i++;
            }
        }
        else
        {
            printf("The resistance is %d Ohms\n\n", r);

            // reset counter and resistance
            i = 0;
            r = 0;
        }
    }
}
