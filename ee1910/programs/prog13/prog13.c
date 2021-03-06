/*
 * prog13.c
 *
 *  Created on: Feb 10, 2022
 *      Author: bailey-waltzo
 ***************************************
 * EE 1910 PROGRAM 13
 * Owen Bailey
 * Program to rotate an n x n integer
 * array counterclockwise
 *
 * INPUTS:  user inputs an array size and
 *          the values in each row
 * OUTPUTS: original and rotated array
 *          values
 ***************************************/

#include <stdio.h>

// function prototypes
void readArray(int n, int the_ary[][n]);
void rotateArray(int n, int the_ary[][n]);
void printArray(int n, const int the_ary[][n]);

int main(void)
{
    setbuf(stdout, NULL); // fix CCS console bug

    // splash
    printf("\n\nProgramming HW 13\n");
    printf("Welcome to Owen Bailey's 2D array program\n");

    // size declaration - required before we can create the multi-dimensional arrays
    int n;

    // get array size
    printf("\nPlease enter the size for your n x n array, n = ");
    scanf("%d", &n);

    int my_ary[n][n];

    readArray(n, my_ary);

    // print array as entered
    printf("\nYour entered array is:\n");
    printArray(n, my_ary);

    // rotate and print out
    rotateArray(n, my_ary);
    printf("\nYour rotated array is:\n");
    printArray(n, my_ary);

    return 0;
} // end main

void readArray(int n, int the_ary[][n])
{
    int i;
    int j;
    for (i = 0 ; i < n ; i++)
    {
        printf("Please enter the numbers for row %d: ", i);
        for (j = 0 ; j < n ; j++)
            scanf("%d", &the_ary[i][j]);
    }
    return;
}

void rotateArray(int n, int the_ary[][n])
{
    int i;
    int j;
    int rotated[n][n]; // separate array for the rotated version

    /* rotation takes each element from the original array and puts
    it in the corresponding column from bottom to top */
    for (i = 0 ; i < n ; i++)
        for (j = 0 ; j < n ; j++)
            rotated[n - j - 1][i] = the_ary[i][j];

    // then, those values are copied to the original array
    for (i = 0 ; i < n ; i++)
        for (j = 0 ; j < n ; j++)
            the_ary[i][j] = rotated[i][j];
    return;
}

void printArray(int n, const int the_ary[][n])
{
    int i;
    int j;
    for (i = 0 ; i < n ; i++)
    {
        for (j = 0 ; j < n ; j++)
            printf("%d ", the_ary[i][j]);
        printf("\n");
    }
    return;
}
