/************************************************
 * Program 11
 * Owen Bailey-Waltz
 * 1158982
 * This program is a rock-paper-scissors game
 * that uses a best-of-three matchup system. Two
 * wins will give either the CPU or the user the
 * match win.
 ************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
    int cpu, user = 0, uscore = 0, cpuscore = 0, diff;
    srand(time(NULL));
    printf("Rochambeau V1.0\n\n");
    do
    {
        cpu = ((rand() % 3) + 1);
        printf("SELECT YOUR MOVE (1 = rock / 2 = paper / 3 = scissors) ");
        scanf("%d", &user);
        
        switch(user)
        {
            case 1:
                if (cpu == user)
                {
                    printf("User and CPU made the same move (no point)\n");
                }
                else
                    if (cpu == 2)
                    {
                        cpuscore++;
                        printf("CPU wins!\n");
                    }
                    else
                    {
                        uscore++;
                        printf("User wins!\n");
                    }
                break;
            case 2:
                if (cpu == user)
                    printf("User and CPU made the same move (no point)\n");
                else
                    if (cpu == 3)
                    {
                        cpuscore++;
                        printf("CPU wins!\n");
                    }
                    else
                    {
                        uscore++;
                        printf("User wins!\n");
                    }
                break;
            case 3:
                if (cpu == user)
                    printf("User and CPU made the same move (no point)\n");
                else
                    if (cpu == 1)
                    {
                        cpuscore++;
                        printf("CPU wins!\n");
                    }
                    else
                    {
                        uscore++;
                        printf("User wins!\n");
                    }
                break;
            default:
                printf("Illegal move\n\n");
        }
        diff = uscore - cpuscore;
    } while ((diff <= 2) && (diff >= -2));
    if (diff <= 2)
        printf("You win!\n");
    else
        if (diff >= -2)
            printf("You lose!\n");
        else
        {
            printf("rochambeau: unknown error occurred\n");
            return -1;
        }

    printf("Final score: User %2d CPU %2d\n", uscore, cpuscore);
    return 0;
}
