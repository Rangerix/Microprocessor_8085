lda 2000h
mov B,A
lda 2001h
mvi C,00h
add B
jnc l1
inr C
l1: sta 2002h
mov A,C
sta 2003h
hlt