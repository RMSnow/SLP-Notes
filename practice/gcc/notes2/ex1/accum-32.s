	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_sum
	.p2align	4, 0x90
_sum:                                   ## @sum
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$12, %esp
	calll	L0$pb
L0$pb:
	popl	%eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%edx, -4(%ebp)
	movl	%ecx, -8(%ebp)
	movl	-4(%ebp), %ecx
	addl	-8(%ebp), %ecx
	movl	%ecx, -12(%ebp)
	movl	-12(%ebp), %ecx
	addl	_accum-L0$pb(%eax), %ecx
	movl	%ecx, _accum-L0$pb(%eax)
	movl	-12(%ebp), %eax
	addl	$12, %esp
	popl	%ebp
	retl

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	subl	$36, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	$1, %edx
	movl	$2, %esi
	movl	$0, -8(%ebp)
	movl	%ecx, -12(%ebp)
	movl	%eax, -16(%ebp)
	movl	$1, (%esp)
	movl	$2, 4(%esp)
	movl	%edx, -20(%ebp)         ## 4-byte Spill
	movl	%esi, -24(%ebp)         ## 4-byte Spill
	calll	_sum
	xorl	%ecx, %ecx
	movl	%eax, -28(%ebp)         ## 4-byte Spill
	movl	%ecx, %eax
	addl	$36, %esp
	popl	%esi
	popl	%ebp
	retl

	.globl	_accum                  ## @accum
.zerofill __DATA,__common,_accum,4,2

.subsections_via_symbols
