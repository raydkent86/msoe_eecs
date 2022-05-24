/************************************************
 * CS37 - Homework Problem 5
 * Owen Bailey-Waltz
 * 1158982
 * In the true spirit of the holidays, this
 * program calculates package shipping costs in
 * one of four categories of product: video
 * games, Genius phones, hamburgers, and computer
 * monitors.
 * 
 * Computer monitors: cost is number of monitors
 * ordered * $459.99 each, with an extra $19.99
 * for optional overnight delivery. Optional
 * shipping insurance is 9% of the product total.
 * Screen protectors cost an additional $9.99.
 * 
 * The application will ask for today's date,
 * ask the user to input the number of a given
 * package type, store that number in an instance
 * of the class for each package, ask whether the
 * user wants overnight shipping or insurance,
 * get the user's name and address, calculate the
 * total price to ship, calculate the discount
 * based on the table in the prompt, then
 * calculate the final price with discount, along
 * with the date of arrival given today's date.
 * 
 * FYI: Free shipping shall be defined as three
 * days from the current date.
 ************************************************/

#include <iostream>
#include <iomanip>
#include <string>
using namespace std;

class Package
{
    public:
        Package(char *, char *, char *, char *, char *, char *, int = 0, bool = false, bool = false);
        ~Package();
        void printShippingInfo(int, int, int) const;
        void arrivalDate(int, int, int) const; // find and set arrival date
        float getDiscount() const;
        bool isOrdering() const;
        virtual void load();
        virtual float calc() = 0;
    protected:
        int count;
        float price, overnight, insurance, cost, total;
        bool deliver, insure;
    private:
        char *first, *last, *address, *city;
        char state[3], zip[6];
        bool ordering;
};

// derivative classes will define their price/overnight fee/insurance pct. in their constructors
Package::Package(char *f, char *l, char *a, char *c, char *s, char *z, int n, bool d, bool i)
{
    first = new char[strlen(f) + 1];
    strcpy(first, f);
    last = new char[strlen(l) + 1];
    strcpy(last, l);
    address = new char[strlen(a) + 1];
    strcpy(address, a);
    city = new char[strlen(c) + 1];
    strcpy(city, c);
    strcpy(state, s);
    strcpy(zip, z);
    count = n;
    deliver = d;
    insure = i;
    ordering = true;
}

Package::~Package()
{
    delete[] first;
    delete[] last;
    delete[] address;
    delete[] city;
}

void Package::printShippingInfo(int m, int d, int y) const
{
    int i, j;
    cout << endl << "Customer: " << first << ' ' << last;
    j = 25 - (strlen(first) + strlen(last) + 1);
    for (i = 0 ; i < j ; i++)
        cout << ' ';
    arrivalDate(m, d, y);
    cout << "          " << address << endl;
    cout << "          " << city << ", " << state << ' ' << zip << endl << endl;
}

// to make the main a little cleaner, here's a comprehensive loader
// all prices are listed when the respective constructor is called
void Package::load()
{
    char x;
    cout << "How many? ";
    cin >> count;
    if (count <= 0)
        ordering = false;
    if (ordering)
    {
        cout << "Overnight delivery? (Y / N) ";
        do
        {
            cin >> x;
            if (x == 'Y' || x == 'y')
                deliver = true;
            else
                if (x == 'N' || x == 'n')
                    deliver = false;
                else
                    cout << "Invalid input, try again! ";
        } while (x != 'Y' && x != 'y' && x != 'N' && x != 'n');
    
        cout << "Insure package? (Y / N) ";
        do
        {
            cin >> x;
            if (x == 'Y' || x == 'y')
                insure = true;
            else
                if (x == 'N' || x == 'n')
                    insure = false;
                else
                    cout << "Invalid input, try again! ";
        } while (x != 'Y' && x != 'y' && x != 'N' && x != 'n');
    }
}

