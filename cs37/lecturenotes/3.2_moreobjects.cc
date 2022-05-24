#include <iostream>
#include <iomanip>
using namespace std;

/* MORE OBJECTS
 * Now we're onto some more elaborate stuff. These classes do a bit more
 * stuff than the other one, adding a couple of goodies including IO
 * manipulators as well as some array stuff, and the first-ever PRIVATE
 * UTILITY FUNCTION within an object. */

class Person
{
    public:
        Person();
        void getSales(); // get sales from keyboard
        void printSales(); // print array
    private:
        float totalSales(); // private utility method
        float sales[5]; // data members can be arrays
};

Person::Person()
{
    for (int i = 0 ; i < 5 ; i++)
        sales[i] = 0.0; // zeroes everything on init
}

void Person::getSales()
{
    for (int i = 1 ; i < 6 ; i++)
    {
        cout << "Enter amount for month " << i << ": ";
        cin >> sales[i-1];
    }
}

void Person::printSales()
{
    cout << endl;
    cout << setprecision(2) << showpoint << fixed;
    for (int i = 0 ; i < 5 ; i++)
        cout << sales[i] << " ";
    cout << endl << endl;
    cout << "total sales are " << totalSales() << endl;
}

float Person::totalSales()
{
    float sum = 0.0;
    for (int i = 0 ; i < 5 ; i++)
        sum += sales[i];
    return sum;
}

int ex_3()
{
    Person p;
    p.getSales();
    p.printSales();
    return 0;
}

/* Something else I've just thought of as well: the same way you
 * can have an array of structs, you can have an array of objects.
 * You could go Person p[10] if you want to declare an array of
 * people and do mass processing on them, which is very epic.
 * 
 * Back to the student example, we're going to add what's called
 * a DESTRUCTOR: this is a method that's called automatically when
 * an object goes out of scope as a local variable, as a sort of
 * exit code to deinitialize it and do garbage collection to clear
 * out memory registers, or return a dynamic string to free memory,
 * which must be done manually -- more on that later. Here we go: */

class StudentV3
{
    public:
        StudentV3();
        ~StudentV3(); // destructor, for illustration only
        // Destructors MUST have a tilde at the front
        void setData(int, int, int);
        void printData();
    private:
        int test1, test2, test3;
};

StudentV3::StudentV3()
{
    test1 = test2 = test3 = 1;
}

StudentV3::~StudentV3()
{
    cout << "A student has been destroyed" << endl;
    cout << "First test score for the student is " << test1 << endl;
}

void StudentV3::setData(int a, int b, int c)
{
    test1 = a;
    test2 = b;
    test3 = c;
}

void StudentV3::printData()
{
    cout << "test 1: " << test1 << endl;
    cout << "test 2: " << test2 << endl;
    cout << "test 3: " << test3 << endl;
}

int ex_3()
{
    StudentV3 one, two;
    cout << "student one data is" << endl;
    one.printData();
    two.setData(10, 20, 30);
    cout << endl << "student two data is" << endl;
    two.printData();
    cout << endl << endl;
    return 0;
}

/* When destructors are run, it operates in a "stack" fashion
 * of last-in first-out. In this case, you will see that "two"
 * is destructed before "one", the same way that the last tray
 * on a stack of cafeteria trays is the first one to be removed.
 * 
 * Destructors run automatically, but no destructor, no problem
 * at all.
 * 
 * Now it's time to do a bit more exciting schtuff to our classes.
 * We're going to add some formatting, add some default arguments,
 * and, most importantly... WE'RE GOING TO ADD ARGUMENTS TO OUR
 * CONSTRUCTOR. These will allow the programmer to add parentheses
 * after the instantiation to change the nature of the
 * initialization code, making everything a lot cleaner. Let's go! */

class StudentV4
{
    public:
        StudentV4(int = 0, int = 0, int = 0);
        ~StudentV4();
        void setData(int, int, int);
        void printData();
    private:
        int test1, test2, test3;
};

StudentV4::StudentV4(int a, int b, int c)
{
    setData(a, b, c);
}

StudentV4::~StudentV4() // destructor
{
    cout << setw(10) << test1 << setw(10) << test2;
    cout << setw(10) << test3 << " destroyed" << endl;
}

void StudentV4::setData(int a, int b, int c)
{
    test1 = a;
    test2 = b;
    test3 = c;
}

void StudentV4::printData()
{
    cout << "test 1, 2, 3 are " << setw(10) << test1;
    cout << setw(10) << test2 << setw(10) << test3 << endl;
}

int ex_4()
{
    StudentV4 one, two(50), three(50, 70), four(50, 70, 90);
    cout << "student one data is" << endl;
    one.printData();
    cout << endl << "student two data is" << endl;
    two.printData();
    cout << endl << "student three data is" << endl;
    three.printData();
    cout << endl << "student four data is" << endl;
    four.printData();
    cout << endl << endl;
    return 0;
}

/* Objects can also be copied into other objects, which allows
 * easier swapping than pissing around with strings, which is
 * also good.
 * 
 * Now we're gonna do a version with setters AND getters.
 * Getters will allow an outside entity to access private
 * variables, and are the preferred method for using them for
 * the aforementioned reasons to use private variables. Here's
 * what a real-world instance of the Student class would look
 * more like, for scalability reasons: */

