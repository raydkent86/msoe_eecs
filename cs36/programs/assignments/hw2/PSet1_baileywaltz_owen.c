/************************************************
 * Homework 2 - Program Set 1
 * Owen Bailey-Waltz
 * 1158982
 * This program is a basic calculator, which
 * takes a two-term equation with a basic operator
 * from the user, runs the calculation, and
 * displays the result in the output.
 ************************************************/

#include <stdio.h>

int main()
{
	double number1 = 0.0;
	double number2 = 0.0;
	char operation = 0;

	printf("\nEnter the calculation\n");
	scanf("%lf %c %lf", &number1, &operation, &number2);

	switch (operation)
	{
	case '+':
		printf("= %lf\n", (number1 + number2));
		break;
	case '-':
		printf("= %lf\n", (number1 - number2));
		break;
	case '*':
		printf("= %lf\n", (number1 * number2));
		break;
	case '/':
		if (number2 == 0)
			printf("Division by zero error!\n");
		else
			printf("= %lf\n", (number1 / number2));
		break;
	case '%':
		if (number2 == 0)
			printf("Division by zero error!\n");
		else
			if (((int)number1 != number1) || ((int)number2 != number2))
				printf("Cannot mod a non-integer!\n");
			else
				printf("= %d\n", ((int)number1 % (int)number2));

		break;
	default:
		printf("calc: invalid operation");
		return 1;
	}
	return 0;
}

/* OUTPUTS

Enter the calculation
25*13
= 325.000000

Enter the calculation
999/3.3
= 302.727273

Enter the calculation
7%0
Division by zero error!

Enter the calculation
7%2
= 1

Enter the calculation
5591+19
= 5610.000000
 */
