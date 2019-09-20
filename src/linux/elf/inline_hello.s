	.file	"inline_hello.c"
	.globl	msg
	.data
	.align 8
	.type	msg, @object
	.size	msg, 14
msg:
	.string	"hello world.\n"
	.text
	.globl	_start
	.type	_start, @function
_start:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$14, -8(%rbp)
#APP
# 4 "inline_hello.c" 1
	movq $1,%rax
	movq $1,%rdi
	leaq msg(%rip),%rsi
	movq -8(%rbp),%rdx
	syscall
# 0 "" 2
# 13 "inline_hello.c" 1
	movq $60,%rax
	movq $0,%rdi
	syscall
# 0 "" 2
#NO_APP
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_start, .-_start
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",@progbits
