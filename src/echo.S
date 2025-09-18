    .section .text
    .global main
    .type main, @function
main:
    push %rbp               // Save RBP
    mov %rsp, %rbp          // Init RBP
    sub $0x10, %rsp
    mov %rsi, -0x10(%rbp)   // *[RBP - 16] = RSI
    mov -0x10(%rbp), %rax   // RAX = *[RBP - 16]
    mov 0x8(%rax), %rax     // RAX = *[RAX + 8]
    mov %rax, %rdi          // RDI = RAX
    call puts               // puts(argv[1])
    xor %eax, %eax          // Return value = 0
    leave                   // Restore RBP
    ret
