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

### sys

Contains files that implement basic NES functions.

### original

Contains files for building the original game image.

### mod

Contains files for creating a modified game image containing all the fixes described below.

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
    npc STAT_NPC2, $A980, $F500, DOWN, PharmacistAnim

    .byte 6, $46
    check_action TALK, MystTeachExit - MysteriousTeacher
    check_flag FLAG8|BIT4, Meet - MysteriousTeacher
    print $12C
    confirm NotLook - MysteriousTeacher
    jump RepeatBuy - MysteriousTeacher
Meet:
    print $126
    confirm NotLook - MysteriousTeacher
    print $128
RepeatBuy:
    set_flag FLAG0|BIT7
    find_item EMPTY, MystList - MysteriousTeacher
    clear_flag FLAG0|BIT7
MystList:
    set_flag FLAG8|BIT4
    item_list LastWeapon, SuperBomb, StkyMachine, RealRocket, MystRefuse - MysteriousTeacher
    check_flag FLAG0|BIT7, MystBuy - MysteriousTeacher
    print $23E
    print $12B
    clear_flag FLAG0|BIT7
    end_script
MystBuy:
    pay MystLess - MysteriousTeacher
    buying_item RealRocket, NotRocket - MysteriousTeacher
    print $21C
    print $223
    play SOUND1, 9
    print $175
    end_script
NotRocket:
    add_item MystTeachExit - MysteriousTeacher
    play SOUND2, 6
    print $12B
    end_script
MystLess:
    print $23D
    print $12B
    clear_flag FLAG0|BIT7
    end_script
MystRefuse:
    print $12B
    clear_flag FLAG0|BIT7
    end_script
NotLook:
    print $129
MystTeachExit:
    end_script
</pre>

And replace everything under it with the following values:
<pre>
MysteriousTeacher:
    npc STAT_NPC2, $A980, $F500, DOWN, PharmacistAnim

    .byte 6, $46
    check_action TALK, MystTeachExit - MysteriousTeacher
    check_flag FLAG8|BIT4, Meet - MysteriousTeacher
    print $12C
    confirm NotLook - MysteriousTeacher
    jump RepeatBuy - MysteriousTeacher
Meet:
    print $126
    confirm NotLook - MysteriousTeacher
    print $128
RepeatBuy:
    set_flag FLAG0|BIT7
    find_item EMPTY, MystList - MysteriousTeacher
    clear_flag FLAG0|BIT7
MystList:
    set_flag FLAG8|BIT4
    item_list LastWeapon, TimeMachine, StkyMachine, RealRocket, MystRefuse - MysteriousTeacher
    check_flag FLAG0|BIT7, MystBuy - MysteriousTeacher
    print $23E
    print $12B
    clear_flag FLAG0|BIT7
    end_script
MystBuy:
    pay MystLess - MysteriousTeacher
    buying_item TimeMachine, MystNext - MysteriousTeacher
    print $21C
    print $223
    teleport $E540, $2182
    end_script
MystNext:
    buying_item RealRocket, MystNext - MysteriousTeacher
    print $21C
    print $223
    play SOUND1, 9
    print $175
    end_script
NotRocket:
    add_item MystTeachExit - MysteriousTeacher
    play SOUND2, 6
    print $12B
    end_script
MystLess:
    print $23D
    print $12B
    clear_flag FLAG0|BIT7
    end_script
MystRefuse:
    print $12B
    clear_flag FLAG0|BIT7
    end_script
NotLook:
    print $129
MystTeachExit:
    end_script
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

We will keep the following functions: `step1`, `step_2`, and `step_3`.
We will remove: `@step_1`, `@step_2`.

The following lines will be replaced accordingly:
<pre>
    ...                                                     ...
    lda #2                                                  jmp step_2
    jmp get_script_pntr                                     ...
    ...

    ...                                                     ...
    lda #3                                                  jmp step_3
    jmp get_script_pntr                                     ...
    ...
</pre>

Then we will update the tables to reflect the changes:

Before
<pre>
    ...
    .word @step_1, nullsub_4, get_target_offset, get_group_by_status1, get_group_by_status2
    .word char2target, get_group, get_next_target
    ...

    ...
    .word @step_2, calc_attack, get_offense, set_value, boss_msg
    .word set_flags, enemy_check, choose_sound, pTileID2sound, print_pTileID
    .word play_pTileID
    ...
</pre>

After
<pre>
    ...
    .word step1, nullsub_4, get_target_offset, get_group_by_status1, get_group_by_status2
    .word char2target, get_group, get_next_target
    ...

    ...
    .word step_2, calc_attack, get_offense, set_value, boss_msg
    .word set_flags, enemy_check, choose_sound, pTileID2sound, print_pTileID
    .word play_pTileID
    ...
</pre>

To the table:
<pre>
    .word step_2, recover_hp, recover_pp, increase_speed, increase_off
    .word increase_defense, restore_hp, resolve_attack, decrease_def, decrease_fight
    .word knock_out, critical_dmg, decrease_offense, decrease_defense, increase_exp
    .word trigger_kill, random_damage, approach_enemy, increase_offense, blinded
    .word poisoned, confused, put2sleep, cant_move, psi_blocked
    .word set_resist, shielded, barrier, bound, stone
    .word asthma, strange, dissipated, wake_up, can_move
    .word asthma_pass, regained, destroyed, revives, recovered_stone
    .word snatched, took_away, defeated, lost_senses
</pre>

We will add one more entry at the end — the handler that increases Fight:
<pre>
    ...
    .word snatched, took_away, defeated, lost_senses, increase_fight
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

Add a new parameter INCREASE_FIGHT = $2B to the `battle.inc` file.

