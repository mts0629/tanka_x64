    .section .text
    .global main
    .type main, @function
main:
    mov $0x68732f6e, %ecx   // RCX = "n/sh"

    shl $24, %rcx           // RCX = "****n/sh"
    clr %esi
    nop

    push $59
    pop %rax    // System call #59 (execve)
    clr %edx

    add $0x69622f, %rcx // RCX = "/bin/sh"

    push %rcx
    push %rsp
    pop %rdi 
    syscall     // execve("/bin/sh", NULL, NULL);
    nop         // New process launches and does not return here
    ret
