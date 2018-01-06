	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_sum
	.p2align	4, 0x90
_sum:                                   ## @sum
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	addl	-8(%rbp), %esi
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	addl	_accum(%rip), %esi
	movl	%esi, _accum(%rip)
	movl	-12(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$1, %eax
	movl	$2, %ecx
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	movl	%ecx, %esi
	callq	_sum
	xorl	%ecx, %ecx
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_accum                  ## @accum
.zerofill __DATA,__common,_accum,4,2

.subsections_via_symbols
