/* A WORD ON PRE-PROCESSOR DIRECTIVES
 * 
 * + start with the POUND SYMBOL, lines do not end with semicolons
 * + these are processed before the program runs
 * + three of them
 * 
 * #include <>: loads all the needed header/libraries files
 * #define NUM 10: symbolic constant definition
 *                 Why "symbolic?"
 *                 Because text substitution is done BEFORE THE
 *                 PROGRAM ACTUALLY RUNS, meaning it essentially
 *                 hardcodes the constant in wherever the
 *                 constant is named.
 * MACRO: identifier for a formula
 *        again, text substitution with #define
 *        you might need parentheses, depending on your
 *        compiler
 * 
 * Do NOT put all your equations in #define -- it makes your code
 * really f**king hard to read. ONLY PUT EQUATIONS IN #define
 * WHEN YOU ARE GOING TO USE THEM LOTS OF DIFFERENT TIMES IN
 * MULTIPLE FUNCTIONS.
 */

#include <stdio.h>
#define NUM 10
#define TAXRATE 8.75
#define SUM (a + b + c)
#define AVG (SUM / (float)3)

int bullcrap()
{
    int a, b;
    float c, d;

    d = TAXRATE / 100 * c; // reverts to 0 on UNIX clang
    // on other platforms/compilers, it will be a runtime error
    a = NUM + 3;
    c = c * TAXRATE / 100;

    // print yo own
    printf("%f %d %f", d, a, c);
    return 0;
}

int main()
{
    int x = bullcrap();
    int a, b, c;
    printf("Enter three numbers: ");
    scanf("%d%d%d", &a, &b, &c);
    printf("Sum is %d\n", SUM);
    printf("Avg. is %f\n", AVG);
    return 0;
}
