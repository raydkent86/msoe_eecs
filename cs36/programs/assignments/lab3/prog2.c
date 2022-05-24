/************************************************
 * Problem 2
 * Owen Bailey-Waltz
 * 1158982
 * This program will read numbers and count the
 * types of numbers entered (+/-/0)
 ************************************************/

#include <stdio.h>

int main()
{
    int x, pos = 0, neg = 0, zero = 0;
    printf("Enter any number ,-1 to quit : ");
    scanf("%d", &x);
    while (x != -1)
    {
        if (x > 0)
            pos++;
        else
            if (x < 0)
                neg++;
            else
                zero++;
        printf("Enter any number ,-1 to quit : ");
        scanf("%d", &x);
    }
    printf("Count of positive numbers entered = %d\n", pos);
    printf("Count of negative numbers entered = %d\n", neg);
    printf("Count of zeroes numbers entered = %d\n", zero);
    return 0;
}

/* OUTPUTS 2
Enter any number ,-1 to quit : -12
Enter any number ,-1 to quit : 108
Enter any number ,-1 to quit : -24
Enter any number ,-1 to quit : 0
Enter any number ,-1 to quit : -23
Enter any number ,-1 to quit : -1
Count of positive numbers entered = 1
Count of negative numbers entered = 3
Count of zeroes numbers entered = 1

Enter any number ,-1 to quit : 5
Enter any number ,-1 to quit : 2
Enter any number ,-1 to quit : -3
Enter any number ,-1 to quit : -1
Count of positive numbers entered = 2
Count of negative numbers entered = 1
Count of zeroes numbers entered = 0

Enter any number ,-1 to quit : 0
Enter any number ,-1 to quit : 0
Enter any number ,-1 to quit : -1
Count of positive numbers entered = 0
Count of negative numbers entered = 0
Count of zeroes numbers entered = 2

Enter any number ,-1 to quit : -1
Count of positive numbers entered = 0
Count of negative numbers entered = 0
Count of zeroes numbers entered = 0

Enter any number ,-1 to quit : 9
Enter any number ,-1 to quit : 9
Enter any number ,-1 to quit : 8
Enter any number ,-1 to quit : 2
Enter any number ,-1 to quit : 48
Enter any number ,-1 to quit : 11
Enter any number ,-1 to quit : -14
Enter any number ,-1 to quit : -29
Enter any number ,-1 to quit : -1
Count of positive numbers entered = 6
Count of negative numbers entered = 2
Count of zeroes numbers entered = 0 */
