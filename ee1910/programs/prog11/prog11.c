/*
 * prog11.c
 *
 *  Created on: Jan 27, 2022
 *      Author: bailey-waltzo
 ***************************************
 * EE 1910 PROGRAM 11
 * Owen Bailey
 * Program using a function and a while
 * loop to find the product of two ints
 *
 * INPUTS:  user inputs two integers
 * OUTPUTS: product of those integers
 *          calculated via a while loop
 ***************************************/

#include <stdio.h> // needed when printing

// function prototypes
void calc_while_product(int multiplier, int multiplicand, int *prod);

int main(void)
{
    setbuf(stdout, NULL); // disable printing buffering

    // splash
    printf("\n\nProgramming HW 11\n");
    printf("Welcome to Owen Bailey's multiplier (while) program\n");

    // declarations
    int a;
    int b;
    int x;

    while(1) // infinite loop
    {
        printf("\nPlease enter integer values for the multiplier and multiplicand: ");
        scanf(" %d %d", &a, &b);
        calc_while_product(a, b, &x);
        printf("\nThe product of %d and %d is %d\n", a, b, x);
    }
    return 0; // technically unreachable
} // end main

// function for calculating volume and surface area
void calc_while_product(int multiplier, int multiplicand, int *prod)
{
    int i;
    i = 0;
    *prod = 0;
    while (i < multiplier)
    {
        *prod += multiplicand;
        i++;
    }
    return;
}
