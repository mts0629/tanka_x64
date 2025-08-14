    .section .text
    .global main
    .type main, @function
main:
    push %rax

    push $3
    xor %edi, %edi
    pop %rdx
    mov %edi, %eax
    mov %rsp, %rsi
    syscall

    pop %rax
    add %ah, %al
    sub $'0', %al
    push %rax

    inc %edi
    mov %edi, %edx
    mov %edi, %eax
    syscall

    pop %rax
    xor %eax, %eax

    ret
