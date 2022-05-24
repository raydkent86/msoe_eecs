# OVERVIEW OF MEMORY #
* Memory comes in many flavors, including
  * paper tape
  * cards
  * magnetic tape
  * fucking floppy disks
  * magnetic drives (hard drives)
  * optical drives (CDs, DVDs, Blu-Rays)
  * integrated circuit memory
  * flash drives and solid-state drives
* IC memory has two key concepts
  1. Read-only memory (ROM) contained fixed values, and cannot be changed
    unless flashed - examples include CDs and BIOS
  2. Random-access memory (RAM) allows writing as well as reading, meaning
    it can be changed
* IC memory can also be _volatile_ or _non-volatile_
  * _Non-volatile memory_ retains its value even when power is removed, and
    includes ROM and NVRAM
  * _Volatile memory_ loses its values when power is removed, and can either
    be _static_ or _dynamic_
    * _Static memory_ retains its value without any extra effort (registers
      and static RAM/SRAM)
    * _Dynamic memory_ needs to be periodically refreshed or the values
      will degrade (dynamic RAM/DRAM, synchronous dynamic RAM/SDRAM)
* Memory's minimal logical element is the bit
  * has a Boolean value of either 0 or 1
  * has a physical value of either V<sub>dd</sub> or GND (on or off at some
    predetermined voltage, usually 5V, 3.3V, 2.4V, 1.8V, or 1.2V)
* However, the minimum accessible storage element is the _byte (B)_, which is
  defined as eight bits, and therefore ranges in value from `0x00` to `0xFF`
* Furthermore, beyond the minimum accessible element there is also a minimum
  addressible element known as a _word_
  * words vary in length based on the situation
  * can be anywhere from 1B to infinity, but are usually up to 8B
* The logical configuration in memory is a long column of bytes starting at
  address zero and ranging to the total memory size (but limited by the
  size of the instruction set - an 8-bit instruction set is limited to addresses
  from `0x00` to `0xFF` [0-255 - 256 bytes], a 16-bit instruction set is limited to
  addresses from `0x0000` to `0xFFFF` [0-65535 - 65.536 KB], a 32-bit instruction
  set is limited to `0x00000000` to `0xFFFFFFFF` [0-4294967295 - 4.295 GB], and a
  64-bit instruction set goes from `0x0000000000000000` to `0xFFFFFFFFFFFFFFFF`
  [0-18446744073709551615 - 18.447 EB])
* **IMPORTANT:** even though we may not have anything stored at a specific memory
  address, ***THE MEMORY WILL STILL HAVE A VALUE,*** and it will be ***GARBAGE***
* Writing to memory will overwrite the existing value, so _BE CAREFUL_
* On the other hand, reading does not destroy the data, unlike with a file
  stream
* As mentioned before, the size of the instruction set limits the total memory
  amount (which is why most people use 64-bit machines now - demanding modern
  applications and OSes often need more than the 2 GiB limit of 32-bit that was
  standard back in the days of Windows XP, and the 16 EiB limit seems impossible
  to reach even by today's standards), which happens because each memory address
  has to have its own instruction associated with it
  * Addresses are NOT part of the memory array, but logic circuits that choose
    which part of the array to read or write
  * Decoders ultimately determine the location and allow these logic circuits
    to activate and process
* Processor words are the size of the internal registers, and are denoted with
  names that indicate the memory alignment
  * **BYTE** (half-word):       1 B - 8-bit processor  [`0x00` - `0xFF`]
  * **WORD**:                   2 B - 16-bit processor [`0x0000` - `0xFFFF`]
  * **DWORD** (double word):    4 B - 32-bit processor [`0x00000000` - `0xFFFFFFFF`]
  * **QWORD** (quadruple word): 8 B - 64-bit processor [`0x0000000000000000` - `0xFFFFFFFFFFFFFFFF`]
- Memory _MUST BE ACCESSED USING THE ENTIRE WORD_
- Memory words can be _big-endian_ or _little-endian_, i.e. with the first octet at
  either the beginning or the end respectively, as shown with two representations
  of the number `0x12345678`
```text
     ADDRESS   BIG ENDIAN
  0x00000000   **1**2**
  0x00000001   **3**4**
  0x00000002   **5**6**
  0x00000003   **7**8**
```
```text
     ADDRESS   LITTLE ENDIAN
  0x00000000   **7**8**
  0x00000001   **5**6**
  0x00000002   **3**4**
  0x00000003   **1**2**
```

* In binary, the values end up linking together in bit pairs as follows
```text
     ADDRESS   BIG ENDIAN
  0x00000000   00010010
  0x00000001   00110100
  0x00000002   01010110
  0x00000003   01111000
```
```text
    ADDRESS    LITTLE ENDIAN
  0x00000000   01111000
  0x00000001   01010110
  0x00000002   00110100
  0x00000003   00010010
```

* Embedded systems run on a memory-mapped architecture, meaning memories and
  peripheral hardware look the same from an instruction perspective, with some
  architectures even including registers in the memory map
  * The STM32L47x embedded system uses DWORDs and contains 256 MiB of program
    memory, 96 KiB of SRAM data memory, and a set of peripherals would have
    map the former to addresses `0x00000000` to `0x0FFFFFFF`, the middle to
    addresses `0x20000000` to `0x20017FFF`, and the latter to addresses
    `0x40000000` to `0xFFFFFFFF`
  * The peripherals seldom ever get up to `0xFFFFFFFF` in their instructions,
    but the capability is there given the 32-bit instruction set
  * Program memory is flashed and is accessible in DWORD format, and exists
    in the following order
    1. **EXCEPTION VECTORS** Definition of reset, exception, and interrupt
       actions
    2. **EXECUTABLE CODE** Product code
    3. **READ-ONLY DATA** Literals (e, pi, sqrt of 2, etc.)
    4. **RAM DATA COPY** Initial values for variables in RAM
    5. **BOOT LOADER** Code to load the remainder of flash that can be removed
       on production applications to save space if desired
  * Data memory is accessible in BYTE and WORD formats with some bit-level
    access
  * Peripheral memory is accessible in DWORD format
