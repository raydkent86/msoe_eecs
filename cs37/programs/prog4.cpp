/************************************************
 * CS37 - Homework Problem 4
 * Owen Bailey-Waltz
 * 1158982
 * This program uses the class for the handling
 * of complex numbers that was developed in the
 * previous homework problem and adds to it by
 * overloading the stream insertion/extraction,
 * addition, subtraction, multiplication,
 * equivalence, and non-equivalence operators to
 * make implementation in a programming setting
 * more concise. This version also overloads the
 * preincrement and postincrement operators to
 * change the number to its cube, and adds new
 * tests for these operators as well as the
 * equivalence operators.
 ************************************************/

#include <iostream>
using namespace std;

class ComplexNum
{
    // stream operator overloads
    friend ostream &operator<<(ostream&, const ComplexNum&);
    friend istream &operator>>(istream&, ComplexNum&);
    public:
        // binary and boolean overloads
        // code is copied rather than using existing implementations to preserve scalability
        ComplexNum operator+(const ComplexNum &rhs) const
        {
            return ComplexNum((r + rhs.getReal()), (i + rhs.getImaginary()));
        }
        ComplexNum operator-(const ComplexNum &rhs) const
        {
            return ComplexNum((r - rhs.getReal()), (i - rhs.getImaginary()));
        }
        ComplexNum operator*(const ComplexNum &rhs) const
        {
            ComplexNum t;
            t.setReal((r * rhs.getReal()) - (i * rhs.getImaginary()));
            t.setImaginary((r * rhs.getImaginary()) + (i * rhs.getReal()));
            return t;
        }
        bool operator==(const ComplexNum&) const;
        bool operator!=(const ComplexNum&) const;

        // preinc and postinc overloads
        ComplexNum operator++();
        ComplexNum operator++(int);

        ComplexNum(float = 0.0, float = 0.0);
        void sum(ComplexNum, ComplexNum);
        void diff(ComplexNum, ComplexNum);
        void prod(ComplexNum, ComplexNum);
        void print();
        void getCube(ComplexNum);
        void setReal(float);
        void setImaginary(float);
        float getReal() const;
        float getImaginary() const;
    private:
        float r, i;
};

// overloads
ostream &operator<<(ostream &o, const ComplexNum &c)
{
    if (c.getImaginary() >= (float) 0)
        o << c.getReal() << '+' << c.getImaginary() << 'i';
    else
        o << c.getReal() << c.getImaginary() << 'i';
    return o;
}

istream &operator>>(istream &i, ComplexNum &c)
{
    float real, imag;
    i >> real >> imag;
    c.setReal(real);
    c.setImaginary(imag);
    return i;
}

bool ComplexNum::operator==(const ComplexNum &rhs) const
{ return ((getReal() == rhs.getReal()) && (getImaginary() == rhs.getImaginary())); }

bool ComplexNum::operator!=(const ComplexNum &rhs) const
{ return !((getReal() == rhs.getReal()) && (getImaginary() == rhs.getImaginary())); }

ComplexNum ComplexNum::operator++()
{
    *this = ((*this) * (*this) * (*this));
    return *this;
}

ComplexNum ComplexNum::operator++(int)
{
    ComplexNum tmp = *this;
    *this = ((*this) * (*this) * (*this));
    return tmp;
}

// constructor
ComplexNum::ComplexNum(float real, float imag)
{
    setReal(real);
    setImaginary(imag);
}

// old implementations from the previous version of the application, still here for flexibility
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

float ComplexNum::getReal() const
{
    return r;
}

float ComplexNum::getImaginary() const
{
    return i;
}

int main()
{
    ComplexNum c[3]; // c[2] is the result
    int i;

    for (i = 0 ; i < 2 ; i++)
    {
        cout << "COMPLEX NUMBER " << (i + 1) << endl;
        cout << "Enter real and imaginary values: ";
        cin >> c[i];
        cout << c[i] << " was entered" << endl << endl;
    }

    c[2] = c[0] + c[1];
    cout << c[0] << " + " << c[1] << " = " << c[2] << endl;
    c[2] = c[0] - c[1];
    cout << c[0] << " - " << c[1] << " = " << c[2] << endl;
    c[2] = c[0] * c[1];
    cout << c[0] << " * " << c[1] << " = " << c[2] << endl << endl;

    // test for the equivalence/non-equivalence operators
    if (c[0] == c[1])
        cout << c[0] << " == " << c[1] << ": true" << endl;
    else
        cout << c[0] << " == " << c[1] << ": false" << endl;
    if (c[0] != c[1])
        cout << c[0] << " != " << c[1] << ": true" << endl << endl;
    else
        cout << c[0] << " != " << c[1] << ": false" << endl << endl;

    c[2] = c[0];
    cout << "The cube of the first number (" << c[0] << ") is " << ++c[2] << endl; // preincrement test

    c[2] = c[1];
    cout << "The cube of the second number (" << c[2]++ << ") is " << c[2] << endl; // postincrement test

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

1+1i == 5-2.1i: false
1+1i != 5-2.1i: true

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

-5+2i == -3.1-2.8i: false
-5+2i != -3.1-2.8i: true

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

-4.8+9i == 38.2-5.3i: false
-4.8+9i != 38.2-5.3i: true

The cube of the first number (-4.8+9i) is 1055.81-106.92i
The cube of the second number (38.2-5.3i) is 52523.9-23053i
----------------------------------------------------------
COMPLEX NUMBER 1
Enter real and imaginary values: 59.29 24.1
59.29+24.1i was entered

COMPLEX NUMBER 2
Enter real and imaginary values: 59.29 24.1
59.29+24.1i was entered

59.29+24.1i + 59.29+24.1i = 118.58+48.2i
59.29+24.1i - 59.29+24.1i = 0+0i
59.29+24.1i * 59.29+24.1i = 2934.49+2857.78i

59.29+24.1i == 59.29+24.1i: true
59.29+24.1i != 59.29+24.1i: false

The cube of the first number (59.29+24.1i) is 105114+240159i
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

8.4-2.22i == -5.921+28.86i: false
8.4-2.22i != -5.921+28.86i: true

The cube of the first number (8.4-2.22i) is 468.508-458.989i
The cube of the second number (-5.921+28.86i) is 14587.2-21002.1i
*/
