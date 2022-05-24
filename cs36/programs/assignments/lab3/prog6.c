/************************************************
 * Problem 6
 * Owen Bailey-Waltz
 * 1158982
 * This program will use a deterministic for loop
 * to print a number triangle with the given base
 * size.
 ************************************************/

#include <stdio.h>

int main()
{
    int i, j, base, line = 1;
    printf("Enter base size of triangle for pattern : ");
    scanf("%d", &base);
    if (base > 0)
    {
        printf("\n");
        for (i = 1; i <= base; i++)
        {
            for (j = 1; j <= line; j++)
                printf("%d", j);
            printf("\n");
            line++;
        }
    }
    else
        printf("Invalid value, exiting\n");
    return 0;
}

/* OUTPUTS 6
Enter base size of triangle for pattern : 5

1
12
123
1234
12345

Enter base size of triangle for pattern : 2

1
12

Enter base size of triangle for pattern : 9

1
12
123
1234
12345
123456
1234567
12345678
123456789

Enter base size of triangle for pattern : 6

1
12
123
1234
12345
123456

Enter base size of triangle for pattern : 0
Invalid value, exiting */
