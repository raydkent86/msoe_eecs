/*
 * seriesparallel.c
 *
 *  Created on: Jan 12, 2022
 *      Author: bailey-waltzo
 ***************************************
 * EE 1910 LAB 5 PROGRAM 2
 * Owen Bailey
 * Console program to read three resistor
 * values and find the equivalent series
 * and parallel resistance
 *
 * INPUTS:  three resistor values (int)
 * OUTPUTS: equivalent resistance for
 *          all three in series and all
 *          three in parallel (float)
 ***************************************/

// includes
#include <stdio.h>
#include <math.h>

int main(void)
{
    setbuf(stdout, NULL); // required when printing in a console program

    // splash
    printf(" !! EE 1910 LAB 5 PROGRAM 2 !!\n");

    // input and output declarations
    int r1;
    int r2;
    int r3;
    float r_s;
    float r_p;

    // infinite loop
    while(1)
    {
        printf("Please enter the three resistor values separated by a space\n");
        scanf(" %d %d %d", &r1, &r2, &r3);
        r_s = r1 + r2 + r3;
        r_p = pow((((float)1 / (float)r1) + ((float)1 / (float)r2) + ((float)1 / (float)r3)), -1);

        printf("The series resistance is %f Ohms\n", r_s);
        printf("The parallel resistance is %f Ohms\n\n\n", r_p);
    }
    return 0; // technically unreachable code since the program runs forever
}
