<p align="center">
    <img src="https://github.com/Vadim2010/nes-Earthbound_Zero/tree/master/res/EarthBound_Logo.png"
</p>

## Special Thanks

I would like to express my gratitude to the people who created this game, which once captured the hearts of many. The fans' love for the game has stood the test of time, and even after many years, they fondly remember it and occasionally dive back into its universe. The creators of the game:

SHIGESATO ITOI          MASAYUKI KAMEYAMA       YUKA NAKATA
MIYUKI KURE             HIDEO KON               HIROKO FAULKNER
AKIO OHMORI             KATSUTOMO MAEIWA        TONY HARMAN
RITSUO KAMIMURA         KUNIKO SAKURAI          DAYV BROOKS
KEIICHI SUZUKI          MASAHIRO TATEMOTO       NORIYUKI MINAMI
HIROKAZU TANAKA         TAKASHI KAWAGUCHI       BIN OHGAWARA
SHINBO MINAMI           KEIZOH KATOH            YOSHIHISA WADA
TATSUYA ISHII           MOTOHIRO ISHII          HIKONORI SUZUKI
TOTTORI                 AKIHITO TODA            TAKAO SHIMIZU
KAZUYA NAKATANI         YUKARI SAITOH           SHIGERU MIYAMOTO
TAKAYUKI ONODERA        PHIL SANDHOP            HIROSHI YAMAUCHI
MOTOO YASUMA            TOSHIKO WATSON

I would also like to thank Eric Ledger, a person without whom this project would not have been possible.

## About

This repository is dedicated to disassembling the English version of the game Earthbound Zero for the NES. If you're a fan of the game and want to dive back into it, you have the opportunity to customize the game by making changes to its code and building a personalized game ROM.

## lib directory

Contains subroutines of basic and auxiliary functions of work with peripherals.

## original

Contains files for building the original game image.

## sys

Contains files that implement basic NES functions.

## Getting Started

Install [Git](https://git-scm.com/download/win) and run the command to copy the repository to the folder `C:\Earthbound_Zero`:

    git clone https://github.com/Vadim2010/nes-Earthbound_Zero C:\Earthbound_Zero

Or download the repository image as an [archive](https://github.com/Vadim2010/nes-Earthbound_Zero.git).

Before you start building the project, install [make for Windows](http://gnuwin32.sourceforge.net/packages/make.htm) (or `sudo apt-get install build-essential` for ubuntu) and [cc65](https://cc65.github.io/getting-started.html) and add them to your environment PATH.

### Building the Original ROM

To build the original game image, run command prompt, navigate to the `C:\Earthbound_Zero\original` folder and run the `make` command.

### Building the Modified ROM

Let's go through an example of how to modify the game. First, copy the original folder, for example, to a folder named mod. We'll start with something simple: changing the names of the enemies.
All the files we will be modifying can be found in the copied folder (in my case, mod).
Let's locate the file `..res/names.s` and open it in a text editor. Find the label EnemyNameList; everything below it contains the enemy names we are looking for. We will add spaces in the names where they are missing:
"BigWoodoh," "EnergyRobot," "PseudoZombi," "BionicCenti," "BionicScorp," "PsychoTruck," "ManiacTruck," "UltraBarbot," "OmegaSaucer," "SuperEnergy," "BlueStarman," "NastyZombie," "GrizzlyBear," and "LastStarman."
Then, we'll rename "Megaborg" to "Mega Borg" and "Omega Borg" to "Tera Borg."

Would you like to adjust the enemy parameters? You’ll need the file `../res/enemies.s`. For combined fields like HP, PP, Offense, and Defense, the game allocates 10 bits (the remaining 6 bits in each field are used for additional properties), so the maximum possible value for these parameters is 1023.

In the file ../res/data2.s, let’s modify the item prices:
Berry Tofu      975 ->  81      Mouthwash       175 ->  15      Rope            600 ->  50
Bomb            280 ->  23      Plasma Beam    1300 -> 108      Sticky Machine 3200 -> 267
Insecticide     300 ->  25      Real Rocket    3485 -> 290      Super Bomb     1800 -> 150
Laser Beam      760 ->  63      Time Machine   2775 -> 231
Last Weapon    1048 ->  87      Repel           160 ->  13

Let's restore the time machine joke. In the file `../res/objects2.s`, locate the label `MysteriousTeacher`.
MysteriousTeacher:
    .byte $94, $A9, 4, $F5, $A8, $84, 6, $46, $A, $62, $12
    .byte $43, $14, 8, $2C, 1, 9, $5F, 1, $1C, 8, $26, 1, 9
    .byte $5F, 8, $28, 1, $10, 0, $27, 0, $23, $11, 0, $10
    .byte $43, $22, $6C, $24, $1E, $A6, $59, $12, 0, $37, 8
    .byte $3E, 2, 8, $2B, 1, $11, 0, 0, $29, $50, $26, $A6
    .byte $48, 8, $1C, 2, 8, $23, 2, $5B, 9, 8, $75, 1, 0
    .byte $2D, $62, $5C, 6, 8, $2B, 1, 0, 8, $3D, 2, 8, $2B
    .byte 1, $11, 0, 0, 8, $2B, 1, $11, 0, 0, 8, $29, 1, 0

And replace everything under it with the following values:
    .byte $94, $A9, 4, $F5, $A8, $84, 6, $46, $A, $71, $12
    .byte $43, $14, 8, $2C, 1, 9, $6E, 1, $1C, 8, $26, 1, 9
    .byte $6E, 8, $28, 1, $10, 0, $27, 0, $23, $11, 0, $10
    .byte $43, $22, $6C, $A7, $1E, $A6, $68, $12, 0, $37, 8
    .byte $3E, 2, 8, $2B, 1, $11, 0, 0, $29, $5F, $26, $A7
    .byte $48, 8, $1C, 2, 8, $23, 2, $3D, $40, $E5, $82, $21
    .byte 0, $26, $A6, $57, 8, $1C, 2, 8, $23, 2, $5B, 9, 8
    .byte $75, 1, 0, $2D, $71, $5C, 6, 8, $2B, 1, 0, 8, $3D
    .byte 2, 8, $2B, 1, $11, 0, 0, 8, $2B, 1, $11, 0, 0, 8
    .byte $29, 1, 0


After finishing the edits, build the ROM. Go to the folder with your modifications (`mod`) and run the command `make`. The game ROM, `game.nes`, will be located in the `../mod/build` folder.