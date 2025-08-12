    .section .text
    .global main
    .type main, @function
main:
    push $1
    pop %rdi
    push $8

    mov $('W' | 'a' << 8 | 'k' << 16 | 'a' << 24 | 'y' << 32 | 'a' << 40 | 'm' << 48 | 'a' << 56), %rax
    pop %rdx
    nop

    push %rax
    mov %rsp, %rsi
    push $1
    pop %rax

    syscall
    pop %rax
    xor %rax, %rax
    ret
