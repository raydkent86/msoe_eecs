/* THE TRUTH ABOUT... ...no wait
 *
 * N.B. There is no 3.3 because I was sick that day and I number these according to the lesson.
 * Anyway...
 * 
 * Here we go, writing some functions. The example function from the unnamed challenge last
 * period is in the example programs folder.
 * 
 * A WORD ON fgets()
 * fgets() is used to read a specific number of bytes from the chosen input stream -- it
 * has the advantage of being immune to segmentation faults, but it WILL have the
 * irritating side effect of reading EVERYTHING THAT'S THERE, INCLUDING SPECIAL CHARACTERS.
 * This means that fgets() will include the newline at the end of the string, and you will
 * need to use a loop to void the special characters. 
 * 
 * REVIEWSKI
 * 
 * We write functions because we have too many lines of codes, and we need to break the
 * program down into smaller tasks. The whole thing is much easier to debug, meaning it
 * will always work, assuming you wrote your stuff right. 
 * 
 * Your function should do ONE THING ONLY -- it's better to loop a function externally,
 * since that's more scalable and presumably more efficient than looping within the function.
 * Imagine trapping the best cookie maker in the world in a room, but he can only make one
 * cookie at a time. The room is completely compartmentalized, meaning you don't have any
 * idea what goes on inside, but it doesn't matter. You also have to bring the guy the stuff
 * he needs to make the cookie, and he'll return with a cookie.
 * 
 * In DEMO: "Write a program to find largest of three positive integers." 
 * 
 * THE PLAN: 1) write a function called greater() that accepts three integers as parameters
 *              and returns the largest number as an integer.
 *           2) main() will ask user for the inputs.
 *           3) call greater(a, b, c)
 *           4) Print "The largest number is %d." 
 * 
 * 
 * ANYWAY... LET'S TALK ABOUT SWAP ROUTINES
 * + to swap variable values, use a temp variable to transfer them. */

#include <stdio.h>

int fail();
int succeed();
void swap_bad(int, int);
void swap(int*, int*);

int main()
{
    int err = fail();
    err = succeed();
    return err;
}

int fail()
{
    int x = 20, y = 10;
    printf("%d %d\n", x, y);
    swap_bad(x, y);
    printf("%d %d\n", x, y);
    return 0;
}

void swap_bad(int a, int b) // does squat -- doesn't return anything, scope problem
{
    int t = a;
    a = b;
    b = t;
}

/* How do we FIX THIS?
 *
 * POINTERS
 * + we fix this by passing a MEMORY ADDRESS instead (&)
 * + the * means the value found at the address
 *  */

void swap(int *a, int *b)
{
    int t = *a;
    *a = *b;
    *b = t;
}

int succeed()
{
    int x = 20, y = 10;
    printf("%d %d\n", x, y);
    swap_bad(&x, &y);
    printf("%d %d\n", x, y);
    return 0;
}

/* If a function needs to return more than one value, or is continuous (like scanf()), use
 * a void function and pass a pointer to the memory address. 
 * 
 * CALLS BY REFERENCE
 * - when using call-by-value, the only way to return the modified value is using the return
 *   statement.
 * - to call or pass by reference, the function params are declared as references rather than
 *   normal variables
 * - any changes made by the called function to the arguments it receives are visible to the
 *   calling function.
 * - this is the pointer concept
 *   + & = reference to the address of the variable stored
 *   + * = dereference operator (the value of the variable stored)
 * 
 * Think of it like going to Austin's house and directly modifying his stuff instead of getting a
 * copy and doing whatever you want with it -- only one will reflect on the original. */
