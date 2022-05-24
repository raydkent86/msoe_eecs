/* FINAL EXAM COMING UP!
 * You CANNOT go on vacation, even if airfare is cheaper that day. If you don't show,
 * it will be a ZERO.
 * 
 * The class after the final will be an office hours period, and it will be for reviewing
 * the exam. You get that day to discuss it, but once that day is over, DONE. KAPUT. OVER.
 * COME ON TIME, becaue the good Doctor does not want to sit there for two hours.
 * 
 * Also, once the grades are submitted, they are PERMANENT. Vacation starts, and it's
 * highly unlikely he'll check his email until 2020 is already in full swing.
 * 
 * Now, back to your regularly-scheduled programming... */

#include <stdio.h>
#define SIZE 256

// MORE TWO-DIMENSIONAL ARRAYS
int twodim_arrays()
{
    int a[5] = {4, 2, 1, 6, 3};
    int b[2][3] = {7, 5, 1, 4, 6, 9};

    // what this actually does is:
    int c[2][3] = {{7, 5, 1}, {4, 6, 9}};

    // valid declarations
    int score[][3] = {{90, 87, 78}, {68, 62, 71}}; // fine, but the last index is required
    int score2[2][3] = {0}; // entire array initializes to zeroes
    int score3[2][3] = {{50, 60, 70}}; // only one row initialized, the other row is zeroes

    /* 2D arrays need TWO for loops to crawl them -- and 3D arrays need THREE for loops.
    You need another for loop for every new dimension of the array. Below is an example of
    doing that things (bad grammar, I know) */
    int d[2][3];

    // load the array
    int row, col;
    printf("Enter six values: ");
    for (row = 0 ; row < 2 ; row++)
        for (col = 0 ; col < 3 ; col++)
            scanf("%d", &d[row][col]);
    
    // print 2D array
    for (row = 0 ; row < 2 ; row++)
        for(col = 0 ; col < 3 ; col++)
            printf("%-5d", d[row][col]);
    printf("\n\n\n");

    // print the same thing in a grid
    for (row = 0 ; row < 2 ; row++)
    {
        for(col = 0 ; col < 3 ; col++)
        printf("%-5d|", d[row][col]);
    }

    return 0;
}

/* LAB CONT'D - QUESTION #8
 * Write a program to output Pascal's Triangle using a 2D array:
 * 1
 * 1  2  1
 * 1  3  3  1
 * 1  4  6  4  1
 * 1  5 10 10  5  1 
 * 1  6 15 20 15  6  1*/
int lab8()
{

}

/* QUESTION #9
 * Enter the data
 * --------------
 * Enter the score of student 0 in 3 classes
 * 78 89 90
 * Enter the score of student 1 in 3 classes
 * 98 87 76
 * ...
 * Enter the score of student 9 in 3 classes 
 * 
 * stud. no.  scores in 3 classes  total score  average
 * ---------  -------------------  -----------  -------
 *     0       78     89    90         257       85.67 */
int lab9()
{

}

/* MORE STRING CRAP (w007)
 * + string is a NULL-terminated array
 *   -> that means that "Hello" becomes "Hello\0"
 *   -> if you add one character too many, it will not add a NULL, meaning it
 *      will be "hell" for you later xD
 *   -> if you allocate more characters than used, every empty character will be
 *      either be a NULL or a blank, depending on yo compiler */
int more_strings()
{
    // how to declare a string the stupid way
    char str[] = {'H', 'e', 'l', 'l', 'o', '\0'};

    /* There are TWO RULES, however: you cannot assign a string to a value with more
    characters than elements, and the declaration cannot be on a separate line from
    declaration. */
    char str2[3];
    // str2 = "Hello"; // this is very illegal
    // str2 = str; // also illegal

    /* In order to copy strings, you need to use strcpy() from string.h. If you don't,
    you CAN'T. It's as simple as that. */

    return 0;
}

