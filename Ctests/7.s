	.data
	.globl  random_selector
random_selector:
	.long   0
	.text

	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 26, 1
	.globl	_compute_value                  ## -- Begin function compute_value
	.p2align	4, 0x90
_compute_value:
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	shll	%eax
	movl	%eax, -16(%rbp)
	movl	-8(%rbp), %eax
	xorl	$85, %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	subl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	random_selector(%rip), %eax
	testl	%eax, %eax
	jne	.Lcompute_value_win0_skip_init
	rdtsc
	xorq	%rdx, %rax
	movl	%eax, random_selector(%rip)
.Lcompute_value_win0_skip_init:
	movl	random_selector(%rip), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.Lcompute_value_win0_var0
	cmpl	$1, %eax
	je	.Lcompute_value_win0_var1
	cmpl	$2, %eax
	je	.Lcompute_value_win0_var2
	jmp	.Lcompute_value_win0_var0
## Variant 0
.Lcompute_value_win0_var0:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jle	LBB0_2
## %bb.1:
	movl	-16(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	jmp	.Lcompute_value_win0_continue
## Variant 1
.Lcompute_value_win0_var1:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jle	LBB0_2
## %bb.1:
	movl	-16(%rbp), %eax
	addl	$3, %eax
	nop
	movl	%eax, -16(%rbp)
	nop
	movl	-12(%rbp), %eax
	xorl	-16(%rbp), %eax
	nop
	jmp	.Lcompute_value_win0_continue
## Variant 2
.Lcompute_value_win0_var2:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jle	LBB0_2
## %bb.1:
	movl	-16(%rbp), %eax
	addl	$3, %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %eax
	nop
	xorl	-16(%rbp), %eax
	jmp	.Lcompute_value_win0_continue
.Lcompute_value_win0_continue:
	movl	%eax, -12(%rbp)
	jmp	LBB0_3
LBB0_2:
	movl	-20(%rbp), %eax
	addl	$5, %eax
	movl	%eax, -20(%rbp)
LBB0_3:
	movl	-12(%rbp), %eax
	addl	-16(%rbp), %eax
	addl	-20(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$7, -8(%rbp)
	movl	$13, -12(%rbp)
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	_compute_value
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %esi
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Result = %d\n"
.subsections_via_symbols

