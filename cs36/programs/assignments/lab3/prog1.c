/************************************************
 * Problem 1
 * Owen Bailey-Waltz
 * 1158982
 * This program will calculate the sum of all the
 * numbers from m to n.
 ************************************************/

#include <stdio.h>

int main()
{
    int m, n, sum = 0;
    printf("Enter the value of m : ");
    scanf("%d", &m);
    printf("Enter the value of n : ");
    scanf("%d", &n);
    if (m >= n)
        printf("Invalid input, m must be less than n!\n");
    else
    {
        while (m <= n)
        {
            sum += m;
            m++;
        }
        printf("Sum = %d\n", sum);
    }
    return 0;
}

/* OUTPUTS 1
Enter the value of m : 7
Enter the value of n : 11
Sum = 45

Enter the value of m : 9
Enter the value of n : 33
Sum = 525

Enter the value of m : 9 
Enter the value of n : 7
Invalid input, m must be less than n!

Enter the value of m : 7 
Enter the value of n : 10
Sum = 34

Enter the value of m : 1
Enter the value of n : 9
Sum = 45 */
