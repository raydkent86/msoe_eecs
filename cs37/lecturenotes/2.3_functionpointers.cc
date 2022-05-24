#include <iostream>
using namespace std;

/* FUNCTION POINTERS
 * Another addition to C++ is that of function pointers - this
 * feature opens up support for easy menu handling for functions
 * that have the same signature, and cuts down on the dicking-
 * around factor. The only condition is that the parameter
 * signature must be exactly the same for each of them, otherwise
 * it won't work. Let's do this. */

void one(int);
void two(int);
void three(int);
void four(int);

int fp1()
{
    void (*f)(int); // function pointer
    int choice;

    cout << "Enter a number from 1 to 4, 5 to quit: ";
    cin >> choice;

    while (choice >= 1 && choice < 5)
    {
        switch (choice)
        {
            case 1: f = one; break;
            case 2: f = two; break;
            case 3: f = three; break;
            default: f = four; break;
        }

        f(choice);
        cout << "Enter a number from 1 to 4, 5 to quit: ";
        cin >> choice;
    }

    cout << "Program is done." << endl;
    return 0;
}

/* But that switch statement's annoying - let's dump it. This
 * next version declares the function pointer as an array.
 * So much cleaner. */
int fp2()
{
    void (*f[4])(int) = {one, two, three, four};
    int choice;

    cout << "Enter a number from 1 to 4, 5 to quit: ";
    cin >> choice;

    while (choice >= 1 && choice < 5)
    {
        (*f[choice - 1])(choice);
        cout << "Enter a number from 1 to 4, 5 to quit: ";
        cin >> choice;
    }

    cout << "Program is done." << endl;
    return 0;
}

/* That's polymorphism and function pointers done, let's get
 * onto the new way that C++ handles files. */

int main()
{
    int err = fp1();
    err = fp2();
    return err;
}
