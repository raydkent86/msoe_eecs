/* STRUCTS (finally!)
 * - collections of variables under a single name.
 * - variables in a struct are of DIFFERENT DATA TYPES */

#include <stdio.h>
#include <stdlib.h>
#define SIZE 256
#define ARRSIZE 2

struct student_vitals
{
    int id;
    char name[SIZE];
    char course[SIZE];
    float fees;
};

/* This particular structure defines all the members in a student. It's important
 * to know that NO MEMORY IS ALLOCATED when a struct is first created -- it's
 * just a template.
 * 
 * What is this? Well, you're actually creating your OWN DATA TYPE. Generally,
 * you declare them globally. They function very similarly to a class in OOP, but
 * they're NOT THE SAME THING. */

int a; // declaring an int
struct student_vitals b; // this is like declaring any other variable

/* You can also declare instances of the struct on the same line as the declaration
 * right before the semicolon, like with any other variable.
 * 
 * Now, here's some code(s) */

struct student_scores
{
    char name[SIZE];
    float t1, t2, t3, avg;
}; // You MUST INCLUDE A SEMICOLON AFTER THE BRACE, or it WILL NOT COMPILE.

int struct_examples()
{
    struct student_scores s; // declaring a variable "s" using the "student" type
    printf("Enter the name: ");
    gets(s.name); // DOT NOTATION (reference the element with a dot)
    printf("Enter three scores: ");
    getchar();
    scanf("%f%f%f", &s.t1, &s.t2, &s.t3);
    s.avg = (s.t1 + s.t2 + s.t3) / (float)3;

    printf("Name: %s\n", s.name);
    printf("Scores: %f %f %f\n", s.t1, s.t2, s.t3);
    printf("Average: %f\n", s.avg);
    return 0;
}

/* IMPORTANT -- the variable name can be fricking anything. It could be called "roy".
 * It could be called "staterBrothers".
 * 
 * TYPEDEF -> enables the programmer to create a completely new datatype name from
 *            an existing datatype (create an alias) */

typedef int INTEGER; // INTEGER -> int
typedef const char* String; // you can do it with STRINGS, too, to make code readable

// then, you can do it with entire STRUCTS
typedef struct student_stupid
{
    int id;
    char name[SIZE];
    char course[SIZE];
    float fees;
} BadStudent;

// Now, you can just use it like this:
BadStudent stud1;

/* loke.exe: Alright people -- your labs are due this Sunday. You only need to do
 * ELEVEN of them, out of the fourteen given (ARR 1-7, STR 1-4). You must also convert
 * the things into functions, and submit as ONE PROGRAM. Take the input in the
 * main() method, pass them to the functions, and submit the thing as a TXT FILE. 
 * Back to TYPEDEF: */

typedef float STUPID; // float is represented by "STUPID"
STUPID c; // float c

/* ARRAYS OF STRUCTURES
 * You can keep track of many things with structs, but what if you want to keep
 * multiple sets of things, say, for database coherence? */

typedef struct student
{
    char last[SIZE];
    char first[SIZE];
    STUPID t1, t2, t3, avg; // lol
    char grade;
} Student;

void load(Student[], int); // pointless function, apart from showing how to pass
float get_avg(float, float, float); // also pointless, same reason
void sort(Student[], int);
int passed(Student[], int);
void savetext(Student[], int);

int example_students()
{
    Student s[ARRSIZE];
    load(s, ARRSIZE);
    for (int i = 0 ; i < ARRSIZE ; i++)
    {
        printf("%s %s\n", s[i].first, s[i].last);
        printf("test scores: %f %f %f\n", s[i].t1, s[i].t2, s[i].t3);
        printf("avg: %f        grade: %c\n\n", s[i].avg, s[i].grade);
    }
    printf("SORTING BY AVERAGE!\n\n");
    sort(s, ARRSIZE);
    for (int i = 0 ; i < ARRSIZE ; i++)
    {
        printf("%s %s\n", s[i].first, s[i].last);
        printf("test scores: %f %f %f\n", s[i].t1, s[i].t2, s[i].t3);
        printf("avg: %f        grade: %c\n\n", s[i].avg, s[i].grade);
    }

    int pass = passed(s, ARRSIZE);
    int fail = ARRSIZE - pass;
    printf("Pass : %-15dFail : %d\n\n", pass, fail);
    savetext(s, ARRSIZE);

    return 0;
}

void load(Student s[], int n)
{
    int i;
    for (i = 0 ; i < n; i++)
    {
        printf("\nEnter the student name: ");
        scanf("%s%s", s[i].first, s[i].last);
        printf("Enter the three test scores: ");
        scanf("%f%f%f", &s[i].t1, &s[i].t2, &s[i].t3);
        s[i].avg = (s[i].t1 + s[i].t2 + s[i].t3) / 3;
        if (s[i].avg >= 70)
            s[i].grade = 'P';
        else
            s[i].grade = 'F';
        getchar();
    }
}

float get_avg(float t1, float t2, float t3)
{
    float avg = (t1 + t2 + t3) / 3;
    return avg; 
}

int main()
{
    int err = example_students();
    return err;
}

void sort(Student s[], int n)
{
    int i, j;
    Student t;
    for (i = 0 ; i < n - 1 ; i++)
        for (j = 0 ; j < n - 1 ; j++)
            if (s[j].avg < s[j + 1].avg)
            {
                t = s[j];
                s[j] = s[j + 1];
                s[j + 1] = t;
            }
}

int passed(Student s[], int n)
{
    int count = 0;
    int i;
    for (i = 0 ; i < n ; i++)
        if (s[i].grade == 'P')
            count++;
    
    return count;
}

void savetext(Student s[], int n)
{
    int i;
    FILE *f; // FILE STRUCTURE DATATYPE (represents a pointer to a file)

    // fopen() takes a file path and a mode (r/w/br/bw) as arguments
    f = fopen("/Users/owen.baileywaltz/Library/Mobile Documents/com~apple~CloudDocs/deadc0de/ivc/cs36/lecturenotes/student_outputs.txt", "w");
    for (i = 0 ; i < n ; i++)
    {
        fprintf(f, "%s\n", s[i].last); // PRINT TO A FILE
        fprintf(f, "%s\n", s[i].first);
        fprintf(f, "%f %f %f %f %c\n", s[i].t1, s[i].t2, s[i].t3, s[i].avg, s[i].grade);
    }
    fclose(f);
}

void gettext(Student s[], int n)
{
    int i;
    FILE *f;
    f = fopen("/Users/owen.baileywaltz/Library/Mobile Documents/com~apple~CloudDocs/deadc0de/ivc/cs36/lecturenotes/student_outputs.txt", "r");
    for (i = 0 ; i < n ; i++)
    {
        fgets(s[i].last, sizeof(s[i].last), f);
        fgets(s[i].first, sizeof(s[i].first), f);
        fscanf(f, "%f%f%f%f%c\n", &s[i].t1, &s[i].t2, &s[i].t3, &s[i].avg, &s[i].grade);
    }
    fclose(f);
}

/* The above stuff is parts 1, 2, and 3 of the LAST HOMEWORK. */
