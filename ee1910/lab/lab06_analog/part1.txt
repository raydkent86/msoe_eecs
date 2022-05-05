/*
 * part1.c
 *
 *  Created on: Jan 19, 2022
 *      Author: bailey-waltzo
 ***************************************
 * EE 1910 LAB 6 PROGRAM 1
 * Owen Bailey
 * Program to read pot value and print
 * to console
 *
 * INPUTS:  Voltage from circuit passing
 *          from Vdd to ground through
 *          a potentiometer coming from
 *          the pot's wiper to analog
 *          pin 30
 * OUTPUTS: Resistance of potentiometer
 *          at time of measurement
 ***************************************/

#include <stdio.h>
#include "msp.h"

// function prototypes
int adc0_setup(void);
int adc0_convert(void);

void main(void)
{
    // splash
    printf(" !! EE 1910 LAB 6 PROGRAM 1 !!\n");
    adc0_setup();

    // declarations
    int read;
    int resistance;

    // infinite loop
    while (1)
    {
        read = adc0_convert();
        resistance = ((float)(read + 1) * 1000 / 4096);
        printf("%d OHMS\n", resistance);
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
