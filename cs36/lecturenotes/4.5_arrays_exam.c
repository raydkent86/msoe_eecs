/* FINISHING ARRAYS AND REVIEWING FOR THE EXAM
 * BINARY SEARCHES
 * This is how you do QUESTION TWO OF THE HOMEWORK -- PAY ATTENTION!
 * Binary searches work like this: imagine that the number from 0 to 100 is 14.
 * If you guess 50, you know now that it's on the small side of 50. Then, you guess 25.
 * It's smaller than 25, which means that now you guess 12 -- it's now on the big side
 * of 12, which means now you check 18 (add half its value). Essentially, you go to the
 * center of the array and check if the number is larger or smaller, and chuck everything
 * below the value if it's larger than the value in question, then chuck everything above
 * the value if it's smaller.
 * 
 * Binary searches are a lot faster if you have giant sorted arrays -- it means that you
 * no longer have to chug through every single element of an array to find a target value,
 * which reduces execution time exponentially. There are multiple different types of
 * searching algorithms that reduce computation time on sorted arrays, some of which are
 * shown below:
 * 1) BINARY (halve index to go down, take (next + max) / 2 to go up, or add half the
 *            difference -- it's also called "DIVIDE AND CONQUER") */

#include <stdio.h>
#define SIZE 256

int bsearch(int[], int, int);
int load(int[], int);
int print(int[], int);

int example1();
int example2();

int main()
{
    int arr[SIZE];
    int err = example1();
    err = example2();
    return err;
}

int example1()
{
    int arr[SIZE], num, i, n;
    printf("Enter the number of elements in the array : ");
    scanf("%d", &n);
    printf("Enter the elements in ascending order : ");
    for (i = 0 ; i < n ; i++)
        scanf("%d", &arr[i]);
    printf("Enter the number to search for : ");
    scanf("%d", &num);
    int err = bsearch(arr, num, n);
    if (err != 0)
    {
        printf("arrays: error %d\n", err);
        return err;
    }
    return 0;
}


int bsearch(int arr[], int val, int n)
{
    int i, pos = -1;
    int beg, end, mid, found = 0;
    beg = 0, end = n - 1;
    while (beg <= end)
    {
        mid = (beg + end) / 2;
        if (val < arr[mid])
            end = mid - 1;
        else
            if (val == arr[mid])
            {
                printf("%d found at index %d\n", val, mid);
                found = 1;
                return mid;
            }
            else
                beg = mid + 1;
        if (beg > end && found == 0)
            printf("%d does not exist in array");
    }
}

/* This ONLY WORKS if you remember to move the boundaries around. Also, this is a
 * COMMON INTERVIEW QUESTION for an EECS job -- you NEED TO KNOW THIS. If they ask
 * you to write the code, write the code. But if they ask you to explain it, DO
 * NOT WRITE AN ESSAY. Draw a diagram, then explain it, if that's possible, or else
 * write the PSUEDOCODE(S). Engineers don't always read -- I definitely do, and my dad
 * invariably does, but even if we do, we have very little patience, because we've gotta
 * make some MONEY(S).
 * 
 * Now, a brief note on types of data structures:
 * a) arrays - collection of the SAME type
 * b) structs - collection of data of DIFFERENT types
 * We'll get to structs later on, after arrays. structs are IMPORTANT, because the basic
 * name "unstructured programming" is an archaic artifact of a bygone computing era. It's
 * more or less equivalent to a dictionary in Python, and it allows you to do things like
 * store metadata for books (which was the example that Dr. Loke gave -- title = string,
 * author = string, price = float, and copies = int -- you can't do that with an array).
 * 
 * You literally just do book.price = value to set the element to the value, but we'll
 * get to that later.
 * 
 * ONE-DIMENSIONAL VS. TWO-DIMENSIONAL
 * 1D: uses one subscript [index]
 * 2D: uses two subscripts 
 * 
 * Example below:*/

int twodimensional()
{
    int a[4][3]; // 4 x 3 array
    a[3][2] = 10;
    a[1][2] = 5;
    return 0;
}

/* The array above will end up looking like this:
 *   0   1   2   3
 *   ------------------
 * 0 | 0 | 0 | 0 |  0 |
 *   ------------------
 * 1 | 0 | 0 | 0 |  0 |
 *   ------------------
 * 2 | 0 | 5 | 0 | 10 |
 *   ------------------
 * 
 * But again, BE VERY CAREFUL WITH INDICES. Looking for a[2][3] will result in a bad
 * subscript error, which may or may not cause your compiler to complain, but if it
 * doesn't complain, it could end up royally jacking up the memory address to which it
 * refers, meaning when you reference that value with what it's supposed to be referenced
 * with, you'll get garbage.
 * 
 * PASSING ARRAYS TO FUNCTIONS
 * + Arrays must be passed by reference ONLY
 * If you type in an array identifier, it refers to the address of the first element of
 * the array. If you give an array identifier with a subscript, then it refers to the
 * value (meaning you need the ampersand if you pass that by reference).
 * Instead of using the asterisk operator, it's better to use square brackets instead of
 * an asterisk with this, since some compilers will dump warnings, and for others it's
 * just really fricking confusing. Here we go: */

