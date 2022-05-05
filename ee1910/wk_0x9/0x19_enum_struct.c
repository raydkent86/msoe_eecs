/* ENUMERATED TYPES
 * We can create our own types in C. As if this couldn't get any better, we now have a way to create
 * an alias for something. This has a whole bunch of capability that we can't use yet, but it's
 * still important to know.
 * 
 * What's even more important now is the enum keyword, which assigns a limited number of values
 * to a variable based on words. The values must be integral. One can say something like: */

enum wire_color {RED, WHITE, BLUE, BLACK};
enum wire_color power;
enum wire_color gnd;
enum wire_color signal;

/* The beauty of this is that we can now say: */
power = BLACK;
gnd = WHITE;
signal = RED;
/* but this combines with typedef to make things even cleaner. If we put "typedef" before an enum
 * declaration, we won't need to put the enum keyword before enum-based variables. Enumerated lists
 * assign the word values to the would-be array index, so the first values are smaller than the last
 * values.
 * 
 * This ends up being a fancy way to do #define except that this is not a macro expansion but
 * something in the code. See this at work with how months work, this time demonstrating that you
 * can technically specify values in the enum as well. So far, we've demonstrated anonymous
 * enumeration, but now let's use a more specific one. */

#include <stdio.h>
#include <stdint.h>

// starts from 1 and counts up - just note that typedefs can only be global
typedef enum month {JAN = 1, FEB, MAR, APR, MAY, JUN, JUL, AUG, SEP, OCT, NOV, DEC} Month;

int typedef_enums()
{
    enum wire_color gnd;
    enum wire_color vcc;
    enum wire_color sig;
    Month birth_month;

    // initialize
    gnd = WHITE;
    vcc = BLACK;
    sig = RED;
    birth_month = JUL;

    // enums
    printf("gnd val is %d\n", gnd);
    printf("vcc val is %d\n", vcc);
    printf("sig val is %d\n", sig);

    if (vcc == BLACK)
        printf("vcc is black\n");
    else
        printf("vcc is not black");
    
    printf("birth month is %d\n", birth_month);

    birth_month++;
    printf("birth month is %d\n", birth_month);

    if (birth_month > APR)
        printf("birth month is after April\n");
    else
        printf("birth month is at or before April");

    return 0;
}

/* STRUCTURES (structs)
 * Remember how I said arrays had the problem of all having to be the same type? Now we have a way
 * around this - the struct consists of a collection of fields (or members) that look just like
 * variables but are part of a larger data structure.
 * 
 * There are three ways to create them:
 * 1) INDIVIDUAL
 * This is what it sounds like - you create the struct based on a one-time template and there will
 * never again be another one like it. It's a special snowflake, and it's offended that you didn't
 * ever call it by the name it identifies as. The correct response is to say "fuck him" and tell him
 * to stick that complaint up his ass because he's a horrible programming concept that you should
 * never ever ever ever ever ever ever...ever ever use ever ever. */
struct
{
    int id;
    char name[26];
    float gpa;
} stu1 = {.id = 245, .name = "Joe Schmoe", .gpa = 3.35},
  stu2; // you can assign values to them or not

/* 2) TAG
 * We can also create structs like we do enums, declaring the template of the struct before we use
 * it. This is the same as above, and is self-explanatory. */

struct student
{
    int id;
    char name[26];
    float gpa;
};

/* 3) typedef
 * But like with structs, we can also use the typedef keyword to make the structure into a new type.
 * This is generally the best way to do this because it cuts down on the dicking around factor
 * imposed by having to write "struct" everywhere. */

typedef struct crook
{
    int id;
    char name[26];
    float pickpocket;
    float bribes;
    float insurance_fraud;
    float vending_machines;
} Crook;

/* Once again, proof that crime does pay. If you know, you know. 
 *
 * We access the fields of a struct with the . operator, in the format struct_var.field. Structs are
 * also capable of doing full-on assignments, unlike arrays, which is why people sometimes use them
 * in place of arrays. Dereferencing a struct also gives the first value inside, just like an array,
 * making the similarities even closer.
 * 
 * But this concept allows us to finally explain register IO. We can also access the value inside a
 * pointer to find stuff indirectly. The MSP registers actually do something like this: */

typedef struct
{
    volatile uint8_t IN; /*!< Port Input */
    uint8_t RESERVED0;
    volatile uint8_t OUT; /*!< Port Output */
    uint8_t RESERVED1;
    volatile uint8_t DIR; /*!< Port Direction */
    uint8_t RESERVED2;
    volatile uint8_t REN; /*!< Port Resistor Enable*/
    uint8_t RESERVED3;
    volatile uint8_t DS; /*!< Port Drive Strength */
    uint8_t RESERVED4;
    volatile uint8_t SEL0; /*!< Port Select 0 */
    uint8_t RESERVED5;
    volatile uint8_t SEL1; /*!< Port Select 1 */
    uint8_t RESERVED6;
    volatile  uint16_t IV; /*!< Port Interrupt Vector Value */
    uint8_t RESERVED7[6];
    volatile uint8_t SELC; /*!< Port Complement Select */
    uint8_t RESERVED8;
    volatile uint8_t IES; /*!< Port Interrupt Edge Select */
    uint8_t RESERVED9;
    volatile uint8_t IE; /*!< Port Interrupt Enable*/
    uint8_tRESERVED10;
    volatile uint8_t IFG; /*!< Port InterruptFlag */
    uint8_t RESERVED11;
} DIO_PORT_Odd_Interruptable_Type;

/* and combines it with */

#define P3 ((DIO_PORT_Odd_Interruptable_Type*)(DIO_BASE + 0x0020))

/* to create something we can use. In addition to making all sorts of new cool viruses, we can use
 * this to make clocks as well. */
