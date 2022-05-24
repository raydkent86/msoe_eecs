/************************************************
 * Problem 2
 * Owen Bailey-Waltz
 * 1158982
 * This program will determine if a number is
 * even or odd.
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
        printf("Zero is neither even nor odd\n");
    else
        if (num % 2)
            printf("%d is odd\n", num);
        else
            printf("%d is even\n", num);
    
    // exit
    return 0;
}

/* OUTPUTS #2
Enter any number : 125
125 is odd

Enter any number : 112
112 is even

Enter any number : 191
191 is odd

Enter any number : 2
2 is even

Enter any number : 0
Zero is neither even nor odd */
