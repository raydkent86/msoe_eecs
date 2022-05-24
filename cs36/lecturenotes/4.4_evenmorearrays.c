/* TIME FOR EVEN MORE ARRAY STUFF! */

#include <stdio.h>
#define SIZE 10

int delete(int[], int, int);
int delete_loke(int[], int, int);
int merge(int[], int[], int[] , int, int);
int lsearch(int[], int, int);

int example1();
int example2();

int main()
{
    int err;
    // err = example1();
    err = example2();
    return err;
}

int example1()
{
    int i, n, pos, arr[SIZE];
    printf("Enter the size of the array:\n");
    scanf("%d", &n);
    printf("Enter the elements of the array:\n");
    for (i = 0 ; i < n ; i++)
        scanf("%d", &arr[i]);
    printf("Enter the position to delete");
    scanf("%d", &pos);
    int err = delete_loke(arr, pos, n);
    if (err != 0)
        printf("evenmorearrays: error %d\n", err);
    
}

int example2()
{
    int i, n, num, arr[SIZE];
    printf("Enter the number of elements in the array : ");
    scanf("%d", &n);
    printf("Enter the elements : ");
    for (i = 0; i < n ; i++)
        scanf("%d", &arr[i]);
    printf("Enter the number to search for : ");
    scanf("%d", &num);
    int res = lsearch(arr, num, n);
    if (res == -1)
        printf("%d does not exist in the array\n", num);
    else
        printf("%d found at index %d\n", num, res);
    return 0;
}

/* DELETING AN ELEMENT IN AN ARRAY
 * It's really simple: just create an array with one fewer elements than the
 * original and use a for loop to step through and grab all the elements but
 * the one you're deleting. Or, if you want to just leave the element empty,
 * that's even more simple. Just assign the element to zero, since it's functionally
 * identical to deleting stuff, since good array indices, by design, will never get
 * garbage.
 * 
 * This function requires the user to pass the number of elements in the array because
 * I'm too lazy to write a function to find the number of elements in the array. */
int delete(int arr[], int ind, int n)
{
    int i;
    int new[n];
    for (i = 0 ; i < n ; i++)
    {
    }
}

/* This one does the delete Chan Loke-style, where it doesn't change the number of
 * elements and sets the last element to zero. */
int delete_loke(int arr[], int ind, int n)
{
    int i;
    for (i = ind ; i < (n - 1) ; i++)
        arr[i] = arr[i+1];
    n--;
    printf("\nThe array after deletion is: \n");
    for (i = 0 ; i < n ; i++)
        printf("Arr[%d] = %d\n", i, arr[i]);
    return 0;
}

/* MERGING ARRAYS
 * Take these two arrays:
 *        0    1    2    3    4 
 *        --------------------------
 * arr1 = | 90 | 56 | 89 | 77 | 78 |
 *        --------------------------
 * 
 *        0    1    2    3    4    5    6
 *        ------------------------------------
 * arr2 = | 45 | 88 | 76 | 99 | 12 | 58 | 81 |
 *        ------------------------------------
 * How do you merge these guys? See code(s) below for the solution! */
int merge(int arr1[], int arr2[], int out[], int size1, int size2)
{
    int i = 0, j;
    int size = size1 + size2;
    int proc[size];
    for (j = 0 ; j < size1 ; j++)
    {
        out[i] = arr1[j];
        i++;
    }
    for (j = 0; j < size2; j++)
    {
        out[i] = arr2[j];
        i++;
    }
}

/* LINEAR SEARCHES (sequential searches -- she sells seashells down by the shesh -- F**K!)
 * It's exactly what it says -- go through an array and find the given value's index, or 
 * do something if the number doesn't exist. */
int lsearch(int arr[], int val, int n)
{
    int i;
    for (i = 0 ; i < n ; i++)
        if (arr[i] == val)
            return i;
    return -1;
}
