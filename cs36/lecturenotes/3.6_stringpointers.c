/* PASSING STRINGS IN FUNCTIONS
 * Problems start when you have to pass strings -- they're a complex datatype, which
 * makes passing them a little more complicated.
 * Strings are like an array -- it's a collection of characters.
 * As a result, it can only be passed by reference, NOT by value. This is completely
 * unlike Java/Python/C++, where you can pass object/arrays by value.
 * 
 * Think of it like a big box of papers vs. just one paper -- since you don't really
 * have the tools to duplicate the box all on your own (tools present in other langs),
 * it's much easier to tell people where the box is and tell them to go correct it in
 * its current place than it is to bring them a copy or even just the original box.
 * 
 * Arrays have a weird behavior when being passed by reference -- they don't need an &
 * in the calling function, and use char * in the parameter list. In essence, the string
 * identifier itself is automatically mapped to a memory address, which is why strings
 * are also not a modifiable lvalue -- you cannot change a memory address from within the
 * program. */

#include <stdio.h>

void load(char *f, char *l)
{
    printf("Enter first name: ");
    gets(f);
    printf("Enter last name: ");
    gets(l);
}

int main()
{
    char first[15], last[20]; // arrays -- indices are from 0 to (max - 1)
    load(first, last); // you don't need the ampersand!
    printf("%s %s\n", first, last);
    return 0;
}

/* Now, it's time to WRITE -- we're going to a STOCK CALCULATOR PROGRAM that takes a symbol
 * or name, a buy price, a sell price, and a quantity, and calculate the buying/selling
 * totals and the total profit/loss. It will use three functions (load(), calc(), and print())
 * to accomplish the task, and do it in a far more stupid way than our first stock calculator.
 * 
 * Let's go! 
 * 
 * Now, the TEST:
 * LOOPS
 * - know types of loop, deterministic/indeterministic, minimum number of executions for each
 *   one, etc
 * - be able to find the value of an incrementer after the end of a loop
 * - know the various ways to declare a for loop
 * - know the concept of flags/sentinels in while/do loops
 * - WATCH FOR SEMICOLONS -- if there's a semicolon where there shouldn't be, it will complain
 *   or bomb. */
