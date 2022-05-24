/************************************************
 * Problem 3
 * Owen Bailey-Waltz
 * 1158982
 * This program will determine if a character is
 * a vowel (a/e/i/o/u) or a consonant.
 ************************************************/

#include <stdio.h>

int main()
{
    // decl/input
    char c;
    printf("Enter any character : ");
    scanf("%c", &c);

    // logic/output
    if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u')
        printf("%c is a vowel\n", c);
    else
        if (c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U')
            printf("%c is a vowel\n", c);
        else
            printf("%c is not a vowel\n", c);
    
    // exit
    return 0;
}

/* OUTPUTS #3
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
