/*
 * prog9.c
 *
 *  Created on: Jan 20, 2022
 *      Author: bailey-waltzo
 ***************************************
 * EE 1910 PROGRAM 9
 * Owen Bailey
 * Program using functions to find the
 * volume and surface area of a box by
 * passing variables by reference
 *
 * INPUTS:  user inputs three floats for
 *          length, width, and height
 * OUTPUTS: volume and surface area of
 *          a cuboid with the given
 *          dimensions, calculated with
 *          the same function
 ***************************************/

#include <stdio.h> // needed when printing

// function prototypes
void calc_data(float w, float l, float h, float *vol, float *area);

int main(void)
{
    setbuf(stdout, NULL); // disable printing buffering

    // splash
    printf("\n\nProgramming HW 9\n");
    printf("Welcome to Owen Bailey's functions program\n");

    // declarations
    float w;
    float l;
    float h;
    float vol;
    float surf_area;

    while(1) // infinite loop
    {
        printf("\nPlease enter values for width, length, and height of your box in cm: ");
        scanf(" %f %f %f", &w, &l, &h);

        calc_data(w, l, h, &vol, &surf_area);

        printf("\nThe volume of your box is %f cm-cubed\n", vol);
        printf("The surface area of your box is %f cm-squared\n", surf_area);
    }
    return 0; // technically unreachable
} // end main

// function for calculating volume and surface area
void calc_data(float w, float l, float h, float *vol, float *area)
{
    *vol = w * l * h;
    *area = (2 * (w * l + w * h + l * h));
}
