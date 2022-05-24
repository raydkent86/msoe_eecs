/************************************************
 * Problem 10
 * Owen Bailey-Waltz
 * 1158982
 * This program will answer whether the sum of
 * the cubes of its digits is equal to the number
 * itself, and will run until the user enters a
 * "*" into the console.
 ************************************************/

#include <stdio.h>

int main()
{
    int num = 0, i, sum, digit, factor = 1;
    char quit = 0;
    do
    {
        printf("Enter a number, or * to quit : ");
        if (scanf("%d", &num) == 0)
            quit = getchar();
        if (quit != '*')
        {
            if (num != 0)
            {
                sum = 0;
                i = num;
                while (factor <= num && num != 1)
                    factor *= 10;
                do
                {
                    factor /= 10;
                    digit = i / factor;
                    printf("%d**3", digit);
                    sum += (digit * digit * digit);
                    i -= (digit * factor);
                    if (factor > 1)
                        printf(" + ");
                } while (factor > 1);
                if (sum == num)
                    printf(" is = %d\n", num);
                else
                    printf(" is not = %d\n", num);
            }
            else
                if (num == 0)
                    printf("0**3 is = 0\n");
        }
    } while (quit != '*');
    return 0;
}

/* OUTPUTS 10
Enter a number, or * to quit : 432
4**3 + 3**3 + 2**3 is not = 432
Enter a number, or * to quit : 371
3**3 + 7**3 + 1**3 is = 371
Enter a number, or * to quit : 5921
5**3 + 9**3 + 2**3 + 1**3 is not = 5921
Enter a number, or * to quit : 88
8**3 + 8**3 is not = 88
Enter a number, or * to quit : *

Enter a number, or * to quit : 911
9**3 + 1**3 + 1**3 is not = 911
Enter a number, or * to quit : *

Enter a number, or * to quit : *

Enter a number, or * to quit : 91
9**3 + 1**3 is not = 91
Enter a number, or * to quit : 211
2**3 + 1**3 + 1**3 is not = 211
Enter a number, or * to quit : *

Enter a number, or * to quit : 888
8**3 + 8**3 + 8**3 is not = 888
Enter a number, or * to quit : 1366
1**3 + 3**3 + 6**3 + 6**3 is not = 1366
Enter a number, or * to quit : 729
7**3 + 2**3 + 9**3 is not = 729
Enter a number, or * to quit : * */
