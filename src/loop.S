    .section .text
    .global main
    .type main, @function
main:
    push %rbx
    push %rdi
    pop %rbx
    xor %eax, %eax
    push %rax
    push $('%' | 'd' << 8 | '\n' << 16 | 0x0 << 24)
    nop
1:
    dec %ebx
    jz 2f
    push %rbx
    pop %rsi
    push %rsp
    pop %rdi
    call printf
    jmp 1b
2:
    pop %rax
    pop %rax
    pop %rbx
    ret
