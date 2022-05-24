// file1.c
#include <stdio.h>
#include <"file2.c"> // discouraged -- use a header file (.h)

// on a more serious note, file2.c is the programmer's own header file

int x;

void print(void);

int main()
{
    printf("\nx in file1 = %d", x);
    print();
    return 0;
}
