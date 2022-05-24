/************************************************
 * Program 7.1
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
 * This thing does NOT use else statements, making
 * it terrifyingly inefficient.
 ************************************************/

#include <stdio.h>

int main()
{
    int score, grade;
    
    // input
    printf("Enter the score: ");
    scanf("%d", &score);

    // calc
    if ((score <= 100) && (score >= 80)) printf("good\n");
    if ((score <= 79) && (score >= 55)) printf("ok\n");
    if ((score <= 54) && (score >= 1)) printf("moron\n");
    if ((score < 1) || (score > 100)) printf("...what?!\n");
    return 0;
}
