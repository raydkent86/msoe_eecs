#include <iostream>
#include <iomanip>

using namespace std;

/* FRIEND FUNCTIONS
 * Friend functions are functions defined outside the class that are
 * able to access private members of the class. Because what are friends
 * for, if not to steal the keys to your house, go in, and "borrow" your
 * Mercedes without asking?
 * 
 * This opens up a new world of possibilities, since you can "trust" a
 * function to mess with private members, and it's defined in the manner
 * shown below. */

class StudentV9 
{
    friend void change(StudentV9 &, int, int, int); // friend declaration
    public:
        StudentV9(int = 0, int = 0, int = 0);
        ~StudentV9();
        void setData(int, int, int);
        void setTest1(int); // mutators
        void setTest2(int);
        void setTest3(int);
        int getTest1(); // accessors
        int getTest2(); // const after function means object can't be modified
        int getTest3();
        void printData();
    private:
        int test1, test2, test3;
};

StudentV9::StudentV9(int a, int b, int c)
{
    setData(a,b,c);
}

StudentV9::~StudentV9()
{
    cout << setw(10) << test1 << setw(10) << test2;
    cout << setw(10) << test3 << " destroyed" << endl;
}

void StudentV9::setData(int a, int b, int c)
{
    setTest1(a);
    setTest2(b);
    setTest3(c);
}

void StudentV9::setTest1(int a)
{
    test1 = a;
}

void StudentV9::setTest2(int b)
{
    test2 = b;
}

void StudentV9::setTest3(int c)
{
    test3 = c;
}

int StudentV9::getTest1()
{ return test1; }

int StudentV9::getTest2()
{ return test2; }

int StudentV9::getTest3()
{ return test3; }

void StudentV9::printData()
{
    cout << "test 1, 2, 3 are " << setw(10) << test1;
    cout << setw(10) << test2 << setw(10) << test3 << endl;
}

void change(StudentV9 &pupil, int add1, int add2, int add3) // I CAN BE YOUR FRIEND
{
    // add extra credit
    pupil.test1 += add1;
    pupil.test2 += add2;
    pupil.test3 += add3; // these will fail with lots of errors if you don't define it as a friend
}

int friend_fx()
{
    StudentV9 two;int qz1, qz2, qz3;
    two.setTest1(10);
    two.setTest2(20);
    two.setTest3(30);

    cout << endl << "student two data is" << endl;
    two.printData();
    cout <<endl;
    
    qz1 = two.getTest1();
    qz2 = two.getTest2();
    qz3 = two.getTest3();
    cout << "using the get functions" << endl;
    cout << setw(10) << qz1 << setw(10) << qz2;
    cout << setw(10) << qz3 << endl << endl;
    
    change(two, 10, 20, 30);
    cout << "after the change function "  << endl;
    two.printData();cout << endl;
    
    return 0;
}

/* BUT WAIT: THERE'S MORE!
 * You thought we could just have a FRIEND FUNCTION... you can allow
 * an entire CLASS to be friends with your class! Now your class
 * won't have to go through his life lonely, looking for shots of
 * dopamine everywhere he can get by being instantiated as many times
 * as he can possibly muster! And make that friend a GIRLfriend, and
 * you'll --
 * 
 * -- OK, I'll shut my ass up. Here's a friend for our tenth and final
 * iteration of the Student class that shows up in this file. */

class StudentV10
{
    public:
        friend class Person; // you'd better find yourself a friend
        StudentV10() // constructor defined within
        {
            test1 = test2 = test3 = big = small = 0;
        };
    private:
        int test1, test2, test3, big, small;
        int biggest(int t1, int t2, int t3)
        {
            if (t1 >= t2 && t1 >= t3)
                return big = t1;
            if (t2 >= t1 && t2 >= t3)
                return big = t2;
            return big = t3;
        };
        int smallest(int t1 ,int t2,int t3)
        {
            if (t1 <= t2 && t1 <= t3)
                return small = t1;
            if (t2 <= t1 && t2 <= t3)
                return small = t2;
            return small = t3;
        };
};

class Person
{
    public:
        StudentV10 stock;
        int stock1, stock2, stock3, big, small;
        void getInfo();
        Person()
        {
            getInfo();
        };
    private:
};

void Person::getInfo()
{
    cout << "enter three stock values ";
    cin >> stock1 >> stock2 >> stock3;
    cout << endl << "the three stocks are ";
    cout << stock1 << "  " << stock2 << "  " << stock3 << endl;

    // use the "biggest" and "smallest" functions within the other class to get the result
    big = stock.biggest(stock1, stock2, stock3);
    small = stock.smallest(stock1, stock2, stock3);
    cout << "the biggest value is " << big << endl;
    cout << "the smallest value is " << small << endl;
};

int friend_class()
{
    Person one;
    return 0;
}

int main()
{
    int err = friend_fx();
    err = friend_class();
    return err;
}
