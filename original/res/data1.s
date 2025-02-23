.include "..\..\sys\palette.inc"
.include "charmap.inc"
.include "framecomm.inc"
.include "structures.inc"

.segment "DATA1"

FramesList:
    .export FramesList
    .import TilePntr2

    .word fBattleLog, fStatistic, fBattleMenu1, fClear2, fEmptyString
    .word stru_8CC8, stru_8CD0, fClear1, stru_8CE0, fEmptyString
    .word fName, fSelectEnemy, fEnemyName, stru_8CF0, fSelectGoods
    .word fGoods, stru_8CF8, stru_8D0C, stru_8CC0, fBattleMenu2
    .word stru_8D20

fBattleLog:
    down 0, 1
    line fBattleLogTop
    lines 3, fBattleLogMiddle
    line fBattleLogBottom
    end_mark

fClear1:
    up 0, 9
    lines 4, fSpaceString
    end_mark

fStatistic:
    down 0, 19
    line fStatisticTop
    lines 3, fStatisticMiddle
    line fStatisticBottom
    end_mark

fBattleMenu1:
    down 11, 17
    line fBattleMenuTop
    lines 1, fBattleMenuLine1
    next 1, fBattleMenuLine2
    next 1, fBattleMenuLine3
    next 1, fBattleMenuLine4
    line fBattleMenuBottom
    end_mark

fBattleMenu2:
    down 11, 17
    line fBattleMenuTop
    lines 1, fBattleMenuLine1
    next 1, fBattleMenuLine2
    next 1, fBattleMenuLine3
    next 1, fBattleMenuLine5
    line fBattleMenuBottom
    end_mark

fClear2:
    up 0, 27
    lines 5, fSpaceString
    end_mark

fName:
    down 1, 17
    line fNameTop
    lines 1, fNameMiddle1
    line fNameBottom
    lines 3, fNameMiddle2
    end_mark

fSelectEnemy:
    down 15, 17
    line fSelectEnemyTop
    lines 4, fSelectEnemyMiddle
    line fSelectEnemyBottom
    end_mark

fSelectGoods:
    down 5, 17
    line fSelectGoodsTop
    lines 4, fSelectGoodsMiddle
    line fSelectGoodsBottom
    end_mark

stru_8CC0:
    down 7, 17
    line byte_8E29
    end_mark

stru_8CC8:
    down 7, 6
    line stru_8E32
    end_mark

stru_8CD0:
    down 7, 7
    line stru_8E32
    end_mark

fEnemyName:
    down 17, $FF
    lines 1, fNamePrint
    end_mark

stru_8CE0:
    down 3, $FF
    lines 1, fNamePrint
    end_mark

fGoods:
    down $FF, $FF
    lines 1, fNamePrint
    end_mark

stru_8CF0:
    down $FF, $FF
    line byte_8E30
    end_mark

stru_8CF8:
    down 11, 23
    line byte_8E36
    lines 1, byte_8E3C
    line byte_8E42
    .byte $FC, 1
    .word stru_8E48
    end_mark

stru_8D0C:
    down 11, 23
    line byte_8E36
    lines 1, byte_8E3C
    line byte_8E42
    .byte $FC, 1
    .word stru_8E5A
    end_mark

stru_8D20:
    down 11, 23
    line byte_8E36
    lines 1, byte_8E3C
    line byte_8E42
    .byte $FC, 1
    .word stru_8E6C
    end_mark

fEmptyString:
    fill 0, 32
    end_frame

fSpaceString:
    fill " ", 32
    end_frame

fBattleLogTop:
    fill " ", 4
    .byte FRAME_TOP_LEFT
    fill FRAME_TOP, 22
    .byte FRAME_TOP_RIGHT
    fill " ", 4
    end_frame

fBattleLogMiddle:
    fill " ", 4
    left
    fill " ", 22
    right
    fill " ", 4
    end_frame

fBattleLogBottom:
    fill " ", 4
    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 22
    .byte FRAME_BOTTOM_RIGHT
    fill " ", 4
    end_frame

fStatisticTop:
    .byte " ", FRAME_TOP_LEFT, FRAME_TOP, "NAME"
    fill FRAME_TOP, 4
    .byte "HP", FRAME_TOP, FRAME_TOP, "PP", FRAME_TOP, FRAME_TOP, "LV"
    fill FRAME_TOP, 6
    .byte "EX", FRAME_TOP, FRAME_TOP_RIGHT, " "
    end_frame

fStatisticMiddle:
    .byte " "
    left
    fill " ", 28
    right
    .byte " "
    end_frame

