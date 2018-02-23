lda 2200h
mov D,A
lxi H,2500h
mvi A,00h
mov B,A
l1: add M
    jnc skip
    inr B
    skip: inx H
    dcr D
    jnz l1
sta 2300h
mov A,B
sta 2301h
hlt