/* MORE RANDOM NUMBERS
 *
 * If you have a die (1-6), you need to mod the rand()
 * and then add one to move the floor. Similarly, if
 * you start from something else other than zero, you
 * do this:
 * 
 * num = rand() % (high - low) + low
 * 
 * Now... BACK TO LOOPS! */

#include <stdio.h>
#define runthecodes printf("loke.exe: not locking you out\n")
#define condition 0

/* THE OTHER LOOPS
 * 
 * DO LOOPS
 * + the same as a while loop... BUT...
 * + ...it checks the condition at the BOTTOM, not
 *   the TOP.
 * + exit-controlled and indeterministic */

int do_loops()
{
    int num;
    do
    {
        runthecodes;
    } while (condition); // only runs once
    do
    {
        if (num < 1 || num > 5)
            printf("Sorry, try again.\n\n");
        printf("Enter value from 1 to 5: ");
        scanf("%d", &num);
    } while (num < 1 || num > 5);
    printf("You entered %d\n", num);
    return 0;
}

int new_sumandavg()
{
    float num, sum, avg;
    int count = 0;
    printf("Enter a valid value: ");
    scanf("%f", &num);
    do
    {
        sum += num;
        count++;
        printf("Enter another valid value: ");
        scanf("%f", &num);
    } while (num != -999);
    avg = sum / (float)count;
    printf("Sum: %.5f\n", sum);
    printf("Average: %.5f\n", avg);
    return 0;
}

// Find the largest integer until user enters -999
int largest()
{
    int num, max = 0;
    do
    {
        printf("Enter a number (-999 to quit): ");
        scanf("%d", &num);
        if (num > max)
            max = num;
    } while (num != -999);
    printf("The maximum is %d\n", max);
    return 0;
}

int main()
{
    int err = largest();
    return err;
}
