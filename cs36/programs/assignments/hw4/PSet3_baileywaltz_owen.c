/************************************************
 * Homework 4 - Program Set 2
 * Owen Bailey-Waltz
 * 1158982
 * This program is an income tax calculator for
 * fiscal year 1996, which loops indefinitely
 * until a sentinel is chosen.
 ************************************************/

#include <stdio.h>

int get_status();
double get_income();
double calc_fed_tax(double, int);

int main()
{
    int status;
    double income, fed_tax;
    
    do
    {
        status = get_status();
        if (status != 5)
        {
            income = get_income();
            fed_tax = calc_fed_tax(income, status);
            printf("The taxes owed are: $%.2lf\n\n", fed_tax);
        }
    } while (status != 5);

    printf("\nTax program exited...\n");
    return 0;
}

int get_status()
{
    int status;
    while (1)
    {
        printf("1) Single\n");
        printf("2) Married Filing Jointly\n");
        printf("3) Married Filing Separately\n");
        printf("4) Head of Household\n");
        printf("5) Exit\n\n");
    
        printf("Please enter filing status? ");
        scanf("%d", &status);

        if ((status > 5) || (status < 1))
            printf("\nYou must enter 1-4 or 5 to Exit\n\n");
        else
            return status;
    }
}

double get_income()
{
    double income;
    while (1)
    {
        printf("Enter your taxable income: ");
        scanf("%lf", &income);
        if (income <= 0)
            printf("Please enter a valid income.");
        else
            return income;
    }
}

double calc_fed_tax(double income, int status)
{
    double rate, floor, previous;
    switch (status)
    {
        case 1:
            if ((income > 0) && (income <= 24000))
                rate = 0.15, floor = 0, previous = 0;
            else
                if ((income > 24000) && (income <= 58150))
                    rate = 0.28, floor = 24000, previous = 3600.00;
                else
                    if ((income > 58150) && (income <= 121300))
                        rate = 0.31, floor = 58150, previous = 13162.00;
                    else
                        if ((income > 121300) && (income <= 263750))
                            rate = 0.36, floor = 121300, previous = 32738.50;
                        else
                            rate = 0.396, floor = 263750, previous = 84020.50;
            break;
        case 2:
            if ((income > 0) && (income <= 40100))
                rate = 0.15, floor = 0, previous = 0;
            else
                if ((income > 40100) && (income <= 96900))
                    rate = 0.28, floor = 40100, previous = 6015.00;
                else
                    if ((income > 96900) && (income <= 147700))
                        rate = 0.31, floor = 96900, previous = 21919.00;
                    else
                        if ((income > 147700) && (income <= 263750))
                            rate = 0.36, floor = 147700, previous = 37667.00;
                        else
                            rate = 0.396, floor = 263750, previous = 79445.00;
            break;
        case 3:
            if ((income > 0) && (income <= 20050))
                rate = 0.15, floor = 0, previous = 0;
            else
                if ((income > 20050) && (income <= 48450))
                    rate = 0.28, floor = 20050, previous = 3007.50;
                else
                    if ((income > 48450) && (income <= 73850))
                        rate = 0.31, floor = 48450, previous = 10959.50;
                    else
                        if ((income > 73850) && (income <= 131875))
                            rate = 0.36, floor = 73850, previous = 18833.50;
                        else
                            rate = 0.396, floor = 131875, previous = 39722.50;
            break;
        case 4:
            if ((income > 0) && (income <= 32150))
                rate = 0.15, floor = 0, previous = 0;
            else
                if ((income > 32150) && (income <= 83050))
                    rate = 0.28, floor = 32150, previous = 4822.50;
                else
                    if ((income > 83050) && (income <= 134500))
                        rate = 0.31, floor = 83050, previous = 19074.50;
                    else
                        if ((income > 134500) && (income <= 263750))
                            rate = 0.36, floor = 134500, previous = 35074.00;
                        else
                            rate = 0.396, floor = 263750, previous = 81554.00;
            break;
    }
    return (previous + (rate * (income - floor)));
}

/* OUTPUTS
1) Single
2) Married Filing Jointly
3) Married Filing Separately
4) Head of Household
5) Exit

Please enter filing status? 1
Enter your taxable income: 30000
The taxes owed are: $5280.00

1) Single
2) Married Filing Jointly
3) Married Filing Separately
4) Head of Household
5) Exit

Please enter filing status? 2
Enter your taxable income: 30000
The taxes owed are: $4500.00

1) Single
2) Married Filing Jointly
3) Married Filing Separately
4) Head of Household
5) Exit

Please enter filing status? 3
Enter your taxable income: 30000
The taxes owed are: $5793.50

1) Single
2) Married Filing Jointly
3) Married Filing Separately
4) Head of Household
5) Exit

Please enter filing status? 4
Enter your taxable income: 30000
The taxes owed are: $4500.00

1) Single
2) Married Filing Jointly
3) Married Filing Separately
4) Head of Household
5) Exit

Please enter filing status? 7

You must enter 1-4 or 5 to Exit

1) Single
2) Married Filing Jointly
3) Married Filing Separately
4) Head of Household
5) Exit

Please enter filing status? 5

Tax program exited...

-------------------------------------------------------------------

1) Single
2) Married Filing Jointly
3) Married Filing Separately
4) Head of Household
5) Exit

Please enter filing status? 9

You must enter 1-4 or 5 to Exit

1) Single
2) Married Filing Jointly
3) Married Filing Separately
4) Head of Household
5) Exit

Please enter filing status? 2
Enter your taxable income: 272031.91
The taxes owed are: $82724.64

1) Single
2) Married Filing Jointly
3) Married Filing Separately
4) Head of Household
5) Exit

Please enter filing status? 5

Tax program exited...

-------------------------------------------------------------------

1) Single
2) Married Filing Jointly
3) Married Filing Separately
4) Head of Household
5) Exit

Please enter filing status? 5

Tax program exited...

-------------------------------------------------------------------

1) Single
2) Married Filing Jointly
3) Married Filing Separately
4) Head of Household
5) Exit

Please enter filing status? 4
Enter your taxable income: 520039.00
The taxes owed are: $183044.44

1) Single
2) Married Filing Jointly
3) Married Filing Separately
4) Head of Household
5) Exit

Please enter filing status? 1
Enter your taxable income: 90000
The taxes owed are: $23035.50

1) Single
2) Married Filing Jointly
3) Married Filing Separately
4) Head of Household
5) Exit

Please enter filing status? 5

Tax program exited... 

-------------------------------------------------------------------

1) Single
2) Married Filing Jointly
3) Married Filing Separately
4) Head of Household
5) Exit

Please enter filing status? 4
Enter your taxable income: 129300
The taxes owed are: $33412.00

1) Single
2) Married Filing Jointly
3) Married Filing Separately
4) Head of Household
5) Exit

Please enter filing status? 31202

You must enter 1-4 or 5 to Exit

1) Single
2) Married Filing Jointly
3) Married Filing Separately
4) Head of Household
5) Exit

Please enter filing status? 3
Enter your taxable income: 92101
The taxes owed are: $25403.86

1) Single
2) Married Filing Jointly
3) Married Filing Separately
4) Head of Household
5) Exit

Please enter filing status? 1
Enter your taxable income: 650120 
The taxes owed are: $237023.02

1) Single
2) Married Filing Jointly
3) Married Filing Separately
4) Head of Household
5) Exit

Please enter filing status? 5

Tax program exited... */