fStatisticBottom:
    .byte " ", FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 28
    .byte FRAME_BOTTOM_RIGHT, " "
    end_frame

fBattleMenuTop:
    .byte FRAME_TOP_LEFT
    fill FRAME_TOP, 18
    .byte FRAME_TOP_RIGHT
    end_frame

fBattleMenuLine1:
    left
    .byte " Fight"
    fill " ", 4
    .byte "Auto"
    fill " ", 4
    right
    end_frame

fBattleMenuLine2:
    left
    .byte " PSI"
    fill " ", 6
    .byte "Guard"
    fill " ", 3
    right
    end_frame

fBattleMenuLine3:
    left
    .byte " Goods"
    fill " ", 4
    .byte "Run"
    fill " ", 5
    right
    end_frame

fBattleMenuLine4:
    left
    .byte " Check"
    fill " ", 12
    right
    end_frame

fBattleMenuBottom:
    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 18
    .byte FRAME_BOTTOM_RIGHT
    end_frame

fBattleMenuLine5:
    left
    .byte " Check"
    fill " ", 4
    .byte "Sing"
    fill " ", 4
    right
    end_frame

fNameTop:
    .byte FRAME_TOP_LEFT
    fill FRAME_TOP, 8
    .byte FRAME_TOP_RIGHT
    end_frame

fNameMiddle1:
    left
    fill " ", 8
    right
    end_frame

fNameBottom:
    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 8
    .byte FRAME_BOTTOM_RIGHT
    end_frame

fNameMiddle2:
    fill " ", 10
    end_frame

fSelectEnemyTop:
    .byte FRAME_TOP_LEFT
    fill FRAME_TOP, 14
    .byte FRAME_TOP_RIGHT
    end_frame

fSelectEnemyMiddle:
    left
    fill " ", 14
    right
    end_frame

fSelectEnemyBottom:
    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 14
    .byte FRAME_BOTTOM_RIGHT
    end_frame

fSelectGoodsTop:
    .byte FRAME_TOP_LEFT
    fill FRAME_TOP, 24
    .byte FRAME_TOP_RIGHT
    end_frame

fSelectGoodsMiddle:
    left
    fill " ", 24
    right
    end_frame

fSelectGoodsBottom:
    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 24
    .byte FRAME_BOTTOM_RIGHT
    end_frame

byte_8E29:
    .byte " ", ARROW
    end_frame

fNamePrint:
    tile_pointer TilePntr2
    end_frame

byte_8E30:
    .byte CURSOR
    end_frame

stru_8E32:
    fill " ", 22
    end_frame

byte_8E36:
    .byte FRAME_TOP_LEFT
    fill FRAME_TOP, 18
    .byte FRAME_TOP_RIGHT
    end_frame

byte_8E3C:
    left
    fill " ", 18
    right
    end_frame

byte_8E42:
    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 18
    .byte FRAME_BOTTOM_RIGHT
    end_frame

stru_8E48:
    tile_position 13, 25
    .byte "You can't now."
    end_frame

stru_8E5A:
    tile_position 13, 25
    .byte "You can't now."
    end_frame

stru_8E6C:
    .import TilePntr1

    tile_position 13, 25
    tile_pointer TilePntr1
    .byte " can't."
    end_frame

fNameStr:
    .export fNameStr

    tile_position 3, 19
    tile_pointer TilePntr1
    end_frame

