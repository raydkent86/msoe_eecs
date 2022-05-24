#include <iostream>
#include <iomanip>

using namespace std;

/* OPERATOR OVERLOADING
 * What if I told you that there was a way to make the main() easier to
 * write as well as more consistent?
 * 
 * That's what this is going to be about. We've overloaded functions
 * before, now it's time to overload OPERATORS -- this will make it so that
 * the programmer won't need to know the syntax for calling each method
 * (like a dickhead). The idea is to change this:
 * 
 * s.loadData();
 * s.printData();
 * sum.add(a, b);
 * 
 * into this:
 * 
 * cin >> s;
 * cout << s;
 * sum = a + b;
 * 
 * Overloading operators makes the main() method a lot easier to write, at
 * the expense of the class files, since all this overloading implementation
 * will require more code in the class. Any operator can be overloaded for
 * an object in languages that support it, but ONLY SOME LANGUAGES SUPPORT
 * IT. For instance, Python and C++ both support overloading operators, but
 * Java and Kotlin DO NOT.
 * 
 * That add one is going to be particularly useful, because, as you may
 * remember, there was a program last exam that defined an object (a complex
 * number) as the sum of two other objects, but it was clumsy and unintuitive
 * in doing so. With overloaded operators, the process is going to be a lot
 * simpler for the coder who's going to be implementing it.
 * 
 * But before we can tell you THAT story... we have to tell you THIS story,
 * first about the "this" pointer, and then about friend functions:
 * 
 * THE "this" POINTER */

class StudentV7 {
    public:
        StudentV7(); // default constructor
        void getData(int, int, int);
        void printData();
    private:
        int test1, test2, test3;
        float avg;
};

StudentV7::StudentV7()
{
    test1 = test2 = test3 = 1;
    avg = (test1 + test2 + test3) / (float)3;
}

void StudentV7::getData(int a, int b, int c)
{
    test1 = a;
    test2 = b;
    test3 = c;
    avg = (test1 + test2 + test3) / (float)3;
}

void StudentV7::printData()
{
    cout << "test 1 is " << this -> test1 << endl;
    cout << "test 2 is " << this -> test2 << endl;
    cout << "test 3 is " << this -> test3 << endl;
    cout << "the average is " << this -> avg << endl;
}

/* That was the first-ever use of the "this" pointer, and it wasn't
 * all that practical -- it was merely to rewrite a previous
 * iteration of the Student class to show that the "this" pointer
 * exists. Every object has access to its own address through the
 * "this" pointer. We can reference both the data members and the
 * member functions of an object with it, and it'll be used later
 * to prevent an object from being assigned to itself when we start
 * operator overloading. Also, the pointer turns on cascading member
 * function calls, also known as:
 * two.setData(50, 60, 70).printData();
 * 
 * This happens because the function ends up returning a new instance
 * of itself rather than changing the internals, and we're going to
 * do cascading stuff in a moment, but first: */

int this1()
{
    StudentV7 one, two;
    cout << "student one data is" << endl;
    one.printData();
    two.getData(10, 15, 30);
    cout <<endl << "student two data is"  <<endl;
    two.printData();
    return 0;
}

/* Now we're going to get our teeth into how to make functions return
 * instances of themselves that you can use with cascading calls. Time
 * for another new Student class! */

class StudentV8
{
    public:
        StudentV8(int = 0, int = 0, int = 0); // default constructor with args
        ~StudentV8(); // destructor
        StudentV8 &setData(int, int, int);
        StudentV8 &setTest1(int); // mutators
        StudentV8 &setTest2(int);
        StudentV8 &setTest3(int);
        int getTest1() const; // accessors
        int getTest2() const; // const after function means object can't be modified
        int getTest3() const;
        void printData() const;
    private:
        int test1, test2, test3;
};

/* Notice something that looks different? If something looks off,
 * it's because we're making the mutators RETURN THE POINTER TO THE
 * OBJECT as well as setting the values within. That makes it
 * possible to do the cascading function calls we're going to get to
 * in not too long. Fun stuff! */

StudentV8::StudentV8(int a, int b, int c)
{
    setData(a, b, c);
}

StudentV8::~StudentV8()
{
    cout << setw(10) << test1 << setw(10) << test2;
    cout << setw(10) << test3 << " destroyed" <<endl;
}

StudentV8 &StudentV8::setData(int a, int b, int c)
{
    setTest1(a);
    setTest2(b);
    setTest3(c);
    return *this; // enables cascading
}

StudentV8 &StudentV8::setTest1(int a)
{
    test1 = a;
    return *this;
}

StudentV8 &StudentV8::setTest2(int b)
{
    test2 = b;
    return *this;
}

StudentV8 &StudentV8::setTest3(int c)
{
    test3 = c;
    return *this;
}

int StudentV8::getTest1() const // these consts HAVE TO MATCH UP, or it'll complain
{ return test1; }

int StudentV8::getTest2() const // why const? because it's the accepted style, stop asking questions
{ return test2; }

int StudentV8::getTest3() const
{ return test3; } // why all one line? you really do ask too many fucking questions

void StudentV8::printData() const
{
    cout << "test 1, 2, 3 are " << setw(10) << test1;
    cout << setw(10) << test2 << setw(10) << test3 << endl;
}

int this2()
{
    StudentV8 one, two;

    one.setTest1(10).setTest2(20).setTest3(30);
    cout << "student one data is" << endl;
    one.printData();

    cout << endl << "student two data is" << endl;
    two.setData(50, 60, 70).printData(); // same deal
    cout << endl;

    // accessors still work the same
    int qz1 = two.getTest1();
    cout << "first test score of student two is " << qz1 << endl << endl;
}

/* Cascading calls are going to be very important when we do get to
 * operator overloadage. If you're going to be doing, for example,
 * x + y + z, you're going to need to do these cascaded calls so that
 * you can keep the chain going without errors.
 * 
 * Additionally, REMEMBER YOUR AMPERSANDS AND ASTERISKS, IDIOT! The
 * program will complain if you don't properly make it clear that what
 * you're returning is a pointer, and, for our purposes, OBJECTS CAN
 * ONLY BE PASSED BY REFERENCE (and should only be passed by reference,
 * best practices and all that kind o' crap). Don't do that and your
 * life will be a nightmare. */

int main()
{
    int err = this1();
    err = this2();
    return err;
}
