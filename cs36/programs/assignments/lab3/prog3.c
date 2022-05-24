/************************************************
 * Problem 3
 * Owen Bailey-Waltz
 * 1158982
 * This program will read characters until a * is
 * encountered, and count uppercase/lowercase
 * and digits.
 ************************************************/

#include <stdio.h>

int main()
{
    char c;
    int upper = 0, lower = 0, digit = 0;
    printf("Enter any character, or * to quit : ");
    scanf("%c", &c);
    while (c != '*')
    {
        if (c >= 'A' && c <= 'Z')
            upper++;
        else
            if (c >= 'a' && c <= 'z')
                lower++;
            else
                if (c >= '0' && c <= '9')
                    digit++;
        printf("Enter any character, or * to quit : ");
        getchar();
        scanf("%c", &c);
    }
    printf("\nTotal count of lowercase characters entered = %d\n", lower);
    printf("Total count of uppercase characters entered = %d\n", upper);
    printf("Total count of digits entered = %d\n", digit);
    return 0;
}

/* OUTPUTS 3
Enter any character, or * to quit : O
Enter any character, or * to quit : p
Enter any character, or * to quit : A
Enter any character, or * to quit : d
Enter any character, or * to quit : 2
Enter any character, or * to quit : *

Total count of lowercase characters entered = 2
Total count of uppercase characters entered = 2
Total count of digits entered = 1


Enter any character, or * to quit : i
Enter any character, or * to quit : i
Enter any character, or * to quit : P
Enter any character, or * to quit : z
Enter any character, or * to quit : *

Total count of lowercase characters entered = 3
Total count of uppercase characters entered = 1
Total count of digits entered = 0


Enter any character, or * to quit : *

Total count of lowercase characters entered = 0
Total count of uppercase characters entered = 0
Total count of digits entered = 0


Enter any character, or * to quit : 9
Enter any character, or * to quit : s
Enter any character, or * to quit : )
Enter any character, or * to quit : z
Enter any character, or * to quit : +
Enter any character, or * to quit : *

Total count of lowercase characters entered = 2
Total count of uppercase characters entered = 0
Total count of digits entered = 1


Enter any character, or * to quit : i
Enter any character, or * to quit : I
Enter any character, or * to quit : z
Enter any character, or * to quit : 0
Enter any character, or * to quit : 1
Enter any character, or * to quit : 2
Enter any character, or * to quit : 3
Enter any character, or * to quit : 4
Enter any character, or * to quit : 5
Enter any character, or * to quit : 6
Enter any character, or * to quit : 7
Enter any character, or * to quit : a
Enter any character, or * to quit : b
Enter any character, or * to quit : C
Enter any character, or * to quit : D
Enter any character, or * to quit : e
Enter any character, or * to quit : F 
Enter any character, or * to quit : g
Enter any character, or * to quit : h I
Enter any character, or * to quit : Enter any character, or * to quit : *

Total count of lowercase characters entered = 7
Total count of uppercase characters entered = 5
Total count of digits entered = 8 */
