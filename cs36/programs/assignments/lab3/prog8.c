/************************************************
 * Problem 8
 * Owen Bailey-Waltz
 * 1158982
 * This program will use a for loop to print out
 * a multiplication table from 0 to 12 for a
 * specified number.
 ************************************************/

#include <stdio.h>

int main()
{
    int num, i;
    printf("Enter the multiplication table for : ");
    scanf("%d", &num);
    printf("\n");
    for (i = 0; i <= 12; i++)
        printf("%d X %d = %d\n", num, i, (num * i));
    return 0;
}

/* OUTPUTS 8
Enter the multiplication table for : 2

2 X 0 = 0
2 X 1 = 2
2 X 2 = 4
2 X 3 = 6
2 X 4 = 8
2 X 5 = 10
2 X 6 = 12
2 X 7 = 14
2 X 8 = 16
2 X 9 = 18
2 X 10 = 20
2 X 11 = 22
2 X 12 = 24

Enter the multiplication table for : 9

9 X 0 = 0
9 X 1 = 9
9 X 2 = 18
9 X 3 = 27
9 X 4 = 36
9 X 5 = 45
9 X 6 = 54
9 X 7 = 63
9 X 8 = 72
9 X 9 = 81
9 X 10 = 90
9 X 11 = 99
9 X 12 = 108

Enter the multiplication table for : -2

-2 X 0 = 0
-2 X 1 = -2
-2 X 2 = -4
-2 X 3 = -6
-2 X 4 = -8
-2 X 5 = -10
-2 X 6 = -12
-2 X 7 = -14
-2 X 8 = -16
-2 X 9 = -18
-2 X 10 = -20
-2 X 11 = -22
-2 X 12 = -24

Enter the multiplication table for : 25

25 X 0 = 0
25 X 1 = 25
25 X 2 = 50
25 X 3 = 75
25 X 4 = 100
25 X 5 = 125
25 X 6 = 150
25 X 7 = 175
25 X 8 = 200
25 X 9 = 225
25 X 10 = 250
25 X 11 = 275
25 X 12 = 300

Enter the multiplication table for : 7

7 X 0 = 0
7 X 1 = 7
7 X 2 = 14
7 X 3 = 21
7 X 4 = 28
7 X 5 = 35
7 X 6 = 42
7 X 7 = 49
7 X 8 = 56
7 X 9 = 63
7 X 10 = 70
7 X 11 = 77
7 X 12 = 84 */
