/* WELCOME BACK!
 * 
 * Dr Loke's #define rant
 * 
 * DO NOT ABUSE #define. It is a TEXT SUBSTITUTION, not a MEMORY ASSIGNMENT.
 * 
 * ...anyway...
 * 
 * IF STATEMENTS
 * - used to make decisions in program processing
 * - code -> condition -> if it's true, it will execute a separate section
 * - if it's false, it will never execute the section, and just go straight
 * - as of right now, there are no interchanges on the metaphorical freeway
 * - now, your code(s) no longer go all the way from Canada to San Diego,
 *   there are forks in the road
 */

#include <stdio.h>
#define condition (a == 0)
#define statement1 printf("lolwut?\n")
#define statement2 printf("LOOK FOR THE BRACE TO SEE WHERE THIS ENDS\n")

void elif()
{
    int a = 0;
    // YOUR CONDITION MUST BE IN PARENTHESES! This IS NOT like Python.
    if condition
    {
        statement1;
    }
    else statement2;
}

/* The expression given to the if statement is a BOOLEAN (keywd: bool)
 * if statements only done when the bool == true
 * if false: DO JACK.
 *
 * RELATIONAL OPERATORS (use to assign booleans or as if conditions)
 * == EQUALITY
 * != INEQUALITY
 * >  GREATER THAN
 * <  LESS THAN
 * >= GREATER THAN/EQUAL TO
 * <= LESS THAN/EQUAL TO
 * 
 * LOGICAL OPERATORS
 * !  NOT (flips boolean)
 * && AND (both subconditions must be true)
 * || OR ()
 * */

// EQUALITY
int operators()
{
    int age = 25;
    int kph = 120;
    
    /* IMPORTANT: If "age" is not defined... the result again depends
    on your compiler. clang programs will assume 0, but others will
    complain, because "age" is undefined -- it's comparing "age" to
    GARBAGE. */
    if (age == 25)
    {
        printf("You can rent a car in California.\n");
    }
    
    // AND example
    if ((kph > 120) && (kph <= 200))
    {
        printf("police.exe: The reason I'm stopping you is for your ");
        printf("speed -- the speed limit is 120, I clocked you at ");
        printf("%d.\n", kph);
    }

    // OR example
    int toofast = 0;
    if (1)
    {
        printf("police.exe: The reason I'm stopping you is for your ");
        printf("speed -- the speed limit is 120, I clocked you at ");
        printf("%d.\n", kph);
    }
    
    if (1)
    {
        printf("this will always execute -- the if is kinda pointless\n");
    }

    if (0)
    {
        printf("this will also never execute -- it's unreachable code\n");
    }

    while (0)
    {
        printf("THIS WILL LOOP FOREVER AND KILL YOUR MACHINE IF IT WERE TRUE\n");
    }

    /* TRUTH TABLES for operators:
     * &&
     * sub1  sub2  cond
     *  T     T     T
     *  T     F     F
     *  F     T     F
     *  F     F     F
     * ||
     *  T     T     T
     *  T     F     T
     *  F     T     T
     *  F     F     F
     * 
     * OPERATOR PRECEDENCE
     * OPERATOR          PRECEDENCE
     * function calls    highest
     * ! + - & (unary)   2
     * * / %             3
     * + -               4
     * < <= >= >         5
     * == !=             6
     * &&                7
     * ||                8
     * =                 lowest
     */

    // a really complex bit of logic
    float x, y, z;
    if (x < y || x < z && x > 0.0);
    /* the AND will eval first, THEN the OR
    if you want bits to execute first... ()
    ALSO, use parentheses to make logic calculations 
    easier to read */
    return 0;
}

int unaries()
{
    int x, y, z, value;
    value = -x - y * z; // the first minus is a unary
    return 0;
}

int truefalse()
{
    float x, y, z;
    int flag = 0;
    x = 3.0;
    y = 4.0;
    z = 2.0;
    printf("%d\n", (!flag)); // true 
    printf("%d\n", (x + y / z <= 3.5)); // false
    return 0;
}

/* COMPARING CHARACTERS
 * + based on ASCII
 * + 'A' = 65
 * + 'Z' = 90
 * + 'a' = 97, 'z' = 122 */
int chars()
{
    int x = ('A' > 'a'); // 0
    // The small guy is always bigger than the big guy
    return 0;
}

int main()
{
    int a = 0;
    if condition
    {
        statement1;
        statement2;
    }

    // BUT WAIT!
    // Only the FIRST statement is part of THIS if statement:
    if condition
    statement1;
    statement2;

    int x, y;
    x = 10;
    y = 2;

    // true
    if (x > y) printf("Yes\n");

    x = 1;
    // false -- will not run
    if (x > y) printf("loke.exe: DEMONSTRATE THE CODES\n");

    // here's another random one
    int hot;
    printf("is it hot today? (0/1) ");
    scanf("%d", &hot);
    int shorts, soda, pants;
    if (hot)
    {
        printf("loke.exe: WEAR SHORTS\n");
        printf("loke.exe: DRINK A SODA\n");
        shorts = soda = 1;
    }
    printf("loke.exe: REVERTING TO LONG PANTS\n");
    shorts = soda = 0;
    pants = 1;

    /* in python, you can just dump a variable name in and it will
    just check for a value */
    char something[] = "WHAT";
    if (something)
    {
        printf("...then it also works in C!\n");
        // well, technically, it depends on your compiler
        // usually, it just results in dead codes
    }
    elif();
    int err = operators();
    err = truefalse();
    return 0;
}
