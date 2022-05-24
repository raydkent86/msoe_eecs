/************************************************
 * Problem 5
 * Owen Bailey-Waltz
 * 1158982
 * This program is a stock program -- it will ask
 * the user to enter a stock name, the quantity,
 * the buying price, and the selling price.
 * 
 * It will use a function to calculate this:
 * buy total = buy price * quantity
 * sell total = sell price * quantity
 * profit = buy total - sell total
 * 
 * and use another one to print out the stock
 * name, the buy total, the sell total, and the
 * profit.
 ************************************************/

#include <stdio.h>

void load(char*, float*, float*, int*);
void calc(float, float, int, float*, float*, float*);
void print(char*, float, float, float);

int main()
{
    char name[32];
    float bprice, sprice, btotal, stotal, profit;
    int quantity;
    load(name, &bprice, &sprice, &quantity);
    calc(bprice, sprice, quantity, &btotal, &stotal, &profit);
    print(name, btotal, stotal, profit);
    return 0;
}

void load(char *name, float *bprice, float *sprice, int *q)
{
    printf("Enter the stock symbol: ");
    gets(name);
    printf("Enter the buying price: ");
    scanf("%f", &(*bprice));
    printf("Enter the selling price: ");
    scanf("%f", &(*sprice));
    printf("Enter the quantity: ");
    scanf("%d", &(*q));
}

void calc(float bprice, float sprice, int q, float *btotal, float *stotal, float *profit)
{
    *btotal = bprice * (float)q;
    *stotal = sprice * (float)q;
    *profit = *stotal - *btotal;
}

void print(char *name, float btotal, float stotal, float profit)
{
    printf("\nSTOCK SYMBOL: %s\n", name);
    printf("BUY TOTAL: $%.2f\n", btotal);
    printf("SELL TOTAL: $%.2f\n", stotal);
    if (profit < 0)
        printf("LOSS: $%.2f\n", (-profit));
    else
        printf("PROFIT: $%.2f\n", profit);
}

/* OUTPUTS 5
Enter the stock symbol: AAPL
Enter the buying price: 262.64
Enter the selling price: 265.75
Enter the quantity: 2500

STOCK SYMBOL: AAPL
BUY TOTAL: $656600.06
SELL TOTAL: $664375.00
PROFIT: $7774.94

-----------------------------------

Enter the stock symbol: MSFT
Enter the buying price: 210.20
Enter the selling price: 212.59
Enter the quantity: 1000

STOCK SYMBOL: MSFT
BUY TOTAL: $210200.00
SELL TOTAL: $212590.00
PROFIT: $2390.00

-----------------------------------

Enter the stock symbol: GOOG
Enter the buying price: 1316.79
Enter the selling price: 1334.35
Enter the quantity: 100

STOCK SYMBOL: GOOG
BUY TOTAL: $131679.00
SELL TOTAL: $133435.00
PROFIT: $1756.00

-----------------------------------

Enter the stock symbol: FB
Enter the buying price: 194.99
Enter the selling price: 193.15
Enter the quantity: 2000

STOCK SYMBOL: FB
BUY TOTAL: $389980.00
SELL TOTAL: $386300.00
LOSS: $3680.00

-----------------------------------

Enter the stock symbol: S&P 500
Enter the buying price: 3096.63
Enter the selling price: 3119.74
Enter the quantity: 15

STOCK SYMBOL: S&P 500
BUY TOTAL: $46449.45
SELL TOTAL: $46796.10
PROFIT: $346.65 */
