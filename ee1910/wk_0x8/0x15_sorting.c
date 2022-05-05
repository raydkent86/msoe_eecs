/* SORTING AND SEARCHING ARRAYS
 * Arrays and their functionality in for loops are incredibly useful, but what if I told you they
 * could be even more useful?
 * 
 * Annoyingly, to make them more useful, we need a more useful state of the array, which is the
 * reason we have to sort them from time to time. Sorting an array does what it sounds like: puts
 * the elements in order either smallest to largest or largest to smallest by integral value,
 * separating the small values from the large values as if they all had the Kung Flu.
 * 
 * There are lots of different ways to sort an array, but they all hinge on comparing single
 * elements and swapping them around. Probably the most common though is the bubble sort, which
 * works its way through with two loops and flips numbers in the wrong order.
 * 
 * This helps us to search arrays, since now we can perform binary searches and potentially save
 * tons of computational resources. Even though one can theoretically blast through an array and
 * look for a value by checking every single element, it's unnecessarily computationally intensive
 * in just about every case. Unless your array is less than ten elements long, you'll waste more
 * resources chugging through in search of your value than if you had just sorted the silly thing
 * in the first place.
 * 
 * Let's try it with some Johnson code, modified to get it into my coding conventions (read: get it
 * indented properly and get it out of fucking camel case): */

#include <stdio.h>
#include "arrays.h" // bring in the print function from last time

void bubble_sort(int my_array[], int last)
{
    // local variables
    int tmp;
    int bdry;
    int bub;

    // outer loop
    for (bdry = 0; bdry < last; bdry++)
    {
        // inner loop
        for (bub = last; bub > bdry; bub--)
        {
            if (my_array[bub] < my_array[bub - 1])
            {
                tmp = my_array[bub];
                my_array[bub] = my_array[bub - 1];
                my_array[bub - 1] = tmp;
            } // end if
        } // end inner
    } // end outer
} // end bubbleSort

int binary_search(const int my_array[], int end, int target, int *locn){
        // Binary Search Function
        //
        // Inputs: Array to sort, index of last element,
        //          value to search for, pointer to location
        //          to store the index of the value if found
        // Outputs: Returns 1 if value found, 0 if not
        //          Modifies the value corresponding to the pointer
        //
        // local variables
        int first;
        int mid;
        int last;

        // algorithm
        first = 0;
        last = end;

        while (first <= last)
        {
            // calculate mid
            mid = (first + last)/2;
        
            // check value
            if (target > my_array[mid])
                first = mid + 1; // upper half
            else if(target < my_array[mid])
                last = mid - 1; // lower half
            else
                // found
                first = last + 1;
        } // end while

        // set value of index
        // using a pointer to allow multiple returns
        *locn = mid;

        // set return to 1 if found, 0 if not found
        return (target == my_array[mid]);
} // end binarySearch

// now, the implementation
int sort_n_search()
{
    int size;
    int location_of_val;
    int errno;
    int target;

    printf("Please enter the number of elements in your array: ");
    scanf("%d", &size);
    int my_array[size]; // doesn't always work - check your compiler's documentation

    printf("Please enter %d values for the array: ", size);
    read_array(size, my_array);

    printf("You entered: ");
    print_array(my_array);

    bubble_sort(my_array, (size - 1));

    printf("Your sorted array is: ");
    print_array(my_array);

    while (1)
    {
        printf("Please enter a value to search for (-999 to quit): ");
        scanf("%d", &target);
        if (target == -999)
            break;
        else
            errno = binary_search(my_array, (size - 1), target, &location_of_val);

        if (errno != 0)
            printf("Value %d located at index %d of sorted array\n", target, location_of_val);
        else
            printf("Value %d not found in array\n");
    }
    return 0;
}
