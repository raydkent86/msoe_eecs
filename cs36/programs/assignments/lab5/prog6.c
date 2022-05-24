/* INSERT BANNER SCHIESSE HERE */

#include <stdio.h>
#define SIZE 32

int main()
{
    int i, j, n, num, arr[SIZE];
    int sorted = 1;
    printf("Enter the number of elements in array ");
    scanf("%d", &n);
    printf("Enter the elements ");
    for (i = 0 ; i < n ; i++)
        scanf("%d", &arr[i]);
    printf("Enter the number to be deleted : ");
    scanf("%d", &num);

    for (i = 0 ; ((i < n) && (arr[i] < arr[i+1])); i++)
        if (arr[i] > arr[i+1])
            sorted = 0;
    
    // delete the thing, assuming sorted
    if (sorted)
    {
        for (i = 0 ; i < n ; i++)
            if (arr[i] == num)
                for (j = i; j < n - 1; j++)
                    arr[j] = arr[j + 1];
        arr[n-1] = 0;
        printf("The array after deletion is : ");
        for (i = 0 ; i < n - 1 ; i++)
            printf("%d ", arr[i]);
        printf("\n");
    }
    else
        printf("Array not sorted!\n");
    
    return 0;
}
