/************************************************
 * Problem 4
 * Owen Bailey-Waltz
 * 1158982
 * This program finds the total pay that a
 * salesperson receives by using functions to
 * get the sales amount and advance pay, then
 * using a function to determine the commission
 * rate, and printing out the pay and whether the
 * salesperson needs to reimburse the company (if
 * he/she incurs a loss).
 ************************************************/

#include <stdio.h>

float get_sales();
float get_advanced_pay();
float determine_comm_rate(float);

int main()
{
    float sales, advanced_pay, comm_rate, pay;
    
    sales = get_sales();
    advanced_pay = get_advanced_pay();
    comm_rate = determine_comm_rate(sales);
    if (comm_rate != (float)-1)
    {
        pay = ((sales * comm_rate) - advanced_pay);
        printf("The pay is $%.2f\n", pay);
    
        if (pay < 0)
        {
            puts("The salesperson must reimburse the company.");
        }   
    }
    else
        puts("Invalid sales input!");

    return 0;
}

float get_sales()
{
    float sales;
    printf("Enter the monthly sales: ");
    scanf("%f", &sales);
    return sales;
}

float get_advanced_pay()
{
    float advanced_pay;
    puts("Enter the amount of advanced pay, or enter 0 if no advanced pay was given.");
    printf("Advanced pay: ");
    scanf("%f", &advanced_pay);
    return advanced_pay;
}

float determine_comm_rate(float sales)
{
    if ((sales > (float)0) && (sales < (float)10000))
        return (float)0.10;
    else
        if ((sales >= (float)10000) && (sales <= (float)14999.99))
            return (float)0.12;
        else
            if ((sales >= (float)15000) && (sales <= (float)17999.99))
                return (float)0.14;
            else
                if ((sales >= (float)18000) && (sales <= (float)21999.99))
                    return (float)0.16;
                else
                    if (sales >= (float)22000)
                        return (float)0.18;
                    else
                        return (float)-1;
}

/* OUTPUTS 4
Enter the monthly sales: 14550.00
Enter the amount of advanced pay, or enter 0 if no advanced pay was given.
Advanced pay: 1000.00
The pay is $746.00

Enter the monthly sales: 9500
Enter the amount of advanced pay, or enter 0 if no advanced pay was given.
Advanced pay: 0
The pay is $950.00

Enter the monthly sales: 12000.00
Enter the amount of advanced pay, or enter 0 if no advanced pay was given.
Advanced pay: 2000.00
The pay is $-560.00
The salesperson must reimburse the company.

Enter the monthly sales: 22000.00
Enter the amount of advanced pay, or enter 0 if no advanced pay was given.
Advanced pay: 1800
The pay is $2160.00

Enter the monthly sales: -21001.00
Enter the amount of advanced pay, or enter 0 if no advanced pay was given.
Advanced pay: 0
Invalid sales input! */
