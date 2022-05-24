/************************************************
 * Homework 1 - Program Set 3
 * Owen Bailey-Waltz
 * 1158982
 * This program finds the minimum number of bills
 * of cash required to pay a given amount, in $20,
 * $10, $5, and $1 bills.
 ************************************************/

#include <stdio.h>

int main()
{
    // declarations
    int dollars;
    int twen, ten, five, one;

    // input
    printf("Enter a dollar amount: ");
    scanf("%d", &dollars);

    // calc
    twen = dollars / 20;
    ten = (dollars % 20) / 10;
    five = (dollars % 20 % 10) / 5;
    one = dollars % 20 % 10 % 5;

    // output
    printf("$20 bills: %d\n", twen);
    printf("$10 bills: %d\n", ten);
    printf("$5 bills: %d\n", five);
    printf("$1 bills: %d\n", one);

    // exit
    return 0;
}

/* OUTPUT
Enter a dollar amount: 93
$20 bills: 4
$10 bills: 1
$5 bills: 0
$1 bills: 3

Enter a dollar amount: 91
$20 bills: 4
$10 bills: 1
$5 bills: 0
$1 bills: 1

Enter a dollar amount: 100
$20 bills: 5
$10 bills: 0
$5 bills: 0
$1 bills: 0

Enter a dollar amount: 17 
$20 bills: 0
$10 bills: 1
$5 bills: 1
$1 bills: 2

Enter a dollar amount: 5921
$20 bills: 296
$10 bills: 0
$5 bills: 0
$1 bills: 1 */
