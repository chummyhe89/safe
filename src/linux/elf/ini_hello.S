.section .data
hello:
 .ascii "hello world.\n"
hello_end:
 .equ len, hello_end - hello

.section .text
.global _start

_start:
 movl $4,%eax
 movl $1,%ebx
 movl $hello,%ecx
 movl $len,%edx
 int $0x80

 movl $1,%eax
 movl $0,%ebx
 int $0x80
