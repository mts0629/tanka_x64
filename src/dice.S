.global main
    .type main, @function
main:
    rdrand %eax // Get a random number to %EAX
    clr %edx    // Clear %EDX (upper 32 bit of the dividend)

    push $6
    pop %rcx
    div %ecx    // %EDX = %EAX % 6 (0 - 5)
    push $1

    pop %rdi
    add $'1', %dl   // %RDX = ['1', '2', ... '6']
    push %rdx

    push %rsp       // %ESP = &['1', '2', ... '6']
    pop %rsi
    push $1
    pop %rax
    mov %eax, %edx

    syscall     // Call write(1, %ESP, 1)
    pop %rax
    clr %eax    // Return 0
    nop
    ret
