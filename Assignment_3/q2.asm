lda 21FFh
mov D,A
lxi H,2200h
mvi C,00h
mvi B,00h
l1: mov A,M
    ani 081h
    sui 081h
    jnz skip
    inr E
    mov A,C
    add M
    mov C,A
    jnc skip
    inr B
    skip: inx H
    dcr D
    jnz l1
mov A,C
sta 2500h
mov A,B
sta 2501h
hlt