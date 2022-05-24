#include <stdio.h>

int main()
{
    int i;
    float x;

    i = 40;
    x = 839.21;
    printf("|%d|%5d|%-5d|%5.3d|\n", i, i, i, i);
    
    // f = fixed, e = exponential, g = auto
    printf("|%10.3f|%10.3e|%-10g|", x, x, x);

    int arg1, arg2;
    printf("with arguments %d%d\n", arg1, arg2);

    // no arguments -- use this if no args
    puts("string only");
    puts("Hello world!");
    // no need for \n -- it's like println() in Java
    return 0;
}