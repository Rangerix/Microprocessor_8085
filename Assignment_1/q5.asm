lhld 4000h
xchg 
lhld 4002h
mov A,E
add L
mov L,A
mov A,D
adc H
mov H,A
shld 4004h
hlt