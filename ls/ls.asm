section .text
global _start

_start:

    mov rax, 5
    mov rbx, current
    mov rcx, 0400000
    mov rdx, 00
    int 0x80
    push rax
    test rax, rax
    js failEnd1

    mov ebx, eax

    mov eax, 141
    mov ecx, buf
    mov edx, 1024
    int 0x80
    push rax
    test rax, rax
    js failEnd2

    mov rdx, 100
    mov rcx, buf
    mov rbx, 1
    mov rax, 4
    int 0x80

failEnd1:
    mov edx, len_fail
    mov ecx, fail
    mov ebx, 1
    mov eax, 4
    int 0x80

    pop rax
    neg eax
    xchg    eax, ebx
    xor eax, eax
    inc eax

    int 0x80

failEnd2:

    mov edx, hello
    mov ecx, len
    mov ebx, 1
    mov eax, 4
    int 0x80
    pop rax
    neg eax
    xchg    eax, ebx
    xor eax, eax
    inc eax

    int 0x80

section .data
current db "/home/parth", 0

hello db "End", 0xa
len equ $ - hello


fail db "Fail", 0xa
len_fail equ $ - fail

section .bss
buf resb 1024

