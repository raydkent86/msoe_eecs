/* LET'S FINISH THE FOR LOOP STUFF
 *
 * DETERMINISTIC FOR LOOP */

#include <stdio.h>
#include <stdlib.h>

int deterministic()
{
    int i, sum = 0;
    for (i = 2; i <= 8; i++)
        printf("%d ", i);
    printf("\n");
    for (i = 9; i > 1; i--)
        printf("%d ", i);
    printf("\n");
    for (i = 5; i > 10; i += 2)
        printf("%d ", i); // unreachable code!
    printf("\n");

    // find the sum from 1 to 100
    for (i = 1; i <= 100; i++)
        sum += i;
    printf("%d\n", sum);

    sum = 0;
    int start, end, inc;
    printf("Enter the starting number, the ending number, and the increment\n");
    scanf("%d%d%d", &start, &end, &inc);
    for (i = start; i <= end; i += inc)
        sum += i;
    printf("The sum is %d\n", sum);
    return 0;
}

// MICHAEL.exe: UC Davis CSTEM Robotics sales pitch happened here

// Find the sum and avg of 50 numbers provided by user
int fifty()
{
    int i, sum, num;
    sum = 0;
    getchar();
    printf("Enter 50 numbers: ");
    if (scanf("%d", &sum) > 0)
    {
        for (i = 1; i < 50; i++)
        {
            scanf("%d", &num);
            sum += num;
        }
        printf("The final sum is %d\n", sum);
    }
    return 0;
}

// get the maximum of 50 numbers
int max_fifty()
{
    int num, max, i;
    // getchar();
    printf("Enter a number: ");
    scanf("%d", &max);
    for (i = 1; i <= 50; i++)
    {
        printf("Enter a number: ");
        scanf("%d", &num);
        if (num > max)
            max = num;
    }
    printf("The maximum is %d\n", max);
    return 0;
}

/* Keep in mind that ALL THREE PARTS OF THE FOR LOOP can be
 * OPTIONAL except the condition.
 * 
 * BUT: make sure when you leave stuff out of the for loop
 * declaration that it's completely necessary.
 * 
 * Below are some examples of some pointless sloppy loops
 * that one should never do, and defeat the purpose of the
 * for loop.*/
int sloppy_loops()
{
    int i = 5;

    // a regular-old sloppy loop
    for (; i <= 10; )
    {
        printf("%d ", i);
        i++;
    }

    // a really sloppy loop -- do this and get fired
    for (; ;)
    {
        if (i > 10)
            break;
        i++;
    }
    return 0;
}

int indeterministic()
{
    int num, sum = 0, count = 0;
    float avg;
   
    // keeps going until the user enters -999
    printf("Enter a number, -999 to quit ");
    scanf("%d", &num);
    
    for (; num != -999 ; count++)
    {
        sum += num;
        printf("Enter a number, -999 to quit ");
        scanf("%d", &num);
    }
    if (count)
    {
        avg = sum / (float)count;
        printf("%d %f\n", sum, avg);
    }
    else
        printf("No data provided\n");
    
    return 0;
}

int indeterministic_nonnum()
{
    int num, sum = 0, count = 0;
    float avg;
   
    // keeps going until the user enters a non-numeric
    printf("Enter a number, any text to quit ");
    
    for (; scanf("%d", &num) ; count++)
    {
        sum += num;
        printf("Enter a number, any text to quit ");
    }
    if (count)
    {
        avg = sum / (float)count;
        printf("%d %f\n", sum, avg);
    }
    else
        printf("No data provided\n");
    
    return 0;
}

/* NESTED LOOPS 
 * + a loop within a loop */
int nested()
{
    int i, j;
    for (i = 1; i < 3; i++)
        for (j = 1; j < 5 ; j++)
            printf("%d ", j);
    
    return 0;
}

/* WEIRD-ASS LOOP STEPPING
 * Don't ever do this. But just in case some
 * idiot does do that s**t...
 * 
 * floor = ((final - initial) / increment) + 1 */

int main()
{
    int err = deterministic();
    // err = fifty();
    err = max_fifty();
    err = sloppy_loops();
    err = indeterministic();
    err = indeterministic_nonnum();
    err = nested();

    return err;
}
