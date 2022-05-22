[BITS 32]

global _start
extern c_start
extern pos_exit

section .asm

_start:
    call c_start
    call pos_exit
    ret