    .section .text
    .global main
    .type main, @function
main:
    push %rbx
    push %rdi
    pop %rbx
    push %rax
    push $('%' | 'd' << 8 | '\n' << 16 | 0x0 << 24)
1:
    push %rbx
    pop %rsi
    push %rsp
    pop %rdi
    call printf
    dec %ebx
    jnz 1b
    pop %rax
    pop %rax
    xor %eax, %eax
    pop %rbx
    ret
