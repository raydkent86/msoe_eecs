/************************************************
 * Problem 9
 * Owen Bailey-Waltz
 * 1158982
 * This program will take a number from 1 to 10
 * and will determine whether the number is even
 * or odd.
 ************************************************/

#include <stdio.h>

int main()
{
    // decl/input
    int num;
    printf("Enter a number from 1 to 10 : ");
    scanf("%d", &num);

    // logic/output
    switch (num)
    {
        case 1: case 3: case 5: case 7: case 9:
            printf("%d is odd\n", num);
            break;
        case 2: case 4: case 6: case 8: case 10:
            printf("%d is even\n", num);
            break;
        default:
            printf("Invalid input\n");
    }

    // exit
    return 0;
}

/* OUTPUTS #9
Enter a number from 1 to 10 : 2
2 is even

Enter a number from 1 to 10 : 4
4 is even

Enter a number from 1 to 10 : 1
1 is odd

Enter a number from 1 to 10 : 9
9 is odd

Enter a number from 1 to 10 : 11
Invalid input */
