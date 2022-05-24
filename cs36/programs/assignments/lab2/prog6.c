/************************************************
 * Problem 6
 * Owen Bailey-Waltz
 * 1158982
 * This program will determine if a number is
 * positive, negative, or equal to zero.
 ************************************************/

#include <stdio.h>

int main()
{
    // decl/input
    int num;
    printf("Enter any number : ");
    scanf("%d", &num);

    // logic/output
    if (num == 0)
        printf("The number is equal to zero\n");
    else
        if (num < 0)
            printf("The number is negative\n");
        else
            if (num > 0)
                printf("The number is positive\n");
            else
                printf("Invalid\n");
    
    // exit
    return 0;
}

/* OUTPUTS #6
Enter any number : 0
The number is equal to zero

Enter any number : 12
The number is positive

Enter any number : -2
The number is negative

Enter any number : 9
The number is positive

Enter any number : 19
The number is positive */