BattlePalettes:
    .export BattlePalettes

    .byte BLACK, MEDIUM_GRAY, WHITE, DARK_GRAY; PALETTE0
    .byte BLACK, MEDIUM_RED, WHITE, DARK_GRAY; PALETTE1
    .byte BLACK, LIGHT_YELLOW, WHITE, MEDIUM_YELLOW; PALETTE2
    .byte BLACK, LIGHT_CYAN, WHITE, MEDIUM_GREEN; PALETTE3
    .byte BLACK, MEDIUM_BLUE, WHITE, MEDIUM_RED; PALETTE0
    .byte BLACK, DARK_GRAY, MEDIUM_RED, WHITE; PALETTE1
    .byte BLACK, LIGHT_GREEN, DARK_GRAY, DARK_GRAY; PALETTE2
    .byte BLACK, DARK_GRAY, WHITE, BLACK; PALETTE3

    .byte BLACK, MEDIUM_INDIGO, WHITE, DARK_GRAY; PALETTE0
    .byte BLACK, MEDIUM_RED, WHITE, DARK_RED; PALETTE1
    .byte BLACK, LIGHT_GREEN, WHITE, MEDIUM_GREEN; PALETTE2
    .byte BLACK, WHITE, WHITE, LIGHT_BLUE; PALETTE3
    .byte BLACK, MEDIUM_BLUE, WHITE, MEDIUM_RED; PALETTE0
    .byte BLACK, MEDIUM_GREEN, WHITE, BLACK; PALETTE1
    .byte BLACK, DARK_GRAY, WHITE, MEDIUM_BLUE; PALETTE2
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE3

    .byte BLACK, DARK_GRAY, MEDIUM_GRAY, DARK_INDIGO; PALETTE0
    .byte BLACK, MEDIUM_INDIGO, WHITE, MEDIUM_RED; PALETTE1
    .byte BLACK, LIGHT_YELLOW, WHITE, MEDIUM_YELLOW; PALETTE2
    .byte BLACK, MEDIUM_RED, WHITE, DARK_ORANGE; PALETTE3
    .byte BLACK, MEDIUM_BLUE, WHITE, MEDIUM_RED; PALETTE0
    .byte BLACK, BLACK, WHITE, DARK_ORANGE; PALETTE1
    .byte BLACK, BLACK, WHITE, MEDIUM_RED; PALETTE2
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE3

    .byte BLACK, DARK_GRAY, MEDIUM_GRAY, DARK_INDIGO; PALETTE0
    .byte BLACK, MEDIUM_INDIGO, WHITE, MEDIUM_RED; PALETTE1
    .byte BLACK, LIGHTEST_PURPLE, WHITE, MEDIUM_RED; PALETTE2
    .byte BLACK, MEDIUM_YELLOW, WHITE, MEDIUM_RED; PALETTE3
    .byte BLACK, MEDIUM_BLUE, WHITE, MEDIUM_RED; PALETTE0
    .byte BLACK, MEDIUM_GRAY, MEDIUM_INDIGO, BLACK; PALETTE1
    .byte BLACK, MEDIUM_GRAY, MEDIUM_RED, BLACK; PALETTE2
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE3

    .byte BLACK, MEDIUM_GRAY, WHITE, DARK_GRAY; PALETTE0
    .byte BLACK, LIGHT_PURPLE, WHITE, MEDIUM_VIOLET; PALETTE1
    .byte BLACK, LIGHTEST_CYAN, MEDIUM_GREEN, MEDIUM_REDVIOLET; PALETTE2
    .byte BLACK, BLACK, WHITE, MEDIUM_INDIGO; PALETTE3
    .byte BLACK, MEDIUM_BLUE, WHITE, MEDIUM_RED; PALETTE0
    .byte BLACK, MEDIUM_YELLOW, WHITE, DARK_RED; PALETTE1
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE2
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE3

    .byte BLACK, MEDIUM_GREEN, WHITE, LIGHT_GREEN; PALETTE0
    .byte BLACK, LIGHTEST_YELLOW, WHITE, MEDIUM_YELLOW; PALETTE1
    .byte BLACK, LIGHT_YELLOW, WHITE, MEDIUM_YELLOW; PALETTE2
    .byte BLACK, BLACK, WHITE, MEDIUM_INDIGO; PALETTE3
    .byte BLACK, MEDIUM_BLUE, WHITE, MEDIUM_RED; PALETTE0
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE1
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE2
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE3

    .byte BLACK, MEDIUM_YELLOW, WHITE, DARK_RED; PALETTE0
    .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_BLUE; PALETTE1
    .byte BLACK, MEDIUM_GRAY, LIGHTEST_ORANGE, DARK_GRAY; PALETTE2
    .byte BLACK, MEDIUM_RED, WHITE, LIGHTEST_YELLOW; PALETTE3
    .byte BLACK, MEDIUM_BLUE, WHITE, MEDIUM_RED; PALETTE0
    .byte BLACK, MEDIUM_BLUE, WHITE, BLACK; PALETTE1
    .byte BLACK, MEDIUM_ORANGE, LIGHT_GREEN, BLACK; PALETTE2
    .byte BLACK, LIGHT_YELLOW, WHITE, BLACK; PALETTE3

    .byte BLACK, MEDIUM_RED, WHITE, LIGHT_YELLOW; PALETTE0
    .byte BLACK, MEDIUM_INDIGO, WHITE, LIGHT_GREEN; PALETTE1
    .byte BLACK, MEDIUM_YELLOW, LIGHTEST_YELLOW, DARK_RED; PALETTE2
    .byte BLACK, DARK_PURPLE, WHITE, MEDIUM_PURPLE; PALETTE3
    .byte BLACK, MEDIUM_BLUE, WHITE, MEDIUM_RED; PALETTE0
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE1
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE2
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE3

    .byte BLACK, MEDIUM_GRAY, WHITE, DARK_GRAY; PALETTE0
    .byte BLACK, LIGHT_YELLOW, LIGHTEST_REDVIOLET, MEDIUM_RED; PALETTE1
    .byte BLACK, LIGHTEST_PURPLE, WHITE, MEDIUM_RED; PALETTE2
    .byte BLACK, MEDIUM_TURQUOISE, WHITE, MEDIUM_RED; PALETTE3
    .byte BLACK, MEDIUM_BLUE, WHITE, MEDIUM_RED; PALETTE0
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE1
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE2
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE3

    .byte BLACK, LIGHT_ORANGE, WHITE, MEDIUM_YELLOW; PALETTE0
    .byte BLACK, LIGHT_CHARTREUSE, WHITE, MEDIUM_GREEN; PALETTE1
    .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO; PALETTE2
    .byte BLACK, DARK_INDIGO, WHITE, DARK_GRAY; PALETTE3
    .byte BLACK, MEDIUM_BLUE, WHITE, MEDIUM_RED; PALETTE0
    .byte BLACK, MEDIUM_RED, LIGHTEST_PURPLE, DARK_ORANGE; PALETTE1
    .byte BLACK, LIGHT_BLUE, WHITE, MEDIUM_INDIGO; PALETTE2
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE3

    .byte BLACK, LIGHT_CYAN, WHITE, MEDIUM_GREEN; PALETTE0
    .byte BLACK, MEDIUM_YELLOW, WHITE, MEDIUM_ORANGE; PALETTE1
    .byte BLACK, MEDIUM_YELLOW, LIGHTEST_REDVIOLET, MEDIUM_INDIGO; PALETTE2
    .byte BLACK, MEDIUM_YELLOW, WHITE, DARK_YELLOW; PALETTE3
    .byte BLACK, MEDIUM_BLUE, WHITE, MEDIUM_RED; PALETTE0
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE1
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE2
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE3

    .byte BLACK, MEDIUM_INDIGO, LIGHTEST_REDVIOLET, MEDIUM_RED; PALETTE0
    .byte BLACK, LIGHT_YELLOW, WHITE, MEDIUM_RED; PALETTE1
    .byte BLACK, DARK_VIOLET, LIGHTEST_CHARTREUSE, MEDIUM_RED; PALETTE2
    .byte BLACK, DARK_VIOLET, WHITE, MEDIUM_RED; PALETTE3
    .byte BLACK, MEDIUM_BLUE, WHITE, MEDIUM_RED; PALETTE0
    .byte BLACK, MEDIUM_VIOLET, WHITE, BLACK; PALETTE1
    .byte BLACK, MEDIUM_GREEN, WHITE, BLACK; PALETTE2
    .byte BLACK, MEDIUM_GREEN, WHITE, BLACK; PALETTE3

    .byte BLACK, LIGHT_REDVIOLET, WHITE, DARK_REDVIOLET; PALETTE0
    .byte BLACK, MEDIUM_YELLOW, LIGHTEST_RED, MEDIUM_RED; PALETTE1
    .byte BLACK, DARK_RED, WHITE, DARK_GRAY; PALETTE2
    .byte BLACK, LIGHT_YELLOW, WHITE, MEDIUM_ORANGE; PALETTE3
    .byte BLACK, MEDIUM_BLUE, WHITE, MEDIUM_RED; PALETTE0
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE1
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE2
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE3

    .byte BLACK, MEDIUM_YELLOW, WHITE, DARK_ORANGE; PALETTE0
    .byte BLACK, WHITE, LIGHTEST_RED, DARK_GRAY; PALETTE1
    .byte BLACK, DARK_GRAY, WHITE, DARK_YELLOW; PALETTE2
    .byte BLACK, LIGHT_YELLOW, WHITE, MEDIUM_INDIGO; PALETTE3
    .byte BLACK, MEDIUM_BLUE, WHITE, MEDIUM_RED; PALETTE0
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE1
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE2
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE3

    .byte BLACK, LIGHT_PURPLE, LIGHTEST_REDVIOLET, MEDIUM_RED; PALETTE0
    .byte BLACK, DARK_GRAY, WHITE, DARK_ORANGE; PALETTE1
    .byte BLACK, WHITE, LIGHTEST_RED, DARK_GRAY; PALETTE2
    .byte BLACK, MEDIUM_ORANGE, WHITE, DARK_ORANGE; PALETTE3
    .byte BLACK, MEDIUM_BLUE, WHITE, MEDIUM_RED; PALETTE0
    .byte BLACK, MEDIUM_GRAY, MEDIUM_INDIGO, BLACK; PALETTE1
    .byte BLACK, MEDIUM_ORANGE, BLACK, DARK_ORANGE; PALETTE2
    .byte BLACK, MEDIUM_GRAY, WHITE, LIGHTEST_GRAY; PALETTE3

    .byte BLACK, DARK_TURQUOISE, LIGHTEST_YELLOW, DARK_GREEN; PALETTE0
    .byte BLACK, WHITE, LIGHTEST_ORANGE, MEDIUM_RED; PALETTE1
    .byte BLACK, LIGHT_CYAN, WHITE, MEDIUM_RED; PALETTE2
    .byte BLACK, LIGHTEST_PURPLE, WHITE, MEDIUM_RED; PALETTE3
    .byte BLACK, MEDIUM_BLUE, WHITE, MEDIUM_RED; PALETTE0
    .byte BLACK, MEDIUM_RED, WHITE, BLACK; PALETTE1
    .byte BLACK, MEDIUM_GREEN, WHITE, BLACK; PALETTE2
    .byte BLACK, MEDIUM_VIOLET, WHITE, WHITE; PALETTE3

