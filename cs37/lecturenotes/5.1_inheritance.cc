#include <iostream>
#include <iomanip>
#include <string>

using namespace std;

/* INHERITANCE
 * All this object-oriented stuff is great -- what if I told you it
 * could be even better? What if I told you that you can create
 * template objects that you can then use in the code to create a
 * related object that uses all the parameters and functions and even
 * functionality of the template? That's where INHERITANCE comes into
 * play.
 * 
 * Inheritance exists for the purpose of reusability, facilitating RAD:
 * rapid application development. What if Hochwald creates a class and
 * you want to use all the parameters and functions from his class?
 * You're not going to rewrite his entire class, that's bleeping dumb.
 * Instead, what he's going to do is allow you to inherit his class,
 * making development much faster and RAD.
 * 
 * Here's a quick example which starts with a stream insertion overload
 * dedicated to very basic tuple handling: */

class Point
{
    friend ostream &operator<<(ostream&, const Point &);
    public:
        Point(int = 0, int = 0); // default constructor
        int getx() const { return x; }
        int gety() const { return y; }
    protected:
        int x, y; // that's new...
};

Point::Point(int a, int b)
{
    x = a;
    y = b;
}

ostream &operator<<(ostream &output, const Point &p)
{
    output << '[' << p.x << ", " << p.y << ']' << endl;
    return output;
}

/* Now that we've got all that defined, I've got some explaining to do:
 * inside the class, we've got the third data access specifier we have
 * in C++: the protected specifier. Data members and methods that have
 * the protected specifier can be accessed from outside the class, but
 * only by classes that inherit it. We held off talking about this
 * specifier because we weren't going to use it, but now we are, and
 * here it is in action: */

class Circle : public Point // inherits from the class "Point"
{
    friend ostream &operator<<(ostream &, const Circle &);
    public:
        Circle(double r = 0.0, int x = 0, int y = 0);
        double getRadius() const;
    protected:
        double radius;
};

/* WATCH OUT: do NOT use double colons for inheritance. That's scope
 * resolution.
 * 
 * OK, I'll say it again: DO NOT USE DOUBLE COLONS FOR INHERITANCE
 * BECAUSE THAT'S NOT THE INHERITANCE OPERATOR, THAT'S THE SCOPE
 * RESOLUTION OPERATOR!!!
 * 
 * That's a common fuck-up that a lot of people make -- they mix up
 * scope resolution with inheritance, and they end up losing points
 * on exams because of it. Do NOT make that mistake. Just to make sure
 * we're COMPLETELY CLEAR:
 * : = inheritance
 * :: = scope resolution
 * 
 * But once you get past that common error, it's easy: you just put
 * the operator, you write the keyword "public", and then you put the
 * name of the base class (the class being inherited). Then, write all
 * the body content for the derived class (the class doing the
 * inheriting). The derived class gets access to all the protected
 * members of the base class. This, obviously, allows you to not waste
 * time while you write your code(s), and is, for lack of a better word, 
 * very based.
 * 
 * Derived classes have a slight quirk when you're writing the
 * constructor, as I'll show below: */

Circle::Circle(double r, int a, int b)
    :Point(a, b) // calls the base class constructor
{
    radius = (r >= 0 ? r : 0); // one-line if: syntactic sugar for "if r >= 0 then r else 0"
}

double Circle::getRadius() const { return radius; }

ostream &operator<<(ostream &output, const Circle &c)
{
    output << endl << "the center of the circle is at " << (Point) c; // typecasting forces overloaded operator to read the circle as if it was a point
    output << endl << "the radius is " << setprecision(2);
    output << fixed << showpoint << c.radius << endl; // only outputs "15" without the fixed and showpoint
    return output;
}

int inh1()
{
    Point p1, p2(10, 20); // inherited objects can still be instantiated
    cout << "first point is " << p1 << endl;
    cout << "second point is " << p2 << endl;
    Circle c1, c2(15.25, 20, 50);
    cout << "first circle: " << c1 << endl;
    cout << "second circle: " << c2 << endl;

    return 0;
}

/* That's cool, but we've got a bit more explanation to go through even
 * now: I said I'd explain why that "public" keyword was required, so let's
 * boogie.
 * 
 * C++ supports public, protected, and private inheritance, but use of the
 * latter two are so rare that they might as well not exist, so we'll stick
 * with public in our application. However, I'd be remiss to not tell you
 * what it actually means.
 * 
 * If you're deriving from a public base class, public members of the base
 * class (superclass) become public members of the derived class (subclass).
 * If you inherit from a protected base class, the public and protected
 * members become protected, and if you inherit from a private base class,
 * the public and protected members become private. Remember that private
 * members cannot be accessed by anything under any circumstances.
 * 
 * Private and protected inheritance are effectively useless if you follow
 * normal best practices and keep class fields only accessible by accessor
 * and mutator methods unless you plan to only use those accessors and
 * mutators within the derived classes. There may be a situation where this
 * is possible, and, if it is, you should, by all means, use private or
 * protected inheritance. But as a general rule, this is so rare that
 * you'll probably encounter the heat death of the universe before you'll
 * ever use it in a real application.
 * 
 * Another thing worth mentioning is that C++, unlike many other languages
 * that use object-oriented paradigms (including Java), allows multiple
 * base classes. It would be possible, therefore, in C++, to do this:
 * 
 * class Derived: public Base1, public Base2
 * {
 *  ...
 * };
 * 
 * That is a useful functionality, and, while it's also very rare, it can
 * allow lots of interesting things to become possible.
 * 
 * Moving on, here's a second example with something more practical: */

