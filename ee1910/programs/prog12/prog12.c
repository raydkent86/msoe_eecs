/*
 * prog12.c
 *
 *  Created on: Feb 1, 2022
 *      Author: bailey-waltzo
 ***************************************
 * EE 1910 PROGRAM 12
 * Owen Bailey
 * Program to load a ten-element array
 * with values given a start and an
 * increment
 *
 * INPUTS:  user inputs two integers
 * OUTPUTS: array where the first integer
 *          becomes the first element and
 *          values are incremented by the
 *          value of the second integer
 ***************************************/

#include <stdio.h> // needed when printing
#define SIZE 10 // in case one wants to modify array size

// function prototypes
void fill_ary(int start, int increment, int num_elements, int the_ary[]);
void print_ary(int num_elements, int the_ary[]);

int main(void)
{
    // splash
    printf("\n\nProgramming HW 11\n");
    printf("Welcome to Owen Bailey's array and debug program\n");

    // declarations
    int array[SIZE];
    int start;
    int increment;

    printf("\nPlease enter the array starting value and the increment: ");
    scanf("%d %d", &start, &increment);
    printf("\n");

    fill_ary(start, increment, SIZE, array);

    print_ary(SIZE, array);

    return 0;
} // end main

void fill_ary(int start, int increment, int num_elements, int the_ary[])
{
    int i;
    for (i = 0; i < num_elements; i++)
        the_ary[i] = start + i * increment;
}

void print_ary(int num_elements, int the_ary[])
{
    int i;
    printf("The array values are: ");
    for (i = 0; i < num_elements; i++)
        printf("%d ", the_ary[i]);
    printf("\n");
}
