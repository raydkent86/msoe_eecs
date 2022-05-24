/* DR. LOKE CAN'T TELL ME WHAT THIS LECTURE IS ABOUT
 * Then he'd just be repeating what he said.
 * In the meantime, Professor Mather is going to come in and talk about writing codes...
 * ...or whatever.
 *
 * In the meantime, I'm moving this stuff to the iCloud Drive -- this way I can edit
 * even when my laptop runs outta battery. Like it's about to do now. */

#include <stdio.h>
#include <stdlib.h>

/* Turns out the talk is about internships. Money. Like the sort of stuff that you need
 * once your parentals are gone. But she's not here yet, so let's start class.
 *
 * LONG-ASS WRITING PORTION (theory to apply your code[s] properly)
 * C SCOPE
 * -> block scope (the most atomic, only within the specific code block)
 * -> function scope (stuff declared within the function -- accessible within the block
 *    and the entire function)
 * -> file scope (accessible from within the current file, including #includes)
 * -> program scope (accessible from the entire program)
 * FUNCTION SCOPE
 * - var is active inside the function when function is running
 * FILE SCOPE
 * - when a global variable is accessible until the end of the file
 * - use the declaration below */

static int x = 10; // static integer, only accessible downward, not from outside

/* - a global static variable can be used anywhere from within the file in which it is
 *   declared. But it is not accessible by any other file.
 * - when you write your own header files, you do this for security reasons
 * PROGRAM SCOPE
 * - variable is available throughout the entire program when it's declared
 * STORAGE CLASS
 * -> defines scope (visibility) and lifetiem of a variable and/or functions within a
 *    program.
 * C has FOUR storage classes.
 * 1) auto - default storage class for variables in a block or names of function
 *           parameters.
 *    You do NOT have to use the auto keyword to declare an auto storage class variable,
 *    because it is redundant -- it wouldn't be auto if it didn't automatically do it.
 *    BE CAREFUL: they ask this question in UCI data structures classes, and most people
 *                don't have a bloody clue what it is. KNOW IT.
 *    It is called "auto" because memory is automatically allocated upon entry into block
 *    and freed automatically on exit (not like other languages, which need garbage
 *    collection).
 *    You can manually allocate RAM with malloc(), but MAKE SURE TO VERIFY THAT THE MEMORY
 *    YOU ARE WRITING IS EMPTY -- any access violations will cause a BLUE SCREEN OF DEATH
 *    (or a kernel panic on UNIX and UNIX-like systems)
 *    IMPORTANT BITS
 *    - all local variables declared within functions are auto storage class
 *    - memory is automatically allocated upon entry, and freed upon exit
 *    - scope is local to block
 *    - auto stored in the primary RAM of computer
 *    - if you do not initialize, you get garbage.
 * 2) register - bits of memory right next to the processor's arithmetic-logic unit
 *               it's faster, because it uses stuff stored in the CPU register in contrast
 *               to RAM
 *    NOTES
 *    - var using register stored in the CPU reg. instead of RAM
 *    - max var size equal to size of register
 *    - example below */

register int y; // fast, but can lug your cpu

/*    - used for quick access to variables that you need
 *    - CAVEAT: the programmer can only SUGGEST to the compiler to store variables in the
 *              register. The compiler can choose whether or not to actually store it in
 *              the register.
 *    - if the compiler rejects it, the variable is stored as auto.
 *    WHEN DO YOU USE IT?
 *    - when access time and repeated use is critical to program function
 *    - for instance, Tesla needs its self-driving cars to react quick, and RAM is too
 *      dang slow. Even so, Dr. Loke STILL doesn't trust Tesla. He'd rather have one of us
 *      drive than let Tesla or Autocar take him around.
 * INCOMING EXAMPLE! */

int exp(int a, int b);
int example1()
{
    int a = 3, b = 5, res;
    res = exp(a,b);
    printf("\n%d to the power of %d = %d\n", a, b, res);
    return 0;
}

int exp(int a, int b)
{
    register int res = 1;
    int i;
    for (i = 1; i <= b; i++)
        res *= a;
    return res;
}

/* 3) extern - external storage
 *    NOTES
 *    - used to give a reference to a global variable visible to all the program files
 *    - when there are multiple files in a program and you need to use a particular
 *      function or variable in a file apart from which it is declared, use extern
 *    - initializes automatically to zero
 *    - has global scope
 *    - TIME FOR AN EXTERNAL EXAMPLE!!! 
 *  4) static - default storage class for global variables
 *     NOTES
 *     - lifetime over entire program
 *     - memory is allocated when the program begins running and freed when program
 *       terminates */

static int z;

/*     - initializes automatically to zero
 *     - only initialized ONCE, at compile time (not a modifiable rvalue) */

void print(void);
int example2()
{
    printf("\nfirst call of print()");
    print();
    printf("\nsecond call of print()");
    print();
    printf("\nthird call of print()");
    print();
    return 0;
}

void print()
{
    static int a;
    int y = 0;
    printf("\nStatic integer variable = %d", x);
    printf("\nInteger variable = %d", y);
    x++;
    y++;
}

/* OUTPUTS FROM THIS THING:
 * first call of print()
 * Static integer variable = 0
 * Integer variable = 0
 * second call of print()
 * Static integer variable = 1
 * Integer variable = 0
 * third call of print()
 * Static integer variable = 2
 * Integer variable = 0 */

/* TAKEAWAYS
 * auto initializes to garbage, register can only suggest, static is global, and extern
 * makes things available to everyone.
 *
 * Also, Dr. Loke should be a comedian, but it stopped being funny because of political
 * correctness. */

int main()
{
    int err = example1();
    err = example2();
    return err;
}