.export BattleMsg

BattleMsg:
    .word $5DC, $66F, $5DE, $5DF, $5E0, $5E1, $5E2, $5E3    ; $00
    .word $5E4, $5E5, $5E6, $5E7, $5E8, $5E9, $5EA, $5EB
    .word $5EC, $5ED, $5EE, $5EF, $5F0, $5F1, $5F2, $5F3    ; $10
    .word $5F4, $5F5, $5F6, $5F7, $5F8, $5F9, $5FA, $5FB
    .word $5FC, $5FD, $5FE, $5FF, $600, $601, $602, $603    ; $20
    .word $604, $605, $606, $607, $608, $609, $60A, $60B
    .word $60C, $60D, $60E, $60F, $610, $611, $612, $613    ; $30
    .word $614, $615, $616, $617, $618, $619, $61A, $61B
    .word $61C, $61D, $61E, $61F, $620, $621, $622, $623    ; $40
    .word $624, $625, $626, $627, $628, $629, $62A, $62B
    .word $62C, $62D, $62E, $62F, $630, $631, $632, $633    ; $50
    .word $634, $635, $636, $637, $638, $639, $63A, $63B
    .word $63C, $63D, $63E, $63F, $640, $641, $642, $643    ; $60
    .word $644, $645, $646, $647, $648, $649, $64A, $64B
    .word $64C, $64D, $64E, $64F, $650, $651, $652, $653    ; $70
    .word $654, $655, $656, $657, $658, $659, $65A, $65B
    .word $65C, $65D, $65E, $65F, $660, $661, $662, $663    ; $80
    .word $664, $665, $666, $667, $668, $669, $66A, $66B
    .word $66C, $66D, $66E, $517, $58C, $58A, $672, $673    ; $90
    .word $674, $675, $676, $677, $678, $679, $67A, $67B
    .word $67C, $67D, $67E, $67F, $680, $681, $682, $683    ; $A0
    .word $684, $685, $686, $687

