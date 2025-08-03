	.file	"question327.c"
	.text
	.globl	fact_for
	.type	fact_for, @function
fact_for:
.LFB0:
	.cfi_startproc
	movl	$1, %edx
	movl	$2, %eax
	jmp	.L2
	.p2align 4
.L3:
	imulq	%rax, %rdx
	addq	$1, %rax
.L2:
	cmpq	%rdi, %rax
	jle	.L3
	movq	%rdx, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	fact_for, .-fact_for
	.ident	"GCC: (GNU) 15.1.1 20250729"
	.section	.note.GNU-stack,"",@progbits
