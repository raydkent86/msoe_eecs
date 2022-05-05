/* DATA TYPES
 * Lube up your eye hole, fucker. Becuase I'm about to fuck your tiny mind. It's time to
 * start talking about all the stuff that a byte or chain of bytes could possibly mean
 * in C programming.
 * 
 * This definition of the domain in which a variable lives is known as a DATA TYPE, and
 * it includes every single possible value and every defined operation that one can do
 * on those values in that space. */

#include <stdio.h>
#include <stdint.h>

/* WHY TYPES?
 * Computers have no room for confusion - the way they operate does not allow for any
 * kind of confusion. They MUST GET THE SAME ANSWER TO A QUESTION EVERY TIME.
 * 
 * Things also need to be stored in memory somewhere, which, as I've mentioned, is just
 * a big ol' blob of ones and zeroes - high and low logic states that don't intrinsically
 * mean anything.
 * 
 * With that being said, bitcoin or gold doesn't technically have any intrinsic value and
 * yet there is a high level of practical value when you live in the REAL WORLD. Memory
 * works the same way - chains of binary can be made to represent many different things
 * because values can be given symbolic meaning as well as mathematical meaning.
 * 
 * Ultimately, there are four categories of datatypes in C:
 * - void
 * - integral
 *      + Boolean [bool]
 *      + character [char]
 *      + integer [int]
 * - floating point
 *      + real
 *      + imaginary
 *      + complex
 * - derived/complex
 * 
 * Let's go through them:
 * 
 * VOID [void]
 *  - no value or defined operations
 *  - used when one wants to indicate that no arguments exist for a function call, or
 *    whether that call returns no value */

// example: this is a function with no arguments and no return
// it also happens to do exactly nothing
void myFunction(void)
{
    return;
}

/* Yeah, that does initially seem kind of stupid, but it will make sense later. Moving on...
 *
 * BOOLEAN [bool]
 *  - two values: true or false
 *  - logic operations can be performed on them
 *      + and (&&)
 *      + or (||)
 *      + not (!)
 * 
 * Booleans are ordinarily defined just like below, but the compiler likes to bitch because
 * it apparently thinks booleans are not real, so... */
// bool in1;

/* You'll have to take my word for it, though - Boolean values work properly in C++ even if
 * they're wickedly broken in C.
 * 
 * The logic operations, however, apply to another datatype further down the road - the
 * integer - which are functionally identical when the value is 0 or 1.
 * 
 * They tend to look a bit like this, so for instance the expression
 *      in3 = !(in1 || in 2);
 * would be equivalent to the logic expression
 *      in3 = NOT(in1 OR in2) = in1 NOR in2
 * which just means to flip whatever value comes out of that nested OR, and that if either
 * in1 or in2 is true the result will be false.
 * 
 * CHARACTERS [char]
 *  - eight-bit value, although only seven bits are used
 *  - as a result, has 128 values, and represents the Ass-Key Codes -- ehrm -- ASCII code,
 *    a standardized numerical identifier for characters ranging from 0x00 to 0x7F
 *  - modern characters are generally a 24 bit value and use something called Unicode,
 *    which ups the number of possible characters to nearly 17 million (hence emojis)
 *  - the same operations as integers can be performed, although they become characters
 *    when ultimately visualized
 *  - require a single quote to select a character to define, or can be defined directly
 *    as if they were an integer using an ASCII code */

void chars(void)
{
    char initial1 = 't'; // standard method of definition - desired character in single quotes
    char initial2 = 106; // 'j' - characters can also be defined using decimal values
    printf("%c%c", initial1, initial2); // print out "tj"
    printf("%c", (initial1 - initial2)); // print out 't' - 'j' = 116 - 106 = 10 = "[LINE FEED]"
}

/* A few important ASCII codes to know:
 *      0x00 (0):   [NULL] (no character)
 *      0x30 (48):  '0' (numbers are 0x30 plus the digit value)
 *      0x41 (65):  'A' (letters start after 0x40)
 *      0x61 (97):  'a' (upper and lower case differ by 0x20)
 *      0x7F (127): [DEL] (delete - final character in map)
 * Always remember that the small guy is always bigger than the big guy, as far as character
 * identifiers are concerned.
 * 
 * INTEGERS [int]
 *  - represents an integral value
 *  - values are system dependent
 *      + cannot represent fractions
 *      + generally 16 to 64 bits [2, 4, or 8 bytes]
 *      + defined in the program as short ints, ints, or long ints
 *  - operations are wider than booleans
 *      + arithmetic (+, -, *, /, %)
 *      + comparison (>, <, >=, <=, ==, !=)
 *      + bitwise (~, |, &, ^, <<, >>) */
