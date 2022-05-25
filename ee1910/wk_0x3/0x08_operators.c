/* OPERATORS IN C
If you ever get curious about what goes first, remember BODMAS - brackets, order, divide/multiply,
and add/subtract.
Precedence (highest to lowest)
    TIER 1
        ++  Suffix/postfix increment
        --  Suffix/postfix decrement
        ()  Function call
        []  Array subscripting
        .   Structure and union member access
        ->  Structure and union member access thru pointer
        (type){list} Compound literal [C99]
    TIER 2 [RTL]
        ++       Prefix increment
        --       Prefix decrement
        + -      Unary plus and minus
        !        Logical NOT
        ~        Bitwise NOT
        (type)   Typecast
        *        Indirection (dereference)
        &        Address-of
        sizeof   Size-of
        _Alignof Alignment requirement [C11]
    TIER 3
        *   Multiplication
        /   Division
        %   Modulo (remainder)
    TIER 4
        +   Addition
        -   Subtractions
    TIER 5
        <<  Bitwise left shift
        >>  Bitwise right shift
    TIER 6
        >   Greater than
        >=  Greater than or equal to
        <   Less than
        <=  Less than or equal to
    TIER 7
        ==  Equivalency
        !=  Nonequivalency
    TIER 8
        &   Bitwise AND
    TIER 9
        ^   Bitwise XOR
    TIER 10
        |   Bitwise OR
    TIER 11
        &&  Logical AND
    TIER 12
        ||  Logical OR
    TIER 13 [RTL]
        ?:  Ternary conditional
    TIER 14 [RTL]
        =   Simple assignment
        +=  Assignment by sum
        -=  Assignment by difference
        *=  Assignment by product
        /=  Assignment by quotient
        %=  Assignment by remainder
        <<= Assignment by bitwise left shift
        >>= Assignment by bitwise right shift
        &=  Assignment by bitwise AND
        ^=  Assignment by bitwise XOR
        |=  Assignment by bitwise OR
    TIER 15 (not really an operator, but whatever)
        ,   Comma */

#include <stdio.h>
#include <stdint.h>

/* SPECIAL NOTE ON BINARY IN C
 * Remember how I said earlier that you couldn't type binary into a C program? Well, I kinda lied.
 * Some BUT NOT ALL compilers accept the Java-style notation for entering binary values directly,
 * as shown below: */

int bintest()
{
    int bin = 0B01011101; // bin = 95
    printf("The value of bin is %d\n", bin);
    return 0;
}

/* As a general rule, though, to ensure portability of our code, we will NOT use this, instead
 * choosing to represent the value as its hexadecimal equivalent most of the time. This is
 * straightforward and we've done it before, so I won't go over it again.
 * 
 * INTEGER DIVISION
 * When using the division operator on integer data types, the result will only be the whole part. To
 * get the remainder, use the modulo operator (%), which is, conveniently, defined for nothing but
 * integers.
 * 
 * THIS MEANS that
 *      a/b * c
 * will be ZERO if b is larger than a. I made the mistake of blowing that question in class. Don't do
 * the same because it's five kinds of whack.
 * 
 * RELATIONAL OPERATORS
 * Relational expressions evaluate to either a Boolean TRUE or FALSE value. */
int relational()
{
    int a = 13;
    int b = 5;
    int c = 18;
    float x = 5.566;
    float y = 2.2;

    printf("1 == 1 -> %d\n", (1 == 1)); // true == true -> true
    printf("a == b -> %d\n", (a == b)); // false
    printf("c == a + b -> %d\n", (c == a + b)); // true
    printf("x >= y -> %d\n", (x >= y)); // true
    printf("x <= y -> %d\n", (x <= y)); // false
    printf("b < 5 -> %d\n", (b < 5)); // false
    printf("y != 2.2 -> %d\n", (y != 2.2)); // false

    return 0;
}

/* LOGICAL OPERATORS
 * The logical NOT INVERTS the logical value.
 * The logical OR evaluates both sides then does an OR.
 * The logical AND evaluates both sides then does an AND.
 * REMEMBER: the ONLY INTEGER VALUE that is FALSE is ZERO. */
int logical()
{
    int a = 13;
    int b = 5;
    int c = 0;
    float x = 5.566;
    float y = 2.2;
    float z;

    printf("%d\n", (!b)); // false
    printf("%d\n", (c || b)); // true
    printf("%d\n", (c && b)); // false

    return 0;
}

