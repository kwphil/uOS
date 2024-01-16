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

.global _start

_start:
    lfs r3, ha16(bootMsg)

    lwz r3, 0
    li r3, bootMsg
    bl printlp

.include "print.asm"

bootMsg:
    .string "strt bt"