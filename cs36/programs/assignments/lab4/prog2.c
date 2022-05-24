/************************************************
 * Problem 2
 * Owen Bailey-Waltz
 * 1158982
 * This program calculates the total simple
 * interest on a principle using user input.
 ************************************************/

#include <stdio.h>

float show_interest(float, float, int);

int main()
{
    float principle, rate;
    int periods;
    printf("Enter the principal amount : ");
    scanf("%f", &principle);
    printf("Enter the rate (%%) : ");
    scanf("%f", &rate);
    printf("Enter the number of periods : ");
    scanf("%d", &periods);
    printf("The simple interest will be $%.2f\n", show_interest(principle, rate, periods));
    return 0;
}

float show_interest(float principle, float rate, int periods)
{
    float interest = (principle * (rate / 100) * ((float)periods));
    return interest;
}

/* OUTPUTS 2
Enter the principal amount : 10000
Enter the rate (%) : 10
Enter the number of periods : 1
The simple interest will be $1000.00

Enter the principal amount : 900
Enter the rate (%) : 8.6
Enter the number of periods : 2
The simple interest will be $154.80

Enter the principal amount : 9101 
Enter the rate (%) : 22.3
Enter the number of periods : 5
The simple interest will be $10147.62

Enter the principal amount : 5560 
Enter the rate (%) : 0.2
Enter the number of periods : 15
The simple interest will be $166.80

Enter the principal amount : 99
Enter the rate (%) : 0.08
Enter the number of periods : 15
The simple interest will be $1.19 */
