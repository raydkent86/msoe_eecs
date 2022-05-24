/* DUNNO WHAT THIS IS, BUT WHATEVER [something about da codes]
 * 
 * loljk... OPERATORS
 * 
 * short-cut operators
 */

#include <stdio.h>

void shortcuts()
{
    int a, b, c, d;
    a = 0;
    b = 0;
    c = 0;
    d = 0;
    a = b = c = d = 0; // equivalent to all of the top four lines

    int x, y;
    x = x + 2; // this will bomb -- x does not have a value
    // however, this can be used to increment a value
    x += 2; // shortcut -- equivalent to above
    y = y - 5;
    y -= 5; // equivalent

    // WHAT ABOUT y = -5 + y?
    y -= 5; // EXACTLY THE SAME

    y = 5 - y; // no shortcut

    a *= 7;
    b = 6 / b;
    b /= 6; // WROENG -- NOT a shortcut for above

    // all equivalent
    c = c / 12;
    c = c * (1/12);
    c /= 12;

    /* MODULO
     * 
     * Gives the integer remainder for a number
     * ONLY WORKS WITH INTEGERS */

    x = 7 % 2; // x = 1
    y = 37 % 5; // 2

    int d = 15;
    d %= 4;

    /* INCREMENT AND DECREMENT 
     * 
     * ++ = increment operator
     * -- = decrement operator */
    a = 5;
    a++; // post-increment
    print("%d\n", a); // 6
    ++a; // pre-increment
    print("%d\n", a); // 7
    b = 12;
    b--; // post-decrement
    printf("%d\n", b); // 11
    --b; // pre-decrement
    printf("%d\n", b); // 10

    /* POST- AND PRE-INCREMENT/DECREMENT
     *
     * When used in a printf(), for instance, ++a will increment BEFORE
     * printing, while a++ will increment AFTER printing.
     * 
     * For this reason, memory diagrams are VERY important when coming
     * up with a program workflow from scratch. */
    a = 5;
    printf("%d\n", ++a); // 6
    printf("%d\n", a++); // 6
    printf("%d\n", a); // 7
    printf("%d\n", a--); // 7
    printf("%d\n", --a); // 5

    // CONSIDER THIS:
    x = 10, y; // x = 10, then x = y [override/dead code]
    y = x++; // first, y = x, then x = x + 1
}
