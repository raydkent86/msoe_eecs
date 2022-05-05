/*
 * prog3.c
 *
 *  Created on: Dec 14, 2021
 *      Author: bailey-waltzo
 ***************************************
 * EE 1910 PROGRAM 3
 * Owen Bailey
 * Program to create some variables and
 * print them out
 *
 * INPUTS:  user inputs an int, a float,
 *          and a char
 * OUTPUTS: each input printed as an int,
 *          a float, and a char
 ***************************************/

#include <stdio.h> // needed when printing

int main(void)
{
    setbuf(stdout, NULL); // disable printing buffering

    // splash
    printf("\n\nProgramming HW 3\n");
    printf("Welcome to Owen Bailey's types program\n");

    // declarations
    int var1;
    float var2;
    char var3;

    printf("\nPlease enter an integer value for var1: ");
    scanf("%d", &var1);
    printf("the value you entered is %d as an int, %c as a char, and %f as a float", var1, var1, var1);

    printf("\nPlease enter a float value for var2: ");
    scanf(" %f", &var2);
    printf("the value you entered is %d as an int, %c as a char, and %f as a float", var2, var2, var2);

    printf("\nPlease enter a character for var3: ");
    scanf(" %c", &var3);
    printf("the value you entered is %d as an int, %c as a char, and %f as a float", var3, var3, var3);

    return 0;
}
