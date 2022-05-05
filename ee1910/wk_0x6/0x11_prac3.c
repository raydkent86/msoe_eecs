/* PROGRAMMING PRACTICE 3
 * Today, we're going to make a game. No, really.
 *
 * The game is a pretty simple one: we're going to take a range of numbers and ask the user to
 * guess what the number is in a given number of tries. The game will tell the user whether
 * their guess is too high or too low, and it will ask the user whether or not they want to
 * play when the game is not running, kicking the user out for the first time if they answer
 * 'no.'
 * 
 * What, I didn't say we'd be writing GTA V, did I? */

#include <stdio.h>
#include <stdlib.h>

// I'll do Dr. Johnson's first, then I'll do my version in a different file, because I know a better way of doing things

// this will also be an exercise in why prototypes are important: functions often call other functions
void get_range(int *low, int *high);
int create_target(int low, int high);
int get_tries();
void play_game(int tgt, int lim);
void get_guess(int cnt, int *gg);

int main()
{
    setbuf(stdout, NULL);

    char play;
    int low;
    int high;
    int target;
    int tries;

    // splash here
    printf("NUMBER LOOP GAME\n\n");

    // play or not
    // conditional while
    play = 'y';
    while((play == 'y') || (play == 'Y'))
    {
        get_range(&low, &high);
        target = create_target(low, high);
        tries = get_tries(); // set num tries
        play_game(target, tries); // play the thing

        // ask for continue
        printf("Play again? ");
        scanf(" %c", &play);
    }

    printf("Thanks for playing!\n");
    return 0;
}

void get_range(int *low, int *high)
{
    do
    {
        printf("Please enter an upper and lower limit: ");
        scanf("%i %i", low, high);
    } while ((*low < 0) || (*high < 0) || (*low > *high));
    return;
}

int create_target(int low, int high)
{
    int tmp;
    int tgt;

    // rand returns int between 0 and RAND_MAX
    tmp = rand();
    
    // reset target
    tgt = low + (tmp % (high - low));
    return tgt;
}

int get_tries()
{
    int tmp;
    printf("Specify the number of tries: ");
    scanf("%d", &tmp);
    return tmp;
}

void play_game(int tgt, int lim)
{
    int i;
    int guess;
    int win;
    win = 0;
    
    for (i = 0 ; i < lim ; i++)
    {
        get_guess(i, &guess);
        if (guess < tgt)
            printf("Guess too low!\n");
        else
            if (guess > tgt)
                printf("Guess too high!\n");
            else
            {
                printf("Correct! The number is %d\n", tgt);
                win = 1;
                i = lim - 1;
            }
    }

    if (win == 1)
        printf("WIN! Congratulations!\n");
    else
        printf("LOSE! Better luck next time!\n");
}

void get_guess(int cnt, int *gg)
{
    printf("Guess #%d: ", (cnt + 1));
    scanf("%d", gg);
    return;
}
