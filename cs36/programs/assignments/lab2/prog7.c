/************************************************
 * Problem 7
 * Owen Bailey-Waltz
 * 1158982
 * This program will determine if a character is
 * a vowel using a switch statement.
 ************************************************/

#include <stdio.h>

int main()
{
    // decl/input
    char c;
    printf("Enter any character : ");
    scanf("%c", &c);

    // logic/output
    switch (c)
    {
        case 'a': case 'e': case 'i': case 'o': case 'u':
        case 'A': case 'E': case 'I': case 'O': case 'U':
            printf("%c is a vowel\n", c);
            break;
        default:
            printf("%c is not a vowel\n", c);
    }
    
    // exit
    return 0;
}

/* OUTPUTS #7
Enter any character : h
h is not a vowel

Enter any character : A
A is a vowel

Enter any character : c
c is not a vowel

Enter any character : e
e is a vowel

Enter any character : O
O is a vowel */
