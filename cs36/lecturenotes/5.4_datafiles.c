/* DATA FILES
 * They store things on your hard disk. There are two kinds:
 * - text files (stuff you can see)
 * - binary files (CODE[S] - stuff you cannot see)
 * 
 * DATA FILE STEPS
 * 1) open the file for input or output
 *                OUTPUT
 *    COMPUTER <--------> MEDIA
 *              INPUT          
 * 2) input: read data from disk
 *    output: save data to disk
 * 3) make sure to CLOSE THE FILE!!! (if not, get screwed!)
 * 
 * FILE ACCESS MODE
 * text input    "tr"  "rt"  "r"
 * text output   "tw"  "wt"  "w"
 * binary input  "rb"  "br"
 * binary output "wb"  "bw"
 * 
 * TEXT FILES
 * + advantage: you can view them with a text editor
 * - disadvantage: you can only save one line at a time, and you must format
 *                 your text file so it's readable (by the computer)
 * 
 * BINARY FILES
 * + advantage: you can save whole structures with one line of code
 * - disadvantage: you can't read the damn thing without the program\
 * 
 * Got it? Let's write code(s)!
 * 
 * The next thing we did is an extension to the struct program, to save it.
 * 
 * IMPORTANT: 8.3. Eight in the front, three characters in the back.
 * ENGINEERS DO NOT USE STUPID NAMES. No weird characters, no spaces, no
 * NOTHING, just EIGHT LOWERCASE CHARACTERS. THAT'S the DOS standard, so
 * STICK TO THAT. */

#include <stdio.h>
 