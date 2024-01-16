;****************************
; uOS Boot software         *
;                           *
; For simplicity, boot will *
; use VGA to write to the   *
; screen                    *
;                           *
; Memory map:               *
;     0x0 + ------------ +  *
;         |  bootloader  |  *
;   0x100 + ------------ +  *
;         |              |  *
;         |              |  *
;         |  Operat Sys  |  *
;         |              |  *
;         |              |  *
; 0x30000 + ------------ +  *
;                           *
; OS created by: kwphil     *
;****************************

.section ".bss"
    .lcomm padding, 510 - (.-_start)

.section ".text"
.global _start

_start:
    lfs r3, bootMsg
    li r3, bootMsg
    bl print

.include "print.asm"

bootMsg:
    .string "strt bt"

.word 0xaa55