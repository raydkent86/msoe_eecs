/* Basic Shit (R) about C++
 * - it's pretty much just object-oriented C with a few quirks and
 *   features
 * - it is one of the fastest and most powerful languages available
 *   in the world of computing, and uses multiple different paradigms
 *   from OOP to generic and functional programming, whilst retaining
 *   C's famous faculty for low-level memory manipulation
 * - like C, it's hyperportable, both high- and low-level, and wikkid
 *   fast
 * - again, it's compiler-executable, taking away the slog of using an
 *   interpreter as is the case in languages like Python or Java
 * - a few more keywords than C, but equally much more powerful, with
 *   namespacing and proper object definition functionality available
 * - we still call it hardware, because, when you throw it at someone,
 *   surprise/surprise, it still hurts
 * 
 * IDE DISCLAIMER: Hochwald's not as big a stickler when it comes to the
 *                 IDE you use as Loke is -- you can use Visual Studio,
 *                 Visual Studio Code(s), CodeBlocks, Xcode, Eclipse,
 *                 or FWTS* -- it's just gotta work for you. BUT... if you
 *                 DO decide to be a pleb and use Visual Studio Visual C++,
 *                 you need to make sure you add "system.pause();" to the
 *                 end of your programs so you don't lose the output,
 *                 because Microsoft decided it would be a good idea to
 *                 just throw the console output out the window when the
 *                 program terminates. Yeah, I can't look inside the brain
 *                 of Bill Gates. Maybe on the inside he actually IS a
 *                 sadistic shithead who just wants to see us frustrated
 *                 for all of our existence with badly-designed software.
 *                 Didn't Ballmer used to be all "developers, developers,
 *                 developers" and all that kind of crap? Something's very
 *                 wrong, but just make sure to add that line if you're
 *                 authoring code in Visual Studio. If you can avoid it,
 *                 though, what's the point? The full version of Visual
 *                 Studio is a smoldering pile anyway. You'd be better
 *                 served to just learn Eclipse or learn how to compile from
 *                 the command line, because nobody ever uses that shit in
 *                 the real world.
 * 
 * *fucking whatever the shit
 * 
 * Most of this crap is going to be fairly similar to how C works,
 * but there are a few key differences, as I shall make sure to
 * point out in here. */

/* NUMBER ONE: #INCLUDES
 * Include statements in C++ for the standard libraries do NOT NEED
 * to have a ".h" in the statement, as shown below. Some insanely old
 * versions of gcc and clang may require it, but, as a general rule, that's
 * something from the C days that will definitely not be missed. */
#include <iostream> // single-line comment -- wheeeeeeeeeeeee
#include <iomanip> // output formatting stuff
using namespace std;
// #define _CRT_SECURE_NO_WARNINGS -- VISUAL STUDIO ONLY -- again, who'd ever use that?

// method definition exactly the same as in C
int ages()
{
    /* NUMBER TWO: DEFINITIONS
     * Definitions haven't changed too too much, but there is one new feature:
     * now you can define local variables to be local in scope only to a
     * particular loop or subroutine, which adds a whole new level of POWER */
    int myage, frage;

    /* NUMBER THREE: INPUT AND OUTPUT
     * The input and output functions have changed substantially. No longer do
     * you need to go printf() and scanf(), for you can just make direct
     * reference to the input and output streams and pump stuff directly in and
     * out of them. The best part? No more stupid string placeholders! */
    cout << "Enter your age: "; // << = stream insertion operator
    cin >> myage; // >> = stream extraction operator

    cout << "Enter your friend's age: ";
    cin >> frage;

    /* Since cout and cin are the C++ counterparts to the streams stdout and stdin,
    logic would follow that the same operations are possible with a file stream,
    and that output can be pumped to cerr for standard error output. */
    // cerr << "FAIL"

    /* NUMBER FOUR: NEWLINES
     * Proper C++ newline convention is to use the keyword "endl" in place of
     * the \n escape sequence that is used in C. The old notation still works,
     * but it's worth noting that the convention has changed. */
    cout << "The two ages are " << myage << " and " << frage << endl << endl;
    
    if (myage > frage)
        cout << "You are older \n"; // you can still technically use \n if you want
    else
        if (myage < frage)
            cout << "Your friend is older" << endl;
        else
            cout << "We are the same age" << endl;
    
    return 0;
}

/* NUMBER FIVE: STRING FUNCTIONALITY
 * This is a pretty long one, so forgive me -- I have to use an entire method to do this */
