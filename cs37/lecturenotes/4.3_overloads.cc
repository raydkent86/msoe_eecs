#include <iostream>
#include <iomanip>
#include <string>

using namespace std;

/* Now time for some ACTUAL OPERATOR OVERLOADING!
 *
 * We're going to overload some operators now that we've learned
 * about how classes can be friends, how we can use the "this"
 * pointer to disambiguate, and, most critically, how we can cascade
 * function calls to make everything a bit more concise. All of
 * these new things we learned are going to be useful when it comes
 * to overloading operators to do cool things. We're into the teens
 * of these Student datatypes, so wish me luck in writing this in a
 * form that makes some amount of sense!
 * 
 * We'll start looking at the stream input and stream output
 * operators, which we'll overload with a series of friend functions.
 * Weird, I know -- overloading an operator for a class uses friend
 * functions. Just roll with it. */

class StudentV11
{
    friend ostream &operator<<(ostream&, StudentV11&);
    friend istream &operator>>(istream&, StudentV11&); // how to define an operator overload
    
    private:
        int test1, test2, test3;
        float avg;
};

// overloaded stream-insertion operator
ostream &operator<<(ostream &output, StudentV11 &one)
{
    output << "test 1 is " << one.test1 << endl;
    output << "test 2 is " << one.test2 << endl;
    output << "test 3 is " << one.test3 << endl;
    output << "the average is " << one.avg << endl;
    return output;
}

// overloaded stream-extraction operator
/* The keyword "operator" followed by a character sequence will define the functionality for an
existing operator, with this one returning the reference to the input stream. The first argument
is the first operand, and the second argument is the second operand, which means they are passed
ONLY by reference if their contents are to be changed in the process, as it is in this case. */
istream &operator>>(istream &input, StudentV11 &one)
{
    input >> one.test1 >> one.test2 >> one.test3;
    one.avg = (one.test1 + one.test2 + one.test3) / (float)3;
    return input; // enables cascading, like a boss: cin >> a >> b >> c; for three different students
}

int overld1()
{
    StudentV11 pupil;
    cout << "Enter three test scores: ";
    cin >> pupil; // OVERLOADED, FIRST OPERAND AS FIRST ARGUMENT, SECOND OPERAND AS SECOND ARGUMENT, OPERATOR EXECUTES FUNCTION
    cout << endl << "The student information is" << endl;
    cout << pupil << endl; // two instances of the same operator, C++ is intelligent about that
    return 0;
}

/* I know that made my head hurt the first time around, but once I
 * read a little bit deeper into it (unlike those pricks on the fake
 * right who just go mARkeTs ArE GAy thEy CAnT StoP ruNaWaY
 * MOnoPolIeS NaTIONaL SOciAlIsm iS BaSeD NAZi ecOnoMiCS foR THe wiN
 * -- fucking dicks! shut the fuck up! rigging the economy only leads
 * to fail later on, as San Francisco has found out the hard way with
 * their rent controls, and a government big enough to solve every
 * problem that you have is also big enough to solve every problem
 * they have at your expense) it made a bit more sense. We're going
 * to move on now to a few more examples for different operators, and
 * the specific manner in which they're overloaded, so that we can
 * actually USE this stuff. */

class StudentV12
{
    friend ostream &operator<<(ostream&, const StudentV12&);
    friend istream &operator>>(istream&, StudentV12&);
    public:
        StudentV12 &operator+=(int); // modify the object
        StudentV12 &operator++(); // preincrement
        StudentV12 operator++(int); // postincrement with dummy int parameter
    private:
        int test1, test2, test3;
        float avg;
};

StudentV12 &StudentV12::operator+=(int extraCredit) // -= and all the other ones are the same as this
{
    test1 += extraCredit;
    test2 += extraCredit;
    test3 += extraCredit;
    avg = (test1 + test2 + test3) / (float)3;
    return *this;
}

StudentV12 &StudentV12::operator++() // preincrement
{
    test1++;
    test2++;
    test3++;
    avg = (test1 + test2 + test3) / (float)3;
    return *this;
}

StudentV12 StudentV12::operator++(int) // postincrement, note dummy int parameter to signify postincrement
{
    StudentV12 temp = *this;
    test1++;
    test2++;
    test3++;
    avg = (test1 + test2 + test3) / (float)3;
    return temp; // return non-incremented value, as is the way that postincrement works
}

// overloaded overloaded stream-insertion operator
ostream &operator<<(ostream &output, const StudentV12 &one) // REMEMBER YOUR CONSTS, DUMBASS, OR IT'LL THROW ERRORS
{
    output << "test 1 is " << one.test1 << endl;
    output << "test 2 is " << one.test2 << endl;
    output << "test 3 is " << one.test3 << endl;
    output << "the average is " << one.avg << endl;
    return output;
}

// overloaded overloaded stream-extraction operator
istream &operator>>(istream &input, StudentV12 &one)
{
    input >> one.test1 >> one.test2 >> one.test3;
    one.avg = (one.test1 + one.test2 + one.test3) / (float)3;
    return input;
}

int overld2()
{
    StudentV12 pupil;
    cout << "enter three test scores ";
    cin >> pupil;cout << endl << "the student information is " << endl;
    cout << pupil << endl;
    
    pupil += 5;  //assign 5 extra credit points to each test
    cout << endl << "after extra credit the scores are " << endl;
    cout << pupil << endl;
    
    ++pupil;  //add 1 to each test - preincrement
    cout << endl << "after preincrementing the scores are " << endl;
    cout << pupil << endl;
    
    pupil++;  //add 1 to each test - postincrement
    cout << endl << "after postincrementing the scores are " << endl;
    cout << pupil << endl;
    
    return 0;
}