.export CommandMenu, FrameOff, InfoFrame, MsgFrame, stru_929B, stru_92CF, byte_9300, GoodsMenu
.export byte_935F, stru_936A, StateFrame, Setup
.import CurrentGame, Character

CommandMenu:
    tile_position 1, 1
    .byte FRAME_TOP_LEFT, FRAME_TOP_SHORT, "Command"
    fill FRAME_TOP, 4
    .byte FRAME_TOP_RIGHT
    end_row

    .byte $25, 0            ; low byte irq handler, offset to InterruptTable

    left
    .byte " Talk  Check"
    right
    end_row

    .byte $25, 2            ; low byte irq handler, offset to InterruptTable

    left
    .byte " Goods State"
    right
    end_row

    .byte $25, 4            ; low byte irq handler, offset to InterruptTable

    left
    .byte " PSI   Setup"
    right
    end_frame

    .byte $25, 6            ; low byte irq handler, offset to InterruptTable

    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 12
    .byte FRAME_BOTTOM_RIGHT
    end_row

    tile_position 21, 1
    .byte FRAME_TOP_LEFT, FRAME_TOP, FRAME_TOP, FRAME_TOP_SHORT, "Cash", FRAME_TOP, FRAME_TOP_RIGHT
    end_row

    .byte $25, 0            ; low byte irq handler, offset to InterruptTable

    left
    .byte "$"
    convert CurrentGame + PURE_SAVE::Cash, 2, 5
    .byte ZEROS, " "
    right
    end_frame

    .byte $25, 2            ; low byte irq handler - 1, offset to InterruptTable

    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 8
    .byte FRAME_BOTTOM_RIGHT
    end_row

