    .section .text
    .global main
    .type main, @function
main:
    push $('W' | 'a' << 8 | 'k' << 16 | 'a' << 24) // "Waka"

    mov %rsp, %rsi      // 2nd arg: address to "Waka"
    xor %eax, %eax      // Clear RAX
    mov $1, %al         // System call #1 (write)

    mov $1, %edi        // 1st arg: 1 (STDOUT)

    mov $4, %rdx        // 3rd arg: 4 (length of "Waka")

    syscall             // Call "write"
    pop %rax            // Discard stack
    xor %rax, %rax      // Set return value: 0
    ret                 // Return