/* The pre-increment and post-increment will behave the same way that
 * the real pre-increment and post-increment operator will behave, and
 * in the course content there is another Example 2 that demonstrates
 * that, but I'm not going to piss around with that because that's
 * just reliving the glory days of CS 36.
 * 
 * Instead, we're going to move on again. We're going to move on to
 * overloading binary and relational operators, which will use a similar
 * process. Let's just cut to the chase. */

class StudentV13
{
    friend ostream &operator<<(ostream&, const StudentV13&);
    public:
        StudentV13(int = 0, int = 0, int = 0);
        /* When overloading arithmetic operators, you do it from public class
        functions rather than friend functions, unlike the stream operators, with
        the values in the current object being the stuff on the left and the
        values in the object that's the second operand being the stuff on the
        right. Making sense yet? */
        StudentV13 operator+(const StudentV13 &rhs) const // rhs = right-hand side
        {
            return StudentV13(test1 + rhs.test1, test2 + rhs.test2, test3 + rhs.test3);
        }
        bool operator>(const StudentV13 &rhs) const
        {
            return (test1 > rhs.test1);
        }
    private:
        int test1, test2, test3;
};

// constructor
StudentV13::StudentV13(int a, int b, int c)
    : test1(a), test2(b), test3(c) {}

/* WHOA. What was THAT definition?
 * That was a direct mapping definition that does nothing except put the
 * arguments directly in the data members of the StudentV13 object. Just
 * ignore that we didn't learn that. I'm certainly never gonna use that
 * bit of syntactic sugar in this class in a million years. No way. 
 * 
 * Well, OK, maybe not, but at least not until we talk about inheritance
 * and polymorphism. This'll make our life easier, but not until later. */

// overloaded x3 stream-insertion operator
ostream &operator<<(ostream &output, const StudentV13 &one)
{
    output << "test 1 is " << one.test1 << "   ";
    output << "test 2 is " << one.test2 << "   ";
    output << "test 3 is " << one.test3 << endl;
    return output;
}

// no overloaded stream extraction in this because no loading function, done in the constructor

int overld3()
{
    StudentV13 s1(10, 20, 30), s2(1, 2, 3), s3;
    cout << "student 1 data is: " << s1 << endl;
    cout << "student 2 data is: " << s2 << endl;
    s3 = s1 + s2; // s3 is the sum of the two things, for demonstration purposes
    cout << "student 3 data is: " << s3 << endl;
    if (s2 > s1)
        cout << "student 2 has a higher test 1 score" << endl;
    else
        cout << "student 1 has a higher test 1 score" << endl;
    
    return 0;
}

/* And now for the grand finale. This is technically an optional program,
 * but it shows how overloaded operators and assorted syntactic sugar can
 * be used in real applications. This is the beginning of a string library
 * that does string comparisons with overloaded operators. Once you become
 * a programming ninja, you can do this as well. */

class String
{
    friend ostream &operator<<(ostream &, const String &);
    friend istream &operator>>(istream &, String &);
    public:
        const String &operator=(const String &);
        int getLength() const; // remember the consts out in right field
        String(const char* = "");
        ~String(); // destructor (WARNING: stupid)
        bool operator!() const; // check for empty string
        bool operator==(const String &) const; // check for equal strings
    private:
        int length;
        char *ptr; // pointer to the start of the string
        void setString(const char*);
};

String::~String()
{
    cout << "destructor for " << ptr << endl;
    delete[] ptr;
}

ostream &operator<<(ostream &o, const String &s)
{
    o << s.ptr;
    return o;
}

istream &operator>>(istream &i, String &s)
{
    char temp[50];
    i >> setw(50) >> temp;
    s = temp;
    return i;
}

int String::getLength() const { return length; }

// conversion constructor to convert char* to String
String::String(const char* s) : length(strlen(s))
{
    setString(s);
}

const String &String::operator=(const String &right)
{
    if (&right != this)
    {
        delete[] ptr;
        length = right.length;
        setString(right.ptr); // call utility function
    }
    return *this;
}

void String::setString(const char* string2)
{
    ptr = new char[length + 1];
    strcpy(ptr, string2);
}

bool String::operator!() const { return (length == 0); }

bool String::operator==(const String &right) const
{
    return (strcmp(ptr, right.ptr) == 0);
}

int string_lib()
{
    String one("dork");
    cout << one << endl;
    String two;
    // test to see if string two is empty
    if (!two)
        cout << "string two is empty for now" << endl;
    else
        cout << "string two is not empty" << endl;
    two = one;
    cout << "the second string is " << two << endl;
        
    // test again to see if string two is empty
    if (!two)
        cout << "string two is empty for now" << endl;
    else
        cout << "string two is not empty" << endl;

    // check to see if the two string are equal
    if (one == two)
        cout << "the two strings are the same"<< endl;
    else
        cout << "the two strings are not equal"<< endl;
        
    // test the assignment operator
    two = "geek";
    cout << two << endl;

    return 0;
}

/* MORAL OF THE STORY? If an operator claims to be one thing,
 * don't trust it. Because you never know, it might be
 * overloaded. Those two-faced overloaded operators, man... */

int main()
{
    int err = overld1();
    err = overld2();
    err = overld3();
    err = string_lib();
    return err;
}
