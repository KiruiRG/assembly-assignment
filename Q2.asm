section .data
    sum db 0

section .text
    global _start

_start:
    mov ecx, 15        ; start value
    mov eax, 0         ; accumulator

loop_add:
    add eax, ecx
    inc ecx
    cmp ecx, 26        ; loop until 25
    jne loop_add

    ; exit syscall
    mov ebx, 0
    mov eax, 1
    int 0x80
