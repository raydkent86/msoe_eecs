/* MOAR STRINGS
 * 
 * again:
 * string = a collection of characters (not a simple datatype)
 * placeholder: %s
 */

#include <stdio.h>

void morestrings()
{
    char name[10];
    int a, b, c;
    scanf("%s", name); // reads one word until a space is encountered
    // for instance, "Joe Schmoe" in the input stream will give trouble

    // to bypass, use gets()
    gets(name); // reads a string, including blank spaces
    
    /* IMPORTANT: If stdin = "Joe Schmoe[RET]10 20 30[RET]", then gets()
     * will read the returns as a part of the next scan. Use getchar()
     * to dump the additional newline character from the stream.
     * 
     * If you have a number before entering a string, flush it first. */
    getchar(); // Mac way to flush -- cc on UNIX does not support flush()

    // input
    gets(name);
    scanf("%d%d%d", &a, &b, &c);
    getchar();
}

// STRING FORMATTING
void formatting()
{
    char str[] = "Good morning"; // no bounding number required
    printf("\n%s", str); // no formatting
    printf("\n%20s", str);
    printf("\n%20.10s", str);
    printf("\n%.7s", str); 
    printf("\n%-20.10s", str); // left-justify, first 10 chars
    printf("\n%7s", str);

    /* stdout output of the six functions above:
     * 1) "Good morning"
     * 2) "        Good morning"
     * 3) "          Good morni"
     * 4) "Good mo"
     * 5) "Good morni          "
     * 6) "Good morning"
     */
}

/* more scanf magic
 * 
 * If you enter "1 -20 .3 -4.0e3[RET]", then everything will be fine.
 * The "e" is parsed as an exponential operator.
 * 
 * HOWEVER, if you add additional blanks... then...
 * 
 * ...nothing much happens. What?
 * 
 * scanf() DOESN'T CARE about spaces -- it doesn't ever read them.
 * It will ALWAYS IGNORE whitespace characters, NO MATTER WHAT --
 * the only time it ever uses them is when it's scanning and it
 * needs to split numbers.
 * 
 * Even REMOVING whitespaces will be fine.
 */
void more_scanf()
{
    int i, j;
    float x, y;
    scanf("%d%d%f%f", &i, &j, &x, &y);

    /* also, if you don't put a space or character where the control
     * string requires it, it will complain */
    scanf("%d, %d", &i, &j);

    /* finally, a space at the end of the stream will lead to lots
     * of frustration in the form of a STREAM that NEVER ENDS */
    scanf("%d%d ", &i, &j);
}

int main()
{
    morestrings();
    formatting();
    more_scanf();
    return 0;
}

/* BONUS WISDOM: ALWAYS COME TO STUDENTS BEFORE YOU GO TO DR. LOKE,
 * because he DOES NOT DEBUG CODE(S). If you ever email him asking to
 * debug your code(s), he will reply with a can of Raid for you to
 * debug your own code.
 * 
 * For this reason, ask other people in the class, then ask tutors in
 * the SSC in the BSTIC downstairs, THEN make an appointment to talk
 * to him at office hours. Just know that he won't sit there and debug
 * your code with you, but rather try and sufficiently clarify concepts
 * for you. Chances are, though, you won't get there if you communicate
 * with your classmates.
 * 
 * FINALLY: Tests use Scantron Form 82E, purchasable from the bookstore.
 * DON'T FORGET SCANTRONS, because NO SCANTRON NO TEST. */
