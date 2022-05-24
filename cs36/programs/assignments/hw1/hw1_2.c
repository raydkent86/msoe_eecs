/************************************************
 * Homework 1 - Program Set 2
 * Owen Bailey-Waltz
 * 1158982
 * This program finds the volume and mass of
 * uniformly-sized boxes for a shipping company.
 ************************************************/

#include <stdio.h>

int main()
{
    // declarations
    int volume, weight;
    int h, l, w;

    // input
    printf("Enter height of box: ");
    scanf("%d", &h);
    printf("Enter length of box: ");
    scanf("%d", &l);
    printf("Enter width of box: ");
    scanf("%d", &w);

    // calc
    volume = h * l * w;
    weight = (volume + 165) / 166;

    // output
    printf("Volume (cubic inches): %d\n", volume);
    printf("Dimensional weight (pounds): %d\n", weight);
    
    // exit
    return 0;
}

/* OUTPUT
Enter height of box: 8
Enter length of box: 12
Enter width of box: 10
Volume (cubic inches): 960
Dimensional weight (pounds): 6 

Enter height of box: 5
Enter length of box: 7
Enter width of box: 9
Volume (cubic inches): 315
Dimensional weight (pounds): 2

Enter height of box: 11 
Enter length of box: 2
Enter width of box: 21
Volume (cubic inches): 462
Dimensional weight (pounds): 3

Enter height of box: 99
Enter length of box: 21
Enter width of box: 83
Volume (cubic inches): 172557
Dimensional weight (pounds): 1040

Enter height of box: 3
Enter length of box: 4
Enter width of box: 5
Volume (cubic inches): 60
Dimensional weight (pounds): 1 */
