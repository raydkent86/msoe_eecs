/************************************************
 * Homework 1 - Program Set 4
 * Owen Bailey-Waltz
 * 1158982
 * This program displays the name of and
 * calculates the initial cost, current cost, and
 * unrealized profit from five stocks, given the
 * stock name, number of shares owned, buy price,
 * current price, and the yearly fees.
 ************************************************/

#include <stdio.h>

// formula definition
#define icost ((float)shares * buy_price)
#define ccost ((float)shares * current_price)
#define profit (ccost - icost - fees)

int main()
{
    // declaration
    char name[10];
    int shares;
    float buy_price, current_price, fees;
    float profit_a, profit_b, profit_c;
    float profit_d, profit_e, total_profit;

    // input
    printf("\nEnter Stock Name: ");
    gets(name);
    printf("Enter Number Of Shares: ");
    scanf("%d", &shares);
    printf("Enter Buy Price: ");
    scanf("%f", &buy_price);
    printf("Enter Current Price: ");
    scanf("%f", &current_price);
    printf("Enter Yearly Fees: ");
    scanf("%f", &fees);
    getchar();

    // calculation and output
    profit_a = profit; // placed to minimize number of calculations
    printf("\nThe Stock Name    %s\n", name);
    printf("Initial Cost      $%8.2f\n", icost);
    printf("Current Cost      $%8.2f\n", ccost);
    printf("Profit            $%8.2f\n", profit_a);

    // DO EVERYTHING AGAIN!
    // input
    printf("\nEnter Stock Name: ");
    gets(name);
    printf("Enter Number Of Shares: ");
    scanf("%d", &shares);
    printf("Enter Buy Price: ");
    scanf("%f", &buy_price);
    printf("Enter Current Price: ");
    scanf("%f", &current_price);
    printf("Enter Yearly Fees: ");
    scanf("%f", &fees);
    getchar();

    // calculation and output
    profit_b = profit;
    printf("\nThe Stock Name    %s\n", name);
    printf("Initial Cost      $%8.2f\n", icost);
    printf("Current Cost      $%8.2f\n", ccost);
    printf("Profit            $%8.2f\n", profit_b);

    // AND AGAIN!
    // input
    printf("\nEnter Stock Name: ");
    gets(name);
    printf("Enter Number Of Shares: ");
    scanf("%d", &shares);
    printf("Enter Buy Price: ");
    scanf("%f", &buy_price);
    printf("Enter Current Price: ");
    scanf("%f", &current_price);
    printf("Enter Yearly Fees: ");
    scanf("%f", &fees);
    getchar();

    // calculation and output
    profit_c = profit;
    printf("\nThe Stock Name    %s\n", name);
    printf("Initial Cost      $%8.2f\n", icost);
    printf("Current Cost      $%8.2f\n", ccost);
    printf("Profit            $%8.2f\n", profit_c);

    // AND AGAIN, BECAUSE WE DON'T HAVE LOOPS YET!
    // input
    printf("\nEnter Stock Name: ");
    gets(name);
    printf("Enter Number Of Shares: ");
    scanf("%d", &shares);
    printf("Enter Buy Price: ");
    scanf("%f", &buy_price);
    printf("Enter Current Price: ");
    scanf("%f", &current_price);
    printf("Enter Yearly Fees: ");
    scanf("%f", &fees);
    getchar();

    // calculation and output
    profit_d = profit;
    printf("\nThe Stock Name    %s\n", name);
    printf("Initial Cost      $%8.2f\n", icost);
    printf("Current Cost      $%8.2f\n", ccost);
    printf("Profit            $%8.2f\n", profit_d);

    // One last time...
    // input
    printf("\nEnter Stock Name: ");
    gets(name);
    printf("Enter Number Of Shares: ");
    scanf("%d", &shares);
    printf("Enter Buy Price: ");
    scanf("%f", &buy_price);
    printf("Enter Current Price: ");
    scanf("%f", &current_price);
    printf("Enter Yearly Fees: ");
    scanf("%f", &fees);
    getchar();

    // calculation and output
    profit_e = profit;
    printf("\nThe Stock Name    %s\n", name);
    printf("Initial Cost      $%8.2f\n", icost);
    printf("Current Cost      $%8.2f\n", ccost);
    printf("Profit            $%8.2f\n", profit_e);

    // calculate and display final profit
    total_profit = profit_a + profit_b + profit_c + profit_d + profit_e;
    printf("\nThe Total Profit for the 5 Stocks $%11.2f", total_profit);

    // finally exit
    return 0;
}

/* OUTPUT

warning: this program uses gets(), which is unsafe.
Enter Stock Name: IBM
Enter Number Of Shares: 150
Enter Buy Price: 11.33
Enter Current Price: 13.33
Enter Yearly Fees: 5.00

The Stock Name    IBM
Initial Cost      $ 1699.50
Current Cost      $ 1999.50
Profit            $  295.00

Enter Stock Name: ORACLE
Enter Number Of Shares: 215
Enter Buy Price: 10.77
Enter Current Price: 12.25
Enter Yearly Fees: 3.50

The Stock Name    ORACLE
Initial Cost      $ 2315.55
Current Cost      $ 2633.75
Profit            $  314.70

Enter Stock Name: SUN MICRO
Enter Number Of Shares: 355
Enter Buy Price: 25.55
Enter Current Price: 35.75
Enter Yearly Fees: 12.25

The Stock Name    SUN MICRO
Initial Cost      $ 9070.25
Current Cost      $12691.25
Profit            $ 3608.75

Enter Stock Name: LINKSYS
Enter Number Of Shares: 75   
Enter Buy Price: 22.34
Enter Current Price: 23.34
Enter Yearly Fees: 6.00

The Stock Name    LINKSYS
Initial Cost      $ 1675.50
Current Cost      $ 1750.50
Profit            $   69.00

Enter Stock Name: CISCO
Enter Number Of Shares: 50
Enter Buy Price: 45.36
Enter Current Price: 50.86
Enter Yearly Fees: 1.50

The Stock Name    CISCO
Initial Cost      $ 2268.00
Current Cost      $ 2543.00
Profit            $  273.50

The Total Profit for the 5 Stocks $    4560.95 */
