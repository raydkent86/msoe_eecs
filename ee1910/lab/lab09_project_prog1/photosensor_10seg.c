/*
 * photosensor_10seg.c
 *
 *  Created on: Feb 16, 2022
 *      Author: bailey-waltzo
 ***************************************
 * EE 1910 LAB 9 PART 1
 * Owen Bailey
 * Program to output a binary value from
 * 0 to 1023 on a ten-segment LED for
 * the light level over a photoresistor
 *
 * INPUTS:  Photoresistor, one switch,
 *          optionally one button for
 *          mode 2
 * OUTPUTS: Binary value of measured
 *          light from 0 to 1023 on ten
 *          segment LED bar
 ***************************************/

#include <stdio.h>
#include <stdint.h>
#include "msp.h"

// environment-specific light values for 0% and 100% respectively
#define DARK 3830
#define BRIGHT 2455
#define CLOCKRATE 30000000

// function prototypes (reusing the ADC functions from the previous photodiode lab)
int adc0_setup(void);
int adc0_convert(void);
void led_setup(void);
void button_setup(void);
void switch_setup(void);
int check_mode(void);
void check_button(int *pin_val_ptr, const volatile uint8_t *pin_reg, uint8_t pin_mask);
void button_change(int pin_val, int *pin_old_ptr, int *pin_changed_ptr);
void update_light(int *light, int button_val, int button_changed);
void led_out(volatile uint8_t *pin_reg_lsb, volatile uint8_t *pin_reg_msb, int light);

void main(void)
{
    // local variable declarations
    int button;
    int button_old;
    int button_changed;
    int light;

    // run initialization process
    adc0_setup();
    led_setup();
    button_setup();
    switch_setup();

    // assume button_old is unpressed

    // infinite loop for execution
    while (1)
    {
        if (check_mode()) // switch active = mode 2 (check at button press)
        {
            check_button(&button, &P3->IN, 0x20);
            button_change(button, &button_old, &button_changed);
            update_light(&light, button, button_changed);
            led_out(&P4->OUT, &P6->OUT, light);
        }
        else // switch inactive = mode 1 (check continuously)
        {
            update_light(&light, 0, 1); // hardwire to continuously check light
            led_out(&P4->OUT, &P6->OUT, light);
        }
    }
}

// setup A0 at pin 30 for A/D conversion
int adc0_setup(void)
{
    P5->SEL0 |= 0x20; // select alternate mode 11
    P5->SEL1 |= 0x20;
    P5->DIR &= ~0x20; // input
    P5->REN &= ~0x20;

    // enable A0 pin
    ADC14->CTL0 = 0x04000210;   // S/H timer, 16clk S/H, ADC ON
    ADC14->CTL1 = 0x00000020;   // 12-bit conversion
    ADC14->MCTL[0] = 0x00000000; // Vref = AVCC

    return 0;
}

int adc0_convert(void)
{
    // start sampling
    ADC14->CTL0|= 0x00000003; // enable ADC, start conversion

    // wait for conversion to complete
    while (!ADC14->IFGR0)
    {
        ;
    }

    return ADC14->MEM[0];
}

// setup LEDs to P4.0-4.7 and P6.0-6.1
void led_setup(void)
{
    P4->DIR |= 0xFF; // everything on port 4 to output
    P4->OUT &= 0x00; // initialize first eight LEDs to off
    P6->DIR |= 0x03; // pin 0 and pin 1 of port 5 to output
    P6->OUT &= ~0x03; // initialize last two LEDs to off
}

// set up button
void button_setup(void)
{
    // button on P3.5
    P3->DIR &= ~0x20; // xx1x xxxx
}

// set up switch on P3.0
void switch_setup(void)
{
    P3->DIR &= ~0x01;  // same thing
}

// check switch on P3.0 and return whether it is active or inactive
int check_mode(void)
{
    int switch_val;
    switch_val = !(P3->IN & 0x01); // flip value for active-low
    return switch_val; // no additional modulation needed - first pin on port
}

// debounce pin and read button state
void check_button(int *pin_val_ptr, const volatile uint8_t *pin_reg, uint8_t pin_mask)
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

// check to see whether a button has changed
void button_change(int pin_val, int *pin_old_ptr, int *pin_changed_ptr)
{
    if (pin_val != *pin_old_ptr)
    {

        *pin_old_ptr = pin_val;
        *pin_changed_ptr = 1;
    }
    else if (pin_val == *pin_old_ptr)
        *pin_changed_ptr = 0;
}

// read the ADC if the button has changed from a high to a low state (or all the time in the hardwired second case)
void update_light(int *light, int button_val, int button_changed)
{
    if (button_changed && !button_val)
        *light = adc0_convert();
    else
    {
        ; // do nothing if the condition is not met
    }
}

// display the binary value of the light on the LEDs
void led_out(volatile uint8_t *pin_reg_lsb, volatile uint8_t *pin_reg_msb, int light)
{
    uint8_t msb; // two most signficant bits

    // convert raw ADC value into some value from 0-1023
    light = (light - DARK) * 1023 / (BRIGHT - DARK);

    // directly assign output value for LSB to light, only first eight bits will show anyway
    *pin_reg_lsb = light;

    // get rid of first eight bits to give two most significant bits (nothing over 1023 so overflow is not a concern)
    msb = light >> 8;
    *pin_reg_msb = msb;
}
