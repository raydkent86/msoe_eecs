/************************************************
 * Homework 4 - Program Set 2
 * Owen Bailey-Waltz
 * 1158982
 * This program is a game that forces the user to
 * guess a number between one and one hundred,
 * using function recursion rather than loops with
 * sentinels.
 ************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void guess(int*, int*, int*);
void check(int*, int*, int*);

int main()
{
    srand(time(NULL));
    int num = ((rand() % 100) + 1);
    int input, count = 0;

    puts("Guess the Computer Number Game\n");
    puts("Computer: I have a number in mind, guess my number\n");
    guess(&num, &input, &count);

    return 0;
}

void guess(int* num, int* input, int* count)
{
    printf("Take a guess: ");
    scanf("%d", &(*input));
    check(&(*num), &(*input), &(*count));
}

void check(int* num, int* input, int* count)
{
    (*count)++;
    if (*input > *num)
    {
        puts("\"Lower...\"\n");
        guess(&(*num), &(*input), &(*count));
    }
    else
        if (*input < *num)
        {
            puts("\"Higher...\"\n");
            guess(&(*num), &(*input), &(*count));
        }
        else
        {
            puts("Congratulations, you got it!");
            printf("You took %d tries.\n", *count);
        }
}

/* OUTPUTS
Guess the Computer Number Game

Computer: I have a number in mind, guess my number

Take a guess: 60
"Lower..."

Take a guess: 30
"Higher..."

Take a guess: 45
"Higher..."

Take a guess: 52
"Higher..."

Take a guess: 56
"Higher..."

Take a guess: 58
"Lower..."

Take a guess: 57
Congratulations, you got it!
You took 7 tries.


Guess the Computer Number Game

Computer: I have a number in mind, guess my number

Take a guess: 50
"Higher..."

Take a guess: 75
"Higher..."

Take a guess: 87
"Higher..."

Take a guess: 94
"Higher..."

Take a guess: 97
Congratulations, you got it!
You took 5 tries.


Guess the Computer Number Game

Computer: I have a number in mind, guess my number

Take a guess: 50
"Higher..."

Take a guess: 75
"Higher..."

Take a guess: 88
"Lower..."

Take a guess: 81
"Higher..."

Take a guess: 85
"Higher..."

Take a guess: 87
"Lower..."

Take a guess: 86
Congratulations, you got it!
You took 7 tries.


Guess the Computer Number Game

Computer: I have a number in mind, guess my number

Take a guess: 50
"Higher..."

Take a guess: 75
"Higher..."

Take a guess: 88
"Higher..."

Take a guess: 95
"Higher..."

Take a guess: 98
"Lower..."

Take a guess: 96
"Higher..."

Take a guess: 97
Congratulations, you got it!
You took 7 tries.


Guess the Computer Number Game

Computer: I have a number in mind, guess my number

Take a guess: 50
"Lower..."

Take a guess: 25
"Lower..."

Take a guess: 11
"Lower..."

Take a guess: 6
"Higher..."

Take a guess: 9
"Lower..."

Take a guess: 7
"Higher..."

Take a guess: 8
Congratulations, you got it!
You took 7 tries. */
