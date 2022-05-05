/* DECISION MAKING AND IF-ELSE STATEMENTS
 * Finally, we're getting past stupid chickenshit bullshit unstructured programming
 * and getting to a way to implement those decisions we keep outlining in flow diagrams!
 * And the way we make those decisions is the word... "IF"
 * 
 * If statements take an expression as an input, which can be ANY EXPRESSION, although
 * it functions like a logic evaluation and, if it's true, it executes the code inside
 * the curly braces (or, alternatively, the next statement if there's only one). */

#include <stdio.h>

int elif()
{
    int a, b, c;
    int foo, bar, boo;

    // with one line of code(s), no curly braces required -- yeah, I'm bringing back Lokespeak
    a = b = 15;
    if (a == b)
        foo = 3; // this does execute
    if (a > b)
        foo = 9; // this does not
    
    a = 3;
    b = 5;
    c = 2;

    // with multiple lines of code, there needs to be a set of curly brackets
    if (a && b++)
    {
        c = 5;
        a = 9;
    }

    /* It's worth mentioning that one needs to WATCH OUT with that last expression: C uses
    what is called "short-circuit evaluation", meaning when it definitively knows the answer
    to an expression it interrupts and busts out, so it doesn't execute any postfix stuff if
    the postfix is the second argument.

    Anyway, if also has a companion, ELSE: */

    if (b >= c)
        c = 19;
    else
        foo = 19;
    
    /* But again, BE CAREFUL. Suppose you forget to put in a curly bracket, look what happens: */
    foo = 4;
    bar = 86;
    boo = 25;
    if (bar >= (foo + 2 * boo))
        a = boo;
        b = foo;
    // else         // compile error
    //     c = bar;

    /* What that will do is complain, because if you don't have the if and else statements directly
    next to each other, THE ELSE CAN'T SEE THE IF. So make sure not to forget your curly braces. */

    return 0;
}

/* These are incredibly, incredibly, INCREDIBLY useful. This is how all that digital logic
 * stuff we've learned makes its way into computer science, and it deals with the way to do
 * those two-way decisions.
 * 
 * However, it can be used for even more decisions as well, because you can technically string
 * together an infinite numbers of ifs and elses by putting an if after the else, making the
 * else statements capable of evaluating selectively.
 * 
 * if statements can also run nested within each other. The trick here is to remember that an
 * else always goes with the nearest if, because if you don't you can have more problems with
 * dangling elses. 
 * 
 * if statements are really powerful. Yet with great power always comes great responsibility,
 * and one has to make sure to watch out for unreachable or dead code. This can crop up very
 * easily with if-else chains in the same way that if you throw a pass in football there are
 * three possibilities, two of which are bad.
 * 
 * It's time to stop doing dumb examples, though. Let's do one that's actually useful. Here's
 * a function that flips the case of any standard ASCII character: */

char flip_case(char c)
{
    if ((c >= 'a') && (c <= 'z'))
        return (c - 0x20);
    else
        if ((c >= 'A') && (c <= 'Z'))
            return (c + 0x20);
}

/* That example showcases the double-condition example as well as the way the compiler sees
 * each of those between the semicolons as single lines. I could just as well write
 * 
 * if(c>='a'&&c<='z') return c-0x20;
 * else if(c>='A'&&c<='Z') return c+0x20;
 * 
 * if I wanted it to be as unreadable as possible, but then Dr. Johnson or Dr. Bailey or
 * whichever egomaniacal genius PhD I'm working for at the time as a rank-and-file code
 * monkey would be very unhappy and I would probably lose my job for being a douchenozzle.
 * While those are technically correct and none of it makes a difference to the assembly
 * code or the x86 binary the assembler generates, the next person to read my code is a
 * human being and will only see those lines as alphabet soup, especially in a collection
 * of other lines that look like it. When you have to read code that looks like
 * 
 * int elif(){
 * int a,b,c;
 * int foo,bar,boo;
 * a = b = 15;
 * if (a == b)
 * foo = 3;
 * if (a > b)
 * foo = 9;
 * a = 3;
 * b = 5;
 * c = 2;
 * if (a && b++){
 * c = 5;
 * a = 9;
 * }
 * if (b >= c)
 * c = 19;
 * else
 * foo = 19;
 * foo = 4;
 * bar = 86;
 * boo = 25;
 * if (bar >= (foo + 2 * boo))
 * a = boo;
 * b = foo;
 * else
 * c = bar;
 * return 0;
 * }
 *
 * for hours and hours it doesn't matter if there are any comments because nobody can
 * discern what anything actually does. If you wanted to put all the code on one line,
 * like
 * 
 * int elif(){int a,b,c;int foo,bar,boo;a=b=15;if(a==b)foo=3;if(a>b)foo=9;a=3;b=5;c=2;if(a&&b++){c=5;a=9;}if(b>=c)c=19;else foo=19;foo=4;bar=86;boo=25;if(bar>=(foo+2*boo))a=boo;b=foo;else c=bar;return 0;}
 * 
 * then you're surely going to get fired before getting offered a job at Microsoft five
 * minutes later, because it takes serious talent to make code that readable. The best
 * programmers have mastered this skill, so an easy way to tell how shit a programmer is
 * is that his code is completely and totally readable to both a computer and a human. */


int main()
{
    int errno = elif();
    return errno;
}
