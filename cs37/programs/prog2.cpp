/************************************************
 * CS37 - Homework Problem 2
 * Owen Bailey-Waltz
 * 1158982
 * This program is an implementation of the
 * principle of function templates, containing
 * six different templates for manipulating and
 * reading arrays, including entering data,
 * printing the smallest and second-smallest
 * values without sorting, sorting in descending
 * order, and saving and retrieving with text
 * files.
 ************************************************/

#include <iostream>
#include <fstream>
using namespace std;

template<class T>
void printarray(T *a, const int n)
{
	for (int i = 0; i < n; i++)
		cout << a[i] << "  ";
	cout << endl;
}

template<class T>
void read(T *a, const int n)
{
    cout << "Enter " << n << " values: ";
    for (int i = 0 ; i < n ; i++)
        cin >> a[i];
    cout << endl;
}

template<class T>
void mins(T *a, const int n)
{
    if (n == 1)
        cout << "ERROR: Must be two elements or more!";
    else
    {
        int i, j;
        T min, second, tmp;

        min = a[0];
        for (i = 1 ; i < n ; i++)
            if (a[i] < min)
                min = a[i];
        
        second = a[0];
        for (i = 1 ; i < n ; i++)
            if ((a[i] < second) && (a[i] > min))
                second = a[i];

        cout << "The smallest value is " << min << endl;
        cout << "The second smallest value is " << second << endl << endl;
    }
}

template<class T>
void sort_desc(T *a, const int n)
{
    int i, j;
    T tmp;
    for (i = 0 ; i < n - 1 ; i++)
        for (j = 0 ; j < n - 1 ; j++)
            if (a[j] < a[j + 1])
            {
                tmp = a[j];
                a[j] = a[j + 1];
                a[j + 1] = tmp;
            }
    
    cout << "Array sorted in descending order: ";
    for (int i = 0 ; i < n ; i++)
        cout << a[i] << ' ';
    cout << endl << endl;;
}

template<class T>
void save_to_file(T *a, const int n, const char *filename)
{
    ofstream outfile(filename, ios::out);
    for (int i = 0 ; i < n ; i++)
        outfile << a[i] << ' ';
    outfile << endl;
    outfile.close();
}

template<class T>
void read_from_file(T *a, const int n, const char *filename)
{
    ifstream infile(filename, ios::in);
    int i;
    for (i = 0 ; i < n ; i++)
        infile >> a[i];
    for (i = 0 ; i < n ; i++)
        cout << a[i] << ' ';
    cout << endl;
    infile.close();
}

int main()
{
	const int n1 = 5, n2 = 7, n3 = 6;
	int a[n1]; // = {2, 4, 6, 8, 10};
	float b[n2]; // = {1.1, 2.2, 3.3, 4.4, 5.5, 6.6, 7.7};
	char c[n3]; // = "HELLO";

    cout << "ARRAY OF INTEGERS" << endl;
    read(a, n1);
    cout << "ARRAY OF FLOATS" << endl;
    read(b, n2);
    cout << "ARRAY OF CHARACTERS" << endl;
    read(c, n3);

	cout << "the integer array" << endl;
	printarray(a, n1);

	cout << "the float array" << endl;
	printarray(b,n2);

	cout << "the string is" << endl;
	printarray(c,n3);

    mins(a, n1);
    mins(b, n2);
    mins(c, n3);

    sort_desc(a, n1);
    sort_desc(b, n2);
    sort_desc(c, n3);

    cout << "Saving...   ";
    save_to_file(a, n1, "int.txt");
    save_to_file(b, n2, "float.txt");
    save_to_file(c, n3, "char.txt");
    cout << "done!" << endl << endl;

    cout << "Reading back... " << endl;
    read_from_file(a, n1, "int.txt");
    read_from_file(b, n2, "float.txt");
    read_from_file(c, n3, "char.txt");

    return 0;
}

/* OUTPUT
ARRAY OF INTEGERS
Enter 5 values: 2 4 6 8 10

ARRAY OF FLOATS
Enter 7 values: 1.1 2.2 3.3 4.4 5.5 6.6 7.7

ARRAY OF CHARACTERS
Enter 6 values: H E L L O !

the integer array
2  4  6  8  10  
the float array
1.1  2.2  3.3  4.4  5.5  6.6  7.7  
the string is
H  E  L  L  O  !  
The smallest value is 2
The second smallest value is 2

The smallest value is 1.1
The second smallest value is 1.1

The smallest value is !
The second smallest value is E

Array sorted in descending order: 10 8 6 4 2 

Array sorted in descending order: 7.7 6.6 5.5 4.4 3.3 2.2 1.1 

Array sorted in descending order: O L L H E ! 

Saving...   done!

Reading back... 
10 8 6 4 2 
7.7 6.6 5.5 4.4 3.3 2.2 1.1 
O L L H E ! */
