/************************************************
 * Program 8
 * Owen Bailey-Waltz
 * 1158982
 * This program finds the sum and mean of a
 * series of numbers specified by the user.
 ************************************************/

#include <stdio.h>

int main()
{
    // declarations
    float x = 0, sum = 0;
    float avg;
    int count = 1;

    // input
    printf("Enter a number (0 to quit): ");
    scanf("%f", &x);

    // calc and input loop
    while (x != 0.0)
    {
        sum += x;
        avg = (sum / (float)count);
        count++;
        printf("Enter a number (0 to quit): ");
        scanf("%f", &x);
    }

    // output
    printf("The sum is %.3f\n", sum);
    printf("The average is %.3f\n", avg);
    return 0;
}
