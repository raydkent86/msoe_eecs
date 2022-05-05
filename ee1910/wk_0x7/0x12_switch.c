/* switch STATEMENTS
 * I made a vague throwaway reference to switch statements earlier on but didn't say what they
 * actually did. But if you've been following along for any period of time, you'll now what
 * I'm about to do. */

#include <stdio.h>

/* A switch gives the opportunity to an n-way decision. Normally, the decision blocks in our
 * flowcharts are only allowed to have two paths, but the switch construct allows for more
 * than two. It is, however, slightly more restrictive on the tests.
 * 
 * Switches follow the form
 * switch (value)
 * {
 *      case val1: statement;
 *      case val2: statement;
 *      case val3: statement;
 *      default: statement;
 * }
 * Unfortunately, they only work with integral/character values, the cases must represent a
 * specific value, and the other conditions won't verify meaning it will roll through ALL THE
 * LINES OF THE SWITCH STATEMENT after you jump in, making them a slightly limited construct
 * in terms of capability.
 * 
 * I know the example below is retarded, but here's a case statement that checks a number and
 * gives the respective line from the Apollo 11 launch at the number of seconds in question: */

int apollo()
{
    int countdown;
    printf("Please enter a positive integer: ");
    scanf("%i", &countdown);
    switch (countdown)
    {
        case 12:
            printf("TWELVE\n");
            sleep(1);
        case 11:
            printf("ELEVEN\n");
            sleep(1);
        case 10:
            printf("TEN\n");
            sleep(1);
        case 9:
            printf("NINE\n");
            sleep(1);
        case 8:
            printf("IGNITION SEQUENCE START\n");
            sleep(1);
        case 7:
            printf("IGNITION SEQUENCE START\n");
            sleep(1);
        case 6:
            printf("SIX\n");
            sleep(1);
        case 5:
            printf("FIVE\n");
            sleep(1);
        case 4:
            printf("FOUR\n");
            sleep(1);
        case 3:
            printf("THREE\n");
            sleep(1);
        case 2:
            printf("TWO\n");
            sleep(1);
        case 1:
            printf("ONE\n");
        default:
            printf("ZERO, ALL ENGINE RUNNING\n");
            printf("LIFTOFF, WE HAVE A LIFTOFF, THIRTY-TWO MINUTES PAST THE HOUR... LIFTOFF ON APOLLO 11\n\n");
    }

    return 0;
}

/* That temporal continuation is annoying, and we need to use the break keyword to kick out of
 * the switch statement if we don't want it to continue.
 *
 * case statements are king in enumerated situation, whereas if/else rules when it comes to
 * freeform. It can be a way to avoid a million billion indentations when you're checking integer
 * or character values. 
 * 
 * Another thing that's cool that can make code more readable is to put elses and ifs on the
 * same lines. So instead of this bollocks:
 * 
 * if (some_condition)
 *      statement1;
 * else
 *      if (some_other_condition)
 *          statement2;
 *      else
 *          if (some_even_shittier_condition)
 *              statement3;
 *      else... until you're blue in the face
 * 
 * you can write
 * 
 * if (some_conditition)
 *      statement1;
 * else if (a_slightly_less_shitty_condition)
 *      statement2;
 * else if (thank_fuck_i_dont_have_to_indent_this_to_high_hell_anymore)
 *      statement3;
 * else
 *      you_get_the_idea("screwyou.avi");
 * 
 * That's my version. Here's Dr. Johnson's version, which uses the lab program with the
 * resistor bands instead: */

int get_val(int num)
{
    char color;
    int val;
    printf("Please enter the resistor band color for band %i\n", num);
    printf("k - black, b - brown, r - red, o - orange, w - white: ");
    scanf(" %c", &color);

    switch (color)
    {
        case 'k': case 'K':
            val = 0;
            break;
        case 'b': case 'B':
            val = 1;
            break;
        case 'r': case 'R':
            val = 2;
        case 'o': case 'O': // NAUGHTY
            val = 3;
            break;
        case 'w': case 'W':
            val = 4;
            break;
        default:
            printf("get_val: invalid letter!\n");
    }

    return val;
}

/* Can you see what I did rong? (aside from misspelling the word "wrong" xD)
 * 
 * If you paid attention, you can see that I NEGLECTED TO ADD A BREAK TO THAT THIRD
 * SWITCH STATEMENT. That means if you put in an 'r' it will chug through the next
 * case as well before it kicks out, making the val = 2 a line of DEAD CODE.
 * 
 * Code Composer Studio and the clang/gcc compiler will warn you if you don't put
 * break statements in when you're doing your switches because this can be a costly
 * typo. If one of the cases leads into a loop where it shouldn't go or calls a
 * function with unsuitable values, it can lock up your program or cause it to bomb.
 * 
 * NEVER FORGET YOUR BREAKS IN YOUR SWITCHES - it can have very bad and unintended
 * consequences if you do, possibly ruining your whole day in the right case. */
 