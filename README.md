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
Let’s fix the behavior of LifeUpCream. This will be a bit more complicated, since it can be used both in battle and on the overworld map.
In addition to its healing properties, let’s make this item also revive fallen characters with 50% HP.

We’ll start by modifying the battle behavior. However, memory in BANK_7 is still very limited.
We’ll need to apply another code optimization to free up the necessary space.

<pre>
loc_17ACE2:                                                                     loc_17ACE2:
    lda Character1 + BATTLE::InitialStatus,Y                                        lda Character1 + BATTLE::InitialStatus,Y
    and #$80                                                                        asl A
    beq loc_17ACEE                                                                  bcc loc_17ACEE
    ...                                                                             ...

loc_17ACEE:                                                                     loc_17ACEE:
    lda Character1 + BATTLE::InitialStatus,Y                                        asl A
    and #$40                                                                        bcc loc_17ACFA
    beq loc_17ACFA                                                                  ...
    ... 

loc_17ACFA:                                                                     loc_17ACFA:
    lda Character1 + BATTLE::InitialStatus,Y                                        asl A
    and #$20                                                                        bcc loc_17AD06
    beq loc_17AD06                                                                  ...
    ...

loc_17AD06:                                                                     loc_17AD06:
    lda Character1 + BATTLE::InitialStatus,Y                                        asl A
    and #$10                                                                        bcc loc_17AD2B
    beq loc_17AD2B                                                                  ...
    ...

loc_17AD2B:                                                                     loc_17AD2B:
    lda Character1 + BATTLE::InitialStatus,Y                                        asl A
    and #4                                                                          asl A
    beq loc_17AD37                                                                  bcc loc_17AD37
    ...                                                                             ...

loc_17AD37:                                                                     loc_17AD37:
    lda Character1 + BATTLE::Resist,Y                                               asl A
    and #2                                                                          bcc loc_17AD4A
    beq loc_17AD4A                                                                  ...
    ...



sub_17B150:                                                                     sub_17B150:
    ...                                                                             ...
    and #$80                                                                        asl A
    bne loc_17B160                                                                  bcs loc_17B160
    lda Character1 + BATTLE::Flags,Y                                                lda Character1 + BATTLE::Flags,Y
    ...                                                                             ...


sub_17B202:                                                                     sub_17B202:
    ...                                                                             ...
    and #$80                                                                        asl A
    bne loc_17B22D                                                                  bcs loc_17B22D
    ...                                                                             ...

loc_17B3A6:                                                                     loc_17B3A6:
    ...                                                                             ...
    and #$80                                                                        asl A
    bne loc_17B3B7                                                                  bcs loc_17B3B7
    ...                                                                             ...

revives:                                                                        revives:
    ...                                                                             ...
    and #$80                                                                        asl A
    beq @no_revives                                                                 bcc @no_revives
    ...                                                                             ...
</pre>

We will add the label loc_17B12D to the sub_17B125 subroutine:
<pre>
sub_17B125:
    lda CharacterOffset
    bmi loc_17B12F
    lda byte_23
    beq loc_17B12F

loc_17B12D:
    clc
    rts

loc_17B12F:
    sec
    rts
</pre>

We will remove all subsequent code fragments of the following form:
<pre>
label:
    clc
    rts
</pre>

And in all jump instructions referring to these labels, we will replace their targets with loc_17B12D.

We will add the label brought:
<pre>
revives:
    ...
    sta Value
    sta Value+1

brought:
    ldx TargetOffset
    ...
</pre>

At the end of the bank, we will add the following function:
<pre>
get_chr_pntr:
    lda Character1 + BATTLE::PointerChr,X
    sta TilepackMode
    lda Character1 + BATTLE::PointerChr+1,X
    sta TilesCount
    rts
</pre>

