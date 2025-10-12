    .section .text
    .global main
    .type main, @function
main:
    push $1
    pop %rdi    // 1 (STDOUT)
    push $8

    // Store "Wakayama" to stack
    mov $('W' | 'a' << 8 | 'k' << 16 | 'a' << 24 | 'y' << 32 | 'a' << 40 | 'm' << 48 | 'a' << 56), %rax
    pop %rdx    // 8 (length of "Wakayama")
    nop

    push %rax
    mov %rsp, %rsi
    push $1
    pop %rax    // System call #1 (write)

    syscall     // Call write(1, %ESP, 8)
    pop %rax
    xor %rax, %rax
    ret
