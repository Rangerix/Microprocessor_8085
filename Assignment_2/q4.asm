MVI A,00H
STA 2300H
MVI A,00H
STA 2301H

LXI B,2200H
LXI D,2100H
LXI H,204FH
L1: INX H
    MOV A,M
    ANI 01H
    JNZ L2   ; EVEN NOs will result in zero
    MOV A,M
    STAX D
    INX D
    LDA 2300H
    INR A
    STA 2300H
    JMP L3
    L2: MOV A,M
    STAX B
    INX B
    LDA 2301H
    INR A
    STA 2301H
    L3: LDA 204FH
    DCR A
    STA 204FH
    JNZ L1
HLT

