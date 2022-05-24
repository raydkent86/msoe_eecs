#include <stddef.h>
#include <stdio.h>

/* There are THREE MAIN PARTS of a program:
 * 1) Input
 * 2) Calculation/Processing
 * 3) Output 
 * If you don't have any one of these, you will get squat.
 * Also: GIGO -- Garbage In, Garbage Out. If your input sucks, your
 * output will also suck. You can't expect to get what you want
 * from a calculation if you don't put the correct value in.
 * 
 * In C, you do declarations before input [NOT like Python]
 */

// a simple first C program, with no internal processing in it
int helloworld()
{
    printf("how are you?\n");
    printf("programming is fun!\n");
    return 0;
}

// another simple C program, listed as a seperate function
int summate()
{
    int sum; // variable declaration
    sum = 50 + 25;
    printf("The sum of 50 and 25 is %d\n", sum);
    return sum;
}

// one last one.
int threevalues()
{
    int value1;
    int value2;
    int sum;
    value1 = 10;
    value2 = 20;
    sum = value1 + value2;
    // This is like .format() in Python
    printf("PROCESSING: %d %d %d\n", value1, value2, sum);
    return sum;
}

/* FYI: C programs always have an int() main. Why? 
 * Because object files (programs) will, in most all environments,
 * include some sort of exit code, designed to signal abnormal
 * program termination and communicate errors to the parent
 * process, if needed. */
int main()
{
    helloworld();
    int x = summate();
    printf("I SAID...\n\nThe sum is %x\n", x);
    printf("...wait, was that hex?\n\n");
    printf("ANOTHER SUM: %d\n", threevalues());
    printf("Thank you for using this stupid little thing! :D");
    return 0;
}

/* FINALLY:
 * C is CASE-SENSITIVE: "Sum" is not the same as "sum". Do NOT
 * fall for the trap.
 * 
 * Also: DOCUMENT YOUR ***-**** CODE. Use comments to make sure
 * people know what the hell everything does.*/
