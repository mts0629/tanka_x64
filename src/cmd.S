    .section .text
    .global main
    .type main, @function
main:
    dec %rdi
    jz 1f       // If no argument, quit

    mov 0x8(%rsi), %rdi // Get argv[1]
    clr %edx
    nop

    clr %esi
    push $59
    pop %rax    // System call #59 (execve)

    syscall     // execve(argv[1], NULL, NULL)
1:
    mov $0, %eax
    nop; nop; nop; nop; nop; nop;
    ret
