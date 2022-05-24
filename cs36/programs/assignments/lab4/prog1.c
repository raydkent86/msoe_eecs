/************************************************
 * Problem 1
 * Owen Bailey-Waltz
 * 1158982
 * This program calls two functions to print out
 * the number of birds in two states (TX, CA).
 ************************************************/

#include <stdio.h>

void texas();
void california();

int main()
{
    texas();
    california();
    return 0;
}

void texas()
{
    int birds = 5000;
    printf("Texas has %d birds\n", birds);
}

void california()
{
    int birds = 8000;
    printf("California has %d birds\n", birds);
}

/* OUTPUT 1
Texas has 5000 birds
California has 8000 birds */
