#include <iostream>
using namespace std;

/* Finally...
 * NUMBER 8: PARAMETERS AND SWAPPING VARIABLES
 * The program below has four swap functions. Anyone who uses C++ will be pleased to
 * hear that the days of swapping everything by reference are GONE. Strings still
 * have to be passed by reference, but everything else can pretty much be done the
 * new way. Watch and learn: */

// prototypes
void swapbyvalue(int, int);
void swapbyptr(int*, int*);
void swapbyref(int&, int&);
void getnames(char*, char*); // strings, y u do dis

int main()
{
    int a, b;
    cout << "enter two numbers: ";
    cin >> a >> b;
    cout << "the two numbers are " << a << " and " << b << endl;
    swapbyvalue(a, b);
    cout << "the two numbers after swapbyvalue are " << a << " and " << b << endl;
    swapbyptr(&a, &b);
    cout << "the two numbers after swapbyptr are " << a << " and " << b << endl;
    swapbyref(a, b);
    cout << "the two numbers after swapbyref are " << a << " and " << b << endl << endl;

    char first[10], last[15]; // initializes to garbage on Windows, nothing on Unix-like
    cout << "before the names are entered the values are "
        << first << ' ' << last << endl;
    getnames(first, last);
    cout << "after the names are entered the values are "
        << first << ' ' << last << endl;

    return 0;
}

// THIS WILL NOT DO ANYTHING -- ONE-WAY COMMUNICATION!
void swapbyvalue(int x, int y)
{
    int t = x;
    x = y;
    y = t;
}

void swapbyptr (int* x, int* y)
{
    int t = *x;
    *x = *y;
    *y = t;
}

// allows two-way communication -- this is the new C++ way!
void swapbyref(int &x, int &y)
{
    int t = x;
    x = y;
    y = t;
}

void getnames(char* f, char* l)
{
    cin.ignore(10, '\n'); // clear out the first ten characters
    cout << "enter a first name: ";
    cin.getline(f, 10);
    cout << "enter a last name: ";
    cin.getline(l, 15);
}

/* That's basically it -- there you have the MAJOR FUNDAMENTAL DIFFERENCES
 * between C and C++. Now let's go write some PROGRAMS! */
