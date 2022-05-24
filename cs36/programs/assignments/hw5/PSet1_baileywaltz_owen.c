/************************************************
 * Homework 5
 * Owen Bailey-Waltz
 * 1158982
 * This program is the final version of the
 * salary raise calculator, which will now use an
 * array of structures to store the data, use the
 * functions from before to do calculations, and
 * then also incorporate read/write functions
 * that will write and read back the data from
 * first a text file, then a binary file.
 * 
 * Printing is also now only done at the end,
 * rather than during inputs.
 ************************************************/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define NAMESIZE 32
#define DEBUG 0

typedef struct emp
{
    char name[NAMESIZE];
    double salary, rate, raise, nsalary;
} Employee;

void dashbar(int);
int load();
double get_salary();
double get_rate(double);
void calc(double, double, double*, double*, double*, double*, double*);
void print_line(char*, double, double, double, double);
int save_txt(Employee[], int); // save file and check success
int get_txt(Employee[], int); // get text and check success
int save_bin(Employee[], int); // save binary and check success
int get_bin(Employee[], int); // get binary and check success

int main()
{
    // declarations
    double totalraise = 0, totalsalary = 0, totalnewsalary = 0;
    int i, j, n = 7, err; // number of employees hardcoded at seven

    Employee e[n];

    // print headings
    printf("\n"); // newline for readability

    dashbar(96);
    printf("\n");

    for (i = 0 ; i < n ; i++)
    {
        // get the name in the least buggy way possible
        do 
        {
            j = 0;
            printf("Employee Name: ");
            char c;
            do
            {
                c = getchar();
                e[i].name[j] = c;
                j++;
            } while (c != '\n' && j < NAMESIZE);

            if (j <= NAMESIZE)
            {
                e[i].name[j - 1] = '\0';
                
                // dump zee excess
                for (; j < NAMESIZE ; j++)
                    e[i].name[j] = '\0';
            }
            else
                printf("PSet1_baileywaltz_owen: too many characters, try again!");

        } while (e[i].name[j - 1] != '\0');

        e[i].salary = 0;
        while (e[i].salary <= 0)
        {
            e[i].salary = get_salary();
            if (e[i].salary <= 0)
                printf("PSet1_baileywaltz_owen: invalid input, try again!\n");
        }
        e[i].rate = get_rate(e[i].salary);
        
        calc(e[i].salary, e[i].rate, &(e[i].raise), &(e[i].nsalary), &totalraise, &totalsalary, &totalnewsalary);
        getchar();
    }
    dashbar(96);
    printf("\n");

    printf("\nCalculation of Salary Raises\n\n");
    printf("%-46s%-16s%-11s%-13s%10s\n", "Name", "Salary", "Rate %", "Raise", "New Salary");
    dashbar(96);
    printf("\n");
    
    for (i = 0 ; i < n ; i++)
        print_line(e[i].name, e[i].salary, e[i].rate, e[i].raise, e[i].nsalary);
    
    dashbar(96);
    printf("\n");
    printf("%-46s%-27.2lf%-13.2lf%10.2lf\n\n", "Total", totalsalary, totalraise, totalnewsalary);

    printf("Saving to text file...\n\n");
    err = save_txt(e, n);
    if (err != 0)
        printf("PSet1_baileywaltz_owen: Error %d\n\n", err);
    
    printf("Reading back...\n\n");
    err = get_txt(e, n);
    if (err != 0)
        printf("PSet1_baileywaltz_owen: Error %d\n\n", err);
    
    // recalc totals
    totalsalary = 0;
    totalraise = 0;
    totalnewsalary = 0;
    for (i = 0 ; i < n ; i++)
    {
        totalsalary += e[i].salary;
        totalraise += e[i].raise;
        totalnewsalary += e[i].nsalary;
    }
    
    printf("\nCalculation of Salary Raises\n\n");
    printf("%-46s%-16s%-11s%-13s%10s\n", "Name", "Salary", "Rate %", "Raise", "New Salary");
    dashbar(96);
    printf("\n");
    
    for (i = 0 ; i < n ; i++)
        print_line(e[i].name, e[i].salary, e[i].rate, e[i].raise, e[i].nsalary);
    
    dashbar(96);
    printf("\n");
    printf("%-46s%-27.2lf%-13.2lf%10.2lf\n\n", "Total", totalsalary, totalraise, totalnewsalary);
    
    printf("Saving to binary file...\n\n");
    err = save_bin(e, n);
    if (err != 0)
        printf("PSet1_baileywaltz_owen: Error %d\n\n", err);
    
    printf("Reading back...\n\n");
    err = get_bin(e, n);
    if (err != 0)
        printf("PSet1_baileywaltz_owen: Error %d\n\n", err);

    // recalc totals... ...AGAIN
    totalsalary = 0;
    totalraise = 0;
    totalnewsalary = 0;
    for (i = 0 ; i < n ; i++)
    {
        totalsalary += e[i].salary;
        totalraise += e[i].raise;
        totalnewsalary += e[i].nsalary;
    }
    
    printf("\nCalculation of Salary Raises\n\n");
    printf("%-46s%-16s%-11s%-13s%10s\n", "Name", "Salary", "Rate %", "Raise", "New Salary");
    dashbar(96);
    printf("\n");
    
    for (i = 0 ; i < n ; i++)
        print_line(e[i].name, e[i].salary, e[i].rate, e[i].raise, e[i].nsalary);
    
    dashbar(96);
    printf("\n");
    printf("%-46s%-27.2lf%-13.2lf%10.2lf\n\n", "Total", totalsalary, totalraise, totalnewsalary);

    printf("Thank you for using this program!\n");

    return 0;
}

