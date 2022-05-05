/*
 * prog4.c
 *
 *  Created on: Dec 16, 2021
 *      Author: bailey-waltzo
 ***************************************
 * EE 1910 PROGRAM 4
 * Owen Bailey
 * Program to demonstrate various math
 * and logic operators
 *
 * INPUTS:  user inputs two ints
 * OUTPUTS: the result of a series of
 *          operations in the console
 ***************************************/

#include <stdio.h> // needed when printing

int main(void)
{
    setbuf(stdout, NULL); // disable printing buffering

    // splash
    printf("\n\nProgramming HW 4\n");
    printf("Welcome to Owen Bailey's operator program\n");

    // declarations
    int var1;
    int var2;
    int result;

    while(1) // infinite loop
    {
        printf("Please enter two integer values: ");
        scanf(" %d %d", &var1, &var2);
        result = var1 + var2;
        printf("%d + %d = %d\n", var1, var2, result);
        result = var1 - var2;
        printf("%d - %d = %d\n", var1, var2, result);
        result = var1 * var2;
        printf("%d * %d = %d\n", var1, var2, result);
        result = var1 / var2;
        printf("%d / %d = %d\n", var1, var2, result);
        result = var1 % var2;
        printf("%d %% %d = %d\n", var1, var2, result);
        result = var1 << var2;
        printf("%d << %d = %d\n", var1, var2, result);
        result = var1 >> var2;
        printf("%d >> %d = %d\n", var1, var2, result);
        result = var1 & var2;
        printf("%d & %d = %d\n", var1, var2, result);
        result = var1 | var2;
        printf("%d | %d = %d\n", var1, var2, result);
        result = var1 && var2;
        printf("%d && %d = %d\n", var1, var2, result);
        result = var1 || var2;
        printf("%d || %d = %d\n", var1, var2, result);
    }

    return 0; // technically unreachable
} // end main
