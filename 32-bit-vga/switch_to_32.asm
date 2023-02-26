[bits 16]
; Switch to protected mode
switch_to_pm:
    cli     ; We must switch of interrupts until we have
            ; set - up the protected mode interrupt vector
            ; otherwise interrupts will run riot.

    lgdt [gdt_descriptor] ; Load the GDT

    mov eax, cr0
    or eax, 0x1
    mov cr0, eax

    jmp CODE_SEG:init_pm

[bits 32]
init_pm:
    mov ax, DATA_SEG    ; Now in PM , our old segments are meaningless,
    mov ds, ax          ; so we point our segment registers to the
    mov ss, ax          ; data selector we defined in our GDT
    mov es, ax
    mov fs, ax
    mov gs, ax

    mov ebp, 0x90000    ; Update our stack position so it is right
    mov esp, ebp        ; at the top of the free space.

    call BEGIN_PM       ; Finally , call some well - known label