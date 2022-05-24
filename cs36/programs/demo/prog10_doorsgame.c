/************************************************
 * Program 10
 * Owen Bailey-Waltz
 * 1158982
 * This program will randomly put a ghost behind
 * a door every time a door is selected -- it
 * will score the user points every time he/she
 * selects the door with no ghost, but will quit
 * when the user hits the ghost.
 ************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
    int door = -1, selected, score = 0;
    time_t t;
    // srand((unsigned)time(&t));
    srand(time(NULL)); // use this

    printf("\nThree doors ahead...\n");
    printf("A ghost behind one...\n");

    do
    {
        door = ((rand() % 3) + 1);
        // printf("DEBUG: it's behind %d\n", door);
        printf("Which door do you choose? ");
        printf("(1/2/3): ");
        scanf("%d", &selected);
        
        if (selected < 1 || selected > 3)
        {
            printf("\nSorry, try again.\n");
        }
        else
            if (door != selected)
            {
                score++;
                printf("\nNo ghost behind that door...\n");
                printf("Score: %d\n", score);
                printf("Enter the next room...\n\n");
            }
    } while (door != selected);

    printf("GHOST!\n");
    printf("RUN AWAY!\n\n");
    printf("Game over!\n");
    printf("Final Score: %d\n", score);
    
    return 0;
}