We will replace it with the following function:
<pre>
sub_17BF2C:                                                                     sub_17BF2C:
    lda Character1 + BATTLE::PointerChr,X                                           jsr get_chr_pntr
    sta TilepackMode                                                                ...
    lda Character1 + BATTLE::PointerChr+1,X
    sta TilesCount
    ...
</pre>

And we will add the code for reviving with 50% HP:
<pre>
sub_17B8CB:                                                                         sub_17B8CB:
    lda #$FF                                                                            lda #$FF
    sta Value                                                                           sta Value
    sta Value+1                                                                         sta Value+1
    jmp loc_17B86B                                                                      ldy TargetOffset
    ...                                                                                 lda Character1 + BATTLE::InitialStatus,Y
                                                                                        asl A
                                                                                        bcc loc_17B86B
                                                                                        lda #0
                                                                                        sta Character1 + BATTLE::InitialStatus,Y
                                                                                        ldx TargetOffset
                                                                                        ldy #CHARACTER::MaxHealth
                                                                                        jsr get_chr_pntr
                                                                                        lda (TilepackMode),Y
                                                                                        lsr A
                                                                                        sta Pointer
                                                                                        iny
                                                                                        lda (TilepackMode),Y
                                                                                        ror A
                                                                                        sta Pointer+1
                                                                                        jmp brought
</pre>

We will fix the scripts in `enemies.s`:
Before:
<pre>
LifeUpCream:
    .byte $67,  0,$31,$41,$A0,$ED,$9C

...
EndScript:
    .byte 0
    .byte $68, $11, 0, $69, $B, $68, 6, 0, $69, $13, $68, $50, 0, $68, $12, 0

.export BattleAction
BattleAction:
...
</pre>

After:
<pre>
LifeUpCream:
    .byte $67,  0,$31,$41,$A0
    .word Revive

...
EndScript:
    .byte 0
    .byte $68, $11, 0, $69, $B, $68, 6, 0, $69, $13, $68, $50, 0, $68, $12, 0

Revive:
    .byte $51, $40, 5, 0

.export BattleAction
BattleAction:
...
</pre>

These changes will work during battles. Now let’s fix the behavior of LifeUpCream on the overworld map.

We will make the following changes to the `bank13.s` file:

We will add lines that check if the character is dead and LifeUpCream was used. If so, control will be passed to the `resurrect` subroutine, which revives the character with 50% HP.
<pre>
sub_13A53E:                                                                         sub_13A53E:
    ...                                                                                 ...
    .importzp PointerTilePack                                                           .importzp Item, PointerTilePack
    ...                                                                                 ...

loc_13A56F:                                                                         loc_13A56F:
    jsr sub_13A9A3                                                                      jsr sub_13A9A3
    ldx #$58                                                                            ldx #$58
    jsr message_button                                                                  jsr message_button
                                                                                        lda Item
                                                                                        cmp #$41
                                                                                        bne loc_13A577
                                                                                        jmp resurrect

loc_13A577:                                                                         loc_13A577:
    jmp nothing_happend                                                                 jmp nothing_happend
</pre>

We will insert the `resurrect` function between the subroutines `sub_13A661` and `sub_13A681`
<pre>
.import loc_13A6F0
resurrect:
    jsr sram_write_enable
    ldy #CHARACTER::InitialStatus
    lda (BankPPU_X000),Y
    and #$7F
    sta (BankPPU_X000),Y
    ldy #CHARACTER::MaxHealth
    lda (BankPPU_X000),Y
    sta Price
    iny
    lda (BankPPU_X000),Y
    sta Price+1
    lsr Price+1
    ror Price
    ldy #CHARACTER::Health
    lda Price
    sta (BankPPU_X000),Y
    iny
    lda Price+1
    sta (BankPPU_X000),Y
    jsr sram_read_enable
    jsr loc_13A6F0
    jsr make_msg
    ldx #$14
    jsr message_button
    jmp sub_13BC04
</pre>

This completes the LifeUpCream modification.