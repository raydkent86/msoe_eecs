/* FUNCTIONS IN C
 * We're all familiar with algebraic functions. Sometimes, if we get sick to our stomachs
 * of writing out long-ass convoluted formulas at every turn, we define functions that
 * take stuff as inputs and represent some collection of operations we do over and over
 * again. Most commonly we use f(x), g(x), h(x), and so-on to describe nondescript
 * single-variable functions, but we can call it whatever we want. For instance (and
 * you'll have to use your imagination that there's going to be LaTeX here to convert
 * this stuff into real equations, because I can't really do it in a source file), if we
 * defined avg(a, b) as
 *          avg(a, b) = (a + b) / 2
 * we could go on to use it to assign some random shit, like this:
 *          x = 2 + 7 + avg(3, 4)
 * Mathematically, what then happens, is that the value of that mathematical function
 * comes back and replaces that avg(3, 4), acting almost as another layer of operator
 * precedence -- you would get the same result if you took that function value and dropped
 * it in as an expression for every instance of the call, because that's what it does.
 * 
 * Programming has a similar construct. And you really start to see the connection between
 * mathematics and computer science here, because computational functions do the same
 * exact thing: allow one single piece of code to be repeated and reused with different
 * inputs. Functions break programs down into manageable pieces, and they are used to
 * build function libraries that reuse common code. stdio.h, stdlib.h, stdint.h, and all
 * these other files represent collections of these things. */

#include <stdio.h>
#include <math.h>

/* Functions in C represent a datatype inside the "derived" group, and they come together
 * to make the program structure. Every C program is composed of a set of functions, even
 * if the functions' only purpose is to send I/O to the standard stream. As mentioned
 * before, each program has a main() function that represents the top-level flow, which
 * may or may not call other functions (although it basically always does).
 * 
 * Functions take complex software solutions and turn them into logical segments that have
 * the added bonus of allowing multiple people to work on the same program at the same
 * time. Professor Loke from my previous C class made the very important point that, until
 * recently, if you didn't have functions, only one person would be able to modify the
 * program and all the other engineers on the team would have nothing to do except eat
 * pizza. And drink Coke. And do SQUAT.
 * 
 * Besides keeping my buddies entertained rather than being forced to do sweet fuck-all,
 * functions make program flow much cleaner. It forces all communication to go through the
 * called/calling function path, giving the calling function control over the called
 * function and what parameters it gets. When the called function is done, it gives the
 * control back to the calling function, and in processors capable of the aforementioned
 * OoO execution this means jumping around in the instruction memory based on the
 * processor's sequence selector. The simplified version is this: a function gets zero or
 * more parameters to operate on, does stuff with it, potentially provides a side-effect,
 * then spits back a return value.
 * 
 * Like a variable, a function needs to be declared before it's used. Most of the time, we
 * will declare and initialize a function separately, since this allows us to both keep
 * tabs on our features and specify the use case in the main() before a feature is totally
 * complete. This function declaration is called a prototype, and you do it a bit like
 * this: */

// functions are assigned datatypes for their return values
void greeting(void); // "void" inside visibly indicates no parameters
float my_function(int x, float y, char z); // another prototype... back to this later

/* See that? Now let's move onto calling it in the main(). */

int main()
{
    greeting(); // if no data is passed we can use () or (void)
    return 0;
}

/* Ignore those other functions in there, we'll get back to them. In the meantime, we
 * need to keep in mind that if we don't do anything else that function will do neither
 * jack nor shit. This is why we need to go on and DEFINE the function as well - the
 * function's definition/initialization represents what the function is actually supposed
 * to do, and it should fit into the specification given by the prototype. The function
 * "greeting()" is defined below as having no return value, only a side-effect of stuff
 * going to the console. For functions with a void return type, it's not required to put
 * a return statement, but if you want to kick the program flow back out at any time
 * before the function comes to its end, it can still be very helpful. The example below
 * is demonstrated with the optional "return" statement just because Dr. Johnson does it
 * that way, although I've been known to (a) not use void functions because that return
 * value can always be useful for something and (b) use break keywords instead even if I
 * do use void functions. */

void greeting(void)
{
    printf("Hello 1910!\n");
    return;
}

/* Functions follow a set structure that goes
 *      return-type function-name(formal parameter list)
 *      {
 *          statements;
 *          return return_value;
 *      }
 * Another example function following the second prototype is below. This thing does some
 * stuff to a bunch of numbers and spits back the floating point value that results. */

float my_function(int x, float y, char z)
{
    float val;
    val = x * y - z;
    return val;
}

/* If you call this function in the main(), you can now make use of that return value by
 * using it to assign variables. If you put it on the right-hand side of the assignment
 * operator and the types match, you can use it just like you would any other expression
 * as if you were doing good ol' math. And the names used in the formal parameters (the 
 * names as declared as part of the function prototype and definition) do not have to
 * match the names used by the function's actual parameters (the stuff you put in as part
 * of the function call), meaning you can use it with anything you want so long as the
 * types are the same.
 * 
 * But this does not give you license to just use whatever random names you want. Be sure
 * to choose your names carefully no matter what the case, because, as funny as they are,
 * "foo", "boo", "soo", and "loo" don't actually mean anything. If your names have some
 * meaning to them, this cuts down on the confusion factor when it comes time to read your
 * code. Better yet, if you have a convention for naming stuff at various points in the
 * control flow, you'll get confused even less. The latter isn't going to burn you as much
 * as completely nonsensical variable names, but it might help your head stop spinning if
 * you find yourself tripping on your spikes continuously. And yeah, I would suggest
 * putting down the beer while you write code, but I'm aware that might be a bridge too
 * far for the average American college student. Then again, I'm also not a partying
 * dumbass, so...
 * 
 * ANYWAY - now that I'm done slagging off every member of the Fucking Vape Bullshit
 * Children(R) who don't know that they should BREATHE AIR, we can get into the question
 * of scope. This is a simple one: the scope is the region of the program in which a
 * defined object (a variable or function) is visible.
 * 
 * In addition to the global area for which everything defined there is visible
 * throughout the whole program, functions and statements such as if-else exist as their
 * own blocks to restrict scope, and an object's scope will generally extend from its
 * declaration to the end of its block. Local declarations will supersede global
 * declarations while within a block, which may result in confusion if you keep trying and
 * failing to access a global variable which shares a name with a local variable.
 * 
 * Variables with the static keyword will hold their value even after their scope has
 * ended, meaning they will stay in memory rather than getting re-initialized. If you
 * so desire, you can use this to create weird behavior and prank interviewees to your
 * company who have no idea how C is supposed to work with brain-teaser problems.
 * 
 * C is filled to the brim with standard functions. We already know about the standard
 * I/O library and its printf() and scanf() functions, but there are far more. The
 * function below demonstrates a few of these in action. */

void std_functions()
{
    // randomly-named variables
    int foo;
    float boo;

    // standard I/O (stdio.h)
    printf("hello world!\n");
    scanf("%d", &foo);

    // math functions (math.h)
    boo = 4.5;
    ceil(boo); // round up (5)
    ceil(-12.7); // round up (-12)
    floor(boo); // round down (4)
    floor(-12.7); // round down (-13)
    trunc(boo); // truncate (4)
    trunc(-12.7); // truncate (-12)
    round(boo); // autoround (5)
    round(-12.7); // -13
    pow(boo, foo); // raise boo to the power foo
    sqrt(boo); // square root
    abs(-15); // absolute value

    return;
}

/* Yeah, there are a few more functions, but I'll leave them be for now. If you want to
 * know a bit more, there's a Wikipedia page listing all of them. */
