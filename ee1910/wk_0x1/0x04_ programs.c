/* C PROGRAMS

NOTE: IN THIS CLASS, WE WILL BE REQUIRED TO DO A FLOWCHART FOR EVERY PROGRAM WE WRITE.
Keep in mind that while these may be trivial and stupid early on, they will become vastly more
important as the scale of our software solutions increases.

The money is in ENGINEERING stuff, not in simply writing the code(s). That's what makes us
different from code monkeys: we aren't simply looking to write a section to do one task.
Instead, we're planning out a comprehensive solution, and fails in logic can't possibly happen
if we're going to make a good program. If we find out at runtime that we've introduced a fault
with our application, not having a flowchart can lead to a difficult debugging process, as we
won't have any context for what's supposed to happen rather than what's actually going to
happen.

Computer science is one of the three formal sciences, combining mathematics and logic to
codify the entirely new discipline brought about when computers became a thing, and, for a
field so new, is possibly more important than any other field both in terms of making money
and solving problems, because the physics of how the computer actually does this stuff is
completely irrelevant - that's a job for the nerds at Intel, Apple and AMD. What is relevant
is that these principles are universally true for all computers, which are nothing more than
executors of logic and math.

Anyway... let's talk about the basic guts of programs that will always be there:
 [PREPROCESSOR DIRECTIVES]
 [GLOBAL DECLARATIONS (never use)]
 int main(void)
 {
     [LOCAL DECLARATIONS]
     [STATEMENTS]
 }
 [ADDITIONAL FUNCTIONS]

Preprocessor directives: provide info to the tool chain including additional files to include
                         name definitions, constant definitions, and always start with a #
                         Examples include
                            #include: add the contents of a library to the top of the file
                            #define: perform a text substitution at compile time for a given
                                     phrase (#define LEDPIN 9 replaces "LEDPIN" with 9
                                     everywhere it shows up)
Global declarations: definitions of variables that can be seen throughout the program.
                     WE WILL NOT DO THIS IN THIS CLASS (because it's retarded).
                     Also includes function prototypes (which we will do, because it's good)
main(): function containing top-level program code that goes to instruction memory, usually
        containing the local declarations along with the top-level statements
Functions: subroutines called to do a specific task - usually takes an input and gives an
           output, but sometimes it effectively gives multiple outputs when stuff is passed
           by reference (more on that later)

Here's a little example of a simple console program: */

// preprocessor directives
#include <stdio.h>
#define PI 3.14159265358

// function prototypes
float calc_area(float);
float calc_circumference(float);

// main method
int main()
{
    setbuf(stdout, NULL); // disable output buffering

    // local variables
    float radius;
    float circumference;
    float area;

    // get input for radius
    printf("Please enter a radius value: ");
    scanf("%f", &radius);

    // calculate circumference and area
    circumference = calc_circumference(radius);
    area = calc_area(radius);

    // output results
    printf("The circumference is %f\n", circumference);
    printf("The area is %f\n", area);

    // exit status code
    return 0;
}

float calc_area(float r)
{
    return PI * r * r;
}

float calc_circumference(float r)
{
    return 2 * PI * r;
}

