# Earthbound_Zero
____
This repository is dedicated to disassembling Earthbound_Zero for NES.

You may notice an exclamation mark in the names of asm files, which indicates that the file is being actively edited and updated. Asm files without an exclamation mark in their names (except macros.asm) are most likely final versions. Other files and directories will appear as each stage progresses.

## banks directory
____
#### Files bankXX.asm
XX is the memory bank number in hexadecimal format. There are 32 such banks (00 - 1F ). The files contain assembly code obtained using the IDA Pro disassembler.


## chr directory
____
#### image.chr
Contains game textures.

## data directory
____
#### sprites.asm
Settings for game sprites, animations. Used by the NMI handler.

#### msg_chr80_CD.asm
Represents a list of pointers to messages that are contained in character blocks of memory $80-$CF.

#### data1.asm, data2.asm, data3.asm
Data files needed to correctly link locations, characters, and dialogs.

#### dataXX.asm
Contains data for constructing game locations, and some additional data.

#### enemy.asm
Contains data about enemy parameters, locations they are in, etc.

#### sound.asm
Contains data of sound effects and music in the game.

## src directory
____
#### main.asm
Contains the main game code.


#### sound.asm
Code and data to work with sound in the game.


#### intro.asm
Code for the game's opening credits and save selection.


#### start_game.asm
Code and data for the initial game menu. Starting a new game, deleting and copying saves, entering character names, game history.
Some data and code are copied from memory at address $B800 to SRAM at address $6000, their contents in a more readable format can be found in the file start_game_sram.asm


#### battle.asm
Game battle code.


#### rammap.asm
This file serves as a cheat sheet providing information about the allocation of zero page memory. It is intended for reference purposes only. The information here duplicates memory allocation in the code, offering the convenience of having memory allocation details in one centralized location.


### def directory
____
The catalogue contains definitions.


#### apu.asm 
Contains definitions of audio operation addresses.


#### header.asm
The file contains nes image structure.


#### mmc3.asm
Basic subroutines for working with MMC3 chip (mapper).


#### palette.asm
Information about NES colour palette.


#### ppu.asm
The file defines all PPU registers.


### lib directory
____
Contains subroutines of basic and auxiliary functions of work with peripherals.

#### apu_lib.asm
Basic subroutines for working with sound.


#### banks.asm
Procedures for switching program and character memory banks.


#### delay.asm
Basic delay procedures to ensure correct operation during synchronization (NMI, IRQ) and data transfer between devices (CPU, PPU, SRAM).


#### gamepad.asm
Definitions for gamepad flags, gamepad state variables and procedures for determining gamepad state.


#### irq_handler.asm
Interrupt routines.


#### macros.asm
The macros definition file.


#### ppu_lib.asm
Basic PPU subroutines.


#### screen.asm
Subroutines for working with the game screen.


#### sram.asm
Basic procedures for working with additional RAM on a game cartridge.


#### unpack.asm
Subroutines for working with packaged game resources.


### vectors directory
____
#### irq.asm
IRQ interrupt handler routines.


#### nmi.asm
NMI interrupt handler subroutines.


#### reset.asm
Reset handler subroutine (NES initialisation)

## Getting Started

Install [Git](https://git-scm.com/download/win) and run the command to copy the repository to the folder `C:\Earthbound_Zero`:

    git clone https://github.com/Vadim2010/nes-Earthbound_Zero C:\Earthbound_Zero

Or download the repository image as an [archive](https://github.com/Vadim2010/nes-Earthbound_Zero.git).

Before you start building the project, install [make for Windows](http://gnuwin32.sourceforge.net/packages/make.htm) (or `sudo apt-get install build-essential` for ubuntu) and [cc65](https://cc65.github.io/getting-started.html) and add them to your environment PATH.

To build the original game image, run command prompt, navigate to the `C:\Earthbound_Zero\original` folder and run the `make` command.

