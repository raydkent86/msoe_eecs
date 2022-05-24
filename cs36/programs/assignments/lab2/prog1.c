/************************************************
 * Problem 1
 * Owen Bailey-Waltz
 * 1158982
 * This program will determine if a person is over
 * 18 and eligible to vote, and display the number
 * of years until any non-eligible individual is
 * eligible.
 ************************************************/

#include <stdio.h>

int main()
{
    // decl/input
    int age;
    printf("Enter the age : ");
    scanf("%d", &age);

    // logic/output
    if (age < 18)
        printf("You have to wait another %d years to cast your vote\n", (18 - age));
    else
        printf("You are already old enough to vote\n");
    
    // exit
    return 0;
}

/* OUTPUTS #1

Enter the age : 10
You have to wait another 8 years to cast your vote

Enter the age : 17
You have to wait another 1 years to cast your vote

Enter the age : 12
You have to wait another 6 years to cast your vote

Enter the age : 14
You have to wait another 4 years to cast your vote

Enter the age : 19
You are already old enough to vote */
