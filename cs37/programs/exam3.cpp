/************************************************
 * CS37 - Exam 3
 * Owen Bailey-Waltz
 * 1158982
 * This program uses C++'s class functionality
 * to process pay raise information for a
 * fictional employee named Corby Bryan,
 * containing five private data members and four
 * methods to do the processing, along with a
 * destructor as a proof of concept.
 ************************************************/

#include <iostream>
#include <iomanip>
#include <string>
using namespace std;

class PayRaise
{
    public:
        PayRaise(char* = " ", float = 0.0, float = 0.0);
        ~PayRaise();
        void printData();
        void calcBonus(float);
    private:
        char name[12]; // 11 + 1 for "Corby Bryan"
        float pay, raise_pct, raise_amount, newpay;
};

PayRaise::PayRaise(char* nme, float sal, float pct)
{
    strcpy(name, nme);
    pay = sal;
    raise_pct = pct;
    raise_amount = (pay * (raise_pct / 100));
    newpay = pay + raise_amount;
}

PayRaise::~PayRaise()
{
    cout << "the name of " << name << " is destroyed" << endl << endl;
}

void PayRaise::printData()
{
    cout << setprecision(2) << showpoint << fixed;
    cout << "the person's name is " << name << endl;
    cout << "the old pay amount is $" << pay << endl;
    cout << "the raise percentage is " << raise_pct << endl;
    cout << "the raise amount is $" << raise_amount << endl;
    cout << "the new pay is $" << newpay << endl << endl;
}

void PayRaise::calcBonus(float bonus)
{
    pay += bonus;
    raise_amount = (pay * (raise_pct / 100));
    newpay = pay + raise_amount;
}

int main()
{
    PayRaise p("Corby Bryan", 50000, 10);
    float b;
    p.printData();
    cout << "how much is the bonus? ";
    cin >> b;
    p.calcBonus(b);
    cout << endl << "after the bonus" << endl << endl;
    p.printData();
    
    return 0;
}

/* OUTPUT
the person's name is Corby Bryan
the old pay amount is $50000.00
the raise percentage is 10.00
the raise amount is $5000.00
the new pay is $55000.00

how much is the bonus? 10000

after the bonus

the person's name is Corby Bryan
the old pay amount is $60000.00
the raise percentage is 10.00
the raise amount is $6000.00
the new pay is $66000.00

the name of Corby Bryan is destroyed

*/
