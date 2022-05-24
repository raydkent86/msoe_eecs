/* INPUT STATEMENTS
 * 
 * Below is an example of input statements with scanf(). */

#include <stdio.h>

void inputs()
{
    int a, b, c;
    puts("Enter the first number");
    scanf("%d", &a);
    puts("Enter the second number");
    scanf("%d", &b);
    puts("Enter the third number");
    scanf("%d", &c);

    // one shot deal
    puts("Enter three numbers");
    scanf("%d%d%d", &a, &b,&c);

}

// IT'S THE scanf() COMMANDMENTS
void commandments()
{
    /* 1) scanf() works until:
     *   - the maximum number of characters has been processed
     *   - a white space character is encountered
     *   - an error is detected
     * 
     * 2) EACH VARIABLE that has to be processed must have a
     *    type conversion specification associated with it. */
    int num1, num2, num3;
    scanf("%d%d", &num1, &num2, &num3); // this will bomb

    /* 3) There must be a variable address for each conversion
     *    specifier. */
    int a, b, c;
    a, b, c = 0, 0, 0;
    scanf("%d%d%d", &a, &b); // this will bomb too
    
    /* 4) An error will be generated if format string is ended
     *    with a whitespace. */
    scanf("%d ", &a); // NOOOOOOOOOOO!!!!
   
    /* 5) If you specify a special character in your format
     *    string, users MUST enter that character. */
    scanf("%d/%d", &a, &b); // user must enter a slash

    /* 6) ANY unread data will be considered as a part of the
     *    next scanf() data input. */
    scanf("%d%d", &a, &b); // user inputs 10 20 30 [RET]
    printf("%d%d%d", a, b, c); // c won't have changed
    scanf("%d", &c); // will not ask user for input
    printf("%d%d%d", a, b, c); // NOW it's changed
    
    /* 7) If you use a width specifier, then it should be large
     *    enough to contain the input size. */
    scanf("%d%4d", &a, &b);

    /* 8) LAST CHANCE TO NEGOTIATE: if something appears wrong, press "return" to set the record straight.
     *
     * 9) Look it in the eye, aim no higher, summon all the courage you require, then COUNT:
     *    1, 2, 3, 4, 5, 6, 7, 8, 9...
     * 
     * 10) PACES -- FIRE! */


}

/* STRINGS
 * 
 * string = a collection of characters (not a simple datatype)
 * placeholder: %s
 */
void strings()
{
    // how to declare a string
    char name[10]; 
    /* This string has 10 characters, but only NINE are useable.
     * The final space of the string is reserved for the end-of-
     * file character.
     * 
     * This means that, when defining a string, always add ONE
     * to the number of characters you think you're going to
     * use. */
}

int main()
{
    char name[10];
    printf("Enter a name: ");
    scanf("%s", name); // & missing; what?
    printf("%s\n");
    return 0;
}
