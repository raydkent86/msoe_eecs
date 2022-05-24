/************************************************
 * Problem 4
 * Owen Bailey-Waltz
 * 1158982
 * This program will calculate the sum and average
 * of the first n numbers.
 ************************************************/

#include <stdio.h>

int main()
{
    int n, sum = 0, count = 1;
    float avg;
    printf("Enter the value of n : ");
    scanf("%d", &n);
    if (n > 0)
    {
        do
        {
            sum += count;
            count++;
        } while (count <= n);
        avg = (float)sum / (float)n;
        printf("The sum of first %d numbers =%d\n", n, sum);
        printf("The average of first  18 numbers = %.2f\n", avg);
    }
    else
        printf("Invalid value, exiting\n");
    return 0;
}

/* OUTPUTS 4
Enter the value of n : 18
The sum of first 18 numbers =171
The average of first  18 numbers = 9.50

Enter the value of n : 22
The sum of first 22 numbers =253
The average of first  18 numbers = 11.50

Enter the value of n : 2
The sum of first 2 numbers =3
The average of first  18 numbers = 1.50

Enter the value of n : 91
The sum of first 91 numbers =4186
The average of first  18 numbers = 46.00

Enter the value of n : 0
Invalid value, exiting */