int example2()
{
    int a[SIZE];
    int err = load(a, SIZE);
    if (err != 0)
        return err;
    print(a, SIZE);
    return 0;
}

int load(int a[], int n)
{
    int i;
    printf("Enter some numbers : ");
    for (i = 0 ; i < n ; i++)
        scanf("%d", &a[i]);
    return 0;
}

int print(int b[], int n)
{
    int i;
    for (i = 0; i < n ; i++)
        printf("%d ", b[i]);
    printf("\n\n");
    return 0;
}

/* LASTLY (but not least): SORTING ARRAYS
 * How do you sort an array?
 * -----------------    -----------------
 * | 4 | 3 | 2 | 1 | -> | 1 | 2 | 3 | 4 |
 * -----------------    -----------------
 * Essentially, what you do is check each element, and, if it's bigger than the one to
 * its right, you SWAP them. If they're not bigger, you leave it. Ascending and
 * descending arrays have the same logic to sorting them, the only difference is the
 * condition.
 * 
 * One does this using two deterministic for loops (an i and a j loop) to ensure that
 * every single element gets hit -- here's an ASCII diagram:
 * i = 0           | 1         | 2
 * ----------------------------------------
 * j = 0 [4 3 2 1] | [3 2 1 4] | [2 1 3 4]
 *     1 [3 4 2 1] | [2 3 1 4] | [1 2 3 4]
 *     2 [3 2 4 1] | [2 1 3 4] | [1 2 3 4]
 * 
 * The number of steps the is the same EVERY TIME for this algorithm, and one swaps the
 * variables around using a temporary variable (tmp = a[j]; a[j] = a[j + 1]; a[j + 1] = tmp;)
 * 
 * OK, now I'll write the code(s). */

int sort(int arr[], int n)
{
    int i, j, err;
    for (i = 0 ; i < n - 1 ; i++)
        for (j = 0 ; j < n - 1 ; j++)
            if (arr[j] > arr[j + 1])
                err = swap(&arr[j], &arr[j+1]);
    if (err != 0)
    {
        printf("arrays: sort failed (error %d: %s)", err, "could not swap values");
        return -1;
    }
    return 0;
}

/* Here's a function just for the swap -- this is overkill, but I think it can be useful to make
 * your code look more elegant and readable. */
int swap(int* a, int* b)
{
    int tmp;
    tmp = *a;
    *a = *b;
    *b = tmp;
    return 0;
}

/* EXAM REVIEW
 * + two types of function: void and non-void
 *   -> void function doesn't return anything through (use when returning more than one thing
 *      via pointers/passing by reference, or nothing at all)
 *   -> non-void functions return ONE and ONLY ONE value, of ONE return type
 * + parameter passing: functions need to communicate, man...
 *   1) passing by value: create a copy for the function to use (non-destructive)
 *      -> uses more resources, but safer
 *   2) passing by reference: give a the memory address (destructive)
 *      -> only works if the variable linked to the memory address is defined -- otherwise you
 *         get garbage
 *      -> you do this with the ampersand (the address) and the asterisk (the value)
 *      -> uses less resources (good when power consumption is mission critical, such as in
 *         embedded systems), but you risk jacking everything up (you could accidentally end
 *         up changing someone's age from 18 to some older number and his "balding" flag from
 *         0 to 1, which means now you've just turned me into Roy.)
 *      -> you need to pass by reference when you return more than one thing to a parent
 *         function, when you return an array/string, or when you want to do error handling
 *         (which is generally a good practice -- because C does not have built-in exception
 *         handling, function communication is generally important if you're writing lots of
 *         code for desktop, just to make sure the program doesn't end up working with garbage)
 * + DRAW STRUCTURE CHARTS
 * + The exam will ask about function definitions, how to prototype, what prototyping is,
 *   parameters, etc., and the written portion will involve writing function calls into the main
 *   function, then writing the code for the functions to match the given output.
 * + As for the homework, FUNCTIONS CAN CALL THEMSELVES -- this is called RECURSION, and can be
 *   used to make an extremely unreadable loop. */
