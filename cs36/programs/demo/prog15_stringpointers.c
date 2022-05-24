/************************************************
 * Program 15
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
