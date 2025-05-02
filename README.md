<p align="center">
    <img src="https://github.com/Vadim2010/nes-Earthbound_Zero/blob/master/res/Zero.png"
</p>

## Special Thanks

I would like to express my gratitude to the people who created this game, which once captured the hearts of many. The fans' love for the game has stood the test of time, and even after many years, they fondly remember it and occasionally dive back into its universe. The creators of the game:

<pre>
SHIGESATO ITOI          KAZUYA NAKATANI             KEIZOH KATOH            DAYV BROOKS
MIYUKI KURE             TAKAYUKI ONODERA            MOTOHIRO ISHII          NORIYUKI MINAMI
AKIO OHMORI             MOTOO YASUMA                AKIHITO TODA            BIN OHGAWARA
RITSUO KAMIMURA         MASAYUKI KAMEYAMA           YUKARI SAITOH           YOSHIHISA WADA
KEIICHI SUZUKI          HIDEO KON                   PHIL SANDHOP            HIKONORI SUZUKI
HIROKAZU TANAKA         KATSUTOMO MAEIWA            TOSHIKO WATSON          TAKAO SHIMIZU
SHINBO MINAMI           KUNIKO SAKURAI              YUKA NAKATA             SHIGERU MIYAMOTO
TATSUYA ISHII           MASAHIRO TATEMOTO           HIROKO FAULKNER         HIROSHI YAMAUCHI
TOTTORI                 TAKASHI KAWAGUCHI           TONY HARMAN
</pre>

I would also like to thank Eric Ledger, a person without whom this project would not have been possible.

## About

This repository is dedicated to disassembling the English version of the game Earthbound Zero for the NES. If you're a fan of the game and want to dive back into it, you have the opportunity to customize the game by making changes to its code and building a personalized game ROM.

### lib

Contains subroutines of basic and auxiliary functions of work with peripherals.

### original

Contains files for building the original game image.

### sys

Contains files that implement basic NES functions.

## Getting Started

