/************************************************
 * Homework 4 - Program Set 1
 * Owen Bailey-Waltz
 * 1158982
 * This program is the salary raise calculator
 * from the last homework, but it now uses
 * functions to compartmentalize functionality.
 * It uses a semi- deterministic loop to decide how
 * many times it will run with error handling built
 * in, and now includes names as well.
 ************************************************/

#include <stdio.h>

void dashbar(int);
int load();
double get_salary();
double get_rate(double);
void calc(double, double, double*, double*, double*, double*, double*);
void print_line(char*, double, double, double, double);

int main()
{
    // declarations
    double salary, rate, raise, nsalary;
    double totalraise = 0, totalsalary = 0, totalnewsalary = 0;
    char name[32] = "TEST";
    int i = 1, n;

    n = load();

    // print headings
    printf("\n"); // newline for readability
    printf("%-46s%-16s%-11s%-13s%10s\n", "Name", "Salary", "Rate %", "Raise", "New Salary");
    dashbar(96);
    printf("\n\n");

    for (i = 1 ; i <= n ; i++)
    {
        gets(name);
        while (getchar() != '\n')
        {}

        salary = 0;
        while (salary <= 0)
        {
            salary = get_salary();
            if (salary <= 0)
                printf("PSet2_baileywaltz_o.exe: invalid input, try again!\n");
        }
        rate = get_rate(salary);
        
        calc(salary, rate, &raise, &nsalary, &totalraise, &totalsalary, &totalnewsalary);
        print_line(name, salary, rate, raise, nsalary);
        printf("\n");
    }
    dashbar(96);
    printf("\n");
    printf("%-46s%-27.2lf%-13.2lf%10.2lf\n\n", "Total", totalsalary, totalraise, totalnewsalary);

    return 0;
}

void dashbar(int length)
{
    for (int i = 1; i <= length; i++) // dashbar generator
        printf("-");
}

int load()
{
    int count;
    printf("\nHow many employees? ");
    scanf("%d", &count);
    return count;
}

void get_name(char* name)
{
    printf("Employee Name : ");
}

double get_salary()
{
    double salary;
    printf("Salary : ");
    scanf("%lf", &salary);
    return salary;
}

double get_rate(double salary)
{
    if (salary > 0 && salary < 30000)
            return 7.00;
        else
            if (salary >= 30000 && salary <= 40000)
                return 5.50;
            else
                return 4.00;
}

void calc(double salary, double rate, double* raise, double* nsalary, double* totalraise, double* totalsalary, double* totalnewsalary)
{
    *raise = salary * (rate / (float)100);
    *nsalary = salary + *raise;
    *totalsalary += salary;
    *totalraise += *raise;
    *totalnewsalary += *nsalary;
}

void print_line(char* name, double salary, double rate, double raise, double nsalary)
{
    printf("%-46s%-16.2lf%-11.2lf%-13.2lf%10.2lf", name, salary, rate, raise, nsalary);
}

/* OUTPUTS
How many employees? 6

Name                                          Salary          Rate %     Raise        New Salary
------------------------------------------------------------------------------------------------

warning: this program uses gets(), which is unsafe.
John Doe
Salary : 25000
                                              25000.00        7.00       1750.00        26750.00
Bill Knott
Salary : 30000
                                              30000.00        5.50       1650.00        31650.00
Bett Mann
Salary : 35000
                                              35000.00        5.50       1925.00        36925.00
King Kong
Salary : 40000
                                              40000.00        5.50       2200.00        42200.00
Mister Ed
Salary : 40001
                                              40001.00        4.00       1600.04        41601.04
GomerPyle
Salary : 45000
                                              45000.00        4.00       1800.00        46800.00
------------------------------------------------------------------------------------------------
Total                                         215001.00                  10925.04      225926.04


How many employees? 2

Name                                          Salary          Rate %     Raise        New Salary
------------------------------------------------------------------------------------------------

warning: this program uses gets(), which is unsafe.
K.T. Roberts
Salary : 230000
                                              230000.00       4.00       9200.00       239200.00
M.A. Roberts
Salary : 260000
                                              260000.00       4.00       10400.00      270400.00
------------------------------------------------------------------------------------------------
Total                                         490000.00                  19600.00      509600.00


How many employees? 5

Name                                          Salary          Rate %     Raise        New Salary
------------------------------------------------------------------------------------------------

warning: this program uses gets(), which is unsafe.
Perry Thomas
Salary : 180000
                                              180000.00       4.00       7200.00       187200.00
Drew Eckert
Salary : 210000
                                              210000.00       4.00       8400.00       218400.00
Theodore Perry
Salary : 93000
                                              93000.00        4.00       3720.00        96720.00
Ashley Kirkwood
Salary : 123900
                                              123900.00       4.00       4956.00       128856.00
Ray D. Kent
Salary : 459012
                                              459012.00       4.00       18360.48      477372.48
------------------------------------------------------------------------------------------------
Total                                         1065912.00                 42636.48     1108548.48


How many employees? 3

Name                                          Salary          Rate %     Raise        New Salary
------------------------------------------------------------------------------------------------

warning: this program uses gets(), which is unsafe.
Roger Taylor
Salary : 921023
                                              921023.00       4.00       36840.92      957863.92
Freddie Mercury
Salary : 1002000
                                              1002000.00      4.00       40080.00     1042080.00
Brian May
Salary : 980001
                                              980001.00       4.00       39200.04     1019201.04
------------------------------------------------------------------------------------------------
Total                                         2903024.00                 116120.96    3019144.96


How many employees? 4

Name                                          Salary          Rate %     Raise        New Salary
------------------------------------------------------------------------------------------------

warning: this program uses gets(), which is unsafe.
John Doe  
Salary : -29
PSet2_baileywaltz_o.exe: invalid input, try again!
Salary : 21200
                                              21200.00        7.00       1484.00        22684.00
W** Ch*n L*o    
Salary : 9310
                                              9310.00         7.00       651.70          9961.70
Owen Bailey-Waltz
Salary : 102091
                                              102091.00       4.00       4083.64       106174.64
Dr. T
Salary : 129000
                                              129000.00       4.00       5160.00       134160.00
------------------------------------------------------------------------------------------------
Total                                         261601.00                  11379.34      272980.34 */
