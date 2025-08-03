	.file	"question324.c"
	.text
	.globl	loop_while
	.type	loop_while, @function
loop_while:
.LFB0:
	.cfi_startproc
	movl	$1, %eax
	jmp	.L2
	.p2align 5
.L3:
	leaq	(%rdi,%rsi), %rdx
	imulq	%rdx, %rax
	addq	$1, %rdi
.L2:
	cmpq	%rsi, %rdi
	jl	.L3
	ret
	.cfi_endproc
.LFE0:
	.size	loop_while, .-loop_while
	.ident	"GCC: (GNU) 15.1.1 20250729"
	.section	.note.GNU-stack,"",@progbits