int ints() // the "void" doesn't have to be there in function calls, it can be left empty as well
{
    int aa; // standard/long 32 bit integer
    short int bb; // short 16 bit integer
    long long int cc; // ultra-long 64 bit integer

    aa = -48; // can be positive or negative, assuming they're signed
    bb = 0xBEEF; // can also be specified in hexadecimal using the 0x notation

    cc = aa + bb; // add aa to bb - this is possible so long as you don't break the rules I'm about to mention
    
    return 0;
}

/* SOME SPECIAL CONSIDERATIONS WITH TYPE int
 *  - range is defined and limited
 *  - there are signed AND unsigned variants, with signed values represented by two's
 *    complement binary
 *  - hitting the upper limit of the integer will cause an overflow and force it to loop back
 * 
 * SPECIAL INTEGER TYPES
 * A special set of integers are defined for embedded systems programming that are
 * designed to allow register and memory access, and are not system dependent. These values
 * are defined in the standard integer library stdint.h, and a few of them are shown below. */

int8_t a;   // signed char
uint8_t b;  // unsigned char
int16_t c;  // short int
uint16_t d; // unsigned short int
int32_t e;  // (long) int
uint32_t f; // unsigned int
int64_t g;  // long long int
uint64_t h; // unsigned long long int

/* REAL FLOATING POINT NUMBERS
 *  - values are system-dependent
        + SIGNED
        + four-byte: 1, 8, 23
        + eight-byte: 1, 11, 52
        + either float, double, or long double
    - can do arithmetic operations as well as comparison operations (at least in theory) */
int floats()
{
    float aa;
    double bb; // double the precision - less wandering but more memory usage
    long double cc;
    
    cc = aa / bb;
}

