/*
 * prog7.c
 *
 *  Created on: Jan 13, 2022
 *      Author: bailey-waltzo
 ***************************************
 * EE 1910 PROGRAM 7
 * Owen Bailey
 * Program to demonstrate if/else
 * statement behavior
 *
 * INPUTS:  user inputs three ints
 * OUTPUTS: a sentence in the console
 *          following the format "X
 *          defeats Y with the help of Z"
 *          where X, Y, and Z are a
 *          selection of Marvel people
 ***************************************/

#include <stdio.h> // needed when printing

int main(void)
{
    setbuf(stdout, NULL); // disable printing buffering

    // splash
    printf("\n\nProgramming HW 7\n");
    printf("Welcome to Owen Bailey's decision program\n");

    // declarations
    int var1;
    int var2;
    int var3;

    while(1) // infinite loop
    {
        printf("\nPlease enter three integer values: ");
        scanf(" %d %d %d", &var1, &var2, &var3);
        printf("\n"); // extra newline to match the example output

        if (var1 > var2)
            printf("Thor defeats ");
        else
            printf("Ronan defeats ");
        if (var3 > 5)
            printf("Groot with help from ");
        else
            printf("Thanos with help from ");
        if (var2 + var3 < 12)
            printf("Iron Man\n");
        else
            printf("Red Skull\n");
    }
    return 0; // technically unreachable
} // end main
