/*
 * prog10.c
 *
 *  Created on: Jan 25, 2022
 *      Author: bailey-waltzo
 ***************************************
 * EE 1910 PROGRAM 10
 * Owen Bailey
 * Program using a function and a for
 * loop to find the product of two ints
 *
 * INPUTS:  user inputs two integers
 * OUTPUTS: product of those integers
 *          calculated via a for loop
 ***************************************/

#include <stdio.h> // needed when printing

// function prototypes
int calc_for_product(int multiplier, int multiplicand);

int main(void)
{
    setbuf(stdout, NULL); // disable printing buffering

    // splash
    printf("\n\nProgramming HW 10\n");
    printf("Welcome to Owen Bailey's multiplier program\n");

    // declarations
    int a;
    int b;
    int x;

    while(1) // infinite loop
    {
        printf("\nPlease enter integer values for the multiplier and multiplicand: ");
        scanf(" %d %d", &a, &b);

        x = calc_for_product(a, b);

        printf("\nThe product of %d and %d is %d\n", a, b, x);
    }
    return 0; // technically unreachable
} // end main

// function for calculating volume and surface area
int calc_for_product(int multiplier, int multiplicand)
{
    int i;
    int product;
    product = 0;
    for (i = 0 ; i < multiplier; i++)
        product += multiplicand;
    return product;
}