class Employee
{
    public:
        Employee(const char*, const char*); // constructor gets first and last name
        void print() const;
        ~Employee(); // destructor
    private:
        char *firstName;
        char *lastName; // dynamically-allocated strings - allows length to be allocated from variables at time of assignment
};

Employee::Employee(const char *first, const char *last)
{
    firstName = new char[strlen(first) + 1]; // defining length of dynamically-allocated strings: "new" keyword allocates memory
    strcpy(firstName, first);
    lastName = new char[strlen(last) + 1]; // failure to do that will create runtime errors as you turn nearby objects to garbage
    strcpy(lastName, last);
    cout << "inside Employee constructor" << endl;
}

void Employee::print() const
{
    cout << firstName << ' ' << lastName;
}

Employee::~Employee()
{
    cout << "inside Employee destructor to kill " << firstName << ' ' << lastName << endl;
    delete[] firstName; // delete operator -- restores allocated space for complex datastructures to free memory
    delete[] lastName; // this is what the destructor is useful for, other than just going "GOODBYE WORLD"
    // more on this will come in Data Structures, where we'll learn dynamic datastructures for everything else
}

// INHERITANCE represents an "is a" relationship: Worker IS AN Employee
// COMPOSITION represents a "has a" relationship: Student HAS A set of test scores
class Worker : public Employee // Worker is derived, Employee is base -- same way that Seth is derived, Dork is base
{
    public:
        Worker(const char*, const char*, float, float);
        float getPay() const;
        void print() const;
        ~Worker();
    private:
        float wage;
        float hours;
};

Worker::Worker(const char *first, const char *last, float initHours, float initWage)
    : Employee(first, last) // call the base class constructor with first and last from this constructor
{
    hours = initHours;
    wage = initWage;
    cout << "inside Worker constructor" << endl;
}

float Worker::getPay() const { return wage * hours; }

void Worker::print() const
{
    Employee::print(); // call superclass function
    cout << "hours worked are " << fixed << showpoint << setprecision(2) << hours << endl;
    cout << "wage is $" << wage << endl;
    cout << "pay is $"  << getPay() << endl;
}

Worker::~Worker()
{
    cout << "inside the Worker destructor" << endl;
    // no need to call superclass destructor in here, it's automatically called because, again, Worker IS AN Employee
}

int inh2()
{
    Worker w("Joe", "Smith", 10.5, 20.0); // 10.5 hrs/pay period @ $20.00 an hour
    w.print();
    return 0;
}

/* Constructors and destructors, somewhat logically, are last-in
 * first-out. When you specify that you're going to call the constructor
 * from the superclass, you have to create that imaginary inherited
 * object instance before you can comp it into your new object.
 * Destrutors are completely automatic and will run without a need to
 * specify them within the subclass method.
 * 
 * On the topic of dynamically-allocated datastructures, though, a word
 * of warning to you: DO NOT FORGET TO USE THE delete[] OPERATOR TO GET
 * RID OF THEM AFTER YOU'RE DONE, because if you DON'T, you're going to
 * get lots of problems. Once the object disappears, the pointer to the
 * memory in question has been deleted, but if you don't collect the
 * trash from your previous usage of that memory, the values will stay
 * in memory but will be inaccessible unless you can locate the value
 * somehow and perform surgery on it.
 * 
 * This is what's known as a MEMORY LEAK or RESOURCE LEAK, and it can be
 * very dangerous, because, if not corrected, it can cause you to get a
 * kernel panic or stop error (indicated by the Blue Screen of Death on
 * Windows machines) when the system runs out of usable memory. Resource
 * leaks build up as time goes on and program executions repeat, and
 * even though modern operating systems are stack-protected (meaning
 * they have a fixed buffer they're allowed to operate in that the OS
 * deletes at the end of execution which prevents overflows), while it
 * may no longer bring down the entire OS, it'll certainly bring down
 * your program. Back in the days when programs weren't buffered, it was
 * possible for malware makers to fill up the entire memory of a computer
 * with garbage data, allowing them to brick the computer. That serious
 * security vulnerability was since removed with stack protection, but
 * malware can still achieve a similar sort of result using the dynamic
 * stack allocation that operating systems use to allow programs to run
 * faster when they're in the foreground.
 * 
 * Either way, resource leaks are bad news. They create mixed signals in
 * the program that memory which should be available is not, which is a
 * bit like Loke forgetting to dismiss his Python class at the end and
 * having them still be in their chairs when the C class shows up.
 * 
 * But with the bad comes a lot of good: dynamically-allocated stuff can
 * be held back from memory allocation until later, which is useful in
 * embedded applications to formally define, in the workflow, when
 * certain objects are defined, giving the program time to clear up space
 * while consolidating all the definitions near the top.
 * 
 * And with inheritance comes a heck of a lot of good, because we're just
 * about to launch into POLYMORPHISM, which makes all this worth it. */

int main()
{
    int err = inh1();
    err = inh2();
    return err;
}
