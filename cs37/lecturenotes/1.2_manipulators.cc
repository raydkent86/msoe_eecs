#include <iostream>
#include <iomanip>
using namespace std;

/* NUMBER SEVEN: NUMBER BASES
 * This feature is technically available in C as well, but the way that
 * we go about doing it is a little different to C. Here we go: */

int bases()
{
    int n = 29;
    cout << n << " in hexadecimal is: "
        << hex << n << endl; // you can separate lines if you want
                             // just make sure to indent and make it readable!
    cout << uppercase << "hex in uppercase is: " << n << endl;
    cout << nouppercase << "hex back in lowercase is: " << n << endl;
    cout << n << " in octal is "
        << oct << n << endl; // switch to octal
    cout << n << " back in decimal is "
        << dec << n << endl << endl;

    /* You can also use setbase() to format the base, but the PARAMETER MUST BE
    EITHER 8, 10, or 16. There is no option to use this to convert to binary,
    but you can do that using some other way, and, as I'm about to explain... why
    would you? */
    cout << setbase(16) << "hex is " << n << endl;
    cout << uppercase << "hex in uppercase is " << n << endl;
    cout << nouppercase << "hex back in lowercase is " << n << endl;
    cout << setbase(8) << "octal is " << n << endl;
    cout << setbase(10) << "decimal is " << n << endl;

    return 0;
}

/* Now... why ever use hexadecimal or octal?
 *
 * The answer is simple: it's EASIER FOR THE COMPUTER.
 * 8 and 16 are both powers of 2, which makes it less arduous for the computer to
 * convert to and from binary. When you're programming in assembly language and
 * you need to take a dump (no, not THAT kind of dump, IDIOT, a MEMORY dump), the
 * numbers not only look prettier but the computer has a less troublesome time
 * using a system that has a base which is a power of two. To give you an idea,
 * here are a few binary numbers in octal, hex, and then decimal. Things start out
 * OK, but then you'll start to see what I mean:
 * 
 * 00000001 = 0x1 = 001 = 1
 * 00000010 = 0x2 = 002 = 2
 * 00000100 = 0x4 = 004 = 4
 * 00001000 = 0x8 = 010 = 8
 * 00010000 = 0x10 = 020 = 16
 * 00100000 = 0x20 = 040 = 32
 * 01000000 = 0x40 = 100 = 64
 * 10000000 = 0x80 = 200 = 128
 * 11111111 = 0xFF = 377 = 255
 * 
 * If you're paying attention, you'll notice that the powers of two will always have
 * a zero at the end in the hexadecimal and octal systems -- this makes it easy to
 * see, without too much effort, that a value is completely maxed and that the program
 * is hitting its head. Similarly, for 16-, 32- and 64-bit values respectively, the
 * maximum values are:
 * 
 * 16-bit: 11111111 11111111 = 0xFFFF = 1777777 = 65,535
 * 32-bit: 11111111 11111111 11111111 11111111 = 0xFFFFFFFF = 37777777777 = 4,294,967,295
 * 64-bit: 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111
 *         = 0xFFFFFFFFFFFFFFFF
 *         = 1777777777777777777777
 *         = 18,446,744,073,709,551,615
 * 
 * WHOOF -- that is a maximum value of OVER EIGHTEEN QUINTILLION in an unsigned 64-bit
 * integer, which takes up eight full SI bytes, but has more numbers than anyone could
 * ever hope to use in any real scientific context at full precision. But immediately
 * we're starting to see the importance of hexadecimal in modern computing -- most
 * modern computers are built on what is called the x86-64 (or AMD-64) architecture,
 * which uses 64-bit memory addresses to allow the computer to access memory previously
 * blocked by the inherent 4 GiB (gibibytes: 2^30, or 1,073,741,824 bytes) memory limit
 * in 32-bit x86 computing. The switch to 64-bit set a new limit of 16 EiB (exbibytes),
 * which, as you can imagine, is so far out of reach for today's personal computers you
 * might as well not even think about it. That being said, we did burn up the 4GiB limit,
 * so... */

int main()
{
    int err = bases();
    return err;
}
