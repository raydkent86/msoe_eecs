/*
 * prog1.c
 *
 *  Created on: Dec 6, 2021
 *      Author: bailey-waltzo
 */

// Programming Homework #1
// EE 1910 - Johnson
// Owen Bailey
// Program to do some printing

#include <stdio.h>

// main function
int main(void){
    // required line
    setbuf(stdout, NULL);

    // splash
    printf("\n\nProgramming HW 1\n");
    printf("Welcome to my printing program\n\n");

    // create variables to print later
    int var1; // integer
    int var2;
    float var3; // floating point number (number with decimal point)
    float var4;

    // give variables some values
    var1 = 3;
    var3 = 2.5;

    // ask user to provide value for a variable
    // ask for an input (printf) then get that input (scanf)

    // read in an integer
    printf("Please enter an integer value for var2: ");
    scanf("%i", &var2);

    // read in a floating point numer
    printf("Please enter a float value for var4: ");
    scanf("%f", &var4);

    // print out values
    printf("%i\n", var1);
    printf("%f\n", var3);

    // we can include text in printf calls as well
    printf("Var 2 has the value %i\n", var2);
    printf("%f is the value of var4\n", var4);

    return 0;
}
