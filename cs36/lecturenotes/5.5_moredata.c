/* BACK TO THE GRIND.
 * 
 * loke.exe: RUN the program with the structs, people. The other thing is that
 *           the lab was due YESTERDAY. So don't send it. Homework, same thing.
 *           It's due on the 14th, NO EXCEPTIONS.
 * 
 * BINARY FILES
 * These will store entire data structures, but when you try and read them with
 * a text editor, you just see BAD WORDS. The computer swears at you. It ends
 * up looking something like this:
 * @^@^@^@^@^@^@^@^@^..........
 * 
 * You read and write them using fread() and fwrite(). ONLY ONE THING: you cannot
 * keep anything that's in the file -- these functions will erase anything that's
 * already there, meaning if you write something to today.dat tomorrow while
 * there's already something from today, it'll be GONE.
 * 
 * Here's a bit of program we were working on earlier: */

#include <stdio.h>
#include <stdlib.h>
#define SIZE 256
#define ARRSIZE 3
#define DEBUG (1)

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
void gettext(Student[], int);
void savebin(Student[], int);
void getbin(Student[], int);

int main()
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
    gettext(s, ARRSIZE);
    for (int i = 0 ; i < ARRSIZE ; i++)
    {
        printf("%s %s\n", s[i].first, s[i].last);
        printf("test scores: %f %f %f\n", s[i].t1, s[i].t2, s[i].t3);
        printf("avg: %f        grade: %c\n\n", s[i].avg, s[i].grade);
    }

    savebin(s, ARRSIZE);
    getbin(s, ARRSIZE);
    for (int i = 0 ; i < ARRSIZE ; i++)
    {
        printf("%s %s\n", s[i].first, s[i].last);
        printf("test scores: %f %f %f\n", s[i].t1, s[i].t2, s[i].t3);
        printf("avg: %f        grade: %c\n\n", s[i].avg, s[i].grade);
    }

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
    int i, j;
    FILE *f;
    f = fopen("/Users/owen.baileywaltz/Library/Mobile Documents/com~apple~CloudDocs/deadc0de/ivc/cs36/lecturenotes/student_outputs.txt", "r");
    for (i = 0 ; i < n ; i++)
    {
        fgets(s[i].last, sizeof(s[i].last), f);
        fgets(s[i].first, sizeof(s[i].first), f);
        fscanf(f, "%f %f %f %f %c\n", &s[i].t1, &s[i].t2, &s[i].t3, &s[i].avg, &s[i].grade);
        for (j = 0 ; j < sizeof(s[i].last) ; j++)
            if (s[i].last[j] == '\n')
                s[i].last[j] = '\0';
        for (j = 0 ; j < sizeof(s[i].first) ; j++)
            if (s[i].first[j] == '\n')
                s[i].first[j] = '\0';
    }
    fclose(f);
}

void savebin(Student s[], int n)
{
    FILE *f;
    if DEBUG
        printf("Opening stream...\n");
    printf("Opening stream...\n");
    f = fopen("/Users/owen.baileywaltz/Library/Mobile Documents/com~apple~CloudDocs/deadc0de/ivc/cs36/lecturenotes/student_outputs.bin", "wb");
    fwrite(&s[0], sizeof(s[0]), n, f);
    if DEBUG
        printf("Wrote %ld byte(s)!\n", sizeof(*s));
    fclose(f);
}

void getbin(Student s[], int n)
{
    FILE *f;
    if DEBUG
        printf("Opening stream...\n");
    f = fopen("/Users/owen.baileywaltz/Library/Mobile Documents/com~apple~CloudDocs/deadc0de/ivc/cs36/lecturenotes/student_outputs.bin", "rb");
    fread(&s[0], sizeof(s[0]), n, f);
    if DEBUG
        printf("Read %ld byte(s)!\n", sizeof(*s));
    fclose(f);
}
