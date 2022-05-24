#include <iostream>

using namespace std;

/* INLINE FUNCTIONS
 * Inline functions reduce the function call overhead -- in other words,
 * it reduces the time and memory it needs before the function can be processed.
 * With an inline function, instead of actually running a function, it uses a
 * text substitution macro to dump the body of the function into somewhere.
 * 
 * Inline functions should only be used for very small macros, like the one
 * shown below: */

inline double cube(const double s) {return s * s * s;}

/* That was an inline function, and it will behave almost like a #define in
 * practice. If you make a function inline, be aware that it will add EVERY LINE
 * of the function where it's called on compilation -- that means that if it's
 * big, you're going to end up with a big-ass binary file that eats your disk
 * space. So KEEP THEM SMALL. */

int cuber()
{
    cout << "Enter the side length of a cube: ";
    double side;
    cin >> side;
    cout << "Volume of cube with side " << side << " is " << cube(side) << endl;
    
    return 0;
}

/* See? cube(side) will be turned by the compiler into all the text in the inline
 * function, which allows you to turn certain small subroutines into simple text
 * substitutions and save memory at the expense of disk space for the final
 * program.
 * 
 * Moving on: we've got a new operator in C++, called the unary scope resolution
 * operator. It's used to get access to objects outside of the current scope,
 * and is used in practice to get access to stuff in other classes. To give an
 * example of how this is used, let's briefly break one of the cardinal rules of
 * C++ programming by creating a global variable and referencing it inside a
 * function when one of the same name already exists. */

float num = 2.345;

int scope_res()
{
    int num = 5;
    
    cout << "Local value = " << num << endl;
    cout << "Global value = " << ::num << endl;
    
    return 0;
}

/* Two colons references something directly outside the current scope, i.e.
 * outside the current loop or function if there exists ambiguity. But more
 * commonly, the unary scope resolution operator is used to call ambiguous
 * methods with a specific scope name. */

int main()
{
    int err = cuber();
    err = scope_res();
    return err;
}
