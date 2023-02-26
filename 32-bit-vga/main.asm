; A bot sector that enteres 32-bit protected mode.
[org 0x7c00]

    mov bp, 0x9000  ; Set up a stack
    mov sp, bp

    mov bx, MSG_REAL_MODE
    call print_string

    call switch_to_pm

    jmp $

%include "../calling_functions/print_string.asm"
%include "gdt.asm"´
%include "print_string_32.asm"
%include "switch_to_32.asm"

[bits 32]
BEGIN_PM:
    mov ebx, MSG_PROT_MODE
    call print_string_pm

    jmp $

MSG_REAL_MODE: db "Started in 16-bit Real Mode", 0
MSG_PROT_MODE: db " Successfully landed in 32 - bit Protected Mode", 0

times 510-($-$$) db 0
dw 0xaa55