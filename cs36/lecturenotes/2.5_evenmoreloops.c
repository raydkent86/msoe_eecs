/* TIME TO GO EVEN LOOPIER!!!!!!!!
 *
 * 
 * MOAR LOOPS */

#include <stdio.h>
#include <stdlib.h>

/* THE ALMIGHTY FOR LOOP
 *
 * - entrance-controlled
 * - can be deterministic or indeterministic
 * - used whenever you know how many times you want to run the thing */

int forloops()
{
    int i;
    for (i = 1; i < 10; i++) // initial value | condition | counter
        printf("%d\n", i);
    printf("%d\n", i);
    printf("\nIT'S THE TEN DUEL COMMANDMENTS\n");
    return 0;
}

// centigrade to fahrenheit
int get_fahr()
{
    float fahr, cels;
    printf("C            F\n");
    for (cels = -20; cels <= 70; cels += 5)
    {
        fahr = (((float)9 / (float)5) * cels) + (float)32;
        printf("%12f %f\n", cels, fahr);
    }
    return 0;
}

int main()
{
    int err;
    err = forloops();
    err = get_fahr();
    return err;
}