/* Great... but what's the tool chain?

To understand, we first have to look at the development process:

     ------------------      --------------------------      -------------      ------------
    | Requirement spec | -> | Program flow/pseudo code | -> | Development | -> | Tool chain |
     ------------------      --------------------------      -------------      ------------
       ^                      ^                                ^                    |
       |    __________________|________________________________|                    |
       |   |     -------             -----------------                              |
        ------- | Debug | <-------- | Executable code | <----------------------------
                 -------             -----------------
                    |
                    V
                 Release

The tool chain is all the stuff that turns developed code into executable code readable by
the machine's processor, and ends up breaking down like this:
    Code entry -> Pre-Processor -> Compiler -> Assembler -> Linker -> Loader -> RUN

CODE ENTRY
    - physically putting the C codes in the computer xD
    - file.c
    - can either be done with a text editor...
        + emacs
        + TextEdit
        + vi
        + Notepad
    - ... or an integrated development environment
        + Eclipse
        + Code Composer Studio
        + Visual Studio Code
        + Whatever JetBrains tool you need (IntelliJ IDEA, PyCharm, CLion, WebStorm, etc.)
PREPROCESSOR
    - deals with anything starting with a pound
    - tells the tool chain to include additional libraries
    - replaces anything prefixed with #define with whatever you want
    - also expands macros and manages conditional defines (#ifdef and #endif)
COMPILER
    - converts C codes to da assembly language (OK, I know Loke Speak is an ancient joke)
    - computer now has architecture-specific instructions telling it exactly what memory
      to access and when
    - assembly languages vary by architecture (x86 vs PowerPC, etc), but here's an example
        ldi R2, 5; // load register 2 with the value 5
        sts R2, 0x0200; // copy value in R2 to memory address 0x0200 (0000 0100 0000 0000)
        add R2, R1; // add values of R2 and R1 and store in R2
ASSEMBLER
    - converts assembly language to machine language/binary
    - result is an object file (file.o)
    - machine language: part-specific programming language, depends on processor config
        0x98AD (1001 1000 1010 1101) // load R2 with 5
        0xCB9C (1100 1011 1001 1100) // copy R2 to 0x0200
        0xCAC3 (1100 1010 1100 0011) // R2 += R1 - enjoy your cake!
        0xBEEF (1011 1110 1110 1111) // does absolutely nothing at all, just there because I think I'm so hilarious
LINKER
    - combines machine language code from program with included libraries
    - configures code in memory
        + aligns code segments
        + makes necessary connections (function calls)
        + assigns variable spots in memory
    - creates da EXE files (alright, fine, I'll stop with the thick Hong Kong accent)
LOADER (programmer)
    - creates whatever environment is necessary on the executing machine
        + can be as simple as turna on and logga in
        + can also be a lot more involved (setting up env variables, running other tasks, etc.)
    - loads the executible file
    - starts the program

Putting it all together, the output from the tool make in Eclipse is this:
**** Build of configuration Debug for project Lab_MSP****

"C:\\ti\\ccsv6\\utils\\bin\\gmake" -k all
'Building file: ../circle_msp.c'
'Invoking: MSP432 Compiler'
"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --
include_path="C:/ti/ccsv6/ccs_base/arm/include" --include_path="C:/ti/ccsv6/ccs_base/arm/include/CMSIS" --
include_path="C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --advice:power=all -g --gcc--define=__MSP432P401R__ --
define=TARGET_IS_MSP432P4XX --define=ccs --diag_warning=225 --diag_wrap=off --display_error_number--abi=eabi--preproc_with_compile --
preproc_dependency="circle_msp.d"  "../circle_msp.c"
'Finished building: ../circle_msp.c'
' '
'Building target: Lab_MSP.out'
'Invoking: MSP432 Linker'
"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --advice:power=all -g --gcc --
define=__MSP432P401R__ --define=TARGET_IS_MSP432P4XX --define=ccs --diag_warning=225 --diag_wrap=off --display_error_number--abi=eabi -
z -m"Lab_MSP.map" --stack_size=512 --heap_size=1024 -i"C:/ti/ccsv6/ccs_base/arm/include" -i"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/lib" -
i"C:/ti/ccsv6/tools/compiler/arm_15.12.3.LTS/include" --reread_libs--warn_sections--diag_wrap=off --display_error_number --
xml_link_info="Lab_MSP_linkInfo.xml" --rom_model-o "Lab_MSP.out" "./circle_msp.obj" "./startup_msp432p401r_ccs.obj"
"./system_msp432p401r.obj" "../msp432p401r.cmd"  -llibc.a
<Linking>
remark #10371-D: (ULP 1.1) Detected no uses of low power mode state changing instructions
remark #10372-D: (ULP 4.1) Detected uninitialized Port 1 in this project. Recommend initializing all unused ports to eliminate wasted current
consumption on unused pins.
…
'Finished building target: Lab_MSP.out'
' '

**** Build Finished ****

That... all looks like a load of bullshit, but it'll make sense...

...EVENTUALLY.
*/