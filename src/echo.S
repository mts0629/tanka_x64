    .section .text
    .global main
    .type main, @function
main:
    push %rsi
    pop %rdi
    call printf
    xor %eax, %eax
    ret
