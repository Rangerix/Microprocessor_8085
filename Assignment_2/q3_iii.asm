LDA 204Fh
MOV B,A
L1: MOV C,B
    LXI H,2050H
    L2: MOV A,M
        INX H
        CMP M
        JC L3   ;if A<M , don't swap
        JZ L3   ; if equal, don't swap
	MOV D,M ;SWAP the numbers
	MOV M,A ;put 1st no in 2nd pos
	DCX H   ;BACK to previous position
	MOV M,D ; SWAP done
	INX H
	L3: DCR C
	JNZ L2
    DCR B
    JNZ L1
HLT