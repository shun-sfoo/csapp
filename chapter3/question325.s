	.file	"question325.c"
	.text
	.globl	loop_while2
	.type	loop_while2, @function
loop_while2:
.LFB0:
	.cfi_startproc
	testq	%rsi, %rsi
	jle	.L4
	movq	%rsi, %rax
	.p2align 4
.L3:
	imulq	%rdi, %rax
	subq	%rdi, %rsi
	testq	%rsi, %rsi
	jg	.L3
	ret
.L4:
	movq	%rsi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	loop_while2, .-loop_while2
	.ident	"GCC: (GNU) 15.1.1 20250729"
	.section	.note.GNU-stack,"",@progbits
