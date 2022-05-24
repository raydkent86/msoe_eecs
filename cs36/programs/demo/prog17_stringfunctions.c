/************************************************
 * Program 17
 * Owen Bailey-Waltz
 * 1158982
 * This program will read, sort, and print the
 * names of n students of a class.
 ************************************************/

#include <stdio.h>
#include <string.h>
#define SIZE 32

int main()
{
    int n, i, j;
    printf("Enter number of students : ");
    scanf("%d", &n);
    getchar(); /* needs to be outside of the loop because otherwise, with the way
                  getchar works in Darwin, it will EAT THE FIRST CHARACTER */

    char names[n][SIZE];
    for (int i = 0 ; i < n ; i++)
    {
        printf("Enter the name of student %d : ", (i + 1));
        gets(names[i]);
    }

    char t[SIZE]; // DO NOT FORGET TO DECLARE YOUR TEMP!
    for (i = 0 ; i < (n - 1) ; i++)
        for (j = 0 ; j < (n - 1) ; j++)
            if (strcmp(names[j], names[j + 1]) > 0)
            {
                strcpy(t, names[j]);
                strcpy(names[j], names[j + 1]);
                strcpy(names[j + 1], t);
            }
    
    printf("Names of students are ");
    for (i = 0 ; i < n ; i++)
        printf("%s ", names[i]);
    
    printf("\n\n");
    return 0;
}
