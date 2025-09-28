    .section .text
    .global main
    .type main, @function
main:
    push %rbp           // Function prologue
    mov %rsp, %rbp
    nop

    dec %rdi
    jz 1f               // If RDI (argc) == 1, skip
    nop; nop

                        // Otherwise
    mov 0x8(%rsi), %rdi // RDI = *[RSI + 8] (argv[1])
    nop

    call puts           // puts(argv[1])
    nop; nop

1:
    nop; nop; nop
    xor %eax, %eax      // Return value = 0
    leave               // Function epilogue
    ret