FrameOff:
    frame_offset Frames

InfoFrame:
    .byte FRAME_TOP_LEFT, FRAME_TOP_SHORT, "Name", FRAME_TOP, FRAME_TOP, FRAME_TOP_SHORT, "Lvl", FRAME_TOP
    .byte FRAME_TOP_SHORT, "HP", FRAME_TOP, FRAME_TOP_SHORT, "PP", FRAME_TOP, FRAME_TOP, FRAME_TOP, FRAME_TOP
    .byte FRAME_TOP_SHORT, "Exp", FRAME_TOP, FRAME_TOP_RIGHT
    end_frame

MsgFrame:
    tile_position 7, 17
    .byte FRAME_TOP_LEFT
    fill FRAME_TOP, 22
    .byte FRAME_TOP_RIGHT
    end_row

    .byte $25, $10          ; low byte irq handler, offset to InterruptTable

    left
    fill " ", 22
    right
    end_row

    .byte $25, $12          ; low byte irq handler, offset to InterruptTable

    left
    fill " ", 22
    right
    end_row

    .byte $25, $14          ; low byte irq handler, offset to InterruptTable

    left
    fill " ", 22
    right
    end_row

    .byte $25, $16          ; low byte irq handler, offset to InterruptTable

    left
    fill " ", 22
    right
    end_frame

    .byte $25, $18          ; low byte irq handler - 1, offset to InterruptTable

    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 22
    .byte FRAME_BOTTOM_RIGHT
    end_frame

stru_929B:
    tile_position 5, 3
    .byte FRAME_TOP_LEFT, FRAME_TOP, " ", ARROW
    fill FRAME_TOP, 21
    .byte FRAME_TOP_RIGHT

byte_92A6:
    end_row

    .byte $25, 2            ; low byte irq handler, offset to InterruptTable

    left
    fill " ", 24
    right
    end_row

    .byte $25, 4            ; low byte irq handler, offset to InterruptTable

    left
    fill " ", 24
    right
    end_row

    .byte $25, 6            ; low byte irq handler, offset to InterruptTable

    left
    fill " ", 24
    right
    end_row

    .byte $25, 8            ; low byte irq handler, offset to InterruptTable

    left
    fill " ", 24
    right
    end_frame

    .byte $25, $A           ; low byte irq handler - 1, offset to InterruptTable

    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 24
    .byte FRAME_BOTTOM_RIGHT
    end_frame

stru_92CF:
    tile_position 1, 1
    .byte FRAME_TOP_LEFT
    fill FRAME_TOP, 20
    .byte FRAME_TOP_RIGHT
    end_row

    .byte $25, 0            ; low byte irq handler, offset to InterruptTable

    left
    fill " ", 20
    right
    end_row

    .byte $25, 2            ; low byte irq handler, offset to InterruptTable

    left
    fill " ", 20
    right
    end_row

    .byte $25, 4            ; low byte irq handler, offset to InterruptTable

    left
    fill " ", 20
    right
    end_row

    .byte $25, 6            ; low byte irq handler, offset to InterruptTable

    left
    fill " ", 20
    right
    end_frame

    .byte $25, 8            ; low byte irq handler - 1, offset to InterruptTable

    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 20
    .byte FRAME_BOTTOM_RIGHT
    end_frame

byte_9300:
    .byte FRAME_TOP_LEFT
    fill FRAME_TOP, 4
    .byte FRAME_TOP_RIGHT
    end_row

    .byte $25, $E           ; low byte irq handler, offset to InterruptTable

    left
    .byte "Who?"
    right
    end_frame

    .byte $25, $10          ; low byte irq handler - 1, offset to InterruptTable

    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 4
    .byte FRAME_BOTTOM_RIGHT
    end_frame

