#include <iostream>
#include <fstream>
using namespace std;

/* THE C++ WAY TO DEAL WITH FILES
 * The file handling is fairly similar to the way we do printing
 * and scanning, and why wouldn't it be? As mentioned previously,
 * the << and >> are STREAM INSERTION and STREAM EXTRACTION
 * operators, which means, if you paid attention in C class, you
 * will know that all we need is a file stream.
 * 
 * The C++ way of opening a file stream is fairly similar to the
 * C way, except that now you've got to include a header named
 * <fstream> to do it. This leads to a functionality like the
 * program below. 
 * 
 * But remember these THREE IMPORTANT THINGS ABOUT FILES:
 * 1) If you open an existing file for output, it's immediately
 *    WIPED OUT without asking for confirmation. That's bad news
 *    for that big-ass collection of porn you've amassed and good
 *    news for society, because now you've gotta redownload all of
 *    it and we're going to know who you are. #NoPorn
 * 2) Make sure you have your formatting and your spaces set up
 *    when you're working with text files so you don't just get a
 *    glob of unreadable shit that won't actually make any sense
 *    after you're done. YES, THAT ACTUALLY HAPPENS.
 * 3) When you get done... CLOSE UP YOUR FILE STREAM after you USE
 *    it, you lazy shitbrained self-centered fucktards! You'd think
 *    that when you need to conserve memory to do essential system
 *    processing, some best practices would apply. If you want to
 *    not run out of memory due to resource leaks... CLOSE THE FILES
 *    UP, you dumb SHITS!
 * Alrighty, rant over. Let's write some code(s). */

int nums()
{
    ofstream outfile("/Users/owen.baileywaltz/Library/Mobile Documents/com~apple~CloudDocs/deadc0de/ivc/cs37/lecturenotes/nums.dat", ios::out);
    int num;
    cout << "Enter a number and ^D to quit ";
    while(cin >> num)
    {
        outfile << num << endl; // send the numbers to the file output stream
        cout << "next number? ";
    }
    outfile.close();
    cout << endl << endl;

    // retrieve and print the file!
    ifstream infile("/Users/owen.baileywaltz/Library/Mobile Documents/com~apple~CloudDocs/deadc0de/ivc/cs37/lecturenotes/nums.dat", ios::in);
    while (infile >> num)
        cout << num << "   ";
    cout << endl;
    infile.close();
    
    return 0;
}

/* When you open up a file, the second argument to your file
 * stream declaration has to be one of these three little
 * buggers:
 * + ios::app -> appends to end of file
 * + ios::in -> opens for input
 * + ios::out -> opens for output (overwrites existing)
 * 
 * Something else worth mentioning is that we're using the
 * end of file character to terminate the input stage of the
 * program. In UNIX-like systems, if you type CTRL-D on the
 * keyboard, it will signal EOF and close the input stream.
 * The tradeoff for doing this is that you'll have to get
 * that EOF out of the stream before you use it again, or
 * the program will bomb and you'll get garbage.
 * 
 * We're only learning about text file functionality right
 * now, binary's going to come a bit later, but it works just
 * like it does in C. Now, one with people's names: */

int people()
{
    ofstream outfile("/Users/owen.baileywaltz/Library/Mobile Documents/com~apple~CloudDocs/deadc0de/ivc/cs37/lecturenotes/people.dat", ios::out);
    char name[30];

    cout << "Enter a name, ^D to quit: ";
    while (cin.getline(name, 30))
    {
        outfile << name << endl;
        cout << "Next name? ";
    }
    outfile.close();
    cout << endl << endl;

    /* If you ever need to read strings from a file after you've
    just read a bunch of numbers, you can do infile.ignore(30, '\n')
    the same way you would with cin, since they're both file streams. */
    ifstream infile("/Users/owen.baileywaltz/Library/Mobile Documents/com~apple~CloudDocs/deadc0de/ivc/cs37/lecturenotes/people.dat", ios::in);
    while (infile.getline(name, 30))
        cout << name << endl;
    cout << endl;
    infile.close();

    return 0;
}

/* Finally, time for a complex one, and the last program in
 * this section! Anybody can do binary files for complex
 * datastructures, but we're going to learn how to handle
 * text files, because it's bleeping stupid and we're never
 * going to use it... like, ever. But it's a good exercise!
 * 
 * If we were in person, Dr. Hochwald, I'd be a few minor
 * offenses away from chewing your head off. */

struct Student
{
    char name[20];
    int test1, test2, test3;
    float avg;
};

int students()
{
    Student s[4]; // no "struct" required in C++!
    int i;

    // load the array of structures from the keybd
    for (i = 0 ; i < 4 ; i++)
    {
        cout << "Enter a full name: ";
        cin.getline(s[i].name, 20);
        cout << "Enter three test scores: ";
        cin >> s[i].test1 >> s[i].test2 >> s[i].test3;
        s[i].avg = (float)(s[i].test1 + s[i].test2 + s[i].test3) / (float) 3; // typecasting like a badboy
        cin.ignore(20, '\n'); // DON'T FORGET THE IGNORRRRRRRRE
        cout << endl;
    }

    // save the array to a datafile
    ofstream outfile("/Users/owen.baileywaltz/Library/Mobile Documents/com~apple~CloudDocs/deadc0de/ivc/cs37/lecturenotes/student.dat", ios::out);
    for (i = 0 ; i < 4 ; i++)
    {
        outfile << s[i].name << endl; // FORMATTING is good
        outfile << s[i].test1 << ' ' << s[i].test2 << ' '
                << s[i].test3 << ' ' << s[i].avg << endl;
    }
    outfile.close();

    // get it back
    ifstream infile("/Users/owen.baileywaltz/Library/Mobile Documents/com~apple~CloudDocs/deadc0de/ivc/cs37/lecturenotes/student.dat", ios::in);
    for (i = 0 ; i < 4 ; i++)
    {
        infile.getline(s[i].name, 20);
        infile >> s[i].test1 >> s[i].test2 >> s[i].test3 >> s[i].avg;
        infile.ignore(20, '\n');
    }
    infile.close();

    // print it out
    for (i = 0 ; i < 4 ; i++)
    {
        cout << s[i].name << endl;
        cout << "The scores are " << s[i].test1 << ' '
            << s[i].test2 << ' ' << s[i].test3 << endl;
        cout << "The average is " << s[i].avg << endl;
    }
    return 0;
}

/* WHEW -- the good news is, binary files are going to
 * be a lot easier. That is, if I'm still around then. */

int main()
{
    int err = students();
    return err;
}
