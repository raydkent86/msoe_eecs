/************************************************
 * Problem 8
 * Owen Bailey-Waltz
 * 1158982
 * This program will take a number from 1 to 7
 * and will display the corresponding day of the
 * week for that number using a switch statement.
 ************************************************/

#include <stdio.h>

int main()
{
    // decl/input
    int day;
    printf("Enter a number from 1 to 7 : ");
    scanf("%d", &day);

    // logic/output
    switch (day)
    {
        case 1:
            printf("Monday\n");
            break;
        case 2:
            printf("Tuesday\n");
            break;
        case 3:
            printf("Wednesday\n");
            break;
        case 4:
            printf("Thursday\n");
            break;
        case 5:
            printf("Friday\n");
            break;
        case 6:
            printf("Saturday\n");
            break;
        case 7:
            printf("Sunday\n");
            break;
        default:
            printf("Invalid\n");
    }

    // exit
    return 0;
}

/* OUTPUTS #8
Enter a number from 1 to 7 : 1
Monday

Enter a number from 1 to 7 : 2
Tuesday

Enter a number from 1 to 7 : 3
Wednesday

Enter a number from 1 to 7 : 4
Thursday

Enter a number from 1 to 7 : 5
Friday

Enter a number from 1 to 7 : 6
Saturday

Enter a number from 1 to 7 : 7
Sunday

Enter a number from 1 to 7 : 8
Invalid */
