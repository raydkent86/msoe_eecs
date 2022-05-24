/* loke.exe:
 * It's getting to be that time of year. Homework 5 is due THIS SATURDAY,
 * December 14th, 11:59 PM, SHARP. I will add a one-ish-hour grace, but if
 * it's not on Canvas, I WILL NOT GRADE IT.
 * 
 * For Homework 5, you do NOT need to submit your created text file outputs.
 * You just need to submit the program, and you just need ONE TEST CASE
 * because each execution will be the SAME. You can make the path whatever
 * you want, because I will replace it with my own. You do NOT need to give
 * the EXE file either.
 * 
 * In the homework, make sure you get your text out function correct,
 * because if you don't, your binary functions will be screwed up as well.
 * Also, with strings, you need to crawl your strings after bringing them
 * in from fgets() and fscanf() to find the newline character, insert the
 * NULL, and now your string is CLEAN.
 * 
 * Then, the exam will be at 1:00 PM SHARP on MONDAY of next week. If you
 * still don't understand, I'll talk later on. Don't be like Austin,
 * confusing a comparison with an assignment operator.
 * 
 * FINAL EXAM
 * Two parts, as usual
 * CODING PART
 *  + Create a struct -- I'll give the name of the struct, and the stuff to
 *    put in it.
 *  + Load an array of structs from a text file. PULL DATA IN (fprintf() or
 *    fgets(), not printf() and gets()!)
 *  + Sort the struct by one of the data members (if you're comparing names,
 *    make sure to use strcmp()!)
 *    - REMEMBER YO TEMPORARY VARIABLES and DECLARE IT AS A STRUCT.
 *  + Save and retrieve from binary files using fread() and fwrite() (if you
 *    forget, there MAY be hints in the multiple-choice part)
 *  + given a recursion program, draw out the tree
 *  + when you do the struct get, the number of bytes of info will be given,
 *    so USE THE NUMBER and NOT "n" -- I do not know what "n" is, it's
 *    undefined.
 * 
 * OTHER STUFF
 *  + strcpy()/strncpy(), strcat()/strncat()
 *  + know how strcat() will react when you try and put
 *    "supercalifragilisticexpialidocious" into a string that's too small
 *  + know how to use strlen()
 *  + know how to declare a file pointer (FILE is a datatype)
 *  + know the difference between ARRAYS AND STRUCTS (one type vs many types)
 *  + tell me what some code(s) do
 *  + normal array sorting (know how to do a bubble sort)
 *  + what happens when you open an existing file for writing? (it wipes it
 *    out without warning)
 *  + when a file doesn't exist, it will create the file for you
 *  + if you forget to close your file, what happens? (most OSes will close
 *    it for you, but back in ye olden days of Windows, you'd get a BSoD
 *    because of the resource leaks and access violations that result)
 *  + 2D arrays: figure out which one does the work I say it should do
 * 
 * And that's it! That's everything. */