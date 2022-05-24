/* RECURSION (ugh!)
 * This part actively makes my head spin. Recursion is when a FUNCTION CALLS
 * ITSELF.
 * This is NOT recursion:
 * main -> a -> b -> c -> d        iterative
 * 
 * This IS recursion:
 * main -> a -> a -> a -> a        recursive
 * 
 * What does this do, though, apart from allowing you to make retarded loops?
 * 
 * Well, in general, not too much -- you want to use iteration over recursion
 * whenever possible, because it's faster and uses fewer resources (which,
 * especially if you're an ES developer, is PARAMOUNT). But, there ARE a few
 * common use cases: */

#include <stdio.h>
#include <stdlib.h>

/* FACTORIALS
 * In math:
 * 4! = 4 * 3 * 2 * 1
 * 3! = 3 * 2 * 1
 * 2! = 2 * 1
 * 1! = 1
 * 0! = 1
 * n! = 1 * 2 * 3 * ... * (n - 1) * n
 * 
 * In programming:
 * fact(4) = 4 * fact(3)
 * fact(3) = 3 * fact(2)
 * fact(2) = 2 * fact(1)
 * fact(1) = 1
 * fact(n) = n * fact(n - 1)
 * 
 * This will CONTINUE FOREVER if you do not set up a recursive definition or
 * recurrence relation. Recursion happens in two parts:
 * 1) stopping [trivial case]
 * 2) recursive call
 * 
 * What I mean is below: */

long int fact(int n)
{
    if (n == 0)
        return 1;
    else
        return n * fact(n - 1);
}

/* Recursive code is shorter and easier to read, but it will EAT RESOURCES.
 * This is usually not so big a deal, but if you're on the  */

int example1()
{
    int n;
    long f;
    printf("Enter a positive integer : ");
    scanf("%d", &n);

    f = fact(n);
    printf("%d %ld\n", n, f);
    return 0;
}

/* Pretty cool, huh? Shitty ASCII graphic time!
 * 
 * fact(4) <-- 24
 *   |         |
 *    -----> fact(3) <-- 6
 *             |         |
 *              -----> fact(2) <-- 2
 *                       |         |
 *                        -----> fact(1) <-- 1
 *                                 |         |
 *                                  -----> fact(0)
 * 
 * Now when do you actually use this? Answer: WHEN YOU NEED IT.
 * 
 * When you're writing games, and you don't really give a crap about
 * resources (this is why computers are so beefy now -- it's the video
 * game and pro audio industries almost exclusively who keep pushing
 * performance over resources), recursion gets to be important. But
 * in most cases, iteration or loops will do just fine.
 * 
 * Here's another example: evaluating 2^n: */

long int two(int n)
{
    if (n == 0)
        return 1;
    else
        return 2 * two(n - 1);
}

int example2()
{
    int n;
    printf("Enter a positive integer : ");
    scanf("%d", &n);
    printf("%d %ld\n", n, two(n));
    return 0; 
}

/* And another ASCII recusion tree:
 * 16
 * two(4) <--- 8
 *   |         |
 *    -----> two(3) <--- 4
 *             |         |
 *              -----> two(2) <--- 2
 *                       |         |
 *                        -----> two(1) <--- 1
 *                                 |         |
 *                                  -----> two(0) */

/* Now, time for the last (and best) one:
 * FIBONACCI NUMBERS.
 * 
 * The Fibonacci series:
 * 1, 1, 2, 5, 8, 13, 21, ...
 * fib(n) = fib (n - 2) + fib (n - 1)
 * fib(6) = 8 = fib(4) + fib(5)
 * fib(5) = fib(3) + fib(4)
 * 
 * And, of course, the code(s): */
long int fib(int n)
{
    if (n == 1 || n == 2)
        return 1;
    return fib(n - 1) + fib (n - 2);
}

int example3()
{
    int n;
    printf("Enter a positive integer : ");
    scanf("%d", &n);
    printf("%d %ld\n", n, fib(n));
    return 0;  
}

/* This has a wicked DOUBLE RECURSIVE TREE:
 *                         *
 *                       * 8 *
 *                         *
 *                   /   fib(6)  \
 *                 /    /     \     \
 *               /     /       \      \
 *             /      /         \        \
 *           /       /           \         \
 *         /  fib(4)       +      fib(5)     \
 *         ---  |   \             / |      ---
 *           /  |    3           5  |      \
 *         /    |                   |        \
 *      /fib(3) + fib(2)     fib(4) + fib(3)   \
 *    /   |  |      |         / \      / \       \
 *  /     |  2      1        /   3    2   \        \
 * /      |                 /              \         \
 * fib(1) + fib(2)  fib(2) + fib(3)  fib(2) + fib (1)  \
 *   |        |       |       / \      |        |  -----
 *   1        1       1      /   2     1        1   \
 *                          |                         \
 *                   fib(1) + fib(2)                    \
 * ---------------------|       |------------------------
 *                      1   +   1            
 *
 * Then add a present and a star, and you've got a real tree in
 * BSTIC 209. Merry way-too-early Christmas! */

int main()
{
    int err = example1();
    err = example2();
    err = example3();
    return err;
}
