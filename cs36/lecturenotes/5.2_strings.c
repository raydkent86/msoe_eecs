/* LAB DUE THIS WEEKEND
 * HOMEWORK DUE THE DAY OF THE EXAM
 * Write your codes!
 * 
 * Time to get back into strings! */

#define SIZE 256
#include <stdio.h>
#include <stdlib.h>
#include <string.h> // new header who dis?

/* STRING FUNCTIONS/METHODS
 * Dealing with strings can be a massive pain in the ass. Which is why Dennis Ritchie
 * made sure to write a whole host of functions that process strings so you don't
 * have to. */
int string_functions_and_methods()
{
    char name1[5] = "Ruth";
    name1[0] = 'B';
    printf("%s\n", name1); // Buth

    // but you CANNOT do this, or your compiler will complain
    char name2[15];
    // name2 = name1; // "expression must be a modifiable lvalue"

    /* Therefore, instead of doing that like you might do in Python or Java, we use
    strcpy() and its brothers to copy one string to another. */
    
    // 1) strcpy()
    strcpy(name1, name2); // copy name2 to name

    /* All THAT does is find the number of elements, traverse the array, and dump
    the stuff from the old address in the new address. You could do that real easily
    with a for loop if you don't want to deal with #include, but this is so much more
    convenient. */

    // 2) strncpy() -- copy first n chars
    strncpy(name1, name2, 10); // copy first 10 chars from name2 to name

    // Now, concatenation:
    // 3) strcat()
    char s1[SIZE] = "Joe Smith";
    char s2[SIZE] = "is a nerd";
    strcat(s1, " "); // you can put in regexps as well :D
    strcat(s1, s2); // S1 = "Joe Smith is a nerd"

    // 4) strncat() -- like strcat() but with an 'n'
    char s3[SIZE] = "Joe Smith";
    char s4[SIZE] = "is a nerd";
    strncat(s3, s4, 5); // S3 = "Joe Smithis a "

    /* But what if you want to compare strings?

    You cannot compare strings with the == sign, because of the nature of
    arrays. So instead, you have to use the guy below: */

    // 5) strcmp() -- string compare
    strcmp(name1, name2);

    /* He will return 0 if name1 == name2. He will also return a positive value
    when name1 > name2, and return a negative value when name1 < name2.

    It ALSO has an 'n' version of it: */

    // 6) strncmp() -- no explanation needed.
    
    if (strcmp(name1, name2) == 0)
        puts("Same name");
    else
        puts("Different name");
    
    /* 7) strlen() -- find the length of the thing by finding the NULL char.
    Also, there's no such thing as a STRONG LENGTH, only a STRING length. */
    char name[20] = "Ruth";
    int l = strlen(name);
    
    return 0;
}

/* ARRAYS OF STRINGS
 * Wait. Whiskey tango foxtrot?
 *
 * Yeah, we're real...
 * 
 *   -----------------------------
 * 0 | R | u | t | h | \0 |    | |
 *   -----------------------------
 * 1 | J | a | m | e |  s | \0 | |
 *   ----------------------------- 
 * 2 | B | o | b |   |    |    | |
 *   -----------------------------
 * 3 |   |   |   |   |    |    | |
 *   -----------------------------
 * 4 |   |   |   |   |    |    | |
 *   ----------------------------- */

void load(char[][10]);
void sort(char[][10]);
void print(char[][10]);

// codes
int array_of_strings()
{
    char name[5][10]; // five names with ten chars each -- 5 row, 10 col
    load(name);
    sort(name);
    print(name);
    return 0;
}

void load(char a[][10])
{
    for (int i = 0 ; i < 5 ; i++)
    {
        printf("Enter a name: ");
        gets(a[i]);
    }
}

void sort(char a[][10])
{
    int i, j;
    char t[10];
    for (i = 0 ; i < 4 ; i++)
        for (j = 0 ; j < 4 ; j++)
            if (strcmp(a[j], a[j+1]) > 0)
            {
                strcpy(t, a[j]);
                strcpy(a[j], a[j+1]);
                strcpy(a[j+1], t);
            }
}

void print(char a[][10])
{
    int i;
    for (i = 0 ; i < 5 ; i++)
        printf("%s ", a[i]);
        printf("\n\n");
}

// stdlib.h functions
int std_strings()
{
    int i;
    double x;
    long int y;

    i = atoi("123.456"); // str -> int ; x = 123
    x = atof("12.39 is the answer"); // str -> double/float ; x = 12.39
    y = atol("12345.6789"); // str -> long ; x = 12345L

    return 0;
}

/* MORE LAB QUESTIONS (yay!)
 * 1) Write a program to read, sort, and print the names of n students
 *    of a class.
 *    OUTPUT:
 *    Enter number of students : 3
 *    Enter the name of student 1 : Evan
 *    Enter the name of student 2 : Alana
 *    Enter the name of student 3 : Jared
 *    Names of students are Alana Evan Jared */
