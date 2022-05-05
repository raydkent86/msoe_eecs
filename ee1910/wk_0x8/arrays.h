/* ARRAYS
 * Not being able to use these things has annoyed me more than just about anything. It's time we
 * got real and admitted that not everything is a single quantity.
 * 
 * You may notice that this thing is a header file rather than a normal source file, and that's
 * because we're going to be writing some functions we are going to use over the course of the
 * rest of the class. I will import this file and use these functions throughout the remainder
 * of EE 1910's notes.
 * 
 * I'm going to skip a lot of the theory except that the name of the array is actually a POINTER
 * to the first element of the array. This means arrays can ONLY BE PASSED BY REFERENCE. HOWEVER,
 * an array INDEX after the name means the statement points to a VALUE. These facts become
 * critical for when we learn pointer arithmetic, but nothing else is too crucial apart from the
 * fact that arrays are collections of values with the same data type. If we want the types in
 * a complex data structure to vary, we instead use a struct (more on that later, as if you
 * didn't know or expect that already).
 * 
 * C also does NO CHECKING OF ARRAY BOUNDS, unlike languages like Java or Python. All hell can
 * break loose if you try and assign to an index that's out of bounds because you could
 * overwrite some critical value and cause an access violation or even a Blue Screen of Death.
 * Trying to read from an index out of bounds is less dangerous, but you will get garbage and
 * possibly make some big calculation go badly wrong in the worst-case scenario.
 * 
 * But enough idle chit-chat. Let's build some functions and write some codes. */

#include <stdio.h>

void print_array(const int *array, int num); // remember, arrays pass by reference, so you can change the values if you're not careful -- remember "const"

// demo function, equivalent to the main() of Dr. Johnson's stuff
int arraydemo()
{
    int ary1[10] = {1, 2, 3, 4, 5}; // the moment one puts in a single value, all unspecified values go to zero
    int ary2[10] = {0}; // all zeroes
    int ary3[10]; // GAABAEGE

    print_array(ary1, 10); // because pointers
    if (copy_array(ary1, ary3) != 0)
        printf("arrays.h: arrays must be the same size to copy!");
}

// print out the contents of an array of ints
void print_array(const int *array)
{
    int i;
    for (i = 0; i < sizeof(array); i++)
        printf("%i ", array[i]);
    printf("\n");
}

// copying one array to another, this time using the sizeof() operator to reduce the number of arguments and check that things are the same length
int copy_array(const int *src, int *dest)
{
    int i;
    if (sizeof(src) == sizeof(dest))
    {
        for (i = 0; i < (sizeof src); i++)
            dest[i] = src[i];
        return 0;
    }
    else
        return -1;
}

// read values into an array
void read_array(int *in)
{
    int i;
    printf("Enter %d ints: ", sizeof(in));
    for (i = 0; i < sizeof(in); i++)
        scanf("%d", &in[i]);
}

void flip_array(int *array)
{
    int tmp[sizeof(array)];
    int i;
    copy_array(array, tmp);
    for (i = 0; i < sizeof(array); i++)
        array[i] = tmp[sizeof(array) - 1 - i];
}

void rotate_array(int *array, int positions, int dir)
{
    int i;
    int j;
    for (j = 0 ; j < positions; j++)
    {
        int tmp;
        if (dir == 0)
        {
            tmp = array[0];
            for (i = 0; i < sizeof(array); i++)
                array[i] = array[i + 1];
            array[sizeof(array) - 1] = tmp;
        }
        else
        {
            tmp = array[sizeof(array) - 1];
            for (i = 0; i < sizeof(array); i++)
                array[i + 1] = array[i];
            array[0] = tmp;
        }
    }
}
