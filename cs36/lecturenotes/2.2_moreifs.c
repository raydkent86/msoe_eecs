// ONE LINE IF STATEMENTS

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int oneline()
{
    int a, h = 50;
    if (h > 40)
        a = 10;
    else
        a = 20;
    
    a = h > 40 ? 10 : 20; // equivalent to the stuff above
    return 0;
}

// NESTED IF STATEMENTS (if inside if)
int nested()
{
    int i, j, k, max;
    i = 40;
    j = 15;
    k = 0;
    if (i > j)
        if (i > k)
            max = i;
        else
            max = k;
    else
        if (j > k)
            max = j;
        else
            max = k;
    return max;
}

/* SWITCH STATEMENTS
 * 
 * - look for first matching case label
 *   + used to test for several conditions 
 * 
 * EXAMPLE: user inputs a number between 1 and 10
 * 1-3 = low
 * 4-7 = medium
 * 8-10 = high
 * else invalid */
int switches()
{
    int num;
    printf("Enter a number between 1 and 10: ");
    scanf("%d", &num);
    switch(num)
    {
        case 1:
        case 2:
        case 3: printf("Low\n");
                break;

        // you can put the entire case statement
        case 4: case 5: case 6: case 7: printf("Medium\n");
                break;
        
        case 8: case 9: case 10: printf("High\n");
                break;
        
        default:
            printf("Invalid\n");
    }
    return 0;
}

/* You can ONLY use switches for integers and chars -- anything
 * else will complain.*/

// Example of a char switch statement
int char_case()
{
    getchar();
    char mood;
    printf("How are you? (G/F/B) ");
    scanf("%c", &mood);
    printf("%c\n", mood);

    // REMEMBER: Double quotes are for STRINGS. All chars use ''.
    switch(mood)
    {
        case 'G':
        case 'g': printf("Good\n"); break;
        case 'F':
        case 'f': printf("Fair\n"); break;
        case 'B':
        case 'b': printf("Bad\n"); break;
        default: printf("Invalid\n");
    }
    return 0;
}

/* ADVANTAGES OF SWITCH STATEMENTS
 * + Easy to debug
 * + Easy to read and understand
 * + Easy to maintain
 * + Can be nested
 * + (Supposedly) executes faster than else-if 
 * 
 * RANDOM NUMBERS (psuedo-random)
 * + not totally random
 * + you give it a range, and it goes inside your system
 *   clock, puts it in an equation, and generates a
 *   psuedo-random number
 * + theoretically, if you were the world's fastest typer, you
 *   could get the numbers really close
 * + used for running games and doing statistics
 * + for now, we're using rand()
 */

int randoms()
{
    int x = rand(); // gives a random number from 0 to 32767
    // this is in stdlib.h -- make sure to include it!
    int a, b, c;
    time_t t;

    /* seeding -- if you don't seed it, you will always get
    the same value */
    srand((unsigned)time(&t));

    a = rand();
    b = rand();
    c = rand();
    printf("%d %d %d\n", a, b, c);

    int d1, d2, sum;
    d1 = rand() % 6 + 1;
    d2 = rand() % 6 + 1;
    sum = d1 + d2;
    printf("The dice returned %d and %d, ", d1, d2);
    printf("and the sum is %d\n", sum);
    return 0;
}

int main()
{
    int a, b, c, d;
    a = oneline();
    b = nested();
    c = switches();
    d = char_case();
    a = randoms();
    return 0;
}
