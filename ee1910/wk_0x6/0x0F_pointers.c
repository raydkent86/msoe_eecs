/* POINTERS AND FUNCTION I/O */

#include <stdio.h>
 
/* We already have used pointers a ton - a pointer is simply a name used to reference something
 * in memory on a computer. More technically, it's a special data type that dictates a variable
 * holds a location in memory, and its value is a memory address (in our case, 32-bit).
 * 
 * To specify the pointer location (or "reference") to a variable that already exists, we use
 * a singular ampersand before a variable name. For instance, typing &myvar1 will give the
 * memory address to the variable myvar1.
 * 
 * A variable can also be defined as a pointer variable by putting a * before the variable name
 * or after the datatype (the order doesn't matter), and the value will be the memory address
 * unless you use the * to get the actual value in memory.
 * 
 * That's the next thing - to get a value of a variable pointed to by a pointer variable,
 * precede the pointer variable with the de-reference operator, as described above.
 * 
 * Examples of this in action are below: */

int pointers()
{
    // normal variables
    int foo1 = 5;
    float foo2 = 12.0;

    // pointer variables mapped to the normal variables
    int *ptr1 = &foo1; // assign to the location of foo1
    float *ptr2 = &foo2;

    /* Those values could theoretically be anything, although if you don't actually put
    something there you'll get garbage. Additionally, if you try and access a memory address
    that's critical to some other function, you may get access violations or worse - you
    could accidentally corrupt something and crash the whole machine.

    But you could also assign a value and let the compiler decide the address as well, which
    you access, again, with the de-reference. Using it on ptr1 would give the value of foo1,
    since, according to our x86 memory diagram (little-endian because Microsoft):
    REF         VALUE
    0x00011000  0000 0101       foo1 = 0x00000005 = 5
                0000 0000
                0000 0000
                0000 0000
    0x00011004  0000 0000       foo2 = 0x41400000 = 12.0
                0000 0000
                0100 0000
                0100 0001
    0x00011008  0000 0000       ptr1 = 0x00011000
                0001 0000
                0000 0001
                0000 0000
    0x0001100C  0000 0100       ptr2 = 0x00011004
                0001 0000
                0000 0001
                0000 0000

    Note that the values in ptr1 and ptr2 are both integral, and are equivalent to the
    memory address of foo1 and foo2, so the lines of code below... */
    int bar1 = *ptr1;
    float bar2 = *ptr2;

    /* ... will give the values at the addresses 0x00011000 and 0x00011004 respectively,
    or... the values of foo1 and foo2. */
    return 0;
}

/* These are exceptionally useful in functions if you want to return more than one thing
 * (although you generally don't want to return more than one thing - more on why that is
 * a little bit later), since if you know the memory address you can modify a variable
 * from anywhere in memory, UNLESS you are above the scope of where the variable was defined.
 * The reason you can't modify things above the scope of the variable definition is because
 * the compiler reverts all variables to their init value for undefined memory (garbage or
 * a magic number such as 0xDEADBEEF), or the memory is returned to the OS if the programmer
 * uses manual stack allocation.
 * 
 * Below is an example function to swap two values using variables passed by reference. */

void swap(int *a, int *b)
{
    int tmp = *a;
    *a = *b;
    *b = tmp;
}

/* This is the reason scanf() uses things passed by reference - scanf() returns a status
 * code in addition to assigning a variable, which is what one gets if they were to set a
 * variable equal to scanf(). Often it's desirable to run functions like this if they
 * have distinct failure points, since it can be used to trigger goto statements or throw
 * some other exception handling code if something goes wrong.
 * 
 * If we wanted to compound interest to a bank account at a give rate but throw an exception
 * if the balance is negative from debit card overdraft protection instead of adding negative
 * money to the account, this is the exact implementation we use. */

int update_acct(float *balance, float rate)
{
    if (*balance < 0)
        return -1;

    *balance += (*balance * (rate / (float)100));
    return 0;
}

/* That way, you won't make the deficit bigger if the account has negative money at the time.
 * Most times, they just shut your account anyway. If we want to run this in an actual
 * program, here's how we usually apply it: */

int negative_balance()
{
    float balance = -13.29; // someone bought a Chipotle burrito they shouldn't have, then ExpressVPN charged their card
    int err = update_acct(&balance, 0.01);
    if (err != 0)
        printf("ee1910_pointers: cannot compound interest to negative account balance!\n");
    return err;
}

/* That will return whatever status code comes out of the function */
