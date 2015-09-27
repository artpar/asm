section .text

global _start

_start:
    pop rcx
    mov rcx, [esp]
    mov rdx,2
    mov rax,4
    mov rbx,1
    int 80h

    mov eax,1
    mov ebx,0
    int 80h

section .data
temp db "stored", 0xa
