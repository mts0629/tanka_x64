    .section .text
    .global main
    .type main, @function
main:
    push %rbp           // Function prologue
    mov %rsp, %rbp
    nop

    dec %rdi            // argc--
    jz 1f               // If argc = 0, break
    nop; nop

    mov 0x8(%rsi), %rdi // %RDI = *[%RSI + 8] (argv[1])
    nop

    call puts           // Call puts(argv[1])
    nop; nop

1:
    nop; nop; nop
    xor %eax, %eax      // Return 0
    leave               // Function epilogue
    ret
