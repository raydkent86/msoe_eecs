/* IMPORTANT NOTE: Dr. Loke's IDE of choice is Codeblocks. 
 * It is NOT compatible with macOS, meaning Mac users will have
 * to use another IDE. I recommend VS Code for users on platforms
 * where Codeblocks is incompatible. 
 * 
 * Codeblocks is NOT currently available on the newly-upgraded
 * IVC machines, due to sheer incompetence by the IT department.*/

#include <stddef.h>
#include <stdio.h>

/* LESSON 1 NOTES 
 * Basic Shit about C
 * - C was invented by Dennis Ritchie back in the 70s
 * - It is both a high-and-low-level language
 * - Wicked fast (because it runs at the OS layer)
 * - Hyperportable
 * - Compiler-Executable format, rather than an interpreter (makes
 *   it even faster)
 * - Only 32 keywords, but with the addition of libraries it can
 *   do just about anything
 * - Chan Loke, 2019: "They call it hardware because, when you
 *                     throw it at someone, IT HURTS."
 * 
 * File Structure
 * - Source [.c] -> Objects [.o/.out]
 *   + Headers/Libraries [.h/.lib/dll/.*] -> Executables [.exe/.*] 
 * - Workflow: Source -> Compiler -> Linker -> Executables
 * MORE STUFF */

// This is called a "HELLO, WORLD" application.
// As annoying as it may be, it's a rite of passage for all coders.
int main(){
    printf("Hello, world!");
    return 0;
}

/* PROPER COMMENTING ETTIQUETTE 
 * 
 * Comments are ONLY FOR THE SOURCE CODE READER, and are ignored
 * by the compiler, meaning a decompiler that returns binary to
 * source will not include them.
 * 
 * 
 * Commenting is REQUIRED in CS 36 -- if you don't document your
 * code, you will get a zero. */

// This is a single-line comment

/* This is a multi-line comment. 
 * NYAH */

/* KEYWORDS
 * 
 * auto, break, case, char, const, continue, default, double,
 * else, enum, extern, float, for... 
 * 
 * IDENTIFIERS
 * 
 * Below are examples of identifiers and data types. */
char a = 'a'; // one byte, -128 to 127, characters
unsigned char uc = 0; // one byte, 0 to 255
signed char sc = 0; // same as the first one
int x = 0; // 16-bit integer

/* ...you get the idea.
 * CONSTANTS
 * Use the "const" keyword or #define to declare a constant.
 * 
 * STREAMS
 * - both sources and sinks for data
 * - C programs input and output from streams
 * - two kinds (text streams and binary streams) */

/* printf() examples */
void examples(){
    printf("The number is %06d\n", 1234);
    printf("The number is %-6d\n", 1234);
}