void Package::arrivalDate(int m, int d, int y) const
{
    int month, day, year;
    bool leap = (((y % 4 == 0) && ((y % 100) != 0)) || (y % 400 == 0)); // determine if the year given is a leap year
    if (deliver)
    {
        switch(m)
        {
            case 4: case 6: case 9: case 11:
                if ((d + 1) > 30)
                {
                    month = m + 1;
                    day = 1;
                }
                else
                {
                    month = m;
                    day = d + 1;
                }
                year = y;
                break;
            case 2:
                if ((!leap && ((d + 1) > 28)) || ((d + 1) > 29))
                {
                    month = m + 1;
                    day = 1;
                }
                else
                {
                    month = 2;
                    day = d + 1;
                }
                year = y;
                break;
            case 12:
                if ((d + 1) > 31)
                {
                    year = y + 1;
                    month = 1;
                    day = 1;
                }
                else
                {
                    month = 12;
                    day = d + 1;
                    year = y;
                }
                break;
            default:
                if ((d + 1) > 31)
                {
                    month = m + 1;
                    day = 1;
                }
                else
                {
                    month = m;
                    day = d + 1;
                }
                year = y;
                break;
        }
    }
    else
    {
        switch(m)
        {
            case 4: case 6: case 9: case 11:
                if ((d + 3) > 30)
                {
                    month = m + 1;
                    day = (d + 3) - 30;
                }
                else
                {
                    month = m;
                    day = d + 3;
                }
                year = y;
                break;
            case 2:
                if ((!leap && ((d + 3) > 28)) || ((d + 3) > 29))
                {
                    month = m + 1;
                    if (leap)
                        day = (d + 3) - 29;
                    else
                        day = (d + 3) - 28;
                }
                else
                {
                    month = 2;
                    day = d + 3;
                }
                year = y;
                break;
            case 12:
                if ((d + 3) > 31)
                {
                    year = y + 1;
                    month = 1;
                    day = (d + 3) - 31;
                }
                else
                {
                    month = 12;
                    day = d + 3;
                    year = y;
                }
                break;
            default:
                if ((d + 3) > 31)
                {
                    month = m + 1;
                    day = (d + 3) - 31;
                }
                else
                {
                    month = m;
                    day = d + 3;
                }
                year = y;
                break;
        }
    }
    // month differentiation for three-day
    cout << "Expected Arrival Date: " << month << '-';
    if (day < 10)
        cout << '0' << day;
    else
        cout << day;
    cout << '-' << year << endl;
}

// gets the current discount amount
float Package::getDiscount() const
{
    if (total <= (float)300)
        return 0.019;
    else
        if ((total > (float)300) && (total <= (float)600))
            return 0.026;
        else
            if ((total > (float)600) && (total <= (float)1000))
                return 0.029;
            else
                return 0.034;
}

bool Package::isOrdering() const { return ordering; }

class VideoGame : public Package
{
    public:
        VideoGame(char *, char *, char *, char *, char *, char *, int = 0, bool = false, bool = false);
        void load();
        float calc();
};

VideoGame::VideoGame(char *f, char *l, char *a, char *c, char *s, char *z, int n, bool d, bool i)
    : Package(f, l, a, c, s, z, n, d, i)
{
    price = 19.99;
    overnight = 4.99;
    insurance = 6;

    // only display product info if constructor args not used to reduce console spam
    if (n == 0)
    {
        cout << endl << "VIDEO GAMES" << endl;
        cout << setprecision(2) << showpoint << fixed;
        cout << "PRICE: $" << price << endl;
        cout << "OVERNIGHT SHIPPING FEE: $" << overnight << endl;
        cout << "INSURANCE: " << insurance << "% of total price" << endl << endl;
    }
}

void VideoGame::load()
{
    Package::load();
}

float VideoGame::calc()
{
    float x = ((float)count * price), d;
    cout << setprecision(2) << showpoint << fixed;
    cout << count << " video games ordered: ";
    cout << "shipping cost is $" << x << ", ";
    total = x;
    if (deliver)
    {
        cout << "overnight delivery is $" << overnight << ", ";
        total += overnight;
    }
    else
        cout << "no delivery option specified, ";
    
    if (insure)
    {
        cout << "optional package insurance is $" << ((insurance / 100) * x);
        total += ((insurance / 100) * x);
    }
    else
        cout << "no insurance specified";
    cout << endl;
    cout << "Total Cost is $" << total << endl;
    d = getDiscount() * total;
    cout << "Discount Percentage is " << setprecision(1) << (getDiscount() * 100);
    cout << "% for a discount of $" << setprecision(2) << d << endl;
    total -= d;
    cout << "Total Cost after discount is $" << total << endl << endl;
    return total;
}

