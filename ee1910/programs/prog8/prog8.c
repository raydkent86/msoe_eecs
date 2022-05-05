/*
 * prog8.c
 *
 *  Created on: Jan 18, 2022
 *      Author: bailey-waltzo
 ***************************************
 * EE 1910 PROGRAM 8
 * Owen Bailey
 * Program using functions to find the
 * volume and surface area of a box
 *
 * INPUTS:  user inputs three floats for
 *          length, width, and height
 * OUTPUTS: volume and surface area of
 *          a cuboid with the given
 *          dimensions
 ***************************************/

#include <stdio.h> // needed when printing

// function prototypes
float calc_vol(float w, float l, float h);
float calc_area(float w, float l, float h);

int main(void)
{
    setbuf(stdout, NULL); // disable printing buffering

    // splash
    printf("\n\nProgramming HW 8\n");
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

        vol = calc_vol(w, l, h);
        surf_area = calc_area(w, l, h);

        printf("\nThe volume of your box is %f cm-cubed\n", vol);
        printf("The surface area of your box is %f cm-squared\n", surf_area);
    }
    return 0; // technically unreachable
} // end main

// function for box volume
float calc_vol(float w, float l, float h)
{
    return w * l * h;
}

// function for box surface area
float calc_area(float w, float l, float h)
{
    return (2 * (w * l + w * h + l * h));
}
