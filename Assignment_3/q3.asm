MVI B,00H
MVI C,01H
LDA 2060H
MOV D,A
DCR D
JZ TRIVIAL	; N = 1
LOOOP1: MOV A,B
	ADD C
	MOV B,C
	MOV C,A
	DCR D
	JNZ LOOOP1
TRIVIAL: MOV A,C
STA 2050H
HLT