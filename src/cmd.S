    .section .text
    .global main
    .type main, @function
main:
    dec %rdi
    jz 1f               // If no argument, quit
    mov 0x8(%rsi), %rdi // Get argv[1]

    push $59
    pop %rax    // System call #59 (execve)
    clr %edx

    syscall     // execve(argv[1], &arg[1], NULL)
1:
    ret
