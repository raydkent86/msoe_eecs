#include <iostream>
using namespace std;

class Student
{
    public:
        Student(); // constructor method -- more on that later
        void setData(int, int, int);
        void printData();
    
    private:
        int test1, test2, test3;
        float avg;
};

// init code (constructor)
Student::Student()
{
    test1 = test2 = test3 = 1;
    avg = (test1 + test2 + test3) / (float) 3;
}

// pull in some dumb shit
void Student::setData(int a, int b, int c)
{
    test1 = a;
    test2 = b;
    test3 = c;
    avg = (test1 + test2 + test3) / (float) 3;
}

// print all the dumb shit out
void Student::printData()
{
    cout << "test 1: " << test1 << endl;
    cout << "test 2: " << test2 << endl;
    cout << "test 3: " << test3 << endl;
    cout << "average: " << avg << endl;
}

// this, because it's not in the library, would have to be imported as #include "student.h"
