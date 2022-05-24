/************************************************
 * Problem 7
 * Owen Bailey-Waltz
 * 1158982
 * This program will use a deterministic for loop
 * to print a character triangle up to a given
 * character of the alphabet.
 ************************************************/

#include <stdio.h>

int main()
{
    char i, j, line, base;
    printf("Enter highest alphabet : ");
    scanf("%c", &base);
    if (base >= 'A' && base <= 'Z')
    {
        line = 'A';
        for (i = 'A'; i <= base; i++)
        {
            for (j = 'A'; j <= line; j++)
                printf("%c", j);
            printf("\n");
            line++;
        }
    }
    else
        if (base >= 'a' && base <= 'z')
        {
            line = 'a';
            for (i = 'a'; i <= base; i++)
            {
                for (j = 'a'; j <= line; j++)
                    printf("%c", j);
                printf("\n");
                line++;
            }
        }
        else
            printf("Invalid value, exiting\n");
    return 0;
}

/* OUTPUTS 7
Enter highest alphabet : F
A
AB
ABC
ABCD
ABCDE
ABCDEF

Enter highest alphabet : f
a
ab
abc
abcd
abcde
abcdef

Enter highest alphabet : I
A
AB
ABC
ABCD
ABCDE
ABCDEF
ABCDEFG
ABCDEFGH
ABCDEFGHI

Enter highest alphabet : k
a
ab
abc
abcd
abcde
abcdef
abcdefg
abcdefgh
abcdefghi
abcdefghij
abcdefghijk

Enter highest alphabet : 1
Invalid value, exiting */
