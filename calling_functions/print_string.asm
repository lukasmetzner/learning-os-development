print_string:
pusha

mov ah, 0x0e

start:
mov al, [bx]
cmp al, 0
je end
int 0x10
add bx, 1
jmp start

end:

mov al, 0xa
int 0x10
mov al, 0xd
int 0x10

popa
ret
