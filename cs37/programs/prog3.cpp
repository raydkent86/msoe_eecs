/************************************************
 * CS37 - Homework Problem 3
 * Owen Bailey-Waltz
 * 1158982
 * This program creates a class for the handling
 * of complex numbers, containing methods to add
 * a pair of complex numbers, subtract a pair of
 * complex numbers, multiply a pair of complex
 * numbers, print them out, and cube them.
 ************************************************/

#include <iostream>
using namespace std;

class ComplexNum
{
    public:
        ComplexNum(float = 0.0, float = 0.0);
        void sum(ComplexNum, ComplexNum);
        void diff(ComplexNum, ComplexNum);
        void prod(ComplexNum, ComplexNum);
        void print();
        void getCube(ComplexNum);
        void setReal(float);
        void setImaginary(float);
        float getReal();
        float getImaginary();
    private:
        float r, i;
};

ComplexNum::ComplexNum(float real, float imag)
{
    setReal(real);
    setImaginary(imag);
}

void ComplexNum::sum(ComplexNum a, ComplexNum b)
{
    r = a.getReal() + b.getReal();
    i = a.getImaginary() + b.getImaginary();
}

void ComplexNum::diff(ComplexNum a, ComplexNum b)
{
    r = a.getReal() - b.getReal();
    i = a.getImaginary() - b.getImaginary();
}

// first + outside + inside + last
// (a + bi)(c + di) = ac + adi + bci - bd
void ComplexNum::prod(ComplexNum a, ComplexNum b)
{
    r = (a.getReal() * b.getReal()) - (a.getImaginary() * b.getImaginary());
    i = (a.getReal() * b.getImaginary()) + (a.getImaginary() * b.getReal());
}

void ComplexNum::print()
{
    if (i >= (float) 0)
        cout << r << '+' << i << 'i';
    else
        cout << r << i << 'i';
}


// get square, then multiply 
void ComplexNum::getCube(ComplexNum a)
{
    prod(a, a); // square it
    ComplexNum squared(r, i); // store the square
    prod(squared, a); // get the cube
}

void ComplexNum::setReal(float real)
{
    r = real;
}

void ComplexNum::setImaginary(float imag)
{
    i = imag;
}

float ComplexNum::getReal()
{
    return r;
}

float ComplexNum::getImaginary()
{
    return i;
}

int main()
{
    ComplexNum c[3]; // c[2] is the result
    float real, imag;
    int i;

    for (i = 0 ; i < 2 ; i++)
    {
        cout << "COMPLEX NUMBER " << (i + 1) << endl;
        cout << "Enter real and imaginary values: ";
        cin >> real >> imag;
        c[i].setReal(real);
        c[i].setImaginary(imag);
        c[i].print();
        cout << " was entered" << endl << endl;
    }

    c[2].sum(c[0],c[1]);
    c[0].print();
    cout << " + ";
    c[1].print();
    cout << " = ";
    c[2].print();
    cout << endl;
    
    c[2].diff(c[0], c[1]);
    c[0].print();
    cout << " - ";
    c[1].print();
    cout << " = ";
    c[2].print();
    cout << endl;

    c[2].prod(c[0], c[1]);
    c[0].print();
    cout << " * ";
    c[1].print();
    cout << " = ";
    c[2].print();
    cout << endl << endl;

    c[2].getCube(c[0]);
    cout << "The cube of the first number (";
    c[0].print();
    cout << ") is ";
    c[2].print();
    cout << endl;

    c[2].getCube(c[1]);
    cout << "The cube of the second number (";
    c[1].print();
    cout << ") is ";
    c[2].print();
    cout << endl;

    return 0;
}

/* OUTPUTS
COMPLEX NUMBER 1
Enter real and imaginary values: 1 1
1+1i was entered

COMPLEX NUMBER 2
Enter real and imaginary values: 5 -2.1
5-2.1i was entered

1+1i + 5-2.1i = 6-1.1i
1+1i - 5-2.1i = -4+3.1i
1+1i * 5-2.1i = 7.1+2.9i

The cube of the first number (1+1i) is -2+2i
The cube of the second number (5-2.1i) is 58.85-148.239i
----------------------------------------------------------
COMPLEX NUMBER 1
Enter real and imaginary values: -5 2
-5+2i was entered

COMPLEX NUMBER 2
Enter real and imaginary values: -3.1 -2.8
-3.1-2.8i was entered

-5+2i + -3.1-2.8i = -8.1-0.8i
-5+2i - -3.1-2.8i = -1.9+4.8i
-5+2i * -3.1-2.8i = 21.1+7.8i

The cube of the first number (-5+2i) is -65+142i
The cube of the second number (-3.1-2.8i) is 43.121-58.772i
----------------------------------------------------------
COMPLEX NUMBER 1
Enter real and imaginary values: -4.8 9
-4.8+9i was entered

COMPLEX NUMBER 2
Enter real and imaginary values: 38.2 -5.3
38.2-5.3i was entered

-4.8+9i + 38.2-5.3i = 33.4+3.7i
-4.8+9i - 38.2-5.3i = -43+14.3i
-4.8+9i * 38.2-5.3i = -135.66+369.24i

The cube of the first number (-4.8+9i) is 1055.81-106.92i
The cube of the second number (38.2-5.3i) is 52523.9-23053i
----------------------------------------------------------
COMPLEX NUMBER 1
Enter real and imaginary values: -1 1
-1+1i was entered

COMPLEX NUMBER 2
Enter real and imaginary values: 59.29 24.1 
59.29+24.1i was entered

-1+1i + 59.29+24.1i = 58.29+25.1i
-1+1i - 59.29+24.1i = -60.29-23.1i
-1+1i * 59.29+24.1i = -83.39+35.19i

The cube of the first number (-1+1i) is 2+2i
The cube of the second number (59.29+24.1i) is 105114+240159i
----------------------------------------------------------
COMPLEX NUMBER 1
Enter real and imaginary values: 8.4 -2.22
8.4-2.22i was entered

COMPLEX NUMBER 2
Enter real and imaginary values: -5.921 28.86
-5.921+28.86i was entered

8.4-2.22i + -5.921+28.86i = 2.479+26.64i
8.4-2.22i - -5.921+28.86i = 14.321-31.08i
8.4-2.22i * -5.921+28.86i = 14.3328+255.569i

The cube of the first number (8.4-2.22i) is 468.508-458.989i
The cube of the second number (-5.921+28.86i) is 14587.2-21002.1i
*/
