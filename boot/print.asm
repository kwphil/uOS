; r3 is memory location to print
; r29-r31 are occupied

print:
    li r31, r3

printlp:
    lwz  r30, 0(r31)
    stw  r30, 0xb0000(r31)
    addi r31, r31, 1

    cmpwi r30, 0
    bne   printlp

    blr