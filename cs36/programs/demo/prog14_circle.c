/************************************************
 * Program 14
 * Owen Bailey-Waltz
 * 1158982
 * This program finds the area, circumference,
 * and diameter of a circle.
 * 
 * Yeah, you could just do this with #define.
 * But that would make too much sense.
 ************************************************/

#include <stdio.h>

#define PI 3.14159265358

float cArea(int);
float cCircum(int);
int cDiameter(int);

int main()
{
    unsigned int r;
    do
    {
        printf("Please enter a radius (0 to quit): ");
        scanf("%u", &r);
        if (r != 0)
        {
            printf("Diameter = %d\n", cDiameter(r));
            printf("Area = %f\n", cArea(r));
            printf("Circumference = %f\n", cCircum(r));
        }
    } while (r != 0);
    return 0;
}

float cArea(int r)
{
    return (PI * (float)r * (float)r);
}

float cCircum(int r)
{
    return ((float)2 * PI * (float)r);
}

int cDiameter(int r)
{
    return (2 * r);
}
