/*
 * prog6.c
 *
 *  Created on: Jan 6, 2022
 *      Author: bailey-waltzo
 ***************************************
 * EE 1910 PROGRAM 6
 * Owen Bailey
 * Program to do integer division
 *
 * INPUTS:  user inputs two ints
 * OUTPUTS: the result of the formula
 *          (A * 4) / (B / 2) in the
 *          form X remainder Y
 ***************************************/

#include <stdio.h> // needed when printing

int main(void)
{
    setbuf(stdout, NULL); // disable printing buffering

    // splash
    printf("\n\nProgramming HW 6\n");
    printf("Welcome to Owen Bailey's division program\n");

    // declarations
    int a;
    int b;
    int result;
    int remainder;

    while(1) // infinite loop
    {
        printf("\nPlease enter two integer values: ");
        scanf(" %d %d", &a, &b);
        result = (4 * a) / (b / 2);
        remainder = (4 * a) % (b / 2);
        printf("(4 * %d) / (%d / 2) = %d R %d\n", a, b, result, remainder);
    }

    return 0; // technically unreachable
} // end main