// BITWISE OPERATORS
int bitwise()
{
    uint8_t a = 0x86;
    int8_t b = 0xA5;

    // The bitwise NOT inverts the individual bits (this is NOT the two's complement!)
    printf("%d\n", ~a); // !(1000 0110) -> 0111 1001 -> 0x79

    // The bitwise OR will OR the individual bits
    printf("%d\n", (a | b)); // (1000 0110) | (1010 0101) -> 1010 0111 -> 0xA7

    // The bitwise AND does the same thing with an AND
    printf("%d\n", (a & b)); // (1000 0110) & (1010 0101) -> 1000 0100 -> 0x84

    // Can you guess what the bitwise XOR does?
    printf("%d\n", (a ^ b)); // (1000 0110) ^ (1010 0101) -> 0010 0011 -> 0x23

    /* The bitwise shifts will move bits left or right using sign extension, with the
    final results dependent on whether the value is unsigned, signed, negative, or
    positive. */
    a = b = 0xA6;
    printf("%d\n", (a >> 2)); // 1010 0110 -> 0010 1001 (unsigned)
    printf("%d\n", (b >> 2)); // 1010 0110 -> 1110 1001 (signed)

    return 0;
}

/* Make sure you remember your precedence, and realize when things can create dead code.
 * The expression
 *      a < b * c >> 2 || 7
 * is equivalent to
 *      (a < ((b * c) >> 2)) || 7
 * which will give a one no matter what because it's an OR, making it 0xDEADC0DE - code that
 * doesn't functionally do anything except waste the hell out of memory. The reason it wastes
 * memory is because C has to evaluate all those higher-priority statements before it can
 * establish that the value to the left is a one for sure, and if you do this with values that
 * can change, your programming memory is going to look like a toilet filled with diarrhea dump.
 * 
 * Also note that you can't do something with a side effect and then use the same operand
 * elswehere. For instance,
 *      a++ / b * a
 * is completely undefined and will either cause the compiler to complain or cause you to
 * get garbage. Or, if you're lucky, the compiler writer may decide to pump values like this
 * directly to 7 or 0xDEADBEEF or something like that. Remember, the compiler can do WHATEVER
 * IT WANTS, and yes, if it goofs up it can cause memory leaks and runtime crashes and any
 * other manner of unsavory stuff, but sometimes expressions like that can lead to the
 * discovery of ridiculous Easter eggs that nobody thought would ever be found in a million years.
 * 
 * One final thing: you want your code to be READABLE. Programmers have this really horrible
 * habit of making their code as deliberately illegible as possible, and as a result you have
 * no shortage of this business:
 *      z=4*24>>5<2==2^a++;
 * That is technically a valid expression, but God only knows what it does. If we really wanted
 * to expand it out, a more readable version would be
 *      z = 4 * 24 >> 5 < 2 == 2 ^ a++;
 * that will then become
 *      z = ((((4 * 24) >> 5) < 2) == 2) ^ a++;
 * after you finally figure out what manner of black magic that fucktard managed to do.
 * Please, do not ever do this in your code. I will come and k*ll you very slowly if you do. */

/* EXPRESSIONS
 * All these operators 'n' crap combine together to form expressions that represent things.
 * They are subject to precedence and associativity and fall into one of six categories:
 *      1) primary
 *      2) postfix
 *      3) prefix
 *      4) unary
 *      5) binary
 *      6) ternary
 * They can also be simple (one operator) or complex (more than one operator).
 * 
 * PRIMARY
 *  - one operand, no operators
 *  - names, literals, and parentheticals are all primary expressions
 * POSTFIX
 *  - one operand followed by one operator
 *  - operand must be a variable
 *  - function calls and postfix inc/dec are postfix expressions
 *  - some have a value and a side effect
 *  - BE CAREFUL: technically, the value doesn't get modified until AFTER the evaluation
 *    of the number. That means
 *      (b + a++) / (c + a)
 *    will become the equivalent of
 *      (b + a) / (c + a)
 *    before the side effect of incrementing a happens and manifests later. This also
 *    means that (a+++b) will, by definition, become (a++ + b) because postfix operators
 *    have higher precedence
 * PREFIX
 *  - one operator followed by an operand
 *  - literally two examples: prefix increment and decrement
 * UNARY
 *  - one operator followed by one operand
 *  - operand can be any expression
 *  - unary +/- (a.k.a. positive/negative), typecasts, and sizeof() are all unary
 * BINARY
 *  - operand, operator, operand
 *  - familiar to us: +, -, *, /, %
 *  - subject to type limitations
 *  - also includes ASSIGNMENTS
 * TERNARY
 *  - ...we'll talk about this later */
