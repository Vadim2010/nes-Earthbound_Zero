# Earthbound_Zero
____
This repository is dedicated to disassembling Earthbound_Zero for NES.

You may notice an exclamation mark in the names of asm files, which indicates that the file is being actively edited and updated. Asm files without an exclamation mark in their names (except macros.asm) are most likely final versions. Other files and directories will appear as each stage progresses.

## banks directory
____
#### Files bankXX.asm
XX is the memory bank number in hexadecimal format. There are 32 such banks (00 - 1F). The files contain assembly code obtained using the IDA Pro disassembler.

#### 7A-7B.asm
Contains code and data located in 1 kilobyte CHR banks 7A-7B. It is essentially a duplicate of the SRAM contents at addresses $6000-67FF.

#### 80-CD.asm
Contains the dialogs of the game. Located in CHR 80-CD banks.

## chr directory
____
#### image.chr
Contains game textures. A complete image of the CHR area.

## lib directory
____
Contains subroutines of basic and auxiliary functions of work with peripherals.

## original
____
Contains files for building the original game image.

## sys
____
Contains files that implement basic NES functions.

## temp
____
The folder stores files of previous solutions that are currently not up to date.

## Getting Started

Install [Git](https://git-scm.com/download/win) and run the command to copy the repository to the folder `C:\Earthbound_Zero`:

    git clone https://github.com/Vadim2010/nes-Earthbound_Zero C:\Earthbound_Zero

Or download the repository image as an [archive](https://github.com/Vadim2010/nes-Earthbound_Zero.git).

Before you start building the project, install [make for Windows](http://gnuwin32.sourceforge.net/packages/make.htm) (or `sudo apt-get install build-essential` for ubuntu) and [cc65](https://cc65.github.io/getting-started.html) and add them to your environment PATH.

To build the original game image, run command prompt, navigate to the `C:\Earthbound_Zero\original` folder and run the `make` command.

