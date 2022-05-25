/* PROGRAMMING PRACTICE #2
 * Back to programming practice again... It's been a while, so let's launch right into this.
 * This is an application to calculate grade averages and put them to a student ID, a
 * classic programming problem that I remember from the days of John Smiley's Java book. */

#include <stdio.h>

// function prototypes
int get_score(int, int);
float calc_avg(int, int, int);
int print_grade(int, float);
char calc_grade(float);

int main()
{
    int student_id;
    int score1, score2, score3;
    float avg;

    printf("KENT GRADES THINGY\n");
    while(1)
    {
        printf("Student ID: ");
        scanf("%d", &student_id);
        score1 = get_score(student_id, 1);
        score2 = get_score(student_id, 2);
        score3 = get_score(student_id, 3);

        avg = calc_avg(score1, score2, score3);

        if (print_grade(student_id, avg) != 0)
            printf("1910_prac2: print grade failed\n");
    }
    return 0;
}

int get_score(int student, int n)
{
    int score;
    printf("Please enter score #%d for student %d: ", n, student);
    scanf("%d", &score);
    return score;
}

float calc_avg(int s1, int s2, int s3)
{
    return (s1 + s2 + s3) / (float)3;
}

int print_grade(int student, float score)
{
    char grade;
    grade = calc_grade(score);
    printf("Student %d has a grade of %c\n", student, grade);
    return 0;
}

char calc_grade(float score)
{
    if (score >= 90)
        return 'A';
    else
        if (score >= 80)
            return 'B';
        else
            if (score >= 70)
                return 'C';
            else
                if (score >= 60)
                    return 'D';
                else
                    return 'F';
}
