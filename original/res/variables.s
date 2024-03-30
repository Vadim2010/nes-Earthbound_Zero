; .segment "RAM"

; .struct ANIM_SPRITE
    ; Tiles           .byte
    ; TileID          .byte
    ; PosX            .byte
    ; PosY            .byte
    ; field_4         .byte
    ; field_5         .byte
    ; pFrame          .word
; .endstruct

; .struct struc_400
    ; NMI_ID          .byte
    ; num_of_chr      .byte
    ; PPU_addr        .word
    ; chr             .byte
    ; next            .byte
; .endstruct

; .export InterruptTable
; SpriteTable:        .res 256

; ; $400
; NMI_ID:             .res 256

; ; $500
; PalNMIBG:           .res 16
; PalNMISpr:          .res 16
; PalBG:              .res 16
; PalSpr:             .res 16

; InterruptTable:     .res 96

; byte_600:           .res 256
; byte_700:           .res 140

; NTAddrC:            .res 99
 
; ModeSRAM:           .res 1

; byte_7F0:           .res 1
; byte_7F1:           .res 2
; byte_7F3:           .res 1
; byte_7F4:           .res 1
; byte_7F5:           .res 2
; byte_7F7:           .res 9
