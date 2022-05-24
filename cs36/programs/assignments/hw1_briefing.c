/* 1) Find area and circumference
 *    workflow:
 *    user inputs the radius -> output area and circ. 5 d.p.
 * 
 *    calculations:
 *    a = pi*r^2 -> pi * r * r -> 3.14 * r * r
 *    c = 2*pi*r
 */

#include <stdio.h>

const float PI = 3.141; // constant

int circle()
{
    // declaration
    int r, d;
    float area, circ;

    // input
    printf("Enter the radius: "); // fputs() will suppress newline from puts()
    scanf("%d", &r);
    
    // calc
    d = r * 2;
    area = PI * r * r;
    circ = 2 * PI * r;

    // output
    printf("\nThe diameter is %d\n", d);
    printf("The radius is %d\n", r);
    printf("The area is %.5f\n", area);
    printf("The circumference is %.5f", circ);
    return 0;
}

/* 3) 20/10/5/1 
 * 
 * workflow: divide by 20, then do input % 20 and divide that by 10, then repeat*/

int dollars()
{
    int money, twenty, ten, five, one;
    printf("Enter a dollar amount: ");
    scanf("%d", &money);
    twenty = money / 20;
    ten = (money % 20) / 10;
    // etc.
}

// IMPORTANT: always do ONE INSTANCE first BEFORE copying!
/* 4) Stocks
 * 
 * input: stock name [stockName - char[]]
 *        number of shares [sh - int]
 *        buy price [bprice - float]
 *        yearly fees [fees - float]
 *        current price [curprice - float]
 * 
 * calc: init_cost = sh * bprice
 *       current_cost = sh * curprice
 *       profit = current_cost - init_cost - fees
 */

int stocks()
{
    // declaration
    char stockName[10];
    int sh;
    float bprice, fees, curprice;
    float init_cost, current_cost, profit;

    // input
    printf("Enter stock name: ");
    gets(stockName);
    getchar();
    printf("Enter number of shares: ");
    scanf("%d", &sh);
    scanf("%.2f", &bprice);
    scanf("%.2f", &curprice);
    scanf("%.2f", &fees);

    // calc [redacted]

    // output [redacted]

    return 0;
}
