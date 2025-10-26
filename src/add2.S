    .section .text
    .global main
    .type main, @function
main:
    push %rax       // (Dummy push to align %SP to 16 byte address)
    xor %edi, %edi  // 0 (STDIN)
    mov $3, %dl     // Input length: 3 ("[0-9][0-9]\n")

    mov %edi, %eax
    mov %rsp, %rsi
    syscall         // read(STDIN, %ESP, 3)

    pop %rax        // Get input 2 characters (2 bytes)
    add %ah, %al    // Add inputs
    sub $'0', %al   // Get ASCII code by subtract '\0'

    push %rax 
    inc %edi        // 1 (STDOUT)
    mov %edi, %edx
    mov %edi, %eax

    syscall         // Call write(STDOUT, %ESP, 1)
    pop %rax
    xor %eax, %eax  // Return 0
    nop
    ret
