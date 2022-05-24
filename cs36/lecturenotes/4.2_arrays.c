/* arrays[]
 * - must have the SAME DATATYPES (int/float/char/long/fwts*)
 *   * fucking whatever the shit
 * - need a name to identify array
 * - need to give it a size, too (not like Python -- C isn't that smart, because of its
 *   nature as a compiler language)
 * - size = max number of values the array can hold
 * EXAMPLE */

#include <stdio.h>

int arrays()
{
  int score[10];
  return 0;
}

/* - C does not allow declaring arrays whose number of elements are not known
 * - if you don't give a specific number of elements, C will complain -- it needs to know,
 *   for instance, that the above array needs twenty bytes.
 * - theoretically, the index COULD be a variable, but that variable can't be garbage
 * - most programmers will #define the array size, then stick the text substitution in and
 *   never go wrong (presumably)
 * - you can also use an expression to set the size, but, again, stuff can't be garbage
 * - C NEVER checks the validity of a the array index, meaning if you bring in a bad
 *   index, you will get GARBAGE. Or, even worse, you could damage the memory area that
 *   corresponds to the lvalue that you gave by corrupting it with your new value
 * ACCESSING ELEMENTS OF ARRAYS */

int access()
{
  int i, score[10];
  for (i = 0; i < 10; i++) // Because of arrays, MAKE SURE YOU KNOW YOUR FOR LOOPS.
    score[i] = 1; // puts a value of 1 in the array
  return 0;
}

/* STORING VALUES IN ARRAYS
 * 1) initialize the elements during declarations
 * 2) input values for the elements
 * 3) assign values to individual elements */

int init_methods()
{
  // 1) initialize the array
  int scores[5] = {90, 82, 78, 95, 88};

  // you can also leave it blank, but you MUST put something in if you do
  int scores2[] = {98, 97, 88};

  /* WHAT HAPPENS ON A MEMORY LEVEL
   *          0    1    2    3    4
   *          --------------------------
   * scores = | 90 | 82 | 78 | 95 | 88 |
   *          --------------------------
   *
   * It's worth mentioning that the array will automatically initialize empty elements
   * with ZEROES, meaning it won't ever return garbage, assuming the array index exists.
   * For instance: */

  int scores3[5] = {0};

  /* is really:
   *           0   1   2   3   4
   *           ---------------------
   * scores3 = | 0 | 0 | 0 | 0 | 0 |
   *           ---------------------
   *
   * But how do you assign values to individual elements? */

  // 2) get inputs for array values
  int i, scores4[10];
  for (i = 0; i < 10; i++)
    scanf("%d", &scores[i]);

  // 3) assign values to individual elements
  scores[3] = 100;

  /* This makes scores from the top now:
   *          0    1    2    3     4
   *          ---------------------------
   * scores = | 90 | 82 | 78 | 100 | 88 |
   *          --------------------------- */

  return 0;
}

/* COPYING AN ARRAY TO ANOTHER ARRAY
 * Because you can't directly copy an lvalue to another lvalue (because that's what array
 * pointers actually are), you need to run a loop like the one below to copy an array in
 * C. */

int* copy()
{
  int i, arr2[10];
  int arr1[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
  for (i = 0; i < 10; i++)
    arr2[i] = arr1[i];
  return &arr2;
}
