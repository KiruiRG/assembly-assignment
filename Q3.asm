section .data
    sum db 0

section .text
    global _start

_start:
    mov ecx, 25        ; start value
    mov eax, 0         ; accumulator

loop_dec:
    add eax, ecx
    dec ecx
    cmp ecx, 14        ; loop until 15
    jne loop_dec

    ; exit syscall
    mov ebx, 0
    mov eax, 1
    int 0x80
