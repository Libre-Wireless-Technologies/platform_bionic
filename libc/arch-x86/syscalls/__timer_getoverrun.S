/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

ENTRY(__timer_getoverrun)
    pushl   %ebx
    mov     8(%esp), %ebx
    movl    $__NR_timer_getoverrun, %eax
    int     $0x80
    cmpl    $-MAX_ERRNO, %eax
    jb      1f
    negl    %eax
    pushl   %eax
    call    __set_errno
    addl    $4, %esp
    orl     $-1, %eax
1:
    popl    %ebx
    ret
END(__timer_getoverrun)
