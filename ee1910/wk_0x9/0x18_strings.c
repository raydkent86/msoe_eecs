/* STRINGS (and more pointers)
 * This is easily one of the more difficult concepts to grasp in the course, so we're spending
 * yet another day on it.
 * 
 * Specifically, in terms of arrays, we're talking about the special functionality you can get from
 * an array of characters, also called a string.
 * 
 * We're quite familiar with pointers now -- we can declear them, define them, dereference them,
 * find how they look in memory, all that good stuff. But there's also a technique that experienced
 * C coders use a ton called pointer arithmetic, which is math that involves adding and subtracting
 * pointers in increments of the type size. If you add numbers to a pointer, it increments the
 * value by the number of pointer spaces. If you dereference a pointer subtracted by a number, you
 * get the value that's sizeof(x) * n values backward from it.
 * 
 * This is typically what is used with arrays, and if you do a %p format specifier in printf() you
 * can see this at work at runtime. The function below does exactly this. */

#include <stdio.h>
#include <string.h> // new include - more on this later

#define SIZE 5

int pointer_arithmetic()
{
    int i;
    int my_array[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    for (i = 0 ; i < 10 ; i++)
        printf("array val: %d %p\n", *(my_array + i), my_array + i);
    return 0;
}

/* As a result, our pointer terminology can replace our array terminology. We can iterate through
 * for loops using pointers like so: */

int iterate()
{
    int my_array[SIZE];
    int *array_ptr;

    printf("Please enter %d array values: ", SIZE);
    for (array_ptr = my_array ; array_ptr < my_array + SIZE ; array_ptr++)
        scanf("%d", array_ptr);
    
    printf("Your array printed backwards is: ");
    for(array_ptr = my_array + (SIZE - 1) ; array_ptr >= my_array; array_ptr--)
        printf("%d ", *array_ptr);
    
    return 0;
}

/* That is the most analagous thing to stepping through every element of an array or structure in
 * Python. That pointer could be everything

 * The other thing the Real World (TM) does is throw strings everywhere. Strings are a special kind
 * of array of characters that feature the ASCII/Unicode EOF character as its delimiter ('\0').
 * This means the string must be one bigger than the biggest thing you put in it, and without that
 * terminator it's just an array of characters again.
 * 
 * There are a few types of strings, the most common being the string literal, a constant string
 * with the characters between double quotes. The wild thing is that if you have "hello world" you
 * can go "hello world"[3] and get the 'l' back. Assigning a string literal to a char* datatype
 * will initialize the values up ot the terminator but give garbage at any values beyond it.
 * 
 * However, once they've been initially assigned, they cannot be assigned as a whole entity anymore,
 * meaning they now have to be processed elementwise.
 * 
 * Also, because reading strings in can leave carriage returns or extra garbage characters in the
 * buffer, one needs to run getchar() or fflush() to remove the extra characters. One way around
 * this is to instead use the gets() function, but that's deprecated and has issues as well, so we
 * generally use fgets() instead with the stdin input file reference.
 * 
 * Strings also have their own funtcions, which is why I brought in that new include. string.h
 * includes the functions strlen(), strcpy(), strncpy(), strcmp(), strncmp(), strcat(), strncat(),
 * and several others. They're self-explanatory for the post part, but it's worth mentioning a
 * couple things, the first of which is that strcpy(), strcmp(), and strcat() DO NOT DO BOUNDARY
 * CHECKING. That means you can end up with garbage characters in your string if you don't pay
 * attention, so we basically never use it. Instead, we use strncpy() and all the other stuff that
 * only does a fixed length copy/comparison/concatenation because we will probably break something
 * important for being such a dunce if we use the ones without bounds checking.
 * 
 * Below I've got some implementations of the stuff I'm talking about, meaning I can officially shut
 * my face now. */

int string_stuff()
{
    int i;
    char st0[8] = "string1";
    char st1[8] = "string1";
    char st2[8];
    char st3[8];

    printf("st0 = %s\n", st0); // prints whole string
    printf("st1 = %s\n", st1);

    printf("st0 is made up of: ");
    for (i = 0 ; i < 8 ; i++)
        printf("- %c -", st0[i]); // print as characters
    printf("\n");

    printf("st1 is made up of: ");
    for (i = 0 ; i < 8 ; i++)
        printf("- %i -", st1[i]); // print as unsigned integral values
    printf("\n");

    printf("Enter a value for st2: ");
    scanf("%8s", st2);
    fflush(stdin);
    printf("You entered: ");
    printf("%s\n", st2);

    printf("Enter a value for st3: ");
    gets(st3);

    return 0;
}
