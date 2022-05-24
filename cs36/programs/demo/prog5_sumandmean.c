/************************************************
 * Program 5
 * Owen Bailey-Waltz
 * 1158982
 * This program finds the sum and mean of three
 * numbers.
 ************************************************/

#include <stddef.h>
#include <stdio.h>

int main()
{
    // declarations
    int a, b, c, sum;
    float avg;

    // data
    a = 10;
    b = 24;
    c = 30;

    // calculation
    sum = a + b + c;
    avg = sum / (float)3;
    // you need to cast when dividing by an integer
    // C will assume that 3 is an int, so you need
    // to tell it otherwise
    
    /* equivalent expression, but DO NOT DO THIS
    IN DR. LOKE'S CLASS, because it does not work
    for every use case */
    avg = sum / 3.0;

    // output
    printf("The three numbers are %d %d %d\n", a, b, c);
    printf("The sum is %d\n", sum);
    printf("The average is %f\n", avg);
    
    // exit
    return 0;
}

/* RESULT
The three numbers are 10 20 30
The sum is 60
The average is 20.000000
*/