GoodsMenu:
    tile_position 23, 5
    .byte FRAME_TOP_LEFT
    fill FRAME_TOP, 6
    .byte FRAME_TOP_RIGHT
    end_row

    .byte $25, 4            ; low byte irq handler, offset to InterruptTable

    left
    .byte " Use  "
    right
    end_row

    .byte $25, 6            ; low byte irq handler, offset to InterruptTable

    left
    .byte " Eat  "
    right
    end_row

    .byte $25, 8            ; low byte irq handler, offset to InterruptTable

    left
    .byte " Give "
    right
    end_row

    .byte $25, $A           ; low byte irq handler, offset to InterruptTable

    left
    .byte " Drop "
    right
    end_row

    .byte $25, $C           ; low byte irq handler, offset to InterruptTable

    left
    .byte " Look "
    right
    end_frame

    .byte $25, $E           ; low byte irq handler - 1, offset to InterruptTable

    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 6
    .byte FRAME_BOTTOM_RIGHT
    end_frame

byte_935F:
    tile_position 5, 3
    .byte FRAME_TOP_LEFT
    fill FRAME_TOP, 24
    .byte FRAME_TOP_RIGHT

    frame_offset byte_92A6

stru_936A:
    tile_position 21, 1
    .byte FRAME_TOP_LEFT, FRAME_TOP, FRAME_TOP, FRAME_TOP_SHORT, "Cash", FRAME_TOP, FRAME_TOP_RIGHT
    end_row

    .byte $25, 0            ; low byte irq handler, offset to InterruptTable

    left
    .byte "$"
    convert CurrentGame + PURE_SAVE::Cash, 2, 5
    .byte ZEROS, " "
    right
    end_frame

    .byte $25, 2            ; low byte irq handler - 1, offset to InterruptTable

    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 8
    .byte FRAME_BOTTOM_RIGHT
    end_frame

StateFrame:
    .import Item1, Item2, Item3, Item4, Melodies

    tile_position 9, 1

    .byte FRAME_TOP_LEFT
    fill FRAME_TOP, 8
    .byte FRAME_TOP_RIGHT
    end_frame

    .byte $25, 0            ; low byte irq handler - 1, offset to InterruptTable

    left
    fill " ", 8
    right
    end_row

    tile_position 1, 3
    .byte FRAME_TOP_LEFT, FRAME_TOP_SHORT, "State", FRAME_TOP
    left
    fill " ", 8
    right
    .byte " ", ARROW, "PSI"
    fill FRAME_TOP, 6
    .byte FRAME_TOP_RIGHT
    end_frame

    .byte $25, 2            ; low byte irq handler - 1, offset to InterruptTable

    left
    fill " ", 7
    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 8
    .byte FRAME_BOTTOM_RIGHT
    fill " ", 11
    right
    end_row

    tile_position 1, 5
    left
    .byte " Lvl"
    convert Character+CHARACTER::Level, 1, 3          ; $610
    fill " ", 7
    right
    left
    .byte " "
    fill " ", 10
    .byte " "
    right
    end_row

    .byte $25, 4               ; low byte irq handler, offset to InterruptTable

    left
    .byte " "
    .byte "HP"
    convert Character+CHARACTER::Health, 2, 6
    .byte "/"
    convert Character+CHARACTER::MaxHealth, 2, 3
    .byte " "
    right
    left
    .byte " "
    fill " ", 10
    .byte " "
    right
    end_row

    .byte $25, 6            ; low byte irq handler, offset to InterruptTable

    left
    .byte " PP"
    convert Character+CHARACTER::PP, 2, 6
    .byte "/"
    convert Character+CHARACTER::MaxPP, 2, 3
    .byte " "
    right
    left
    .byte " "
    fill " ", 10
    .byte " "
    right
    end_row

    .byte $25, 8            ; low byte irq handler, offset to InterruptTable

    left
    .byte " Offense"
    convert Character+CHARACTER::Offense, 2, 5
    .byte " "
    right
    left
    .byte " "
    fill " ", 10
    .byte " "
    right
    end_frame

