/************************************************
 * Program 5
 * Owen Bailey-Waltz
 * 1158982
 * This program finds the sum and mean of three
 * numbers gathered with scanf().
 ************************************************/

#include <stddef.h>
#include <stdio.h>

int main()
{
    // declarations
    int a, b, c, sum;
    float avg;
    char name[10];

    // data
    printf("enter yo name: ");
    gets(name); // gets Joe SchmoeB in the Windows version
    // This depends on the compiler
    printf("enter three numbers: ");
    scanf("%d%d%d", &a, &b, &c);

    // calculation
    sum = a + b + c;
    avg = sum / (float)3;
    // you need to cast when dividing by an integer
    // C will assume that 3 is an int, so you need
    // to tell it otherwise
    
    /* equivalent expression, but DO NOT DO THIS
    IN DR. LOKE'S CLASS, because it does not work
    for every use case */
    avg = sum / 3.0;

    // output
    printf("\nHello, %s!\n", name);
    printf("The three numbers are %d %d %d\n", a, b, c);
    printf("The sum is %d\n", sum);
    printf("The average is %f\n", avg);
    
    // fflush(stdin); // flush the standard input stream
    // THIS DOESN'T WORK ON MACOS;
    getchar(); // instead, use this to throw out the newline
   
   // run all the crap again!
    printf("enter yo name: ");
    gets(name);
    printf("enter three numbers: ");
    scanf("%d%d%d", &a, &b, &c);
    sum = a + b + c;
    avg = sum / (float)3;
    printf("\nHello, %s!\n", name);
    printf("The three numbers are %d %d %d\n", a, b, c);
    printf("The sum is %d\n", sum);
    printf("The average is %f\n", avg);

    // exit
    return 0;
}

/* RESULT
warning: this program uses gets(), which is unsafe.
enter yo name: joe schmoe
enter three numbers: 10 20 30 

Hello, joe schmoe!
The three numbers are 10 20 30
The sum is 60
The average is 20.000000
enter yo name: yahoo yay
enter three numbers: 449 12 22

Hello, yahoo yay!
The three numbers are 449 12 22
The sum is 483
The average is 161.000000
zsh: abort      ./prog6_scanf.o
*/
