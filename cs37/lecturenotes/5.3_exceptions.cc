#include <iostream>
#include <iomanip>
using namespace std;

/* ONE FINAL TOPIC before the final exam! LET'S GO!
 *
 * EXCEPTION HANDLING
 * When your program fucks up, you don't want the compiler or the OS
 * to be doing the error handling, because, chances are, the compiler
 * will just complain, and the OS will either substitute zeroes in for
 * the bad values, plow ahead with the calculation using garbage, or
 * shut down the program entirely to prevent damage to your computer.
 * So, ideally, we need some kind of EXCEPTION HANDLING, the simplest
 * of which has, as it turns out, been shown in every one of these
 * notes that I've written.
 * 
 * Functions that would ordinarily be written as void functions should,
 * according to proper convention, be implemented as int functions,
 * because having a return value of any kind allows the calling entity
 * to verify the success of the process. A return code of zero
 * signifies success, whereas a non-zero return value indicates some
 * kind of error.
 * 
 * Another thing we can do is create classes for specific errors that
 * allow messages to be dissemintated to the user when they fuck up in
 * writing the program and/or executing it and introduce a runtime
 * error. This is done using the "throw" keyword, which will take a
 * class, run the constructor exactly once, and then terminate the
 * program at the location. This is more formally structured out in
 * other languages, including Java and Python, which restrict the type
 * of classes that can be thrown and prescribe a standard set of
 * metadata, standard operating procedure for raising them, as well as
 * the ability to assemble an ordered list of throwables along with
 * the location in the code at which they were thrown, which is called
 * the STACK TRACE. 
 * 
 * The idea is to write out a bunch of these in a header file along
 * with some operator overloads that include the new exception handling
 * within. Below is a fairly simple example of a rudimentary C++
 * exception with a handler in the code: */

class DivByZeroException
{
    public:
        DivByZeroException()
            : message(" attempt to divide by zero ") {}
        const char *print() const { return message; }
    private:
        const char *message;
};

float divide(float a, float b)
{
    if (b == 0)
        throw DivByZeroException();
    return a / b;
}

int main()
{
    float num1, num2, answer;
    cout << "enter two floats, CTRL-D to quit: ";
    while (cin >> num1 >> num2)
    {
        // try block: surrounds statements where exception may occur
        try
        {
            answer = divide(num1, num2);
            cout << "the numbers are " << setw(10) << num1 << setw(10) << num2 << endl;
            cout << "the quotient is " << answer << endl << endl;
        }
        // catch block: the code to execute if an exception occurs
        catch (DivByZeroException goof)
        {
            cerr << endl << "EXCEPTION IN THREAD 'main' DivByZeroException: " << goof.print() << endl << endl;
        }
        cout << "enter two floats, CTRL-D to quit: ";
    }
}

/* And the goal here is for the program to do ALL THE EXCEPTION
 * HANDLING. If any of it bleeds into the outside world and kills
 * your program in a way you didn't expect, UR DOIN IT RONG.
 * 
 * It's a bit weird to say this, but we've made it to the END of CS 37.
 * We're OUT OF CONTENT, and just in time to do the last test of the
 * semester. Good luck! */