/* HOW TO READ STRINGS
 * After declaring a string, you can also read in the value, which you can read in a
 * few different ways:
 * 1) scanf()
 * 2) gets()
 * 3) getchar(), getch(), getche()
 * 4) fgets() -- used for FILES, but works like gets() but better, because it only
 *               reads only one input stream instead of fricking everything. */
int learning_to_read()
{
    char str[SIZE];
    
    // method 1
    scanf("%s", str); // only works for single words, because of the nature of scanf()

    // method 2
    gets(str); // like the emergency brake in Spaceballs: NEVER USE.

    // method 3
    int i = 0;
    char ch = getchar();
    while (ch != '*')
    {
        str[i] = ch;
        i++;
        ch = getchar();
    }
    str[i] = '\0';
    return 0;
}

/* C has a lot of flexibility, means that the programmer has lots of responsibility.
 * It's easy to learn, hard to master, and probably the most powerful language that
 * exists in the modern landscape.
 * 
 * Now, WRITING STRINGS: */
int writing()
{
    char str[SIZE] = "go back to the fire";

    // method 1
    printf("%s\n", "we come from the fire");

    // method 2
    puts("living in the fire");
    
    // method 3
    int i = 0;
    while (str[i] != '\0')
    {
        putchar(str[i]);
        i++;
    }

    // initializing fragments
    printf("%s", str); // hello
    printf("%s", &str); // hello (redundant equivalent)
    printf("%s", &str[2]); // llo

    // suppressing input with scanf
    int hr, min;
    scanf("%d*c%d", &hr, &min); // the *c is some character that won't be read

    // using scansets
    printf("Enter some random string: ");
    scanf("%[aeiou]s",  str); // only reads vowels, ignores everything else
    /* IMPORTANT -- it will STOP READING once it sees a SINGLE non-vowel. It will
    always stop accepting characters as soon as a non-vowel is entered. */
    scanf("%[^aeiou]s",  str); // read anything that's NOT an AEIOU.

    // Now, since the hat (^) is a control char, if you want a hat to be in there:
    scanf("%[0123456789.^[]()_+-$%&*]s", str);
    // ...PLACE IT IN THE MIDDLE!

    return 0;
}

/* If you want more on scansets, GOOGLE IT or GET A BOOK, because Loke isn't gonna
 * explain it at length. Now for some FUN STUFFS: */

// finding the length of a string
int slen(char str[])
{
    int i = 0;
    while (str[i] != '\0')
        i++;
    return i;
}

// converting lowercase to uppercase
int uppercase(char str[])
{
    int diff = (int)'a' - (int)'A';
    int i = 0, j = 0;
    while (str[i] != '\0')
    {
        if (str[i] >= 'a' && str[i] <= 'z')
            str[i] -= (char)diff;
        i++; // some people use a j counter in addition, it depends on the engineer
    }
}

/* Now, here are the last of the LABS:
 * STRINGS LAB
 * 1) Write a program to read and print text until a * is encountered. Also, count
 *    the number of characters in the text entry.
 *    OUTPUT:
 *    Enter * to end
 *    Enter text : Hi there*
 *    The text is: Hi there
 *    The count of characters is: 8
 * 
 * 2) Write a program to read a sentence. Then count the number of words in the
 *    sentence.
 *    OUTPUT:
 *    Enter the sentence: How are you
 *    Total words: 3
 * 
 * loke.exe: Think about strings while you eat your turkey (or salmon, if you're
 *           like Owen's weirdo extended family of l******s xD)
 * 
 * 3) Write a program to read multiple lines of text until a * is encountered.
 *    Count the number of characters, words, and lines.
 *    OUTPUT:
 *    Enter the text: Hi There
 *    The total word count: 2
 *    The line count: 1
 *    The characters count: 8
 * 
 * 4) write a program to enter a text. Then enter a pattern and count the number
 *    of times the pattern repeated in text.
 *    OUTPUT: 
 *    Enter string: She sells sea shells on the sea shore
 *    Enter the pattern: sea
 *    Pattern found 2 times
 * 
 * Happy Thanks-for-giving! */