/* COMPLEX FLOATING POINT NUMBERS
 *  - some systems also support imaginary numbers, although many do NOT
 *  - the "complex" keyword can also be used for complex numbers with real and imaginary
 *    parts of equal size, but again, not really heavily supported, especially not in
 *    embedded
 *  - real and imaginary complex numbers also don't mix very well, so don't try and do
 *    math with them 
 * 
 * SPECIAL DETAILS
 *  - a few functions exist for variables
 *      + sizeof(type)
 *      + typeof(expression)
 *  - a few constants also exist so you don't have to memorize values (although you
 *    probably will)
 *      + SHRT_MIN: minimum value of signed short int
 *      + SHRT_MAX: maximum value of signed short int
 *      + USHRT_MAX: maximum value of unsigned short int
 *      + INT_MIN: minimum value of signed int
 *      + INT_MAX: maximum value of signed int
 *      + UINT_MAX: maximum value of unsigned int
 *  - these definitions require the following includes
 *      <limits.h>
 *      <float.h>
 *      <stdint.h> 
 * 
 * VARIABLES
 *  - symbolic representation for a value (a name)
 *  - stored in memory (data)
 *  - can be modified during execution
 *  - must have a type to tell compiler how much to allocate
 *  - allowed characters: A-Z, a-z, 0-9, and _, and cannot begin with a number
 *  - must be declared before they're used
 *  - can be declared in a daisy chain, but not a good practice (int a, b, c;)
 *  - not initialized just by declaring them
 *      + some compilers autoinit to 0
 *      + other times, you get garbage because the memory locations have old
 *        values that haven't decayed yet
 *      + nothing stops you from using an uninitialized variables in compiler
 *        based languages, however in Python or Java or anything similar you
 *        will get runtime errors
 * 
 * VARIABLES IN MEMORY
 * Let's assume you define
 *      int foo;
 *      char initial1;
 *      float rate;
 *      char initial2;
 *      int boo;
 * Memory allocation proceeds in the order that the instructions come up in the code,
 * so this is what the RAM would look like (well, approximately - one-byte characters
 * smaller than the instruction set - here that's 32 bits - are grouped together for
 * alignment's sake and then broken down by the program):
 *  REF         VALUE
 *  0x00011000  xxxx xxxx <--|  reserved for "foo", is GAABAEGE right now
 *              xxxx xxxx <--|
 *              xxxx xxxx <--|
 *              xxxx xxxx <--
 *  0x00011004  xxxx xxxx       initial1
 *              xxxx xxxx       initial2
 *              xxxx xxxx       unused (alignment)
 *              xxxx xxxx       unused
 *  0x00011008  xxxx xxxx <--|  rate
 *              xxxx xxxx <--|
 *              xxxx xxxx <--|
 *              xxxx xxxx <--
 *  0x0001100C  xxxx xxxx <--|  boo
 *              xxxx xxxx <--|
 *              xxxx xxxx <--|
 *              xxxx xxxx <--
 *  0x00011010  xxxx xxxx
 * 
 * Now let's say we assign these variables some values:
 *      initial1 = 't';
 *      rate = 2.5;
 *      boo = 0xFF;
 * The memory will then look like this (let's imagine this one is litte-endian, because
 * most systems in the world are little-endian because Microsoft/IBM and x86):
 *  REF         VALUE
 *  0x00011000  xxxx xxxx <--|  reserved for "foo", still garbage
 *              xxxx xxxx <--|
 *              xxxx xxxx <--|
 *              xxxx xxxx <--
 *  0x00011004  0111 0100       initial1 = 0x74
 *              xxxx xxxx       initial2 = garbage
 *              xxxx xxxx       unused (alignment)
 *              xxxx xxxx       unused
 *  0x00011008  0000 0000 <--|  rate = 2.5 -> 0B 10.1
 *              0000 0000 <--|  1.01 * 2^1 -> 0 sign
 *              0010 0000 <--|                01 mantissa
 *              0100 0000 <--                 1000000 exponent
 *  0x0001100C  1111 1111 <--|  boo = 0xFF
 *              0000 0000 <--|
 *              0000 0000 <--|
 *              0000 0000 <--
 *  0x00011010  xxxx xxxx
 * Or, if we're doing network ops and want big-endian:
 *  REF         VALUE
 *  0x00011000  xxxx xxxx <--|  reserved for "foo", still garbage
 *              xxxx xxxx <--|
 *              xxxx xxxx <--|
 *              xxxx xxxx <--
 *  0x00011004  0111 0100       initial1 = 0x74
 *              xxxx xxxx       initial2 = garbage
 *              xxxx xxxx       unused (alignment)
 *              xxxx xxxx       unused
 *  0x00011008  0000 0000 <--|  rate = 2.5 -> 0B 10.1
 *              0000 0000 <--|  1.01 * 2^1 -> 0 sign
 *              0010 0000 <--|                01 mantissa
 *              0100 0000 <--                 1000000 exponent
 *  0x0001100C  0000 0000 <--|  boo = 0xFF
 *              0000 0000 <--|
 *              0000 0000 <--|
 *              1111 1111 <--
 *  0x00011010  xxxx xxxx
 * 
 * CONSTANTS
 *  - symbolic representation for a value (again)
 *  - stored in memory, but CANNOT BE MODIFIED - only read
 *  - similar to variables, but have the option to add via preprocessor
 *    directives (#define) that will substitute at compile time
 *  - constants are the ONLY TIME WE WILL DECLARE AND INITIALIZE AT THE SAME
 *    TIME - we will not do it in any other case because it's asking for
 *    trouble in most cases */

// two constants representing the all-on and all-off states of one of those eight-bit registers
const uint8_t on = 0xFF;
const uint8_t off = 0x00;

/* ONE FINAL NOTE: these names and data types all go away at compile time. The compiler, when it turns
 * stuff into assembly language, will take the names and make them into raw memory transactions, so
 * your variable name is purely so people can read your code.
 * 
 * As a result, you don't want to make variable names too difficult or convoluted, as shown below: */

float very_long_variable_name_lol_omg_brb_ice_cream_truck_fuck_da_feds; // never use this variable name, and not just because profanity
// still, it's better than camel-case, which would read veryLongVariableNameLOLOMGBRBIceCreamTruckFuckDaFeds
// camel-case is ass and looks like it too, underscores for life

/* You're going to have to type that variable name in every time you want to reference it, so if it's too difficult
 * for any reason, whether that's because it's too long or it makes you laugh too hard, you probably shouldn't use
 * it unless you're Dr. Seth Hochwald out of IVC and you're writing a program to prove to your students that crime
 * does, in fact, pay, because a workplace crook who steals money pickpocketing, takes bribes, and loots the office
 * vending machines for cash at every opportunity will make more money than any of the honest employees will ever
 * hope to. */

int main()
{
    chars();
}
