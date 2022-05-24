#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int movePlayer(char input, int positionIndex, int inc);

int main()
{
	printf("\nmain() start main()\n\n");
	
	char inputIn[4] = "zzz";
	int positionIndex = 0;
	
	while (inputIn[0] != 'Q')
	{
		printf("\nEnter a direction (N, S, E, W) : \n");
		fgets(inputIn, 4, stdin);
		
		switch(inputIn[0])
		{
			case 'N':
				positionIndex = movePlayer(inputIn[0], positionIndex, 1);
				break;
				
			case 'S':
				positionIndex = movePlayer(inputIn[0], positionIndex, -1);
				break;
			
			case 'E':
				positionIndex = movePlayer(inputIn[0], positionIndex, 8);
				break;
				
			case 'W':
				positionIndex = movePlayer(inputIn[0], positionIndex, -8);
				break;
				
			case 'Q':
				break;
				
			default :
				printf("command unknown : %c\n",inputIn[0]);
				break;
		}
		
	}
	printf("\nmain() Program end ... \n");
	
	return 0;

}

int movePlayer(char input, int positionIndex, int inc)
{
    positionIndex += inc;
    printf("player moved direction: %c new position : %d\n", input, positionIndex);
    return positionIndex;
}
