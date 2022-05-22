DEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
; Your variables here
; --------------------------
amit db 'abc'
base db 48
CODESEG
proc isPrime
    ;given a number through stack and cal the prime of the number and set 1 or 0 to bx
    pop ax
    push ax
    sevencheck:
        cmp ax, 7
        je returntrue
		cmp ax, 7
        jb fivecheck
        sub ax, 7
        jmp sevencheck
    pop ax
    push ax
    fivecheck:
        cmp ax, 5
        je returntrue
		cmp ax, 5
        jb threecheck
        sub ax, 5
        jmp fivecheck
    pop ax
    push ax
    threecheck:
        cmp ax, 3
        je returntrue
		cmp ax, 3
		jb twocheck
        sub ax, 3
        jmp threecheck
    pop ax
    push ax
    twocheck:
        cmp ax, 2
        je returntrue
		cmp ax, 2
		jb returnfalse
        sub ax, 2
        jmp twocheck
    returnfalse:
        mov bx, 0
        ret
    returntrue:
        mov bx, 1
        ret
endp isPrime
proc prime
    ;given a number through stack and cal print prime numbers from range 0 to number
	pop cx
	mov dx, 0
	looping:
		inc dx
		cmp cx, dx
		je exitprime
		push dx
		call isPrime
		cmp isPrime, 1
		je
		continue:
		looping
	printing:
		push cx
		push dx
		push dx
		call printNum
		pop dx
		pop cx
		continue
	exitprime:
		ret
endp prime
proc fib
    ;given a number through stack and cal the fib of the number and set number to ax
    pop cx
    fiblabel: 
      add ax, 1 
      loop fiblabel
      jmp exit
    ret
endp fib
proc findLength
    ;given a number to proc thourgh ax and return length in dec to cx
    mov cx, 0
    mov bl, 10
    lol:
        div bl
        mov ah, 0
        inc cx
        cmp al, 0
        jne lol
    exitfindlength:
        ret
endp findLength
proc printNum
    ;given a number to proc through ax and print the number
    push ax
    call findLength
    pop ax
    init:
    dec cx
    push cx
    push ax
    someloop:
        mov dl, 10
        div dl
        dec cx
        cmp cx, 0
        jne someloop
        mov dl, al
        jmp print
        continue:
        pop ax 
        pop cx
        cmp cx, 0
        jne init
        jmp exitPrintNum
    print:
        add dl, '0'
        mov ah, 02
        int 21h
        jmp continue
    exitPrintNum:
        ret
endp printNum
start:
    mov ax, @data
    mov ds, ax
;  --register init
    ; push 5
    ; call fib
    mov ax, 653
    call printNum
exit:
    mov ax, 4c00h
    int 21h
END start