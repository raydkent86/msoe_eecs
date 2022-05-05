/* LOOPS
 * We're getting loopy once again. We've used the while keyword a bunch already but we don't
 * know exactly what it means... but it's time to learn.
 * 
 * The while keyword creates a LOOP in the code that continues as long as the expression in
 * the parentheses is true. As a general rule, when one does a while loop, something inside
 * the while statement changes, otherwise you'll end up with unreachable or dead code.
 * 
 * This brings along even more possibilities that we've been able to detail in our flowcharts
 * but couldn't actually implement because the constructs we'd learned limited our ability
 * to do so. Now, though, let's show how this can be used to print every odd number between
 * two values: */

#include <stdio.h>

int print_odd1(int lower, int upper)
{
    int x = lower;
    while (x <= upper)
    {
        if (x % 2 != 0)
            x++;
        printf("%d\n", x);
        x += 2;
    }
    return 0;
}

/* For this specific example, however, there is a much better way of doing this that
 * optimizes the amount of code written -- the for loop.
 * 
 * for loops are unique in that they can be categorically definite (or deterministic) as well
 * as indefinite (or indeterministic), or, in other words, they can run a predefined number
 * of times instead of being at the whim of whatever comes into the program.
 * 
 * The above function reimplemented with a for loop looks like: */

int print_odd2(int lower, int upper)
{
    int x;
    for (x = lower ; x <= upper ; x += 2)
    {
        if (x % 2 != 0)
            x++;
        printf("%d\n", x);
    }
    return 0;
}

/* The for loop allows countably-enumerated lists, and has three arguments:
 * for (initialization; test; update)
 * 
 * The first run through the for, it does the initialization. Then, every time it comes around,
 * the test happens at the beginning while the update happens at the end. Another example is
 * below for a relatively random application. */

int forloops()
{
    int i;
    for (i = 0 ; i < 10 ; i++)
        printf("i = %d\n", i);
    return 0;
}

/* Those do a really good job of loading arrays, since that counter index (generally labeled
 * "i", which is yet another reason we use "j" in electrical engineering calculations) can
 * pass through functions and dump each output in a member of an array. We don't know arrays
 * yet in this class, but they'll get important when we do learn about it next week. What we
 * can use it for is something like below, where we can generate lists of even numbers out of
 * a couple of bounds for where they come from. */

int gen_even(int st, int stp)
{
    int lower, upper;
    int i;
    lower = st + (st % 2);
    upper = stp;

    // start the loop
    for (i = lower ; i <= upper ; i += 2)
        printf("%d ", i);
    printf("\n");
}

/* One can also use a loop with no content to block execution while a hardware task is yet to
 * complete, similar to how a vamp or safety works in musical theater. This is a common use
 * of a simple while, and it'll be infinitely useful to us if we want to wait for a state
 * change in a pin on the board. If we were in Code Composer, we could go
 * 
 *  while (P4->IN & 0x04) // 0 or 4
 *  {
 *      printf("foo\n");
 *      __delay_cycles(3000000);
 *  }
 *  printf("boo\n");
 * 
 * and we'd have a program that spammed "foo" until pin 4.2 came back low, in which case it
 * would print one "boo" and then jump out. Yes, I know that's useless and a waste of memory
 * in a domain where memory efficiency is paramount.
 * 
 * But be careful: infinite loops cause unreachable code and can do some irritating things
 * even if they do come to an end. I know this to my cost - back in 2018, I was developing
 * a tool for Syntiant and I ended up with a memory-devouring loop that killed the Pi and
 * made it impossible to do anything else while the tool was running. 
 * 
 * One way around this is to use a variant of the while loop known as a do-while loop, which
 * performs the check at the end of every execution cycle rather than at the beginning,
 * allowing the code to run once before any decision is made whether to loop back through. */
