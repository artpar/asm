section .text

global _start

_start:
    pop rax ; number of arguments
    pop rbx ; name of the executable
    pop rcx ; first real argument
    mov edx,10
    mov eax,4
    mov ebx,1
    int 80h

    mov eax,1
    mov ebx,0
    int 80h

