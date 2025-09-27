    .section .text
    .global main
    .type main, @function
main:
    push %rbp               // Function prologue
    mov %rsp, %rbp
    mov 0x8(%rsi), %rdi     // RDI = *[RSI + 8] (argv[1])
    call puts               // puts(argv[1])
    xor %eax, %eax          // Return value = 0
    leave                   // Function epilogue
    ret
