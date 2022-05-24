#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
    int compnum, usernum, count;
    time_t t;
    srand((unsigned)time(&t));
    count = 0;
    while((count <= 2) && (count >= -2))
    {
        compnum = rand() % 3 + 0;
        printf("Scissors (0) Paper (1) Rock (2)? ");
        scanf("%d", &usernum);
        if (compnum == 0)
        {
            if (usernum == 0)
                puts("Draw");
            else
                if (usernum == 1)
                {
                    puts("You won");
                    count++;
                }
                else
                    if (usernum == 2)
                    {
                        puts("You lost");
                        count--;
                    }
        }
        else
            if (compnum == 1)
            {
                if (usernum == 0)
                {
                    puts("You lost");
                    count--;
                }
                else
                    if (usernum == 1)
                        puts("Draw");
                    else
                        if (usernum == 2)
                        {
                            puts("You won");
                            count++;
                        }
            }
            else
                if (compnum == 2)
                {
                    if (usernum == 0)
                    {
                        puts("You won");
                        count++;
                    }
                    else
                        if (usernum == 0)
                        {
                            puts("You lost");
                            count--;
                        }
                        else
                            if (usernum == 2)
                            {
                                puts("Draw");
                            }
                }
    }
    if (count > 2)
        puts("You won by more than two");
    else
        puts("The computer won by more than two");
    return 0;
}