class GeniusPhone : public Package
{
    public:
        GeniusPhone(char *, char *, char *, char *, char *, char *, int = 0, bool = false, bool = false);
        void load();
        float calc();
    private:
        float casePrice;
        int numCases;
};

GeniusPhone::GeniusPhone(char *f, char *l, char *a, char *c, char *s, char *z, int n, bool d, bool i)
    : Package(f, l, a, c, s, z, n, d, i)
{
    price = 799.99;
    casePrice = 24.99;
    overnight = 25.00;
    insurance = 11;

    // only display product info if constructor args not used to reduce console spam
    if (n == 0)
    {
        cout << endl << "GENIUS PHONES" << endl;
        cout << setprecision(2) << showpoint << fixed;
        cout << "PRICE: $" << price << endl;
        cout << "CASE PRICE: $" << casePrice << endl;
        cout << "OVERNIGHT SHIPPING FEE: $" << overnight << endl;
        cout << "INSURANCE: " << insurance << "% of total price" << endl << endl;
    }
}

void GeniusPhone::load()
{
    Package::load();
    if (isOrdering())
    {
        cout << "Any phone cases? ";
        cin >> numCases; // more cases than phones are possible, because why not?
    }
}

float GeniusPhone::calc()
{
    float x = ((float)count * price) + ((float)numCases * casePrice), d;
    cout << setprecision(2) << showpoint << fixed;
    cout << count << " Genius Phones ordered along with " << numCases << " cases: ";
    cout << "shipping cost is $" << x << ", ";
    total = x;
    if (deliver)
    {
        cout << "overnight delivery is $" << overnight << ", ";
        total += overnight;
    }
    else
        cout << "no delivery option specified, ";
    
    if (insure)
    {
        cout << "optional package insurance is $" << ((insurance / 100) * x);
        total += ((insurance / 100) * x);
    }
    else
        cout << "no insurance specified";
    cout << endl;
    cout << "Total Cost is $" << total << endl;
    d = getDiscount() * total;
    cout << "Discount Percentage is " << setprecision(1) << (getDiscount() * 100);
    cout << "% for a discount of $" << setprecision(2) << d << endl;
    total -= d;
    cout << "Total Cost after discount is $" << total << endl << endl;
    return total;
}

class Hamburger : public Package
{
    public:
        Hamburger(char *, char *, char *, char *, char *, char *, int = 0, bool = false, bool = false);
        void load();
        float calc();
    private:
        float condimentPrice, bunPrice;
        int numCondiments, numBuns;
};

Hamburger::Hamburger(char *f, char *l, char *a, char *c, char *s, char *z, int n, bool d, bool i)
    : Package(f, l, a, c, s, z, n, d, i)
{
    price = 7.99;
    condimentPrice = 1.79;
    bunPrice = 1.89;
    overnight = 9.00;
    insurance = 3;

    // only display product info if constructor args not used to reduce console spam
    if (n == 0)
    {
        cout << endl << "HAMBURGERS" << endl;
        cout << setprecision(2) << showpoint << fixed;
        cout << "PRICE: $" << price << endl;
        cout << "CONDIMENT PRICE PER BURGER: $" << condimentPrice << endl;
        cout << "PRICE PER BUN: $" << condimentPrice << endl;
        cout << "OVERNIGHT SHIPPING FEE: $" << overnight << endl;
        cout << "INSURANCE: " << insurance << "% of total price" << endl << endl;
    }
}

void Hamburger::load()
{
    Package::load();
    if (isOrdering())
    {
        cout << "Any condiments? ";
        cin >> numCondiments;
        cout << "Need buns? ";
        cin >> numBuns;
    }
}

