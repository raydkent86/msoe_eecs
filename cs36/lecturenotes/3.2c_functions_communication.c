/* And now... a TANGENT:
 * Back in the day:
 * BASIC -> PASCAL -> C -> C++ -> Data Structures
 * 
 * Now, students jump straight to C, which has caused problems. It
 * used to be, as well, that you used to have to take C++ before
 * you took Java. Most universities will teach Java now as a
 * starting language. BUT... MIT did a study, and found that Java
 * killed the dreams of many CS students.
 * 
 * Java is tough because you're immediately jumping into classes
 * and objects and enums, OH MY! But, once you're ready for it,
 * Java is incredibly beneficial for data structures, but lots
 * of people who went straight to data structures from Java died.
 * Why? Because they only had one semester of programming, and they
 * missed the all-important CS 6B, which talks math and trees and
 * other prerequisites. This is one of the only situations where
 * you should jump to B before A.
 * 
 * Now returning you to your regularly-scheduled program...
 * 
 * CALL BY VALUE (pass by value)
 * -> called function creates new variables to store the values of
 *    the arguments passed
 * -> It uses a copy of the actual arguments to perform its
 *    intended tasks. */

#include <stdio.h>

// prototypes
void add(int n);

int main()
{
    int num = 2;
    printf("\nThe value of num before calling function = %d", num);
    add(num); // call the function add() [num = argument]
    printf("\nThe value of num after calling function = %d\n", num);
    return 0;
}

void add(int n)
{
    n = n + 20;
    printf("\nThe value of num in the called function = %d", n);
}

/* NOTE: function add(int n) is a VOID function -- this means it
 * doesn't return jack to the caller. No return statement is
 * needed.
 * 
 * The called function cannot modify the value of the argument that
 * was passed in any circumstance. If you want to change the value
 * of something outside the function that is not a global variable...
 * 
 * ...well... that's something for NEXT TIME. */
