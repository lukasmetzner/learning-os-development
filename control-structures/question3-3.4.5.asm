mov bx, 30

cmp bx, 4
jle sol_a

cmp bx, 40
jl sol_b

mov al, 'C'
jmp end

sol_a:
mov al, 'A'
jmp end

sol_b:
mov al, 'B'

end:

mov ah, 0x0e
int 0x10

jmp $

times 510-($-$$) db 0
dw 0xaa55
