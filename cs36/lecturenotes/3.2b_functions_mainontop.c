/* But WHAT IF I WANT TO PUT THE MAIN ON TOP?
 * 
 * THE SAME THING AS BEFORE -- with PROTOTYPING */

#include <stdio.h>

int a, b, c, sum;
float avg;

// prototypes - think the CEO at the bottom vs the top of the high-rise
void load();
void calc();
void output();

int main()
{
    load();
    calc();
    output();
}

void load()
{
    printf("Enter 3 values ");
    scanf("%d%d%d", &a, &b, &c);
}

void calc()
{
    sum = a + b + c;
    avg = sum / (float)3;
}

void output()
{
    printf("The three values are %d %d %d\n", a, b, c);
    printf("The sum is %d\n", sum);
    printf("The average is %f\n", avg);
}

/* IMPORTANT: EVERYTHING in Dr. Loke's class MUST be prototyped. If you DON'T
 * PROTOTYPE, you will LOSE POINTS. So DON'T DO THINGS THE MORE LOGICAL WAY
 * and DECLARE STUFF ABOVE because that would make TOO MUCH F**KING SENSE. 
 * 
 * Oh, and DON'T DOCUMENT EVERY SINGLE LINE OF YOUR CODE -- it will just
 * waste space. 
 * 
 * Now, let's talk GLOBAL VARIABLES (also called FIELDS):
 * + all declared outside the functions
 * + therefore, can be accessed ANYWHERE in the program
 * + scope (boundary) of global variables: ANYWHERE in your program
 * + NO GLOBAL VARIABLES ALLOWED!!!!!!!!!!!!!!!
 * 
 * ...wait what? Why?
 * 
 * Because it causes SIDE EFFECTS. When you use global variables, it will
 * override variables in your functions.
 * 
 * LOCAL VARIABLES
 * + declared inside da function
 * + scope: only in the function declared */
