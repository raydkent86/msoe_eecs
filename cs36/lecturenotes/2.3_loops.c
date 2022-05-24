/* LOOPS
 *
 * Loops go on until you die. Right? WRONG.
 * 
 * Let's say Dr. Loke dies on 9/23 -- he requests not to be buried, so he can
 * climb out of his hole, get his last tax return done, then DIE. Just like
 * income tax returns, they continue to the end regardless if the condition
 * changes during the time, THEN they end.
 * 
 * Loops are sections of code(s) that's done many times.
 * 
 * THREE LOOPING STATEMENTS IN C / C++
 * + while: indeterministic, entrance-controlled
 * + do: indeterministic, exit-controlled
 * + for: deterministic or indeterministic, entrance-controlled
 * 
 * ENTRANCE-CONTROLLED LOOPS
 * You CHECK AT THE ENTRANCE for the condition, just like Dr. Loke blocking
 * latecomers at the door and asking them for the password. If the answer
 * is true, he gets into the loop. If it's false, he doesn't get in.
 * 
 * In other words, the condition is at the top, and is tested at the top.
 * The minimum number of executions is ZERO or more.
 * 
 * EXIT-CONTROLLED LOOPS
 * For the 'do' loop, you come in first, then complete the statement, then
 * go out and are only allowed back in if you have the correct condition.
 * 
 * For these, the condition is at the loop exit. The minimum executions is
 * ONE.
 * 
 * DETERMINISTIC AND INDETERMINISTIC
 * Deterministic: you know the number of times to do the loop
 * Indeterministic: The number of times to do the loop is unknown
 * 
 * For instance, if you want the sum of 1000 numbers, you MUST use a for
 * loop, but if you don't know how many numbers you're adding together,
 * you can use ANY ONE. Indeterministic loops go on and on until the user
 * raises a flag (or a "sentinel")
 * 
 * -999 is often used as a flag, along with 222 or 0 (false). */

#include <stdio.h>

/* WHILE LOOPS
 * This function will calculate the sum of a series of positive integers
 * until the user quits... but will get stuck because it doesn't
 * actually scan any numbers other than the first one. This is called
 * an INFINITE LOOP, and it can be used to make VIRUSES.
 * 
 * More importantly, because sum is not initialized, it will either
 * complain, default to 0 on UNIX, or spit out garbage. */
int while_loops_bad()
{
    int num, sum;
    printf("Enter a value, -999 to quit");
    scanf("%d", &num);
    while (num != -999)
    {
        sum += num;
    }
    printf("Sum is %d\n", num);
    return 0;
}

/* This one is fixed -- it properly uses the program logic to avoid
 * the infinite loop, and sum is defined.
 * 
 * In Windows, this will bomb -- we would need to assign num to
 * something before that first calculation. */
int while_loops()
{
    int num, sum = 0;
    while (num != -999)
    {
        sum += num;
        printf("Enter a value, -999 to quit: ");
        scanf("%d", &num);
    }
    printf("Sum is %d\n", sum);
    return 0;
}

int main()
{
    int err = while_loops();
    return 0;
}
