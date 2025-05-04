.include "charmap.inc"
.include "framecomm.inc"
.include "structures.inc"

.segment "FRAMES"
    .export stru_196C00, byte_196C24, stru_196C2D, byte_196C8B, stru_196CC0, byte_196C66

stru_196C00:
    tile_position 7, 1
    .byte FRAME_TOP_LEFT
    fill FRAME_TOP, 15
    .byte FRAME_TOP_RIGHT
    end_row

    left
    fill " ", 15
    right
    end_row

    left
    fill " ", 15
    right
    end_row

    tile_position 7, 6
    left
    fill " ", 15
    right
    end_frame

    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 15
    .byte FRAME_BOTTOM_RIGHT
    end_frame

byte_196C24:
    end_row

    tile_position 8, 10
    fill " ", 15
    end_frame

    end_frame

stru_196C2D:
    tile_position 5, 7
    .byte FRAME_TOP_LEFT
    fill FRAME_TOP, 19
    .byte FRAME_TOP_RIGHT
    end_row

    tile_pointer byte_6C60
    end_row

    tile_pointer byte_6C60
    end_row

    tile_pointer byte_6C60
    end_row

    tile_pointer byte_6C60
    end_row

    tile_pointer byte_6C60
    end_row

    tile_pointer byte_6C60
    end_row

    tile_pointer byte_6C60
    end_row

    tile_pointer byte_6C60
    end_row

    tile_pointer byte_6C60
    end_frame

    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 19
    .byte FRAME_BOTTOM_RIGHT
    end_frame

byte_6C60:
    .import CurrentGame

    left
    fill " ", 19
    right
    end_row

byte_196C66:
    end_row

    tile_position 8, 22
    .byte "  @Back  @End  "
    end_row

    .byte "   @Previous   "
    end_frame

    end_frame

byte_196C8B:
    end_row

    tile_position 15, 5
    tile_pointer CurrentGame+PURE_SAVE::Boy1+CHARACTER::Name        ; Boy1Name
    end_row

    tile_position 15, 8
    tile_pointer CurrentGame+PURE_SAVE::Girl+CHARACTER::Name        ; GirlName
    end_row

    tile_position 15, 11
    tile_pointer CurrentGame+PURE_SAVE::Boy2+CHARACTER::Name        ; Boy2Name
    end_row

    tile_position 15, 14
    tile_pointer CurrentGame+PURE_SAVE::Boy3+CHARACTER::Name        ; Boy3Name
    end_row

    tile_position 3, 17
    .byte "Favorite food: "
    tile_pointer CurrentGame+GAME_SAVE::Food                        ; FoodName
    end_frame

    end_frame

    end_row

stru_196CC0:
    tile_position 7, 20
    .byte FRAME_TOP_LEFT
    fill FRAME_TOP, 16
    .byte FRAME_TOP_RIGHT
    end_row

    left
    .byte "  Is this OK?   "
    right
    end_row

    left
    .byte "     Yes No     "
    right
    end_row

    left
    fill " ", 16
    right
    end_frame

    tile_position 7, 26
    .byte FRAME_BOTTOM_LEFT
    fill FRAME_BOTTOM, 16
    .byte FRAME_BOTTOM_RIGHT
    end_frame

.align $0100

.export byte_6D00, word_6D01, byte_6D04, NameOffset, CharName, ItemName

byte_6D00:      .res 1
word_6D01:      .res 3
byte_6D04:      .res 28

NameOffset:     .res 1
CharName:       .res 3
ItemName:       .res 200

.align $0100        ; .align $0200

    .byte 0