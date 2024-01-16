; r3 is memory location to print
; r30 and r31 are occupied

print:
    li r31, 0

printlp:
    lwz  r30, r3(r31)
    stw  r30, 0xb0000(r31)
    addi r31, r31, 1
    blr
    