class StudentV5
{
    public:
        StudentV5(int = 0, int = 0, int = 0);
        ~StudentV5();
        void setData(int, int, int);
        void setTest1(int); // set functions (or MUTATORS)
        void setTest2(int);
        void setTest3(int);
        int getTest1(); // get functions (or ACCESSORS)
        int getTest2();
        int getTest3();
        void printData();
    private:
        int test1, test2, test3;
};

StudentV5::StudentV5(int a, int b, int c)
{
    setData(a, b, c);
}

StudentV5::~StudentV5()
{
    cout << setw(10) <<test1 << setw(10) << test2;
    cout << setw(10) << test3 << " destroyed" << endl;
}

void StudentV5::setData(int a, int b, int c)
{
    setTest1(a);
    setTest2(b);
    setTest3(c);
}

void StudentV5::setTest1(int a)
{ test1 = a ;}

void StudentV5::setTest2(int b)
{ test2 = b; }

void StudentV5::setTest3(int c)
{ test3 = c; }

int StudentV5::getTest1()
{ return test1; }

int StudentV5::getTest2()
{ return test2; }

int StudentV5::getTest3()
{ return test3; }

void StudentV5::printData()
{
    cout << "test 1, 2, 3 are " << setw(10) << test1;
    cout << setw(10) << test2 << setw(10) << test3 << endl;
}

int ex_5()
{
    StudentV5 one, two;
    int qz1, qz2, qz3;
    cout << "student one data is" << endl;
    one.printData();
    
    two.setTest1(10);
    two.setTest2(20);
    two.setTest3(30);
    cout << endl << "student two data is"  << endl;
    two.printData();
    cout << endl;
    qz1 = two.getTest1();
    qz2 = two.getTest2();
    qz3 = two.getTest3();
    cout << "using the get functions" << endl;
    cout << setw(10) << qz1 << setw(10) << qz2;
    cout << setw(10) << qz3 << endl << endl;
    
    return 0;
}

/* Now, Example 6 uses the StudentV5 class and pretty
 * much all of it is the same, except for one little ting:
 * it has a function defined before it called change()
 * that will add extra credit to tests 2 and 3 (10pts for
 * the former and 20pts for the latter). This demonstrates
 * the way that these objects are passed into functions --
 * they're complex datastructures, meaning they must be
 * passed by pointer. It also demonstrates the manner in which
 * mutators and accessors are used to get and set individual
 * data members while leaving the other ones the same. */

void change(StudentV5 &pupil)
{
    // add extra credit for test 2 and test 3
    pupil.setTest2(pupil.getTest2() + 10);
    pupil.setTest3(pupil.getTest3() + 20);
}

int ex_6()
{
    StudentV5 two;
    int qz1, qz2, qz3;

    two.setTest1(10);
    two.setTest2(20);
    two.setTest3(30);
    cout << endl << "student two data is"  << endl;
    two.printData();
    cout << endl;
    
    qz1 = two.getTest1();
    qz2 = two.getTest2();
    qz3 = two.getTest3();
    cout << "using the get functions" << endl;
    cout << setw(10) << qz1 << setw(10) << qz2;
    cout << setw(10) << qz3 << endl << endl;
    
    change(two);
    cout << "after the change function "  << endl;
    two.printData();
    cout << endl;
    
    return 0;
}

/* One last epic example to go. Example 7 will introduce a
 * method within StudentV6 to add two students together, in a
 * show of force to demonstrate the power of accessors and
 * mutators. */

class StudentV6
{
    public:
        StudentV6();
        ~StudentV6();
        void getData(int, int, int);
        void printData();
        void add(StudentV6, StudentV6); // add two students
    private:
        int test1, test2, test3;
};

StudentV6::StudentV6()
{
    test1 = test2 = test3 = 1;
}

StudentV6::~StudentV6()
{
    cout << "a student has been destructed" << endl;
    cout << "first test score for the student is " << test1 << endl;
    cout << "second test score for the student is " << test2 << endl;
    cout << "third test score for the student is " << test3 << endl << endl;
}

void StudentV6::getData(int a, int b, int c)
{
    test1 = a;
    test2 = b;
    test3 = c;
}

void StudentV6::printData()
{
    cout << "first test score for the student is " << test1 << endl;
    cout << "second test score for the student is " << test2 << endl;
    cout << "third test score for the student is " << test3 << endl << endl;
}

void StudentV6::add(StudentV6 a, StudentV6 b)
{
    test1 = a.test1 + b.test1;
    test2 = a.test2 + b.test2;
    test3 = a.test3 + b.test3;
}

int ex_7()
{
    StudentV6 one, two, three;
    cout << "student one data is" << endl;
    one.printData();two.getData(10, 20, 30);
    cout << "student two data is" << endl;
    two.printData();cout <<endl<< endl;
    three.add(one,two);
    cout << "THE NEW STUDENT DATA IS" << endl;
    three.printData();
    return 0;
}

/* You may have noticed that we were able to pass by value
 * in that add() method, and that's because we kinda got
 * lied to when we learned about passing stuff around. On
 * some platforms, it is technically possible to pass non
 * -primitive datatypes by value, but it's heavily
 * discouraged because it makes the program needlessly
 * bloated from a memory usage standpoint. Even though some
 * C++ compilers will allow passing complex data structures
 * by value, we don't ever really want to do it in practice
 * because it creates undue amounts of memory usage and makes
 * our life a living hell.
 * 
 * But that's the crash course introduction to objects. Time
 * to put this to some use! */
