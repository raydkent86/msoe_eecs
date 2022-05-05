/* PROGRAMMING PRACTICE #1
 * Over the course of the quarter, Dr. Johnson will write practice programs every Friday to help
 * us to refine the one thing that we basically haven't done yet but this class is supposed to
 * teach us to do: program things in Embeddedland (or just in general).
 * 
 * This is the copy of Dr. Johnson's code as it comes in, and it may not work if we run it from
 * here, but this whole thing is purely notes anyway.
 * 
 * Remember that if you're doing this in Eclipse, make sure you know what the buttons at the top
 * do. They change what they do all the time, and if you don't think you know, DON'T USE THEM.
 * Right-click the project and do things manually, because you'll break fewer things.
 * 
 * This first practice routine is intended to calculate the parameters of a cuboid, taking the
 * width, length, and height, and spitting out some various things we don't know yet.
 * 
 * We start, of course, with the #include statements to bring in the standard I/O library: */

#include <stdio.h>

int cuboid()
{
    // init
    setbuf(stdout, NULL); // we'll explain why this is necessary later, but this isn't usually necessary when you're working with GCC on macOS or Linux
    printf("BOX PROGRAM\n");

    // variable declarations
    float l, w, h; // I like doing this with related variables but Dr. Johnson seems to think it's hateful, so use discretion
    float vol;
    float surf;

    // get values: length, width, height
    printf("Please enter values for the length, width, and height: ");
    scanf("%f%f%f", &l, &w, &h); // you can do these together as well as separately - we'll also talk about the scanf() commandments again later

    // calculate and print volume
    vol = l * w * h;
    printf("The volume of the box is %f\n", vol);

    // calculate and print surface area
    surf = (float)2 * l * w + (float)2 * w * h + (float)2 * l * h; // typecasted "2" values so we don't get calculation inaccuracies
    printf("The surface area of the box is %f\n", surf);

    return 0;
}

/* The original version of that included an infinite loop, but I decided not to include it in
 * my version because it's shit.
 * 
 * We could also choose to format those output values so they look better, but that's also not
 * introduced yet, and we're not trying to make this look as pretty as it can possibly be yet.
 * 
 * I will, however, give ONE of the scanf() commandments right now because I mentioned it as a
 * question in class, the first one:
 * 
 * I) scanf() works until:
 *      - the maximum number of characters has been processed
 *      - a white space character is encountered
 *      - an error comes up
 * 
 * That means if a string of a given length fills up, or an integer exceeds the maximum number
 * of digits it is capable of, it will move on to the next conversion specifier in the chain.
 * 
 * Be careful with this, because this has the propensity for you to get garbage.
 * 
 * This is all well and good, so let's do a variant for a cube rather than a cuboid. */

int cube()
{
    // init
    setbuf(stdout, NULL);
    printf("CUBE PROGRAM\n");

    // variable declarations and input
    float l;
    float vol;
    float surf;
    printf("Please enter the face length: ");
    scanf("%f", &l);

    // calculate and print volume and surface area (in a slightly more cohesive manner)
    vol = l * l * l;
    surf = (float)6 * l * l;
    printf("The volume of the box is %f\n", vol);
    printf("The surface area of the box is %f\n", surf);

    return 0;
}

/* One other thing: if you run an EXE file compiled through your IDE (CodeBlocks if you're
 * with Chan Loke because he tends to agree with me that Eclipse blows), it will open up in
 * a Windows command line window. This is because Windows NT, ever since DOS became obsolete,
 * is programmed to run programs designed for the console in terminal emulator windows
 * 
 * One final program - let's print some characters. */

int chars()
{
    setbuf(stdout, NULL);
    printf("Doing Dumbshit With Characters(TM)\n");

    char c;
    while(1)
    {
           printf("Please enter a character: ");
           scanf("%c", &c);
           printf("Your character was %c\n", c);
    } // this will continue until the cows come home
    
    return 0; // unreachable
}

int main()
{
    int errno;
    errno = cuboid();
    errno = cube();
    errno = chars();
    return errno;
}
