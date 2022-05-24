/************************************************
 * Problem 9
 * Owen Bailey-Waltz
 * 1158982
 * This program will calculate the sum of a
 * number's digits using a loop.
 ************************************************/

#include <stdio.h>

int main()
{
    int num, sum = 0, digit, factor = 1;
    printf("Enter the number : ");
    scanf("%d", &num);
    if (num != 0)
    {
        while (factor <= num && num != 1)
            factor *= 10;
        do
        {
            factor /= 10;
            digit = num / factor;
            sum += digit;
            num -= (digit * factor);
        } while (factor > 1);
    }
    printf("The sum of its digits : %d\n", sum);
    return 0;
}

/* OUTPUTS 9
Enter the number : 123
The sum of its digits : 6

Enter the number : 81
The sum of its digits : 9

Enter the number : 888
The sum of its digits : 24

Enter the number : 72
The sum of its digits : 9

Enter the number : 0
The sum of its digits : 0 */ 