void dashbar(int length)
{
    for (int i = 1; i <= length; i++) // dashbar generator
        printf("-");
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
    printf("%-46s%-16.2lf%-11.2lf%-13.2lf%10.2lf\n", name, salary, rate, raise, nsalary);
}

int save_txt(Employee e[], int n)
{
    int i;
    FILE *f = fopen("/Users/owen.baileywaltz/Library/Mobile Documents/com~apple~CloudDocs/deadc0de/ivc/cs36/programs/assignments/hw5/raises.txt", "w");
    for (i = 0 ; i < n ; i++)
    {
        fprintf(f, "%s\n", e[i].name);
        fprintf(f, "%.2lf %.2lf %.2lf %.2lf\n", e[i].salary, e[i].rate, e[i].raise, e[i].nsalary);
    }

    int errno = fclose(f);
    if (errno != 0)
    {
        printf("failed to close file stream: stream already closed or broken pipe\n");
        return errno;
    }

    return 0;
}

int get_txt(Employee e[], int n)
{
    int i, j;
    FILE *f = fopen("/Users/owen.baileywaltz/Library/Mobile Documents/com~apple~CloudDocs/deadc0de/ivc/cs36/programs/assignments/hw5/raises.txt", "r");
    for (i = 0 ; i < n ; i++)
    {
        fgets(e[i].name, sizeof(e[i].name), f);
        fscanf(f, "%lf %lf %lf %lf\n", &(e[i].salary), &(e[i].rate), &(e[i].raise), &(e[i].nsalary));
        for (j = 0 ; j < sizeof(e[i].name) ; j++)
            if (e[i].name[j] == '\n')
                e[i].name[j] = '\0';
    }
    int errno = fclose(f);
    if (errno != 0)
    {
        printf("failed to close file stream: stream already closed or broken pipe\n");
        return errno;
    }

    return 0;
}

int save_bin(Employee e[], int n)
{
    int i, j;
    if (DEBUG)
        printf("Opening stream...\n");
    FILE *f = fopen("/Users/owen.baileywaltz/Library/Mobile Documents/com~apple~CloudDocs/deadc0de/ivc/cs36/programs/assignments/hw5/raises.bin", "wb");
    fwrite(&e[0], sizeof(e[0]), n, f);
    if (DEBUG)
        printf("Wrote %lu bytes!\n", sizeof(e[0]));

    int errno = fclose(f);
    if (errno != 0)
    {
        printf("failed to close file stream: stream already closed or broken pipe\n");
        return errno;
    }

    return 0;
}

int get_bin(Employee e[], int n)
{
    int i, j;
    if (DEBUG)
        printf("Opening stream...\n");
    FILE *f = fopen("/Users/owen.baileywaltz/Library/Mobile Documents/com~apple~CloudDocs/deadc0de/ivc/cs36/programs/assignments/hw5/raises.bin", "rb");
    fread(&e[0], sizeof(e[0]), n, f);
    if (DEBUG)
        printf("Read %lu bytes!\n", sizeof(e[0]));

    int errno = fclose(f);
    if (errno != 0)
    {
        printf("failed to close file stream: stream already closed or broken pipe\n");
        return errno;
    }

    return 0;
}

/* OUTPUT (note: question specified seven employees, hardcoded at seven, added additional one
           to fill gap)

------------------------------------------------------------------------------------------------
Employee Name: Susan
Salary : 25000
Employee Name: Jim
Salary : 30000
Employee Name: Gloria
Salary : 35000
Employee Name: Ros
Salary : 40000
Employee Name: Ben
Salary : 40001
Employee Name: Tim
Salary : 45000
Employee Name: Ray
Salary : 80000
------------------------------------------------------------------------------------------------

Calculation of Salary Raises

Name                                          Salary          Rate %     Raise        New Salary
------------------------------------------------------------------------------------------------
Susan                                         25000.00        7.00       1750.00        26750.00
Jim                                           30000.00        5.50       1650.00        31650.00
Gloria                                        35000.00        5.50       1925.00        36925.00
Ros                                           40000.00        5.50       2200.00        42200.00
Ben                                           40001.00        4.00       1600.04        41601.04
Tim                                           45000.00        4.00       1800.00        46800.00
Ray                                           80000.00        4.00       3200.00        83200.00
------------------------------------------------------------------------------------------------
Total                                         295001.00                  14125.04      309126.04

Saving to text file...

Reading back...


Calculation of Salary Raises

Name                                          Salary          Rate %     Raise        New Salary
------------------------------------------------------------------------------------------------
Susan                                         25000.00        7.00       1750.00        26750.00
Jim                                           30000.00        5.50       1650.00        31650.00
Gloria                                        35000.00        5.50       1925.00        36925.00
Ros                                           40000.00        5.50       2200.00        42200.00
Ben                                           40001.00        4.00       1600.04        41601.04
Tim                                           45000.00        4.00       1800.00        46800.00
Ray                                           80000.00        4.00       3200.00        83200.00
------------------------------------------------------------------------------------------------
Total                                         295001.00                  14125.04      309126.04

Saving to binary file...

Reading back...


Calculation of Salary Raises

Name                                          Salary          Rate %     Raise        New Salary
------------------------------------------------------------------------------------------------
Susan                                         25000.00        7.00       1750.00        26750.00
Jim                                           30000.00        5.50       1650.00        31650.00
Gloria                                        35000.00        5.50       1925.00        36925.00
Ros                                           40000.00        5.50       2200.00        42200.00
Ben                                           40001.00        4.00       1600.04        41601.04
Tim                                           45000.00        4.00       1800.00        46800.00
Ray                                           80000.00        4.00       3200.00        83200.00
------------------------------------------------------------------------------------------------
Total                                         295001.00                  14125.04      309126.04

Thank you for using this program! */