Install [Git](https://git-scm.com/download/win) and run the command to copy the repository to the folder `C:\Earthbound_Zero`:

    git clone https://github.com/Vadim2010/nes-Earthbound_Zero C:\Earthbound_Zero

Or download the repository image as an [archive](https://github.com/Vadim2010/nes-Earthbound_Zero.git).

Before you start building the project, install [make for Windows](http://gnuwin32.sourceforge.net/packages/make.htm) (or `sudo apt-get install build-essential` for ubuntu) and [cc65](https://cc65.github.io/getting-started.html) and add them to your environment PATH.

### Building the Original ROM

To build the original game image, run command prompt, navigate to the `C:\Earthbound_Zero\original` folder and run the `make` command.

### Building the Modified ROM

Let's go through an example of how to modify the game. First, copy the original folder, for example, to a folder named mod.

We'll start with something simple: changing the names of the enemies.
All the files we will be modifying can be found in the copied folder (in my case, mod).
Let's locate the file `..res/names.s` and open it in a text editor. Find the label EnemyNameList; everything below it contains the enemy names we are looking for. We will add spaces in the names where they are missing:
"BigWoodoh," "EnergyRobot," "PseudoZombi," "BionicCenti," "BionicScorp," "PsychoTruck," "ManiacTruck," "UltraBarbot," "OmegaSaucer," "SuperEnergy," "BlueStarman," "NastyZombie," "GrizzlyBear," and "LastStarman."
Then, we'll rename "Megaborg" to "Mega Borg" and "Omega Borg" to "Tera Borg."

Would you like to adjust the enemy parameters? You’ll need the file `../res/enemies.s`. For combined fields like HP, PP, Offense, and Defense, the game allocates 10 bits (the remaining 6 bits in each field are used for additional properties), so the maximum possible value for these parameters is 1023.

In the file ../res/data2.s, let’s modify the item prices:
<pre>
Berry Tofu      975 ->  81      Mouthwash       175 ->  15      Rope            600 ->  50
Bomb            280 ->  23      Plasma Beam    1300 -> 108      Sticky Machine 3200 -> 267
Insecticide     300 ->  25      Real Rocket    3485 -> 290      Super Bomb     1800 -> 150
Laser Beam      760 ->  63      Time Machine   2775 -> 231
Last Weapon    1048 ->  87      Repel           160 ->  13
</pre>

Let's restore the time machine joke. In the file `../res/objects2.s`, locate the label `MysteriousTeacher`.

<pre>
MysteriousTeacher:
    .byte $94, $A9, 4, $F5, $A8, $84, 6, $46, $A, $62, $12
    .byte $43, $14, 8, $2C, 1, 9, $5F, 1, $1C, 8, $26, 1, 9
    .byte $5F, 8, $28, 1, $10, 0, $27, 0, $23, $11, 0, $10
    .byte $43, $22, $6C, $24, $1E, $A6, $59, $12, 0, $37, 8
    .byte $3E, 2, 8, $2B, 1, $11, 0, 0, $29, $50, $26, $A6
    .byte $48, 8, $1C, 2, 8, $23, 2, $5B, 9, 8, $75, 1, 0
    .byte $2D, $62, $5C, 6, 8, $2B, 1, 0, 8, $3D, 2, 8, $2B
    .byte 1, $11, 0, 0, 8, $2B, 1, $11, 0, 0, 8, $29, 1, 0
</pre>

And replace everything under it with the following values:
<pre>
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
</pre>

After finishing the edits, build the ROM. Go to the folder with your modifications (`mod`) and run the command `make`. The game ROM, `game.nes`, will be located in the `../mod/build` folder.

### Advanced Custom Modifications (Code-Level)
1. Bullhorn
2. LifeUpCream

#### 1. Bullhorn
In the original game, Bullhorn works as follows:
When used in battle, the user shouts "Your mother is calling for you!" to one of the enemies. This can lead to one of two outcomes: if the enemy believes the statement, their Fight stat decreases; if they don't believe it and get angry, their Offense increases.

We will modify its effects as follows:

Believes it: Offense decreases.

Disbelieves it and gets angry: Fight increases.

There is already a subroutine in the game that decreases Offense, so we only need to update the Bullhorn script accordingly.
However, there is no existing subroutine for increasing Fight in `battle.s`. Still, there is a dialog message related to increasing Fight found in `dialogs.s`. This means we’ll need to implement a new handler for increasing the Fight stat and use the existing message.

But there’s a problem: looking at `original\build\mmc3\map.txt`, we see that `battle.s` occupies nearly the entire memory bank (BANK_7) — 8190 ($1FFE) bytes out of 8192 ($2000), leaving only 2 free bytes. This is just enough to add a pointer to the new Fight-increase handler, but not the handler code itself. We need an additional 17 bytes for the new subroutine.

Fortunately, script handlers use similar routines to obtain the pointer to the next script entry, and these routines are repeated several times in the code. We can eliminate these duplicates and update the relevant tables with unified pointers to free up enough space.

These are functions of the following form:
<pre>
    lda #NUMBER
    jmp get_script_pntr
</pre>

Where NUMBER is 1, 2, or 3.

We will keep the following functions: `sub_17ADEC`, `sub_17B863`, and `step_3`.
We will remove: `@step_1`, `@step_2`.

The following lines will be replaced accordingly:
<pre>
    ...                                                                             ...
    lda #2                                                                          jmp sub_17B863
    jmp get_script_pntr                                                             ...
    ...

    ...                                                                              ...
    lda #3                                                                           jmp step_3
    jmp get_script_pntr                                                              ...
    ...
</pre>

Then we will update the tables to reflect the changes:

Before
<pre>
    ...
    .word @step_1, nullsub_4, get_target_offset, sub_17B202, sub_17B21D
    .word sub_17B238, sub_17B23D, sub_17B248
    ...

    ...
    .word @step_2, sub_17B250, get_offense, set_value, sub_17B302
    .word set_flags, sub_17B320, sub_17B3C2, pTileID2sound, print_pTileID
    .word play_pTileID
    ...
</pre>

After
<pre>
    ...
    .word sub_17ADEC, nullsub_4, get_target_offset, sub_17B202, sub_17B21D
    .word sub_17B238, sub_17B23D, sub_17B248
    ...

    ...
    .word sub_17B863, sub_17B250, get_offense, set_value, sub_17B302
    .word set_flags, sub_17B320, sub_17B3C2, pTileID2sound, print_pTileID
    .word play_pTileID
    ...
</pre>

To the table:
<pre>
    .word sub_17B863, recover_hp, recover_pp, increase_speed, increase_off
    .word increase_defense, sub_17B8CB, sub_17B915, decrease_def, decrease_fight
    .word sub_17BA2A, sub_17BA3C, decrease_offense, decrease_defense, sub_17BA95
    .word sub_17B8AA, sub_17B8F2, sub_17BA86, increase_offense, sub_17BAE4
    .word sub_17BAFA, sub_17BB0D, sub_17BB25, sub_17BB3D, sub_17BB55
    .word set_resist, sub_17BB83, sub_17BB8C, sub_17BB9D, sub_17BBB0
    .word sub_17BBCD, sub_17BBEB, sub_17BBF9, sub_17BC02, sub_17BC0B
    .word sub_17BC14, sub_17BC1D, sub_17BC26, revives, sub_17BC2F
    .word sub_17BCD0, sub_17BD2B, sub_17BC5D, sub_17BD44
</pre>

We will add one more entry at the end — the handler that increases Fight:
<pre>
    ...
    .word sub_17BCD0, sub_17BD2B, sub_17BC5D, sub_17BD44, increase_fight
</pre>

We will insert the handler code after the `increase_offense` code and before `increase_speed`:
<pre>
increase_fight:
    jsr get_random_value
    ldx TargetOffset
    ldy #CHARACTER::Fight
    jsr sub_17BE3B
    lda #FIGHTinc
    jmp print_text
</pre>

Let’s fix the script that handles Bullhorn in the `enemies.s` file.
Before:
<pre>
Bullhorn:
    .byte $67, 0,$30,$70,$51,$80,$B7,$9E
    .byte $68,$18,$13,$88,$59,$9C,$68,$35
    .byte $62,$19,$40,$2B, 0,$68,$36,$68
    .byte $37,$62,$14,$40, $B, 0
</pre>

After:
<pre>
Bullhorn:
    .byte $67, 0,$30,$70,$51,$80,$B7,$9E
    .byte $68,$18,$13,$88,$59,$9C,$68,$35
    .byte $62,$14,$40,$B, 0,$68,$36,$68
    .byte $37,$62,$19,$40, $2B, 0
</pre>

Since Bullhorn is only used during battle, these are the only changes that need to be made.

#### 2. LifeUpCream