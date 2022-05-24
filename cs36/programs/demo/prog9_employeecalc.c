/************************************************
 * Program 9
 * Owen Bailey-Waltz
 * 1158982
 * This program calculates a number of employee
 * salaraies, as well as the total expense.
 ************************************************/

#include <stdio.h>

int main()
{
    int employees, count = 0;
    float hrs, rate, pay, total = 0;
    printf("Enter number of employees > ");
    scanf("%d", &employees);
    while (count < 3)
    {
        printf("Hours > ");
        scanf("%f", &hrs);
        printf("Rate > ");
        scanf("%f", &rate);
        pay = hrs * rate;
        printf("Pay is $%.2f\n\n", pay);
        total += pay;
        count++;
    }
    printf("Total expenses this pay period: $%.2f\n", total);
    return 0;
}
