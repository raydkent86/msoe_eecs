/* FOUR BIG TYPES OF STATEMENTS
 * Statements cause the processor to DO something, and there are eleven types of them:
 *      1) Null
 *      2) Expression
 *      3) return
 *      4) Compound
 *      5) Conditional
 *      6) Labeled
 *      7) switch
 *      8) Iterative
 *      9) break
 *      10) continue
 *      11) goto 
 * 
 * We're going to go over the four most BASIC types of statements here. A statement
 * is distinct from an expression in that it has a semicolon at the end, indicating
 * it's not just an expression. */

#include <stdio.h>

int statements()
{
    /* 1) NULL STATEMENTS
     * These cause nothing to happen and are basically pointless,  but it's helpful
     * to know what they are for the hell of it. This while loop has a null statement
     * inside it and will do absolutely nothing until forever, only serving to block
     * the program and prevent anything useful from happening ever again if the
     * executable is allocated the whole memory. */
    while(1)
    {
        ;
    }

    /* 2) EXPRESSION STATEMENTS
     * These cause something to be evaluated and something else to be assigned, just
     * like below. */
    int aa, bb, ab;
    aa = 5; // expression statement
    aa = bb = 9; // same precedence, operate right-to-left
    bb = 2; // value of statement is 9, side effect is that bb changes value to 2
    ab = 5;
    ab++; // value is 5, side effect is that ab takes the value 6, value is then discarded

    /* 3) return STATEMENTS
     * return statements terminate the active function and jump out. They can go
     * anywhere in the function loop, but should only go in places where the programmer
     * wants the function to end. */
    return 0;
}

/* This is going to be a bit of a tease, but that whole thing we just wrote is a
 * statement too - functions, just like while and for loops, switch statements, and a
 * few other components in the category, are...
 * 
 * 4) COMPOUND STATEMENTS
 * Compound statements are any blocks of code enclosed in curly braces, and are considered
 * a single entity when they are executed. Running a function from within another function
 * is executing a compound statement, since the one or more statements within a compound
 * statement execute when the compound statement itself is referenced.
 * 
 * As I eluded to, compound statements that are callable from the program code are called
 * FUNCTIONS or (more rarely) SUBROUTINES.
 * 
 * THE DIFFERENCE BETWEEN PREPROCESSOR DIRECTIVES AND STATEMENTS
 * Preprocessor directives are not statements. This is because they don't actually
 * contribute to the program's memory allocation and computation, and because if you try
 * and put a semicolon at the end of a preprocessor directive, it will only serve to give
 * you major problems down the road.
 * 
 * Most compilers will directly substitute the semicolon in with the rest of the value,
 * causing unrecognized statement errors, but others will simply complain with the ol'
 * "sYntAx ERRoR uNExPEctEd tOkeN ';' At lIne 14 DEleTe thIs ToKeN" when you try and
 * compile it.
 * 
 * This makes errors like this extremely difficult to catch on many systems, because you,
 * as the engineer, never get to see the actual expansion taking place, and it doesn't
 * take a rocket scientist to see why this goes wrong. All too often we have problems
 * where semicolons aren't in certain places, this is one of the problems we get when
 * they ARE. */
