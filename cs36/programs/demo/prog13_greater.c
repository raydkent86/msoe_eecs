/************************************************
 * Program 13
 * Owen Bailey-Waltz
 * 1158982
 * This program will use a function to find the
 * largest of three integers.
 ************************************************/

#include <stdio.h>

int greater(int, int, int);

int main()
{
    int a, b, c;
    printf("Enter three numbers: ");
    scanf("%d%d%d", &a, &b, &c);
    printf("The maximum is %d\n", greater(a, b, c));
    return 0;
}

int greater(int a, int b, int c)
{
    if (a >= b && a >= c)
        return a;
    else
        if (b >= a && b >= c)
            return b;
        else
            return c;
}
