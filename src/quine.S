    .section .text
    .global main
    .type main, @function
main:
    call 1f         // Call: jump and save return address

1:
    pop %rsi        // Save return addr. to %RSI
    push %rbp       // Function prologue
    mov %rsp, %rbp
    push $31        // Write 31 bytes from the start addr.

    sub $5, %rsi    // (return addr.) - 5 => start addr.
    pop %rdx

    push $1
    pop %rdi
    mov %rdi, %rax  // Syscall #1
    nop

    syscall         // call write(STDOUT, (start addr.), 31)
    nop
    clr %eax
    leave           // Function epilogue
    ret