float Hamburger::calc()
{
    float x = ((float)count * price) + ((float)numCondiments * condimentPrice) + ((float)numBuns * bunPrice), d;
    cout << setprecision(2) << showpoint << fixed;
    cout << count << " hamburgers ordered along with " << numCondiments << " condiments and " << numBuns << " buns: ";
    cout << "shipping cost is $" << x << ", ";
    total = x;
    if (deliver)
    {
        cout << "overnight delivery is $" << overnight << ", ";
        total += overnight;
    }
    else
        cout << "no delivery option specified, ";
    
    if (insure)
    {
        cout << "optional package insurance is $" << ((insurance / 100) * x);
        total += ((insurance / 100) * x);
    }
    else
        cout << "no insurance specified";
    cout << endl;
    cout << "Total Cost is $" << total << endl;
    d = getDiscount() * total;
    cout << "Discount Percentage is " << setprecision(1) << (getDiscount() * 100);
    cout << "% for a discount of $" << setprecision(2) << d << endl;
    total -= d;
    cout << "Total Cost after discount is $" << total << endl << endl;
    return total;
}

class Monitor : public Package
{
    public:
        Monitor(char *, char *, char *, char *, char *, char *, int = 0, bool = false, bool = false);
        void load();
        float calc();
    private:
        float protectorPrice;
        int numProtectors;
};

Monitor::Monitor(char *f, char *l, char *a, char *c, char *s, char *z, int n, bool d, bool i)
    : Package(f, l, a, c, s, z, n, d, i)
{
    price = 459.99;
    protectorPrice = 9.99;
    overnight = 19.99;
    insurance = 9;

    // only display product info if constructor args not used to reduce console spam
    if (n == 0)
    {
        cout << endl << "COMPUTER MONITORS" << endl;
        cout << setprecision(2) << showpoint << fixed;
        cout << "PRICE: $" << price << endl;
        cout << "SCREEN PROTECTOR PRICE: $" << protectorPrice << endl;
        cout << "OVERNIGHT SHIPPING FEE: $" << overnight << endl;
        cout << "INSURANCE: " << insurance << "% of total price" << endl << endl;
    }
}

void Monitor::load()
{
    Package::load();
    if (isOrdering())
    {
        cout << "Any screen protectors? ";
        cin >> numProtectors;
    }
}

float Monitor::calc()
{
    float x = ((float)count * price) + ((float)numProtectors * protectorPrice), d;
    cout << setprecision(2) << showpoint << fixed;
    cout << count << " monitors ordered along with " << numProtectors << " screen protectors: ";
    cout << "shipping cost is $" << x << ", ";
    total = x;
    if (deliver)
    {
        cout << "overnight delivery is $" << overnight << ", ";
        total += overnight;
    }
    else
        cout << "no delivery option specified, ";
    
    if (insure)
    {
        cout << "optional package insurance is $" << ((insurance / 100) * x);
        total += ((insurance / 100) * x);
    }
    else
        cout << "no insurance specified";
    cout << endl;
    cout << "Total Cost is $" << total << endl;
    d = getDiscount() * total;
    cout << "Discount Percentage is " << setprecision(1) << (getDiscount() * 100);
    cout << "% for a discount of $" << setprecision(2) << d << endl;
    total -= d;
    cout << "Total Cost after discount is $" << total << endl << endl;
    return total;
}

