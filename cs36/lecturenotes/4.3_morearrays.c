/* MORE ARRAY NONSENSE
 * We are going to learn how to
 * 1) traverse arrays
 * 2) insert an element
 * 3) delete an element
 * 4) merge two arrays
 * 5) search for an element
 * 6) sort an array.
 * LET'S GO! */

 #include <stdio.h>

 /* We want to get THIS output:
  *
  * Enter the number of elements (max 20) : 5
  * Enter the elements
  * Arr[0] = 1
  * Arr[1] = 2
  * Arr[2] = 3
  * Arr[3] = 4
  * Arr[4] = 5
  *
  * The array elements are
  * Arr[0] = 1
  * Arr[1] = 2
  * etc...
  *
  * So we do THIS: */

  int printarr()
  {
      int i = 0, n;
      int arr[20];
      printf("Enter the number of elements (max 20) : ");
      scanf("%d", &n);
      printf("Enter the elements\n");
      for (i = 0 ; i < n ; i++)
      {
          printf("Arr[%d] = ", i);
          scanf("%d", &arr[i]);
      }
      printf("\nThe array elements are\n");
      for (i = 0; i < n; i++)
          printf("Arr[%d] = %d\n", i, arr[i]);
      return 0;
  }

/* IMPORTANT INFO: LAB 5
 * 1) Write a program to print the position of the smallest of n positive numbers
 *    using arrays.
 * -------------------------------------------------------------------------------
 * Enter the number of elements : 5
 * Enter the elements : 1 2 3 4 5
 * The smallest element is : 1
 * The position is : 0
 
 * 2) Write a program to interchange the largest and smallest number in the array.
 * -------------------------------------------------------------------------------
 * Enter number of elements : 5
 * Enter the elements : 1 2 3 4 5
 * The smallest element : 1
 * The position : 0
 * The largest element : 5
 * The position : 4
 * The new array is :
 * 5 2 3 4 1 
 * ...
 * -------------------------------------------------------------------------------
 * 3) Write a program to compare the largest element in one array to the largest
 *    element in another array.
 * -------------------------------------------------------------------------------
 * 4) Write a program to insert a value into an array at a given index.
 * -------------------------------------------------------------------------------
 * 5) Write a program to delete a value from an array at a given index.
 * -------------------------------------------------------------------------------
 * 6) Write a program to delete a number from an array that is already sorted in
 *    ascending order. 
 * -------------------------------------------------------------------------------
 * 7) Write a program to merge two sorted arrays and sort the result.
 * 
 *        --------------------------
 * arr1 = | 20 | 30 | 40 | 50 | 60 |
 *        --------------------------
 *        ------------------------------------
 * arr2 = | 15 | 22 | 31 | 45 | 56 | 62 | 78 |
 *        ------------------------------------
 *        -------------------------------------------------------------
 * arr3 = | 15 | 20 | 22 | 30 | 31 | 40 | 45 | 50 | 56 | 60 | 62 | 78 |
 *        ------------------------------------------------------------- */
