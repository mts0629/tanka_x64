    .section .text
    .global fibonacci
    .type fibonacci, @function
fibonacci:
    // void fibonacci(int num, int *array)
    xor %eax, %eax
    xor %edx, %edx
    inc %edx
1:
    cmp $0, %rdi
    je 2f
    mov %eax, (%rsi)
    mov %edx, %eax
    add (%rsi), %edx
    add $4, %rsi
    dec %edi
    jmp 1b
2:
    ret