int main()
{
    int month, day, year;
    float vidya = 0.0, phones = 0.0, burgers = 0.0, monitors = 0.0;
    char stdin[256]; // standard input buffer
    char *first, *last, *address, *city;
    char state[3], zip[6];
    cout << "Enter today's date (MM DD YYYY): ";
    cin >> month >> day >> year;
    cout << "Enter customer name (first/last): ";
    cin >> stdin;
    first = new char[strlen(stdin) + 1];
    strcpy(first, stdin);
    cin >> stdin;
    last = new char[strlen(stdin) + 1];
    strcpy(last, stdin);
    cout << "STREET ADDRESS: ";
    cin.ignore(1);
    cin.getline(stdin, 256);
    address = new char[strlen(stdin) + 1];
    strcpy(address, stdin);
    
    cout << "CITY: ";
    cin.getline(stdin, 256);
    city = new char[strlen(stdin) + 1];
    strcpy(city, stdin);
    
    cout << "STATE (ex: CA, NE, MA, etc.): ";
    cin >> stdin;
    strncpy(state, stdin, 2);
    state[2] = '\0';

    cout << "ZIP CODE: ";
    cin >> stdin;
    strncpy(zip, stdin, 5);
    zip[5] = '\0';

    Package *ptr = new VideoGame(first, last, address, city, state, zip);
    ptr -> load();
    if (ptr -> isOrdering())
    {
        ptr -> printShippingInfo(month, day, year);
        vidya = ptr -> calc();
    }
    
    ptr = new GeniusPhone(first, last, address, city, state, zip);
    ptr -> load();
    if (ptr -> isOrdering())
    {
        ptr -> printShippingInfo(month, day, year);
        phones = ptr -> calc();
    }

    ptr = new Hamburger(first, last, address, city, state, zip);
    ptr -> load();
    if (ptr -> isOrdering())
    {
        ptr -> printShippingInfo(month, day, year);
        burgers = ptr -> calc();
    }

    ptr = new Monitor(first, last, address, city, state, zip);
    ptr -> load();
    if (ptr -> isOrdering())
    {
        ptr -> printShippingInfo(month, day, year);
        monitors = ptr -> calc();
    }

    cout << endl << "ORDER SUMMARY" << endl;
    cout << "Video games        $" << setprecision(2) << showpoint << fixed << vidya << endl;
    cout << "Genius Phones      $" << phones << endl;
    cout << "Hamburgers         $" << burgers << endl;
    cout << "Computer monitors  $" << monitors << endl << endl;
    cout << "TOTAL              $" << (vidya + phones + burgers + monitors) << endl << endl;

    /* BAD CODE
    VideoGame a;
    a.load();
    if (a.isOrdering())
    {
        a.printShippingInfo(month, day, year);
        vidya = a.calc();
    }

    GeniusPhone b(first, last, address, city, state, zip);
    b.load();
    if (b.isOrdering())
    {
        b.printShippingInfo(month, day, year);
        phones = b.calc();
    }

    Hamburger c(first, last, address, city, state, zip);
    c.load();
    if (b.isOrdering())
    {
        b.printShippingInfo(month, day, year);
        phones = b.calc();
    } */
    
    return 0;
}

