/************************************************
 * Problem 3
 * Owen Bailey-Waltz
 * 1158982
 * This program finds the area of a triangle using
 * functions.
 ************************************************/

#include <stdio.h>

void getData(float*, float*);
float trigArea(float, float);
void displayData(float, float, float);

int main()
{
    float l, h, area;
    getData(&l, &h);
    area = trigArea(l, h);
    displayData(l, h, area);
}

void getData(float* length, float* height)
{
    printf("Enter the length and height of the triangle : ");
    scanf("%f%f", &(*length), &(*height));
}

float trigArea(float length, float height)
{
    float area = (length * height) / 2;
    return area;
}

void displayData(float length, float height, float area)
{
    printf("Length : %f\n", length);
    printf("Height : %f\n", height);
    printf("Area : %f\n", area);
}

/* OUTPUTS 3
Enter the length and height of the triangle : 3 4
Length : 3.000000
Height : 4.000000
Area : 6.000000

Enter the length and height of the triangle : 18 2
Length : 18.000000
Height : 2.000000
Area : 18.000000

Enter the length and height of the triangle : 21.3
9.4
Length : 21.299999
Height : 9.400000
Area : 100.109993

Enter the length and height of the triangle : 8.4
9.19
Length : 8.400000
Height : 9.190000
Area : 38.597996

Enter the length and height of the triangle : 99.3
78.4
Length : 99.300003
Height : 78.400002
Area : 3892.560303 */
