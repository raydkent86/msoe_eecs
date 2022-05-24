/************************************************
 * Problem 5
 * Owen Bailey-Waltz
 * 1158982
 * This program will determine if a given year is
 * a leap year.
 ************************************************/

#include <stdio.h>

int main()
{
    // decl/input
    int year;
    printf("Enter any year: ");
    scanf("%d", &year);

    // logic/output
    if ((year % 4) == 0)
        printf("Leap Year\n");
    else
        printf("Not a Leap Year\n");
    
    // exit
    return 0;
}

/* OUTPUTS #5
Enter any year: 1964
Leap Year

Enter any year: 2000
Leap Year

Enter any year: 2001
Not a Leap Year

Enter any year: 1997
Not a Leap Year

Enter any year: 11
Not a Leap Year */