/* OUTPUTS
Enter today's date (MM DD YYYY): 08 24 2018
Enter customer name (first/last): Joe Blow
STREET ADDRESS: 1234 Main Street
CITY: Irvine
STATE (ex: CA, NE, MA, etc.): CA
ZIP CODE: 92618

VIDEO GAMES
PRICE: $19.99
OVERNIGHT SHIPPING FEE: $4.99
INSURANCE: 6.00% of total price

How many? 4
Overnight delivery? (Y / N) y
Insure package? (Y / N) n

Customer: Joe Blow                 Expected Arrival Date: 8-25-2018
          1234 Main Street
          Irvine, CA 92618

4 video games ordered: shipping cost is $79.96, overnight delivery is $4.99, no insurance specified
Total Cost is $84.95
Discount Percentage is 1.9% for a discount of $1.61
Total Cost after discount is $83.34


GENIUS PHONES
PRICE: $799.99
CASE PRICE: $24.99
OVERNIGHT SHIPPING FEE: $25.00
INSURANCE: 11.00% of total price

How many? 0

HAMBURGERS
PRICE: $7.99
CONDIMENT PRICE PER BURGER: $1.79
PRICE PER BUN: $1.79
OVERNIGHT SHIPPING FEE: $9.00
INSURANCE: 3.00% of total price

How many? 3
Overnight delivery? (Y / N) n
Insure package? (Y / N) n
Any condiments? 3
Need buns? 3

Customer: Joe Blow                 Expected Arrival Date: 8-27-2018
          1234 Main Street
          Irvine, CA 92618

3 hamburgers ordered along with 3 condiments and 3 buns: shipping cost is $35.01, no delivery option specified, no insurance specified
Total Cost is $35.01
Discount Percentage is 1.9% for a discount of $0.67
Total Cost after discount is $34.34


COMPUTER MONITORS
PRICE: $459.99
SCREEN PROTECTOR PRICE: $9.99
OVERNIGHT SHIPPING FEE: $19.99
INSURANCE: 9.00% of total price

How many? 0

ORDER SUMMARY
Video games        $83.34
Genius Phones      $0.00
Hamburgers         $34.34
Computer monitors  $0.00

TOTAL              $117.68

-----------------------------------------------------------------------------------------------------------------------------------------------------------------
Enter today's date (MM DD YYYY): 04 21 1981
Enter customer name (first/last): Steal Myidentity
STREET ADDRESS: 83 Doncomedonmah Street
CITY: Nopeville
STATE (ex: CA, NE, MA, etc.): NM
ZIP CODE: 93143

VIDEO GAMES
PRICE: $19.99
OVERNIGHT SHIPPING FEE: $4.99
INSURANCE: 6.00% of total price

How many? 5
Overnight delivery? (Y / N) y
Insure package? (Y / N) n

Customer: Steal Myidentity         Expected Arrival Date: 4-22-1981
          83 Doncomedonmah Street
          Nopeville, NM 93143

5 video games ordered: shipping cost is $99.95, overnight delivery is $4.99, no insurance specified
Total Cost is $104.94
Discount Percentage is 1.9% for a discount of $1.99
Total Cost after discount is $102.95


GENIUS PHONES
PRICE: $799.99
CASE PRICE: $24.99
OVERNIGHT SHIPPING FEE: $25.00
INSURANCE: 11.00% of total price

How many? 3
Overnight delivery? (Y / N) y
Insure package? (Y / N) n
Any phone cases? 2

Customer: Steal Myidentity         Expected Arrival Date: 4-22-1981
          83 Doncomedonmah Street
          Nopeville, NM 93143

3 Genius Phones ordered along with 2 cases: shipping cost is $2449.95, overnight delivery is $25.00, no insurance specified
Total Cost is $2474.95
Discount Percentage is 3.4% for a discount of $84.15
Total Cost after discount is $2390.80


HAMBURGERS
PRICE: $7.99
CONDIMENT PRICE PER BURGER: $1.79
PRICE PER BUN: $1.79
OVERNIGHT SHIPPING FEE: $9.00
INSURANCE: 3.00% of total price

How many? 56
Overnight delivery? (Y / N) n
Insure package? (Y / N) y
Any condiments? 33
Need buns? 56 

Customer: Steal Myidentity         Expected Arrival Date: 4-24-1981
          83 Doncomedonmah Street
          Nopeville, NM 93143

56 hamburgers ordered along with 33 condiments and 56 buns: shipping cost is $612.35, no delivery option specified, optional package insurance is $18.37
Total Cost is $630.72
Discount Percentage is 2.9% for a discount of $18.29
Total Cost after discount is $612.43


COMPUTER MONITORS
PRICE: $459.99
SCREEN PROTECTOR PRICE: $9.99
OVERNIGHT SHIPPING FEE: $19.99
INSURANCE: 9.00% of total price

How many? 2
Overnight delivery? (Y / N) y
Insure package? (Y / N) y
Any screen protectors? 2

Customer: Steal Myidentity         Expected Arrival Date: 4-22-1981
          83 Doncomedonmah Street
          Nopeville, NM 93143

2 monitors ordered along with 2 screen protectors: shipping cost is $939.96, overnight delivery is $19.99, optional package insurance is $84.60
Total Cost is $1044.55
Discount Percentage is 3.4% for a discount of $35.51
Total Cost after discount is $1009.03


ORDER SUMMARY
Video games        $102.95
Genius Phones      $2390.80
Hamburgers         $612.43
Computer monitors  $1009.03

TOTAL              $4115.21

----------------------------------------------------------------------------------------------------------------------------------------------------------------- 
Enter today's date (MM DD YYYY): 08 30 2011
Enter customer name (first/last): Devin Levin
STREET ADDRESS: 38 McDuffie Lane
CITY: Bellwood
STATE (ex: CA, NE, MA, etc.): CA
ZIP CODE: 94012

VIDEO GAMES
PRICE: $19.99
OVERNIGHT SHIPPING FEE: $4.99
INSURANCE: 6.00% of total price

How many? 6
Overnight delivery? (Y / N) n
Insure package? (Y / N) n

Customer: Devin Levin              Expected Arrival Date: 9-02-2011
          38 McDuffie Lane
          Bellwood, CA 94012

6 video games ordered: shipping cost is $119.94, no delivery option specified, no insurance specified
Total Cost is $119.94
Discount Percentage is 1.9% for a discount of $2.28
Total Cost after discount is $117.66


GENIUS PHONES
PRICE: $799.99
CASE PRICE: $24.99
OVERNIGHT SHIPPING FEE: $25.00
INSURANCE: 11.00% of total price

How many? 2
Overnight delivery? (Y / N) y
Insure package? (Y / N) y
Any phone cases? 2

Customer: Devin Levin              Expected Arrival Date: 8-31-2011
          38 McDuffie Lane
          Bellwood, CA 94012

2 Genius Phones ordered along with 2 cases: shipping cost is $1649.96, overnight delivery is $25.00, optional package insurance is $181.50
Total Cost is $1856.46
Discount Percentage is 3.4% for a discount of $63.12
Total Cost after discount is $1793.34


HAMBURGERS
PRICE: $7.99
CONDIMENT PRICE PER BURGER: $1.79
PRICE PER BUN: $1.79
OVERNIGHT SHIPPING FEE: $9.00
INSURANCE: 3.00% of total price

How many? 15
Overnight delivery? (Y / N) n
Insure package? (Y / N) n
Any condiments? 14
Need buns? 15

Customer: Devin Levin              Expected Arrival Date: 9-02-2011
          38 McDuffie Lane
          Bellwood, CA 94012

15 hamburgers ordered along with 14 condiments and 15 buns: shipping cost is $173.26, no delivery option specified, no insurance specified
Total Cost is $173.26
Discount Percentage is 1.9% for a discount of $3.29
Total Cost after discount is $169.97


COMPUTER MONITORS
PRICE: $459.99
SCREEN PROTECTOR PRICE: $9.99
OVERNIGHT SHIPPING FEE: $19.99
INSURANCE: 9.00% of total price

How many? 5
Overnight delivery? (Y / N) y
Insure package? (Y / N) n
Any screen protectors? 3

Customer: Devin Levin              Expected Arrival Date: 8-31-2011
          38 McDuffie Lane
          Bellwood, CA 94012

5 monitors ordered along with 3 screen protectors: shipping cost is $2329.92, overnight delivery is $19.99, no insurance specified
Total Cost is $2349.91
Discount Percentage is 3.4% for a discount of $79.90
Total Cost after discount is $2270.01


ORDER SUMMARY
Video games        $117.66
Genius Phones      $1793.34
Hamburgers         $169.97
Computer monitors  $2270.01

TOTAL              $4350.98

-----------------------------------------------------------------------------------------------------------------------------------------------------------------
Enter today's date (MM DD YYYY): 05 01 2016
Enter customer name (first/last): Nicole Roseman
STREET ADDRESS: 2 Blackcloud
CITY: Irvine
STATE (ex: CA, NE, MA, etc.): CA
ZIP CODE: 92604

VIDEO GAMES
PRICE: $19.99
OVERNIGHT SHIPPING FEE: $4.99
INSURANCE: 6.00% of total price

How many? 0

GENIUS PHONES
PRICE: $799.99
CASE PRICE: $24.99
OVERNIGHT SHIPPING FEE: $25.00
INSURANCE: 11.00% of total price

How many? 1
Overnight delivery? (Y / N) y
Insure package? (Y / N) y
Any phone cases? 0

Customer: Nicole Roseman           Expected Arrival Date: 5-02-2016
          2 Blackcloud
          Irvine, CA 92604

1 Genius Phones ordered along with 0 cases: shipping cost is $799.99, overnight delivery is $25.00, optional package insurance is $88.00
Total Cost is $912.99
Discount Percentage is 2.9% for a discount of $26.48
Total Cost after discount is $886.51


HAMBURGERS
PRICE: $7.99
CONDIMENT PRICE PER BURGER: $1.79
PRICE PER BUN: $1.79
OVERNIGHT SHIPPING FEE: $9.00
INSURANCE: 3.00% of total price

How many? 0

COMPUTER MONITORS
PRICE: $459.99
SCREEN PROTECTOR PRICE: $9.99
OVERNIGHT SHIPPING FEE: $19.99
INSURANCE: 9.00% of total price

How many? 4
Overnight delivery? (Y / N) z
Invalid input, try again! y
Insure package? (Y / N) N
Any screen protectors? 2

Customer: Nicole Roseman           Expected Arrival Date: 5-02-2016
          2 Blackcloud
          Irvine, CA 92604

4 monitors ordered along with 2 screen protectors: shipping cost is $1859.94, overnight delivery is $19.99, no insurance specified
Total Cost is $1879.93
Discount Percentage is 3.4% for a discount of $63.92
Total Cost after discount is $1816.01


ORDER SUMMARY
Video games        $0.00
Genius Phones      $886.51
Hamburgers         $0.00
Computer monitors  $1816.01

TOTAL              $2702.52

-----------------------------------------------------------------------------------------------------------------------------------------------------------------
Enter today's date (MM DD YYYY): 12 13 2020
Enter customer name (first/last): Ray Kent
STREET ADDRESS: 1 Kent Circle       
CITY: West Bend
STATE (ex: CA, NE, MA, etc.): WI
ZIP CODE: 53095

VIDEO GAMES
PRICE: $19.99
OVERNIGHT SHIPPING FEE: $4.99
INSURANCE: 6.00% of total price

How many? 0

GENIUS PHONES
PRICE: $799.99
CASE PRICE: $24.99
OVERNIGHT SHIPPING FEE: $25.00
INSURANCE: 11.00% of total price

How many? 80
Overnight delivery? (Y / N) y
Insure package? (Y / N) y
Any phone cases? 80

Customer: Ray Kent                 Expected Arrival Date: 12-14-2020
          1 Kent Circle
          West Bend, WI 53095

80 Genius Phones ordered along with 80 cases: shipping cost is $65998.40, overnight delivery is $25.00, optional package insurance is $7259.82
Total Cost is $73283.22
Discount Percentage is 3.4% for a discount of $2491.63
Total Cost after discount is $70791.59


HAMBURGERS
PRICE: $7.99
CONDIMENT PRICE PER BURGER: $1.79
PRICE PER BUN: $1.79
OVERNIGHT SHIPPING FEE: $9.00
INSURANCE: 3.00% of total price

How many? 150
Overnight delivery? (Y / N) y
Insure package? (Y / N) y
Any condiments? 150
Need buns? 150

Customer: Ray Kent                 Expected Arrival Date: 12-14-2020
          1 Kent Circle
          West Bend, WI 53095

150 hamburgers ordered along with 150 condiments and 150 buns: shipping cost is $1750.50, overnight delivery is $9.00, optional package insurance is $52.51
Total Cost is $1812.02
Discount Percentage is 3.4% for a discount of $61.61
Total Cost after discount is $1750.41


COMPUTER MONITORS
PRICE: $459.99
SCREEN PROTECTOR PRICE: $9.99
OVERNIGHT SHIPPING FEE: $19.99
INSURANCE: 9.00% of total price

How many? 120
Overnight delivery? (Y / N) y
Insure package? (Y / N) y
Any screen protectors? 100

Customer: Ray Kent                 Expected Arrival Date: 12-14-2020
          1 Kent Circle
          West Bend, WI 53095

120 monitors ordered along with 100 screen protectors: shipping cost is $56197.80, overnight delivery is $19.99, optional package insurance is $5057.80
Total Cost is $61275.59
Discount Percentage is 3.4% for a discount of $2083.37
Total Cost after discount is $59192.21


ORDER SUMMARY
Video games        $0.00
Genius Phones      $70791.59
Hamburgers         $1750.41
Computer monitors  $59192.21

TOTAL              $131734.20

*/
