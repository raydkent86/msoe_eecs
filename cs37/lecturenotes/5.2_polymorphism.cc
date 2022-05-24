#include <iostream>
#include <iomanip>
#include <string>
using namespace std;

/* POLYMORPHISM
 * Inheritance is about to pay off in a big way, because, as it turns
 * out, you can have objects of different classes respond differently
 * to the SAME EXACT FUNCTION CALL. Wait, what? YES, I'M FOR REAL.
 * It's called POLYMORPHISM, and you can use it to automatically
 * diversify method calls via the implementation of virtual functions
 * (or abstract functions in some languages). When a request is made
 * for a base class pointer, the correct function in the correct
 * derived class is automatically called.
 * 
 * We explain this in a rather stupid way with animals: we've got a
 * couple of animals here which are part of the same overall family,
 * but are slightly diversified. The base animal can only say "hi,"
 * but each of its subclasses do something slightly different. If you
 * take a closer look at this, you'll see there's a joke embedded into
 * this program -- it's a bit of an old one, but it'll invoke some
 * Zoomer nostalgia, guaranteed. */

class Animal
{
    public:
        virtual void talk()
        {
            cout << "animal says hi" << endl;
        }
};

class Dog : public Animal
{
    public:
        void talk() // implementation of virtual function
        {
            cout << "dog goes woof" << endl;
        }
};

/* Virtual objects create a baseline for the subclass functions, and
 * differ from abstract objects in that they may have contents within
 * them and automatically differentiate between the subclasses when
 * called. */

class Cat : public Animal
{
    public:
        void talk()
        {
            cout << "cat goes meow" << endl;
        }
};

class Bird : public Animal
{
    public:
        void talk()
        {
            cout << "bird goes tweet" << endl;
        }
};

class Mouse : public Animal
{
    public:
        void talk()
        {
            cout << "mouse goes squeak" << endl;
        }
};

class Cow : public Animal
{
    public:
        void talk()
        {
            cout << "cow goes moo" << endl;
        }
};

class Frog : public Animal
{
    public:
        void talk()
        {
            cout << "frog goes croak" << endl;
        }
};

class Elephant : public Animal
{
    public:
        void talk()
        {
            cout << "elephant goes toot" << endl;
        }
};

class Duck : public Animal
{
    public:
        void talk()
        {
            cout << "ducks say quack" << endl;
        }
};

class Fish : public Animal
{
    public:
        void talk()
        {
            cout << "fish go blub" << endl;
        }
};

class Seal : public Animal
{
    public:
        void talk()
        {
            cout << "the seal goes ow, ow, ow" << endl;
        }
};


// WARNING: stupid
class Fox : public Animal
{
    public:
        void talk()
        {
            switch(i)
            {
                case 0:
                    cout << "RING DING DINGA DING DI DING DING DING" << endl;
                    cout << "RING DING DINGA DING DI DING DING DING" << endl;
                    cout << "RING DING DINGA DING DI DING DING DING" << endl;
                    break;
                case 1:
                    cout << "WA PA PA PA POW PA POW" << endl;
                    cout << "WA PA PA PA POW PA POW" << endl;
                    cout << "WA PA PA PA POW PA POW" << endl;
                    break;
                case 2:
                    cout << "HATTEE HATTEE HATTEE-HO" << endl;
                    cout << "HATTEE HATTEE HATTEE-HO" << endl;
                    cout << "HATTEE HATTEE HATTEE-HO" << endl;
                    break;
                default:
                    cout << "JOFF TCHOFF TCHOFFO TCHOFFO TCHOFF" << endl;
                    cout << "TCHOFF TCHOFF TCHOFFO TCHOFFO TCHOFF" << endl;
                    cout << "JOFF TCHOFF TCHOFFO TCHOFFO TCHOFF" << endl;
                    break;
            }
            i++;
        }
    private:
        int i = 0;
};

/* Yeah, ridiculous, I know. But it's good for the example. 
 * 
 * But how do you actually use this in any constructive way that
 * we haven't already covered?
 * 
 * Well, you do what we do below: create a superclass pointer,
 * assign it to an instance of some object, then go through it
 * to the method you want. We use the "new" command to allocate
 * memory when we assign to the pointer to something new. */

