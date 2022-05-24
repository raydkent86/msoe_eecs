/************************************************
 * Program 7.2
 * Owen Bailey-Waltz
 * 1158982
 * This program will take a score from the user,
 * and give a Yale-style grade on the following
 * system:
 * 
 * 80-100: good
 * 55-79: ok
 * 1-54: moron
 * anything else is invalid
 * 
 * ...yeah. Loke the Savage.
 * 
 * This version uses if-else statements...
 * ...CORRECTLY.
 ************************************************/

#include <stdio.h>

int main()
{
    int score, grade;
    
    // input
    printf("Enter the score: ");
    scanf("%d", &score);

    // calc, in Dr. Loke's preferred indentation system
    if ((score < 1) || (score > 100)) printf("...what?!\n");
    else
        if (score >= 80) printf("good\n");
        else
            if (score >= 55) printf("ok\n");
            else
                printf("moron\n");

    return 0;
}
