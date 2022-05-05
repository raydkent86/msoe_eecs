/*
 * prog2.c
 *
 *  Created on: Dec 9, 2021
 *      Author: bailey-waltzo
 *
 **************************************
 * EE 1910 PROGRAM 2
 * Owen Bailey
 * Program to calculate sphere info
 *
 * Reads in a value for radius
 * Prints the volume, greatest cross
 * section and greatest arc
 *
 * INPUTS:  user input for R
 * OUTPUTS: prints three values
 ***************************************/

#include <stdio.h> // only needed when printing

#define PI 3.14159

int main(void)
{
    setbuf(stdout, NULL); // disable buffering when printing

    // splash
    printf("\n\nProgramming HW 2\n");
    printf("Welcome to my sphere program\n");

    float r; // radius
    float vol; // sphere volume
    float xsec; // greatest cross section area
    float arc; // greatest arc length (circumference)

    // read in value for r
    printf("\nPlease enter a value for the radius in cm: ");
    scanf("%f", &r);

    // calculate volume -> 4/3 * pi * r^3
    vol = (4.0/3.0) * PI * r * r * r;

    // calculate cross section area -> pi * r^2
    xsec = PI * r * r;

    // calculate greatest arc length/circumference -> 2 * pi * r
    arc = 2 * PI * r;

    // print everything out
    printf("\nThe volume of the sphere is %f cm cubed\n", vol);
    printf("The greatest cross section area is %f cm squared\n", xsec);
    printf("The greatest arc length is %f cm", arc);

    return 0;
} // end main
