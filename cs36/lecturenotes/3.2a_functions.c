/* FUNCTIONS
 *
 * (names redacted to protect the innocent)
 * 
 * To really write programs, you must know how to write
 * functions -- with what we have learned so far, it won't
 * get very far. With all the eleventy-billion lines of
 * code you'll need to write a program, in all likelihood,
 * it will take for-f**king-EVER to write an application,
 * because only one person can edit at once. Only one person
 * can type in all the five-million-lines of code and
 * everyone else just sits around and eats pizza and drinks
 * Coke and does squat.
 * 
 * With functions, you can write snippets of code and summate
 * or repeat them later, which means that W** L** can write
 * the calculation part while he's in New York getting mugged,
 * J*** can write the output while he's sitting in Italy
 * staring at the Leaning Tower of Piza, wondering why it's not
 * made out of pizza while he eats pizza and I can write the input
 * while I'm sitting on a boat on Big Cedar Lake, eating cheese
 * and waiting for P******, M*******, A** and N*** to get back in
 * the damn boat. Meanwhile, Dr. Loke can write the code(s) to the
 * final application back in Irvine and make our stuff work.
 * 
 * Functions are essentially macro calls that you can use to
 * repeatedly run groups of code into oblivion without rewriting
 * them every single time.
 * 
 * IMPORTANT, THOUGH: programs don't know or care what goes on inside
 * a function, which means that they don't communicate unless they
 * are called. Think office doors where the dude comes out when Dr.
 * Loke knocks on his door, asks for something, goes back inside,
 * does whatever it is he does, comes back out with the result, then
 * slams the door and goes back to sleep.
 * 
 * 10/9: Loke sez GO GET SOME $4.99 CHICKEN xD
 * 
 * ...anyway...
 * 
 * FUNCTIONS
 * + break up the program into managable pieces/modules
 * + help make code as generic as possible
 * + do specific tasks
 * + each programmer can be assigned a function to write
 * + Each function is around 35-50 lines of code(s)
 * 
 * STRUCTURE CHARTS (design tool)
 *   --------main()--------
 *   |         |          |
 *   v         v          v
 * load()    calc()    output()
 * 
 * Structure charts (this one is an ASCII example, but it can be
 * done in a prettier way if you want) show the hierarchy of a
 * program's function call. Let's see what this one does:
 * 
 * FIRST, THOUGH... TWO WAYS TO WRITE WITH FUNCTIONS:
 * 1) put all yo functions in before the main method
 * 2) put main() on top of the rest of the functions
 *   -> to do this, you will need to prototype (declare your
 *      functions)
 * 
 * RANDOM.exe: GO TO CARLS JR ON SAND CANYON and SHOW THEM YOUR IVC
 *             ID CARD -- they will give you 10% OFF -- to take
 *             the biggest advantage of it, get the new guac burger
 *             they advertized during football and, with fries and a
 *             drink, it's five bucks: Loke's guide to being cheap,
 *             everyone!
 */

#include <stdio.h>

// GLOBAL VARIABLES (variables outside the function, accessible by everybody)
int a, b, c, sum;
float avg;

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

/* IMPORTANT: without this, it will complain on compile.
 * C programs CANNOT COMPILE without main().*/
int main()
{
    load();
    calc();
    output();
    return 0;
}

