/************************************************
* Problem 1
* Owen Bailey-Waltz
* 1158982
* This program will find the index of
* the smallest number in an array, as well as
* the value.
************************************************/

#include <stdio.h>

int main()
{
    int i, min, n, index;
    printf("Enter the number of elements : ");
    scanf("%d", &n);
    int arr[n];
    printf("Enter the elements : ");
    for (i = 0 ; i < n ; i++)
        scanf("%d", &arr[i]);
    min = arr[0];
    index = 0;
    for (i = 1 ; i < n ; i++)
        if (arr[i] < min)
        {
            index = i;
            min = arr[i];
        }
    printf("The smallest element is : %d\n", min);
    printf("The position is : %d\n", index);
    return 0;
}

/* OUTPUTS