byte_9431:
    .byte $25, $A           ; low byte irq handler - 1, offset to InterruptTable

    .byte FRAME_LEFT, "  "
    fill " ", 11
    .byte " ", FRAME_RIGHT, FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 12
    .byte FRAME_BOTTOM_RIGHT
    end_row

    tile_position 1, 13
    left
    .byte " Defense"
    convert Character+CHARACTER::Defense, 2, 5
    .byte " "
    right
    .byte FRAME_TOP_LEFT, FRAME_TOP_SHORT, "Equip"
    fill FRAME_TOP, 6
    .byte FRAME_TOP_RIGHT
    end_row

    .byte $25, $C           ; low byte irq handler, offset to InterruptTable

    left
    .byte " Fight "
    convert Character+CHARACTER::Fight, 1, 6
    .byte " "
    right
    left
    .byte " "
    convert Item1, 0, 11
    right
    end_row

    .byte $25, $E           ; low byte irq handler, offset to InterruptTable

    left
    .byte " Speed "
    convert Character+CHARACTER::Speed, 1, 6
    .byte " "
    right
    left
    .byte " "
    convert Item2, 0, 11
    right
    end_row

    .byte $25, $10          ; low byte irq handler, offset to InterruptTable

    left
    .byte " Wisdom"
    convert Character+CHARACTER::Wisdom, 1, 6
    .byte " "
    right
    left
    .byte " "
    convert Item3, 0, 11
    right
    end_row

    .byte $25, $12          ; low byte irq handler, offset to InterruptTable

    left
    .byte " Strength"
    convert Character+CHARACTER::Strength, 1, 4
    .byte " "
    right
    left
    .byte " "
    convert Item4, 0, 11
    right
    end_frame

    .byte $25, $14          ; low byte irq handler - 1, offset to InterruptTable

    .byte FRAME_LEFT, " "
    fill " ", 12
    .byte " ", FRAME_RIGHT, FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 12
    .byte FRAME_BOTTOM_RIGHT
    end_row

    tile_position 1, 23
    left
    .byte " Force "
    convert Character+CHARACTER::Force, 1, 6
    .byte " "
    right
    .byte FRAME_TOP_LEFT, FRAME_TOP_SHORT, "Melody"
    fill FRAME_TOP, 5
    .byte FRAME_TOP_RIGHT
    end_row

    .byte $25, $16          ; low byte irq handler, offset to InterruptTable
    left
    .byte " Exp "
    convert Character+CHARACTER::Exp, 3, 8
    .byte " "
    right
    left
    .byte "  "
    convert Melodies, 0, 10
    right
    end_frame

    .byte $25, $18          ; low byte irq handler - 1, offset to InterruptTable
    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 14
    .byte FRAME_BOTTOM_RIGHT, FRAME_BOTTOM_LEFT

stru_9519:
    fill FRAME_BOTTOM, 12
    .byte FRAME_BOTTOM_RIGHT
    end_frame

Setup:
    tile_position 1, 1
    .byte FRAME_TOP_LEFT, FRAME_TOP_SHORT, "Setup"
    fill FRAME_TOP, 22
    .byte FRAME_TOP_RIGHT
    end_row

    .byte $25, 0            ; low byte irq handler, offset to InterruptTable

    left
    .byte " To change button function: "
    right
    end_row

    .byte $25, 2            ; low byte irq handler, offset to InterruptTable

    left
    .byte "  Move Cursor with CROSS,   "
    right
    end_row

    .byte $25, 4             ; low byte irq handler, offset to InterruptTable

    left
    .byte "   press A button to change."
    right
    end_row

    .byte $25, 6            ; low byte irq handler, offset to InterruptTable

    left
    fill " ", 28
    right
    end_row

    .byte $25, 8            ; low byte irq handler, offset to InterruptTable

    left
    .byte " B button assignment"
    fill " ", 8
    right
    end_row

    .byte $25, $A           ; low byte irq handler, offset to InterruptTable

    left
    .byte "   ", UNCHECK, "State  ", UNCHECK, "Map    ", UNCHECK, "Run"
    fill " ", 5
    right
    end_row

    .byte $25, $C           ; low byte irq handler, offset to InterruptTable

    left
    .byte " START button assignment"
    fill " ", 4
    right
    end_row

    .byte $25, $E           ; low byte irq handler, offset to InterruptTable

    left
    .byte "   ", UNCHECK, "State  ", UNCHECK, "Map    ", UNCHECK, "Run"
    fill " ", 5
    right
    end_row

    .byte $25, $10          ; low byte irq handler, offset to InterruptTable

    left
    .byte " SELECT button assignment"
    fill " ", 3
    right
    end_row

    .byte $25, $12          ; low byte irq handler, offset to InterruptTable

    left
    .byte "   ", UNCHECK, "State  ", UNCHECK, "Map    ", UNCHECK, "Run"
    fill " ", 5
    right
    end_row

    .byte $25, $14          ; low byte irq handler, offset to InterruptTable

    left
    .byte " Fight message speed"
    fill " ", 8
    right
    end_row

    .byte $25, $16          ; low byte irq handler, offset to InterruptTable

    left
    .byte "   ", UNCHECK, "1  ", UNCHECK, "2  ", UNCHECK, "3  ", UNCHECK, "4  ", UNCHECK, "5"
    fill " ", 7
    right
    end_frame

    .byte $25, $18          ; low byte irq handler - 1, offset to InterruptTable

    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 28
    .byte FRAME_BOTTOM_RIGHT
    end_frame