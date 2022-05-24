/************************************************
 * Homework 1 - Program Set 1
 * Owen Bailey-Waltz
 * 1158982
 * This program finds the area and circumference
 * of a circle, using a radius given by the user.
 ************************************************/

#include <stdio.h>
#define PI 3.14159

int main()
{
    // declarations
    float r, d;
    float area, circ;

    // input
    printf("The radius of the circle is ");
    scanf("%f", &r);

    // calc
    d = 2 * r;
    area = PI * r * r;
    circ = 2 * PI * r;

    // output
    printf("The diameter of the circle is %.5f\n", d);
    printf("The area of the circle is %.5f\n", area);
    printf("The circumference is %.5f\n", circ);
    
    // exit
    return 0;
}

/* OUTPUT
The radius of the circle is 5
The diameter of the circle is 10.00000
The area of the circle is 78.53975
The circumference is 31.41590

The radius of the circle is 12
The diameter of the circle is 24.00000
The area of the circle is 452.38898
The circumference is 75.39816

The radius of the circle is 21
The diameter of the circle is 42.00000
The area of the circle is 1385.44116
The circumference is 131.94678

The radius of the circle is 99
The diameter of the circle is 198.00000
The area of the circle is 30790.72461
The circumference is 622.03485

The radius of the circle is 9
The diameter of the circle is 18.00000
The area of the circle is 254.46880
The circumference is 56.54862
*/
