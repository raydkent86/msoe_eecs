/*
 * c_blink_console.c
 *
 *  Created on: Dec 1, 2021
 *      Author: bailey-waltzo
 */

// our version of the blink program for console use only

#include <stdio.h>
#include <windows.h>

int main(void)
{
    // CC composer I/O issue
    setbuf(stdout, NULL); // disable stdout buffering

    // splash
    printf("!! Hello Dr. Johnson! !!\n");

    // print code
    while(1)
    {
        printf("ON\n");
        Sleep(2000);
        printf("OFF\n");
        Sleep(4000);
    }

    return 0;
}
