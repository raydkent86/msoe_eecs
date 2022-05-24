/* A CRASH COURSE IN POLYMORPHISM
 * 
 * OVERLOADED FUNCTIONS
 * Some of us who used CodeBlocks in CS 36 will remember overloading
 * functions and managing to pull it off, but it only worked if we
 * used the C++ software -- in a straight C environment, it's not
 * allowed. But in C++, we can literally give several functions the
 * SAME EXACT NAME, and the compiler will FIGURE OUT WHICH ONE TO USE.
 * 
 * C++ was among the first languages to offer this type of flexibility
 * (also called POLYMORPHISM), but the convention is used in many
 * of the most common languages, including Java, Python, Kotlin,
 * Objective-C, and many more, where overloaded functions can be used,
 * for instance, to print integers in Java, where functions must be
 * used with the specific input stream specified. Here we go: */

#include <iostream>
using namespace std;

int twice(int x) {return x + x;}
double twice(double x) {return x + x;}
int sum(int x, int y) {return x + y;}
int sum(int x, int y, int z) {return x + y + z;}

/* We basically just did what George Foreman did and called all our
 * sons George and our daughters Georgina -- because we have two
 * instances each of two functions, and the compiler will automatically
 * call the correct one. How George Foreman managed to keep all his sons
 * and daughters straight, I've no fricking clue. But the important thing
 * is that it doesn't matter in programming, and we can do this to make
 * things a lot less confusing if we need to have one version that takes
 * two arguments and one that takes three, or one that works with doubles
 * and another that works with ints. It's a good thing. */

int overload()
{
    cout << twice(5) << endl;
    cout << twice(2.5) << endl;
    cout << sum(10, 20) << endl;
    cout << sum(10, 20, 40) << endl;

    return 0;
}

/* It's worth mentioning that if you try and give the wrong arguments to
 * a function that exists, a couple things can happen. Either 1) you'll get
 * a truncated version of your decimal taken as the input as the compiler
 * autocorrects it to be right, 2) you'll get a runtime error because you
 * put in a bad value and your compiler won't correct it, or 3) the compiler
 * will complain and refuse to compile it, because what you put in was so
 * far off the truth that even your computer isn't going to cut you any
 * slack. It's a bad thing to do - make sure to watch your code validation
 * in your IDE, or you're gonna get this crap happening on crazy levels.
 * 
 * FUNCTION TEMPLATES
 * Now we're on to the GOOD STUFF. This is some C++-exclusive stuff, and
 * it's going to get even crazier: you can actually overload an INFINITE
 * AMOUNT OF TIMES with just ONE CODE SNIPPET, and it's below. */

template <class T>
// or you can do: template <typename T>

// after that template declaration, declare a function
T max(T one, T two, T three)
{
    T big = one;
    if (two > big)
        big = two;
    if (three > big)
        big = three;
    return big;
}

/* That template function will work for ANY datatype, not just for one
 * specific one, and it majorly cuts down on the slog. That capital T
 * represents the template datatype, and it makes writing programs
 * orders of magnitude easier. */

int maximum()
{
    int a, b, c;
    cout << "Enter three integers: ";
    cin >> a >> b >> c;
    cout << "The biggest integer is " << max(a, b, c) << endl << endl;

    // never forget: the big guy is smaller than the small guy
    char d, e, f;
    cout << "Enter three characters: ";
    cin >> d >> e >> f;
    cout << "The biggest character is " << max(d, e, f) << endl << endl;

    double g, h, i;
    cout << "Enter three decimals: ";
    cin >> g >> h >> i;
    cout << "The biggest decimal is " << max(g, h, i) << endl << endl;
    
    return 0;
}

/* If you're going to write another function template, you're going
 * to have to repeat all the template definition stuff for each one.
 * Sorry, no shortcuts there. But the good news is that there are
 * plenty of STLs (standard template libraries) included with C++.
 * 
 * Now let's mess with an array: */

template <class T>
void print_array(T *a, const int n)
{
    for (int i = 0; i < n; i++)
        cout << a[i] << " ";
    cout << endl;
}

/* We all gangsta until Hochwald rolls up printing an array without
 * needing to write a for loop for every single one. Better yet, if
 * we build a header file that can do this, we can save a lot of
 * headache in future programming. */

int arrays()
{
    const int n1 = 5, n2 = 7, n3 = 7;
    int a[n1] = {2, 4, 6, 8, 10};
    float b[n2] = {1.1, 2.2, 3.3, 4.4, 5.5, 6.6, 7.7};
    char c[n3] = "HELLO!";

    cout << "The integer array" << endl;
    print_array(a, n1);
    
    cout << "The float array" << endl;
    print_array(b, n2);

    cout << "The string" << endl;
    print_array(c, n3);

    return 0;
}

/* DEFAULT ARGUMENTS
 * In C, everybody just goes YoU PuT TOo fEW PaRAmeTErS In Ur
 * funCTioN yOU NEeD FIVe aNd You ONlY pUt iN FoUr -- DON'T
 * CHAT SHIT TO ME, DON'T CHAT SHIT TO YOURSELF. One of the
 * parameters had a default value in the function definition,
 * and you were just too stupid to see it.
 * 
 * On a more serious note, default parameters are a thing in
 * C++. You can now define the value of a parameter if the
 * user decides they don't want to specify it themselves.
 * Default parameters are generally placed at the end of the
 * function declaration, since the control flow of C++ will
 * parse parameters in order, and they will simply throw back
 * type mismatches if you skip a parameter at the front. But
 * putting in a set of optional parameters with default values
 * will give your program the illusion of having another
 * overloaded function available for use, as we'll show with
 * this calculator for the volume of a rectangular prism. */

inline int volume(int length = 1, int width = 1, int height = 1)
{return length * width * height;}

int default_parameters()
{
    cout << "The volume for no arguments is " << volume() << endl;
    cout << "The volume for length 10 is " << volume(10) << endl;
    cout << "The volume for length 10 and width 5 is " << volume(10, 5);
    cout << endl << "The volume with all three parameters is ";
    cout << volume(10, 5, 2) << endl << endl;

    return 0;
}

/* That's an extreme example -- as I said, usually it's used
 * when there are certain flags that aren't normally changed,
 * but it can theoretically be done with anything. If there
 * were no default arguments and you tried to omit parameters
 * from a function that wasn't overloaded to have parameters
 * in that order, the compiler is going to complain immediately. */

int main()
{
    int err = overload();
    err = maximum();
    err = arrays();
    err = default_parameters();
    return err;
}
