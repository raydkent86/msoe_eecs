/* Today we're going to learn about being a real engineer.
 * The reason we're going to learn about being a real engineer is becuase today we are going to
 * learn about state machines.
 * 
 * In the real world, machines occupy a certain running state and need a workflow to progress
 * between these states. Back in the day, there were these things on the Tri-State Tollway called a
 * "tollbooth" (you kids and your open-road tolling won't understand the pain my dad had to undergo
 * when he showed up at the O'Hare exit without exact change or a toll tag and had to pay by plate
 * like you clowns do anyway because you're too lazy to fill out an EZPass application - one of the
 * first things I did when I got my own car was to buy a FasTrak transponder so I could use the toll
 * roads in California), and you had to put coins in to play the $2.25 for the privilege of driving
 * at 95mph on the tollway rather than 55mph on US-41 a bit east of there (not actually that bad a
 * deal, considering people in Illinois actually GET OUT OF YOUR DAMN WAY - TRY THAT, CALIFORNIA).
 * 
 * This workflow can be represented by a
 * 
 * This is the whole reason we talked about enums - we can have state or error NAMES rather than
 * relying on confusing-ass numbers, and if we #include a header file that has a list of these
 * values, it makes implementing an exception handler one of the easiest things ever. This folder
 * includes a file called kent_errno.h which is actually a canon piece of the Cedar Lake universe
 * as Ray actually wrote a header file with that exact name
 * 
 * We implement these with infinite loops and case statements, just like below: */

#include <stdio.h>
#include <stdint.h>

int simple_state_machine_lol()
{
    enum state_type {IDLE, OPEN};
    enum state_type state;
    enum state_type next_state; // not actually necessary when you're in software, but hardware requires a rising clock edge and so the data has to get stored somewhere
    enum gate_status {CLOSED, OPEN};
    enum gate_status gate;

    int count = 0;
    int car = 0;

    while (1)
    {
        switch (state)
        {
            case IDLE:
                gate = CLOSED;
                if (count >= 25)
                    next_state = OPEN;
                else
                    next_state = IDLE;
                break;
            case OPEN:
                gate = OPEN;
                if (car)
                    next_state = IDLE;
                else
                    next_state = OPEN;
                break;
        }
    }

    return 0;
}

/* As you may see, the coding for state machines is really braindead - it's really just a switch
 * statement, whatever the engineer wants to happen, and an infinite loop. And to me, I think that
 * truly demonstrates the FREENESS... and the ENERGY... and the "FUCK THE GOVERNMENT" VIBE THAT --
 * 
 * -- whoops, sorry, wrong rant. I apologize for that.
 *
 * Now let's jump ahead to CE 1911 and the Sumo Bots - we're going to solve those problems here and
 * now. The Sumo Bot has a bunch of sensors, including a left and right line sensor and a left and
 * right infrared sensor (for seeing the other bot). A working implementation, then, is to have
 * three states: search, attack, and hazard. The bot starts in search state, switches into hazard
 * state when one of the line sensors picks something up, switches to attack mode when the IR picks
 * something up and there's no line, and remains in search mode if there's nothing on the line or
 * IR sensors. The search mode entails going forward with both motors, attack mode entails going
 * full speed straight ahead, and hazard mode entails stopping, reversing, and turning to stay in
 * the arena.
 * 
 * That implementation is below. */

typedef enum motor_state {OFF, OFF_DONTCARE, BACK, FORWARD} motor_t; // enums are like a software equivalent to a mux

int sumobot()
{
    
    motor_t left, right; // left/right enable pairs - enable is the MSB, direction is the LSB
    enum state_type {SEARCH, ATTACK, HAZARD};
    enum state_type state;
    enum state_type next_state;

    uint8_t line_l, line_r;
    uint8_t ir_l, ir_r;
    state = SEARCH;

    while (1)
    {
        switch (state)
        {
            case SEARCH:
                if (line_l || line_r)
                    next_state = HAZARD;
                else if (ir_l || ir_r)
                    next_state = ATTACK;
                else
                    next_state = SEARCH;
                left = FORWARD;
                right = FORWARD;
                break;
            case HAZARD:
                // spin counterclockwise
                left = BACK;
                right = OFF;
                if (line_l || line_r)
                    next_state = HAZARD;
                else
                    next_state = SEARCH;
        }
    }
}
