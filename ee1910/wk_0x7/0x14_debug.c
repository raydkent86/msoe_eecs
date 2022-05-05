/* THE ECLIPSE DEBUGGER
 * Right now, and still in a lot of cases, the easiest way to debug code is to throw in printf() calls
 * and find out what values are at some given point in the execution. But (and I know this is not in
 * Eclipse/CCS) Code Composer Studio and all other versions of Eclipse have a debug feature that gives
 * the engineer much more flexibility in finding out what's going on with a program.
 * 
 * There are three main buttons:
 * STEP INTO: does code one line at a time and steps into function calls if they come up
 * STEP OVER: also does code one line at a time, but executes function calls without stepping into it
 * STEP RETURN: jumps out of whatever function the program is in to the higher scope
 * 
 * NEVER STEP INTO printf() OR scanf() -- YOU WILL GET A HOT MESS. printf() is a zillion-layer
 * function and it will only result in throwing up a bunch of header files that have no relavance to
 * your present application.
 * 
 * The debugger generally skips the first function and variable declarations in a CCS session and
 * begins at the first actual statement that's not a declaration. In the top right of the screen, the
 * variables and their values will appear 
 * 
 * One thing to watch out for is that values disappear when you change scope because they are no
 * longer accessible. Values highlight when they change, so if you see a bunch of highlighted stuff
 * after kicking out of a function, don't worry. Nothing has actually changed except for whatever you
 * assigned value of the function to. 
 * 
 * Also, the behavior of scanf() is highly tool-dependent. Some tools won't let you do a scanf() at all
 * whereas some let you scan things IF YOU TYPE THE VALUES INTO THE CONSOLE AND HIT ENTER BEFORE YOU
 * REACH THE LINE.
 * 
 * The debugger also has other useful features. If you want to you can choose a specific line and hit
 * "run to line" to have it suspend at a given point at runtime, and you can set breakpoints to
 * predefine where the application will suspend when it's running normally.
 * 
 * The final useful feature I'll mention is that Eclipse has the example under the Window menu to look
 * at both the memory and the assembly code.
 *  */
