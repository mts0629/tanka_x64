    .section .text
    .global main
    .type main, @function
main:
    push %rdi
    pop %rsi
    push $('%' | 'd' << 8 | '\n' << 16 | 0x0 << 24)
    push %rsp
    pop %rdi
    call printf
    pop %rax
    xor %eax, %eax
    ret
