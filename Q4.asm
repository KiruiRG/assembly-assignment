section .text
    global factorial

factorial:
    mov eax, 1        ; result
    mov ecx, [esp+4]  ; input number

.loop:
    test ecx, ecx
    jz .done
    imul eax, ecx
    dec ecx
    jmp .loop

.done:
    ret
