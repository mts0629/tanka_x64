    .section .text
    .global main
    .type main, @function
main:
    push %rbx
    push %rdi
    pop %rbx
    xor %eax, %eax

    push %rax
    push $('h' | 'e' << 8 | 'y' << 16 | '\n' << 24 | 0x0 << 32)
    nop
1:
    dec %ebx
    jz 2f
    push %rsp

    pop %rdi
    call printf
    nop

    jmp 1b
2:
    pop %rax
    pop %rax
    pop %rbx
    nop
    ret
