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

.section ".text"
.global _start

_start:
    ; Print starting msg
    lfs r3, bootMsg
    li r3, bootMsg
    bl print

    ; Load the OS
    
end:
    b end

.include "print.asm"

.section ".bss"
    .lcomm padding, 510 - (_start-.)

bootMsg:
    .string "strt bt"

.word 0xaa55