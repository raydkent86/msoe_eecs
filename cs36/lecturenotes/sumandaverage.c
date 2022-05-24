/* This program finds the sum and average of three numbers
 * 
 * ********************************
 * 
 * Written by Owen Bailey-Waltz
 * ID: 1158982 Date: 8/26/2019
 * 
 * ********************************
 */

// header files
#include <stdio.h>

int main()
{
// declaration
int a, b, c;
int sum;
float avg;

// input/data
a = 10;
b = 20;
c = 30;

// processing/calculations
sum = a + b + c;
avg = sum / 3;

// output
printf("Three numbers: %d %d %d\n", a, b, c); // %d is a PLACEHOLDER
printf("Sum: %d\n", sum);
printf("Mean: %f\n", avg); // %f = float
return 0;
}