int fox()
{
    Animal *ptr;
    ptr = new Dog;
    cout << "for a dog ptr:   ";
    ptr->talk();
    ptr = new Cat;
    cout << "for a cat ptr:   ";
    ptr->talk();
    ptr = new Bird;
    cout << "for a bird ptr:   ";
    ptr->talk();
    ptr = new Mouse;
    cout << "for a mouse ptr:   and ";
    ptr->talk();
    ptr = new Cow;
    cout << "for a cow ptr:   ";
    ptr->talk();
    ptr = new Frog;
    cout << "for a frog ptr:   ";
    ptr->talk();
    ptr = new Elephant;
    cout << "for a elephant ptr:   and the ";
    ptr->talk();
    cout << endl;

    ptr = new Duck;
    ptr->talk();
    ptr = new Fish;
    ptr->talk();
    ptr = new Seal;
    cout << "and ";
    ptr->talk();
    cout << "but there's one sound" << endl;
    cout << "that no one knows" << endl << endl;

    cout << "WHAT DOES THE FOX SAY?!!?!" << endl << endl;
    ptr = new Fox;
    ptr -> talk();
    cout << "WHAT THE FOX SAY?" << endl << endl;
    ptr -> talk();
    cout << "WHAT THE FOX SAY?" << endl << endl;
    ptr -> talk();
    cout << "WHAT THE FOX SAY?" << endl << endl;
    ptr -> talk();
    cout << "WHAT DOES THE FOX SAY?!!?!" << endl << endl;
    
    ptr = new Animal;
    cout << "for a normal animal ptr:   ";
    ptr->talk();
    
    return 0;
}

/* This is what we call DYNAMIC BINDING. It's sometimes better
 * than overloading because it allows switching between different
 * subclass types on the fly, i.e. the pointer can be redefined
 * as a dog if the programmer is done with it being a cat while
 * still reusing the same memory and being constrained by the
 * larger superclass type.
 * 
 * But what happens if you leave off the "virtual" keyword?
 * ANSWER: the polymorphism WILL NOT WORK. Usually, it'll just
 * call the base class method, but some compilers will complain
 * and not compile at ALL.
 * 
 * Polymorphism can be done in a few ways, so here are the terms
 * we need to define when we're dealing with classes:
 *      abstract class = class where programmer does NOT instantiate any objects
 *      concrete class = class which can be instantiated
 * 
 * For a class to be abstract, you have to declare one or more of
 * its methods to be purely virtual -- that means that the
 * initializer has to be EQUAL TO ZERO. Purely virtual functions
 * do not serve any purpose other than being a framework of sorts
 * for the subclasses.
 * 
 * Just remember that, as a general rule, you still want to call
 * superclass constructors if your superclass has something in it,
 * because the goal is to reduce the duplication of code. You
 * only need to add the accessors and mutators for new members
 * unique to the latest version, because if you do everything and
 * overload, while it does not impact functionality, it wastes a
 * ton of space and time and is generally what we'd call A BAD
 * PLAN. Watch out for that on the final homework, and make sure
 * you get your FIRST derived class running before you write all
 * the rest. It's not uncommon to be stuck debugging the first
 * subclass for four hours and then take five minutes for each of
 * the subsequent ones because you were able to crack the secrets
 * and then turn the other subclasses into a copypasta.
 * 
 * Let's apply this to our employee example from earlier and do
 * something a bit practical. We're going to write a payroll
 * program that deals with multiple employee types: */

class Employee
{
    public:
        Employee(const char*, const char*); // default constructor
        ~Employee();
        virtual float calcPay() const = 0; // pure virtual function
        virtual void print() const;
    private:
        char *firstName;
        char *lastName; // not using directly, only part of the constructor
};

Employee::Employee(const char *first, const char *last)
{
    firstName = new char[strlen(first) + 1];
    strcpy(firstName, first);
    lastName = new char[strlen(last) + 1];
    strcpy(lastName, last);
}

void Employee::print() const
{
    cout << firstName << ' ' << lastName;
}

Employee::~Employee()
{
    delete[] firstName;
    delete[] lastName;
}

