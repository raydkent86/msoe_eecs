/*
 * prog5.c
 *
 *  Created on: Jan 4, 2022
 *      Author: bailey-waltzo
 ***************************************
 * EE 1910 PROGRAM 5
 * Owen Bailey
 * Program to demonstrate type conversion
 *
 * INPUTS:  user inputs two ints
 * OUTPUTS: the quotient of these two
 *          ints with and without type
 *          conversion applied, both A/B
 *          and B/A
 ***************************************/

#include <stdio.h> // needed when printing

int main(void)
{
    setbuf(stdout, NULL); // disable printing buffering

    // splash
    printf("\n\nProgramming HW 5\n");
    printf("Welcome to Owen Bailey's type conversion program\n");

    // declarations
    int a;
    int b;

    while(1) // infinite loop
    {
        printf("\nPlease enter two integer values: ");
        scanf(" %d %d", &a, &b);
        printf("no type conversion, printed as an int: %d / %d = %d\n", a, b, (a / b));
        printf("no type conversion, printed as a float: %d / %d = %f\n", a, b, (a / b));
        printf("no type conversion, printed as an int: %d / %d = %d\n", b, a, (b / a));
        printf("no type conversion, printed as a float: %d / %d = %f\n", b, a, (b / a));
        printf("with type conversion, printed as an int: %d / %d = %d\n", a, b, ((float)a / (float)b));
        printf("with type conversion, printed as a float: %d / %d = %f\n", a, b, ((float)a / (float)b));
        printf("with type conversion, printed as an int: %d / %d = %d\n", b, a, ((float)b / (float)a));
        printf("with type conversion, printed as a float: %d / %d = %f\n", b, a, ((float)b / (float)a));
    }

    return 0; // technically unreachable
} // end main