int newstrings()
{
    const int SIZE = 80; // constant declaration -- SIZE cannot change value
                         // it's worth mentioning that this could also be done with #define
                         // the only issue would be that #define would be global

    // create a string with 79 characters plus the EOF
    char line[SIZE];

    // read directly from the input stream
    cout << "enter a line of text: ";
    cin >> line;
    cout << line << endl;

    /* Great. Only one problem: this is going to be a major fail if we enter 
    something like "joe schmoe" -- if we were to enter something with a whitespace
    in it and then directly read from the input stream, scanf() style, the behavior
    will be exactly the same as with scanf() -- it cuts off at the whitespace,
    leaving the "schmoe" stuck in the input stream, only to come out at an
    inconvenient time and ruin your program execution. How do we fix this, then? */

    /* First, we have to use ignore() from the input stream object to basically do
    getchar() and get all the remaining garbage out of the stream, up to either a
    given length or a given type of character: */

    // ignores up to SIZE or up to '\n'
    cin.ignore(SIZE, '\n');

    /* Next, we've gotta write a better function: this will use the getline()
    method from the input stream to get all the characters up to the newline, EOF,
    or the length limit. FYI: a method is a function executed on an object -- it's
    worth knowing the distinction */
    cout << "enter a line of text: ";
    cin.getline(line, SIZE);
    cout << line << endl;

    // that'll fix the glitch -- now "joe schmoe" actually prints out
    return 0;
}

// NUMBER SIX: NEW METHODS
int newmethods()
{
    /* There are a metric crapton of new methods available in C++, since the new object
    functionality has enabled all kinds of new things. No longer are these definitions
    just numbers or collections of numbers, but they've become OBJECTS -- new complex
    datastructures that contain executable functions within known as "methods." Here are
    just a few of them: */

    // reading or putting individual characters / tokenizing
    char c;
    cout << "enter a line of text: " << endl;
    while ((c = cin.get()) != '\n')
        cout.put(c);
    cout << endl << "loop is done" << endl << endl;

    // float formatting
    float num1 = 1234.567;
    float num2 = 57.41111;
    for (int i = 1; i <= 7; i++) // increment precision levels
    {
        cout.precision(i); // specifies number of digits to print
        cout << "cout with precision " << i << " is " << num1 << endl;
        cout << "cout with precision " << i << " is " << num2 << endl;
    }

    // float formatting REDUX
    for (int i = 1; i <= 7; i++)
    {
        cout << setprecision(i); // this is good because you can reduce line count!
        cout << "cout with precision " << i << " is " << num1 << endl;
        cout << "cout with precision " << i << " is " << num2 << endl;
    }

    // string formatting
    char words[11] = "Hello Owen";
    float num = 23.45;

    // setting width with setw() -- defaults to right-justify
    cout << "right justified: " << endl;
    cout << setw(15) << words << endl;
    cout << setw(25) << words << endl;
    cout << setw(10) << num << endl;
    cout << setw(25) << num << endl;
    cout << endl << endl;

    // to left-justify
    cout << "left justified: " << endl;
    cout << setw(15) << left << words << endl; // sets justification
    cout << setw(25) << words << endl;
    cout << setw(10) << num << endl;
    cout << setw(25) << num << endl;
    cout << endl << endl;

    // to reset justification
    cout << "right justified: " << endl;
    cout << setw(15) << right << words << endl; // sets justification
    cout << setw(25) << words << endl;
    cout << setw(10) << num << endl;
    cout << setw(25) << num << endl;
    cout << endl << endl;

    /* Something worth mentioning: setw() has to be repeated each time --
    it DOES NOT PERSIST. ALSO FYI: Numbers should be right-justified to
    line up the decimal points, whereas text should be left-justified to
    line up the text. */

    // to print in money format (avoid exponential crap)
    float cash1, cash2, cash3;
    cash1 = 234.5673;
    cash2 = 13.9275;
    cash3 = 15.0;
    cout << "amount #1 unformatted is " << cash1 << endl;
    cout << "amount #2 unformatted is " << cash2 << endl;
    cout << "amount #3 unformatted is " << cash3 << endl << endl;

    cout << setprecision(2) << showpoint << fixed;
    cout << "amount #1 in dollars is: $" << cash1 << endl;
    cout << "amount #2 in dollars is: $" << cash2 << endl;
    cout << "amount #3 in dollars is: $" << cash3 << endl;

    /* FINAL THOUGHTS: Usually, once you put something in money format, you want
    to keep it that way. BUT... there is a command out there that can reset all
    your IO manipulators INSTANTLY -- DON'T USE THIS YET, but keep in mind that
    the line below will allow you to throw out certain flag settings. The one
    below takes off the fixed precision mode, but it can be applied to other flags
    as well -- see the documentation for more details. */
    resetiosflags(ios::fixed);

    return 0;
}

int main()
{
    // int err = ages();
    // err = newstrings();
    int err = newmethods();
    return err;
}
