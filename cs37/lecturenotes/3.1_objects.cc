#include <iostream>
using namespace std;

/* OBJECT-ORIENTED PROGRAMMING
 * Now I've done Java before, so this shouldn't be too hard, but I'll
 * introduce it anyway.
 * 
 * Object-oriented programming is used to create reusable, scalable code
 * for faster software development. Back in C, we talked about structs,
 * and we've used them a bit in the most recent round of programs to make
 * our code scalable. structs have data members that live inside them and
 * store information, and serve as a complex datastructure that makes
 * things much easier.
 * 
 * There's only one problem with structs: they can't hold functions inside
 * them to process stuff, so you have to write them in seperate header files
 * and you end up with all kinds of spaghetti trying to deal with processing.
 * 
 * C++ takes this paradigm to an entirely new level, because now you can have
 * the functions inside the object. Objects encapsulate methods along with
 * the data members, and typically end up in header files that then get
 * included, allowing you to just call the main() and do the important stuff.
 * It's MAJOR LEAGUE REUSABLE CODE, and it's going to be very important when
 * it comes to writing big programs.
 * 
 * Also, each of the objects will have data access specifiers that determine
 * the scope in which the data will exist. There are three: public, private
 * and protected. Here's what each of them mean:
 *  - public: visible to the entire namespace
 *  - private: visible only within the class
 *  - protected: visible within the current class as well as its subclasses
 * 
 * Generally, in practice one should use private rather than public variables,
 * since it gives a greater degree of control over how the value can be set.
 * The only way to change a private variable from outside would be to set up
 * a method that would take the new value as a parameter and set it within,
 * which allows for validation of the new value and confirmation that the
 * change was a success, and the only way to read it would be to set up a
 * method to get the value from within that returns the value. This allows a
 * greater degree of security, protecting the values from being accidentally
 * changed by someone or something. You don't want your gross pay to randomly
 * end up at a million dollars a year for a new engineer, so you use private
 * variables!
 * 
 * Let's start out with some code(s) that gives the example. */

class StudentV1
{
    public:
        char name[20];
        int test1, test2, test3;
        float avg;
};

int ex_1()
{
    StudentV1 s; // instantiates a new object
    /* Note that the data members are public, so they can
    be accessed directly from here. We'll get to setting and
    getting a bit later. */

    cout << "enter the name: ";
    cin.getline(s.name, 20); // dot notation, like structs
    cout << "enter the three test scores: ";
    cin >> s.test1 >> s.test2 >> s.test3;
    s.avg = (s.test1 + s.test2 + s.test3) / (float) 3;
    cout << endl << s.name << endl;
    cout << s.test1 << '\t' << s.test2 << '\t' << s.test3 << 't'
        << s.avg << endl;
    
    return 0;
}

/* That is a very rudimentary version of the student datatype. Notice that
 * the public data specifier MUST HAVE A COLON AFTER IT and must contain
 * the values in indented form. And there MUST BE A SPECIFIER if you want
 * it to be public or protected, since otherwise it defaults to private and
 * you have to access the data the way I described earlier.
 * 
 * Moving on, now we're going to add some methods to our madness: */

class StudentV2
{
    public:
        StudentV2(); // constructor method -- more on that later
        void setData(int, int, int);
        void printData();
    
    private:
        int test1, test2, test3;
        float avg;
};

/* THIS is a CONSTRUCTOR METHOD: this is all the initialization code that
 * is run when the object is initialized. An object can be instantiated
 * but not initialized, as was the case in the previous example, and this
 * can cause you to get garbage if you read from the memory registers
 * before they've been filled, but a constructor helps get around this by
 * creating a convenient place for all the initialization code so that
 * the object will have a failsafe option. This is all automatically
 * called when the object is instantiated, thereby initializing the
 * object and allowing it to be properly used. The constructor MUST HAVE
 * THE SAME NAME AS THE CLASS, or it won't work. */
StudentV2::StudentV2()
{
    test1 = test2 = test3 = 1;
    avg = (test1 + test2 + test3) / (float) 3;
}

/* Notice the way we're prototyping these methods inside the class and
 * defining them outside of the class using the namespace operator. Keep
 * that in mind for those of you that are operating on the Python and
 * Java equivalent. */
void StudentV2::setData(int a, int b, int c)
{
    test1 = a;
    test2 = b;
    test3 = c;
    avg = (test1 + test2 + test3) / (float) 3;
}

/* THAT was a setter method. That put values into private variables in
 * a protected and scalable fashion, allowing for security as well as
 * potential validation on the way in. */
void StudentV2::printData()
{
    cout << "test 1: " << test1 << endl;
    cout << "test 2: " << test2 << endl;
    cout << "test 3: " << test3 << endl;
    cout << "average: " << avg << endl;
}

int ex_2()
{
    StudentV2 one, two;
    cout << "student one data is" << endl;
    one.printData();
    two.setData(10, 15, 30);
    cout << endl << "student two data is" << endl;
    two.printData();
    
    return 0;
}

/* You can do this exact same thing using a header file, and I've even
 * included what that header file would look like. If you don't care
 * to look at it, just know that it's basically just a copy-paste of
 * the StudentV2 code, and you would #include it and use it like you
 * would any other header file. */

int main()
{
    int err = ex_1();
    err = ex_2();
    return err;
}
