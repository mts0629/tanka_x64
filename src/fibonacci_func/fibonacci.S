    .section .text
    .global fibonacci
    .type fibonacci, @function
fibonacci:
    // void fibonacci(int num, int *array)
    push $1
    pop %rdx
    xor %eax, %eax

1:
    cmp $0, %edi
    je 2f
    mov %eax, (%rsi)

    nop
    mov %edx, %eax
    add (%rsi), %edx

    add $4, %rsi
    dec %rdi

    jmp 1b
2:
    mov %rax, %rax
    nop
    ret