class Hourly : public Employee // HOURLY EMPLOYEE (derived from regular employee)
{
    public:
        Hourly(const char*, const char*, float = 0.0, float = 0.0);
        virtual float calcPay() const;
        virtual void print() const; // leaves open more room for future inheritance: you'll see why in a minute!
    private:
        float wage;
        float hours;
};

Hourly::Hourly(const char *first, const char *last, float initHours, float initWage)
    : Employee(first, last) // call superclass constructor with first and last from here
{
    hours = initHours;
    wage = initWage;
}

float Hourly::calcPay() const
{
    if (hours <= 40)
        return wage * hours;
    else
        return 40 * wage + (hours - 40) * wage * 1.5; // overtime pay = time and a half
}

void Hourly::print() const
{
    cout << "Hourly worker: ";
    Employee::print(); // call base class print
}

class Crook: public Employee // what happens when you hire a roadman
{
    public:
        Crook(const char*, const char*, float p, float b, int n, float v);
        virtual float calcPay() const;
        virtual void print() const;
    private:
        float pickPocket; // amount stolen by pickpocketing
        float bribe; // amount of money received per bribe
        int numBribes; // number of bribes
        float vendMachine; // amount of money stolen by breaking into vending machines
};

Crook::Crook(const char *first, const char *last, float p, float b, int n, float v)
    : Employee(first, last)
{
    pickPocket = p;
    bribe = b;
    numBribes = n;
    vendMachine = v;
}

float Crook::calcPay() const
{
    return pickPocket + (bribe * numBribes) + vendMachine;
}

void Crook::print() const // REMEMBER YOUR CONSTS: STYLE MATTERS
{
    cout << "Crook: ";
    Employee::print();
}

class Sales : public Employee
{
    public:
        Sales(const char*, const char*, float s, float u, int q);
        virtual float calcPay() const;
        virtual void print() const;
    private:
        float salary;
        float unitpay; // commission per unit
        int quantity;
};

Sales::Sales(const char *first, const char *last, float s, float u, int q)
    : Employee(first, last)
{
    salary = s;
    unitpay = u;
    quantity = q;
}

float Sales::calcPay() const
{
    return salary + unitpay * quantity;
}

void Sales::print() const
{
    cout << "Salesman: ";
    Employee::print();
}

int payroll()
{
    /* Below are going to be examples of both static and dynamic binding,
    so pay attention and look out for them. */

    cout << setprecision(2) << showpoint << fixed;
    Hourly h("Joe", "Smith", 10.5, 20.0); // static binding: type determined at compile time
    h.print();
    cout << " earned $" << h.calcPay() << endl;

    Employee *ptr = new Hourly("Joe", "Smith", 10.5, 20.0); // dynamic binding: type will reallocate within superclass type hierarchy as need
    ptr -> print();
    cout << " earned $" << ptr -> calcPay() << endl << endl;

    Sales s("Mary", "Jones", 2000.0, 10.0, 50); // $2000 salary, fifty units at ten dollars commission each
    s.print();
    cout << " earned $" << s.calcPay() << endl;
    ptr = new Sales("Mary", "Jones", 2000.0, 10.0, 50);
    cout << " earned $" << ptr -> calcPay() << endl << endl; // note that this line is the same as the last time the pointer was used, making this good for loops

    Crook c("Bill", "Johnston", 100.0, 500.0, 10, 250.0);
    c.print();
    cout << " earned $" << c.calcPay() << endl;
    ptr = new Crook("Bill", "Johnston", 100.0, 500.0, 10, 250.0);
    cout << " earned $" << ptr -> calcPay() << endl << endl;
}

/* The moral of that story, of course, is that crime DOES pay,
 * because the crook made more money than anybody else did.
 * 
 * On a more serious note, static and dynamic binding were used
 * for each type, which illustrates the advantage of using
 * dynamic binding. For one, it allows the pointer to be passed
 * through in the case of a general operation in another class
 * that calls the specific member methods so you don't have to
 * write an overload for each class type. That's obviously useful
 * because if you have five thousand subclasses, you don't want
 * to waste time with five thousand overloads of the same method
 * to do the same thing. 
 * 
 * Just remember to delete the pointer once you're done with it.
 * That'd be great.
 * 
 * On the final homework, Hochwald will take either one, so use
 * the one that makes the most sense. */

int main()
{
    int err = fox();
    return err;
}
