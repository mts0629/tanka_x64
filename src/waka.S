    .section .text
    .global main
    .type main, @function
main:
    push $('W' | 'a' << 8 | 'k' << 16 | 'a' << 24) // Store "Waka" to stack

    mov %rsp, %rsi      // %RSI = %ESP (address of "Waka")
    xor %eax, %eax      // Clear %RAX
    mov $1, %al         // %AL = 1 (System call #1: write)

    mov $1, %edi        // %EDI = 1 (STDOUT)

    mov $4, %rdx        // %RDX = 4 (length of "Waka")

    syscall             // Call write(1, %ESP, 4)
    pop %rax            // Discard stack
    xor %rax, %rax      // Return value: 0
    ret                 // Return
