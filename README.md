# Earthbound_Zero
____
This repository is dedicated to disassembling Earthbound_Zero for NES.

You may notice an exclamation mark in the names of asm files, which indicates that the file is being actively edited and updated. Asm files without an exclamation mark in their names (except macros.asm) are most likely final versions. Other files and directories will appear as each stage progresses.

#### Files bankXX.asm
____
XX is the memory bank number in hexadecimal format. There are 32 such banks (00 - 1F ). The files contain assembly code obtained using the IDA Pro disassembler.

## src directory
____
#### main.asm
____
Contains the main game code.

#### intro.asm
____
Code for the game's opening credits and save selection.

#### battle.asm
____
Game battle code.

#### rammap.asm
____
This file serves as a cheat sheet providing information about the allocation of zero page memory. It is intended for reference purposes only. The information here duplicates memory allocation in the code, offering the convenience of having memory allocation details in one centralized location.

### def directory
____
The catalogue contains definitions.

#### apu.asm 
____
Contains definitions of audio operation addresses.

#### header.asm
____
The file contains nes image structure.

#### mmc3.asm
____
Basic subroutines for working with MMC3 chip (mapper).

#### palette.asm
____
Information about NES colour palette.

#### ppu.asm
____
The file defines all PPU registers.

### lib directory
____
Contains subroutines of basic and auxiliary functions of work with peripherals.

#### apu_lib.asm
____
Basic subroutines for working with sound.

#### banks.asm
____
Procedures for switching program and character memory banks.

#### delay.asm
____
Basic delay procedures to ensure correct operation during synchronization (NMI, IRQ) and data transfer between devices (CPU, PPU, SRAM).

#### gamepad.asm
____
Definitions for gamepad flags, gamepad state variables and procedures for determining gamepad state.

#### irq_handler.asm
____
Interrupt routines.

#### macros.asm
____
The macros definition file.

#### ppu_lib.asm
____
Basic PPU subroutines.

#### screen.asm
____
Subroutines for working with the game screen.

#### sram.asm
____
Basic procedures for working with additional RAM on a game cartridge.

#### unpack.asm
____
Subroutines for working with packaged game resources.

### vectors directory
____
#### irq.asm
____
IRQ interrupt handler routines.

#### nmi.asm
____
NMI interrupt handler subroutines.

#### reset.asm
____
Reset handler subroutine (NES initialisation)
