lhld 2000h ;1st no at 2000 and 2001
mov B,H
mov C,L
lhld 2002h ;2nd no
mvi E,00h
dad B
jnc l1
inr E
l1: shld 2004h
mov A,E
sta 2006h
hlt