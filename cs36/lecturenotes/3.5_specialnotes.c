/* Quick RRRRRRRRRREEEEEEEEEVVVVIIEEEEEWWWWWWW
 * 1) void functions: doesn't return jack to the calling function
 *    - you can still do a return; statement to break out of the function
 *    - roy.exe: you can use void main() if you don't want to return an error code
 * 2) non-void functions (int, char, double, whatever): returns a thing
 *    - if there's a type mismatch, programs will cast/truncate the returned value
 *    - usually have parameters for the function to process
 *    - return ONE and ONLY ONE value
 * 3) passing by value vs. passing by reference
 *    - passing by value makes a copy from the calling function for the new function
 *    - passing by reference uses pointers (& = address to var, * = indicates address)
 * 4) if you have to return more than one value, use passing by reference
 *    - do NOT pass arrays by value -- you will WASTE MEMORY, which is DEATH, especially
 *      in an embedded environment.
 * 
 * loke.exe: Let's see if you can write a program for me using functions [below]
 * OUTPUTS: Your name, address, zip code as shown below, use a function called starbar()
 * **********************
 * Your Name
 * Your Address
 * 12345-678
 * ********************** */

#include <stdio.h>
#include <errno.h>
#include <string.h>
#define width 40
#define NAME "Owen Bailey-Waltz"
#define ADDRESS "123 Street (actual address redacted in case of hackage)"
#define PLACE "Irvine, CA 92604"

void starbar()
{
    int count;
    for (count = 1; count <= width; count++)
        putchar('*');
    putchar('\n');
}

int banner()
{
    starbar();
    printf("%s\n%s\n%s\n", NAME, ADDRESS, PLACE); // stuff is in #define
    starbar();
    return 0;
}

/* FOOD FOR THOUGHT
 * How would you center-justify the banner text from above?
 * 
 * Now... LARGEST OF THREE INTEGERS (again). */

// find the largest of two integers -- more scalable than three numbers
int maximum(int a, int b)
{
    if (a >= b)
        return a;
    else
        return b;
}

int largest()
{
    int a, b, c;
    printf("Enter three numbers: ");
    scanf("%d%d%d", &a, &b, &c);
    int max = maximum(a, b);
    printf("The max is %d\n", maximum(max, c));
    return 0;
}

/* PARAMETERS
 * - a value passed to a function so that a function can do its job.
 * - functions communicate by parameter passing
 * TWO TYPES OF PARAMETERS
 * 1) value parameter
 *    - a copy is made
 *    - one-way communication
 * 2) reference parameter
 *    - when the function changes the value of the parameter
 *    - uses pointer address
 * 
 * For an example, let's revisit the good-ol' sum and average program...
 *                 main()
 *   ----------------|-----------------
 *   |               |                |
 * load()          calc()          print()
 * IN  N/A         IN  a, b, c     IN a, b, c, sum, avg
 * OUT a, b, c     OUT sum, avg    OUT n/a
 * 
 * ALL OF THESE FUNCTIONS NEED TO BE VOID AND PASS-BY-REFERENCE. Anything else
 * will not yield the correct results. Or, you COULD make them ints and use the
 * return value for an error code from errno.h, instead, like I did here. */

// error handling -- won't trigger at this point
int error(int code)
{
    if (code)
    {
        printf("ERROR %d: %s\n", code, strerror(code));
        return code;   
    }
    else
        return 0;
}

int load(int *a, int *b, int *c)
{
    printf("Enter three numbers: ");
    scanf("%d%d%d", &(*a), &(*b), &(*c));
    return error(errno);
}

int calc(int a, int b, int c, int *sum, float *avg)
{
    *sum = a + b + c;
    *avg = *sum / (float)3;
    return error(errno);
}

int print(int a, int b, int c, int sum, float avg)
{
    printf("The three numbers: %d %d %d\n", a, b, c);
    printf("The sum: %d\n", sum);
    printf("The mean: %f\n", avg);
    return error(errno);
}

int main()
{
    int a, b, c, sum;
    float avg;
    int err = banner();
    err = largest();
    err = load(&a, &b, &c);
    if (err != 0)
        return err;
    err = calc(a, b, c, &sum, &avg);
    if (err != 0)
        return err;
    err = print(a, b, c, sum, avg);
    return err;
}
