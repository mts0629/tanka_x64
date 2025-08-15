    .section .text
    .global main
    .type main, @function
main:
    push %rax       // Get a stack to store the input
    xor %edi, %edi
    mov $3, %dl     // Input length: 3 (2 characters + '\n')

    mov %edi, %eax
    mov %rsp, %rsi
    syscall         // read(0 (=STDIN), ESP, 3)

    pop %rax        // Get input 2 characters (2 bytes)
    add %ah, %al    // Add inputs
    sub $'0', %al   // Get ASCII code by - '\0'

    push %rax 
    inc %edi
    mov %edi, %edx
    mov %edi, %eax

    syscall         // write(1 (=STDOUT), ESP, 1)
    pop %rax
    xor %eax, %eax  // return 0
    nop
    ret
