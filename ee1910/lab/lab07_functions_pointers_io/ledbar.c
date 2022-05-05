/*
 * ledbar.c
 *
 *  Created on: Jan 26, 2022
 *      Author: bailey-waltzo
 ***************************************
 * EE 1910 LAB 7
 * Owen Bailey
 * Program to increment LED bar lights
 * based on button presses
 *
 * INPUTS:  Two buttons
 * OUTPUTS: LED lights, first button
 *          moves the light to the next
 *          LED and second button
 *          resets to the first LED
 ***************************************/

#include <stdio.h>
#include <stdint.h>
#include "msp.h"
#define CLOCKRATE 3000000

// function prototypes
void button_setup(void);
void led_setup(void);
void check_pin(int *pin_val_ptr, const volatile uint8_t *pin_reg, uint8_t pin_mask);
void pin_change(int pin_val, int *pin_old_ptr, int *pin_changed_ptr);
void update_count(int *cnt, int pin1_val, int pin1_changed, int pin2_val, int pin2_changed);
void led_out(volatile uint8_t *pin_reg, int count);

void main(void)
{
    // splash
    printf(" !! EE 1910 LAB 7 !!\n");

    // variable declarations
    int button1;
    int button2;
    int button1_old;
    int button2_old;
    int button1_changed;
    int button2_changed;
    int count;
    count = 0;
    button1_old = 1;
    button2_old = 1;

    // run setup
    button_setup();
    led_setup();

    // infinite loop
    while (1)
    {
        // get pin values
        // button 1 on P6.0, button 2 on P6.1
        check_pin(&button1, &P6->IN, 0x01);
        check_pin(&button2, &P6->IN, 0x02);

        // check for change
        pin_change(button1, &button1_old, &button1_changed);
        pin_change(button2, &button2_old, &button2_changed);

        // update count if either button changes from one to zero
        update_count(&count, button1, button1_changed, button2, button2_changed);

        // output to the LEDs (P4.0 thru P4.7)
        led_out(&P4->OUT, count);
    }
}

/* button_setup: set up the buttons to a FIXED PORT LOCATION
    inputs:     none
    outputs:    set button port directions to input
    return:     none */
void button_setup(void)
{
    // button 1 on P6.0, button 2 on P6.1
    P6->DIR &= ~0x03; // bitwise and with 1111 1100, giving xxxx xx00
}

/* led_setup: set up the LED outputs to a FIXED PORT LOCATION
    inputs:     none
    outputs:    set LED port directions to output
    return:     none */
void led_setup(void)
{
    P4->DIR |= 0xFF; // turn EVERYTHING TO OUTPUT - 1111 1111
    P4->OUT &= 0x00; // initialize everything to off
}

/* check_pin: use debounce algo to read a pin
    inputs:     pointer to store pin value, pointer to pin register, bit mask
    outputs:    modify pin value pointer to match pin value 0 or 1
    return:     none */
void check_pin(int *pin_val_ptr, const volatile uint8_t *pin_reg, uint8_t pin_mask)
{
    // check input twice separated by 5ms to debounce pin
    // temporary variable declarations
    uint8_t pin_val_a;
    uint8_t pin_val_b;

    // first check
    pin_val_a = *pin_reg & pin_mask;

    // debounce delay 5ms
    __delay_cycles(5 * (CLOCKRATE / 1000));

    // second check
    pin_val_b = *pin_reg & pin_mask;

    // check for change
    if (pin_val_a == pin_val_b)
        *pin_val_ptr = pin_val_a && 1;
    else
    {
        ;
    }
    return;
}

/* pin_change: check to see whether the pin has changed
    inputs:     current pin value, pointer to old pin value, pointer to pin_changed
    outputs:    IF current pin value is different from old value, update old pin value
                pointer and set pin_changed to 1
                ELSE leave the old pin value pointer the same and set pin_changed to 0
    return:     none */
void pin_change(int pin_val, int *pin_old_ptr, int *pin_changed_ptr)
{
    if (pin_val != *pin_old_ptr)
    {

        *pin_old_ptr = pin_val;
        *pin_changed_ptr = 1;
    }
    else if (pin_val == *pin_old_ptr)
        *pin_changed_ptr = 0;
}

/* update_count: update the count value if the button goes from high to low
    inputs:     pointer to count, pin1 value, whether pin1 has changed, pin2 value,
                whether pin2 has changed
    outputs:    IF pin1 changed and is currently 0, increment count pointer
                ELSE IF pin2 changed and is currently 0, set count = 0
    return:     none */
void update_count(int *cnt, int pin1_val, int pin1_changed, int pin2_val, int pin2_changed)
{
    if (pin1_changed && !(pin1_val))
        (*cnt)++;
    else if (pin2_changed && !(pin2_val))
        *cnt = 0;
    else
    {
        ;
    }
}

/* led_out: shift a logical one across the lightbar by count amount
    inputs:     pin register pointer, count
    outputs:    changes LEDs via pin output register pointer
    return:     none */
void led_out(volatile uint8_t *pin_reg, int count)
{
    *pin_reg = (1 << (count % 8)); // modulo because fewer lines of code
}
