print:
    mov bx, 0
.loop:
    lodsb
    cmp al, 0
    je .done
    call print_char
    jmp .loop
.done:
    ret


print_char:
    mov ah, 0eh
    int 0x10
    ret

message: db 'Hello, world! I am POS!', 0


error_message: db 'failed to load sector', 0
