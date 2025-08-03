	.file	"question327.c"
	.text
	.globl	fact_for_gd_goto
	.type	fact_for_gd_goto, @function
fact_for_gd_goto:
.LFB0:
	.cfi_startproc
	cmpq	$1, %rdi
	setle	%al
	movzbl	%al, %eax
	addq	$1, %rax
	ret
.L2:
.L3:
	.cfi_endproc
.LFE0:
	.size	fact_for_gd_goto, .-fact_for_gd_goto
	.ident	"GCC: (GNU) 15.1.1 20250729"
	.section	.note.GNU-stack,"",@progbits
