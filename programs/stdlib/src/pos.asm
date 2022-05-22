[BITS 32]

section .asm

global print:function
global pos_getkey:function
global pos_malloc:function
global pos_free:function
global pos_putchar:function
global pos_process_load_start:function
global pos_process_get_arguments:function 
global pos_system:function
global pos_exit:function

;void print(const char* filename)
print:
    push ebp
    mov ebp, esp
    push dword[ebp+8]
    mov eax, 1 ;print command
    int 0x80
    add esp, 4
    pop ebp
    ret

;int pos_getkey()
pos_getkey:
    push ebp
    mov ebp, esp
    mov eax, 2 ;getkey command
    int 0x80
    pop ebp
    ret

;void pos_putchar(char c)
pos_putchar:
    push ebp
    mov ebp, esp
    mov eax, 3 ;putchar command
    push dword [ebp+8] ;variable c
    int 0x80
    add esp, 4
    pop ebp
    ret

;void* pos_malloc(size_t size)
pos_malloc:
    push ebp
    mov ebp, esp
    mov eax, 4 ;malloc command
    push dword[ebp+8] ;variable size
    int 0x80
    add esp, 4
    pop ebp
    ret

;void pos_free(void* ptr)
pos_free:
    push ebp
    mov ebp, esp
    mov eax, 5 ;free command
    push dword[ebp+8] ;variable ptr
    int 0x80
    add esp, 4
    pop ebp
    ret

;void pos_process_load_start(const char* filename)
pos_process_load_start:
    push ebp
    mov ebp, esp
    mov eax, 6 ;process_load_start command
    push dword[ebp+8] ;variable filename
    int 0x80
    add esp, 4
    pop ebp
    ret

;int pos_system(struct command_argument* arguments)
pos_system:
    push ebp
    mov ebp, esp
    mov eax, 7 ;command ystem
    push dword[ebp+8] ;variable arguments
    int 0x80
    add esp, 4
    pop ebp
    ret


;void pos_process_get_arguments(struct process_arguments* arguments)
pos_process_get_arguments:
    push ebp
    mov ebp, esp
    mov eax, 8 ;command process arguments
    push dword[ebp+8] ;variable arguments
    int 0x80
    add esp, 4
    pop ebp
    ret

;void pos_exit()
pos_exit:
    push ebp
    mov ebp, esp
    mov eax, 9 ;command exit
    int 0x80
    pop ebp
    ret