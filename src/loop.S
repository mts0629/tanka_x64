    .section .text
    .global main
    .type main, @function
main:
    push %rbx   // Save %RBX
    push %rdi   // Get argc (num of commandline arguments)
    pop %rbx    // Use %RBX as a counter
    xor %eax, %eax

    push %rax
    // String "hey\n"
    push $('h' | 'e' << 8 | 'y' << 16 | '\n' << 24 | 0x0 << 32)
    nop
1:
    dec %ebx    // counter--
    jz 2f       // If counter = 0, break
    push %rsp

    pop %rdi
    call printf // Call printf("hey\n");
    nop

    jmp 1b      // Loop
2:
    pop %rax    // Return 0
    pop %rax
    pop %rbx    // Restore %RBX
    nop
    ret
