# BRIEF HISTORY OF COMPUTING #
* Before computers, we had slide rules and abacuses
    * Applied to a broad range of approximate computations
    * Capable of doing arithmetic, trigonometric, and logarithmic/exponential operations
    * Used from the 1600s and before until the 1970s, slide rules in particular were behind the calculations that put men on the moon and blew Hiroshima and Nagasaki to kingdom come
* Early computing started with Harvard Mk1 (1937-1944), then ENIAC
    * Harvard Mk. 1 was electromechanical and hand-programmed and featured a 50ft shaft
    * ENIAC used vacuum tubes to gate and amplify signals
* Then came mini-computers, and then the Radioshack TRS-80 (a.k.a. the Trash-80 because it kinda sucked), the Apple II, and the Commodore P.E.T.
* Things didn't take off until 1981, however, when IBM built the IBM PC
    * IBM spent as much money developing software as the actual computer, so it exploded beyond recognition
    * The economic boom under Reagan allowed EVERYONE to buy these things, and it had a whole 4 KB of RAM
    * Software exploded as a result, creating even more widespread use
* 1989 saw the invention of the first laptops, making computers even more portable
* Now, we have tablets and smartphones and smartwatches and smarteverything these days

# TERMINOLOGY #
_general-purpose processor:_ intended to run end-user-selected programs  
**EXAMPLES** ARM 7, ARM 9, ARM Cortex A8/A9/A15, Intel Pentium, Intel Core, AMD Phenom/Athleron/Opteron, Apple A-series chips, TI OMAPs
* application-independent and user-programmable
* 32/64 bit operations
* supports non-time-sharing (non-real-time) operating systems (doesn't block when something isn't done)
* supports complex memory functions such as multi-level caching, dynamic RAM operation, and virtual memory
* supports DMA-driven I/O
* has a complex structure enabling things like extensive pipelining, superscalar execution, and out-of-order program execution
* used for browsing the Internet and listening to music and communicating and playing Angry Birds

_embedded processor:_ intended to run OEM-selected programs  
**EXAMPLES** ARM Cortex Rx/Mx (ST Nucleo, TI MSP), Atmel AVR (Arduino), and a few others
* 4/8/16/32-bit operations
* supports real-time operating systems only
* simple memory and CPU structures and memory-mapped I/O
    * few registers
    * limited instructions
* supports multiple I/O schemes
* wide range of peripheral support
    * A/D - D/A
    * sensors
    * extensive interrupt support
* over 90% of the market share is ARM (Advanced RISC Machine) architecture

_complex instruction set computer (CISC):_ processor architecture format used in most processors until the 1980s with single instructions that held multiple actions
* name didn't even exist until reduced instruction set computing was invented, after which it became retroactively used to describe pre-1980s architectures
* instructions could load data from a location, add the values together, and write the data to some other location all in a one-shot deal
* many times, instruction format was designed based on emulating high-level language programming constructs
* however, instructions were **FREAKING LONG**, prompting processor manufactureres to simplify them

_reduced instruction set computer (RISC):_ dominant processor architecture format with very simple instructions
* developed in the 1980s
* sometimes called "load/store"
* everything hinges on register-register instructions and the load and store memory options _(this will all become a bit clearer and make more sense when we get to CE 1911)_
* each instruction is one operation, unlike CISC
* new format makes it much easier to take advantage of advanced CPU structures (pipelining, superscalar, OoO)

_Harvard architecture:_ memory architecture with separate data and instruction memories
* six main parts
    1. **instruction memory** memory where programs are loaded and run
    2. **data memory** memory where values are stored during execution
    3. **register file** processor internal data storage for values and memory pointers that are in use
    4. **instruction decoder** control unit that activates specific processor states based on the instruction read from the instruction memory
    5. **arithmetic logic unit (ALU)** device that performs arithmetic (+, -, shift left, shift right) and logical (and, or, nand, nor, xor, xnor) operations on integral values
    6. **math coprocessor/floating point unit (FPU)** companion device to the ALU that performs floating-point addition, subtraction, multiplication, and division (more on floating point numbers later)
* lends itself to RISC computing
* addition of firmware for input and output allows for virtually limitless scaling

_modified Harvard architecture:_ more common variant of Harvard architecture with upper-level shared memory to cache stuff for better performance
