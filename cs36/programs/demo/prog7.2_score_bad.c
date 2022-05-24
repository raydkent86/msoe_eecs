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
 * This version has faulty logic -- it makes use
 * of the pairing mechanic between the if and else
 * and will spit out the error message ANY TIME
 * that the "moron" part of the code does not run.
 * Only morons don't have invalidity in this.
 ************************************************/

#include <stdio.h>

int main()
{
    int score, grade;
    
    // input
    printf("Enter the score: ");
    scanf("%d", &score);

    // calc and output
    if ((score <= 100) && (score >= 80)) printf("good\n");
    if ((score <= 79) && (score >= 55)) printf("ok\n");
    if ((score <= 54) && (score >= 1)) printf("moron\n");
    else printf("...what?!\n"); // Do NOT do this!
    return 0;
}
