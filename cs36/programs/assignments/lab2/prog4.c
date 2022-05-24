/************************************************
 * Problem 4
 * Owen Bailey-Waltz
 * 1158982
 * This program will determine the type of an
 * entered character (digit/uppercase/lowercase)
 ************************************************/

#include <stdio.h>

int main()
{
    // decl/input
    char c;
    printf("Enter any character : ");
    scanf("%c", &c);

    // logic/output
    if (c >= '0' && c <= '9')
        printf("A number was entered\n");
    else
        if (c >= 'A' && c <= 'Z')
            printf("Uppercase character was entered\n");
        else
            if (c >= 'a' && c <= 'z')
                printf("Lowercase character was entered\n");
            else
                printf("Something else was entered\n");
    
    // exit
    return 0;
}

/* OUTPUTS 4
Enter any character : C
Uppercase character was entered

Enter any character : a
Lowercase character was entered

Enter any character : 4
A number was entered

Enter any character : z
Lowercase character was entered

Enter any character : )
Something else was entered */
