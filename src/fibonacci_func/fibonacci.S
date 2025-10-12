    .section .text
    .global fibonacci
    .type fibonacci, @function
fibonacci:
    // void fibonacci(int num, int *array)
    push $1
    pop %rdx            // f_n+1 = 1
    xor %eax, %eax      // f_n = 0

1:
    cmp $0, %edi        // If the counter = 0, break
    je 2f
    mov %eax, (%rsi)    // *array = f_n

    nop
    mov %edx, %eax      // f_n' = f_n+1
    add (%rsi), %edx    // f_n+1' += f_n

    add $4, %rsi        // array++
    dec %rdi            // counter--

    jmp 1b              // loop
2:
    mov %rax, %rax
    nop
    ret