Let’s fix the script that handles Bullhorn in the `enemies.s` file.
Before:
<pre>
Bullhorn:
    ...
    print_msg BELIEVED
    set_value 25
    change DECREASE_FIGHT
    end_script

DontBelieved:
    print_msg WASNTCONVINCED
    print_msg MADEANGRY
    set_value 20
    change INCREASE_OFFENSE
    end_script
</pre>

After:
<pre>
Bullhorn:
    ...
    print_msg BELIEVED
    set_value 25
    change DECREASE_OFFENSE
    end_script

DontBelieved:
    print_msg WASNTCONVINCED
    print_msg MADEANGRY
    set_value 20
    change INCREASE_FIGHT
    end_script
</pre>

Since Bullhorn is only used during battle, these are the only changes that need to be made.

#### 2. LifeUpCream
Let’s fix the behavior of LifeUpCream. This will be a bit more complicated, since it can be used both in battle and on the overworld map.
In addition to its healing properties, let’s make this item also revive fallen characters with 50% HP.

We’ll start by modifying the battle behavior. However, memory in BANK_7 is still very limited.
We’ll need to apply another code optimization to free up the necessary space.

<pre>
@check_alive:                                               @check_alive:
    lda Character1 + BATTLE::Status,Y                           lda Character1 + BATTLE::Status,Y
    and #$80                                                    asl A
    beq @check_stone                                            bcc @check_stone
    ...                                                         ...

@check_stone:                                               @check_stone:
    lda Character1 + BATTLE::Status,Y                           asl A
    and #$40                                                    bcc @check_cantmove
    beq @check_cantmove                                         ...
    ... 

@check_cantmove:                                            @check_cantmove:
    lda Character1 + BATTLE::Status,Y                           asl A
    and #$20                                                    bcc @check_asleep
    beq @check_asleep                                           ...
    ...

@check_asleep:                                              @check_asleep:
    lda Character1 + BATTLE::Status,Y                           asl A
    and #$10                                                    bcc @check_daydream
    beq @check_daydream                                         ...
    ...

@check_daydream:                                            @check_daydream:
    lda Character1 + BATTLE::Status,Y                           asl A
    and #4                                                      asl A
    beq @check_wheeze                                           bcc @check_wheeze
    ...                                                         ...

check_target_flags:                                         check_target_flags:
    ...                                                         ...
    and #$80                                                    asl A
    bne loc_17B160                                              bcs loc_17B160
    lda Character1 + BATTLE::Flags,Y                            lda Character1 + BATTLE::Flags,Y
    ...                                                         ...


get_group_by_status1:                                       get_group_by_status1:
    ...                                                         ...
    and #$80                                                    asl A
    bne loc_17B22D                                              bcs loc_17B22D
    ...                                                         ...

loc_17B3A6:                                                 loc_17B3A6:
    ...                                                         ...
    and #$80                                                    asl A
    bne loc_17B3B7                                              bcs loc_17B3B7
    ...                                                         ...

revives:                                                    revives:
    ...                                                         ...
    and #$80                                                    asl A
    beq @no_revives                                             bcc @no_revives
    ...                                                         ...
</pre>

We will add the label loc_17B12D to the check_no_vechicle subroutine:
<pre>
check_no_vechicle:
    lda CharacterOffset
    bmi loc_17B12F
    lda Vechicle
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
    set Value, #$FF
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
get_char_parameter:                                         get_char_parameter:
    lda Character1 + BATTLE::PointerChr,X                       jsr get_chr_pntr
    sta TilepackMode                                            ...
    lda Character1 + BATTLE::PointerChr+1,X
    sta TilesCount
    ...
</pre>

And we will add the code for reviving with 50% HP:
<pre>
restore_hp:                                                 restore_hp:
    set Value, #$FF                                             set Value, #$FF
    sta Value+1                                                 sta Value+1
    jmp loc_17B86B                                              ldy TargetOffset
    ...                                                         lda Character1 + BATTLE::Status,Y
                                                                asl A
                                                                bcc loc_17B86B
                                                                lda #0
                                                                sta Character1 + BATTLE::Status,Y
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
    sound 0
    use_remove_item $41
    jump CheckAlive

...
WithoutEffect:
    print_msg NOEFFECT
    end_script

.export BattleAction
BattleAction:
...
</pre>

After:
<pre>
LifeUpCream:
    sound 0
    use_remove_item $41
    jump Revive

...
WithoutEffect:
    print_msg NOEFFECT
    end_script

Revive:
    get_target
    change RESTORE_HP
    end_script

.export BattleAction
BattleAction:
...
</pre>

These changes will work during battles. Now let’s fix the behavior of LifeUpCream on the overworld map.

We will make the following changes to the `bank13.s` file:

We will add lines that check if the character is dead and LifeUpCream was used. If so, control will be passed to the `resurrect` subroutine, which revives the character with 50% HP.
<pre>
sub_13A53E:                                                 sub_13A53E:
    ...                                                         ...
    .importzp PointerTilePack                                   .importzp Item, PointerTilePack
    ...                                                         ...

loc_13A56F:                                                 loc_13A56F:
    jsr sub_13A9A3                                              jsr sub_13A9A3
    ldx #$58                                                    ldx #$58
    jsr message_button                                          jsr message_button
                                                                lda Item
                                                                cmp #$41
                                                                bne loc_13A577
                                                                jmp resurrect

loc_13A577:                                                 loc_13A577:
    jmp nothing_happend                                         jmp nothing_happend
</pre>

We will insert the `resurrect` function between the subroutines `sub_13A661` and `sub_13A681`
<pre>
.import loc_13A6F0
resurrect:
    jsr sram_write_enable
    ldy #CHARACTER::Status
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