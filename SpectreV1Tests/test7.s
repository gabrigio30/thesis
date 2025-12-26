	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 26, 1
	.globl	_compute_value                  ## -- Begin function compute_value
	.p2align	4, 0x90
_compute_value:                         ## @compute_value
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        ## kill: def $esi killed $esi def $rsi
                                        ## kill: def $edi killed $edi def $rdi
	leal	(%rsi,%rdi), %eax
	leal	(%rdi,%rdi), %ecx
	xorl	$85, %esi
	leal	(%rax,%rdi,2), %edx
	subl	%edi, %esi
	leal	5(%rsi), %eax
	xorl	%r8d, %r8d
	cmpl	%esi, %edx
	leal	3(%rdi,%rdi), %edi
	cmovgl	%edi, %r8d
	cmovgl	%edi, %ecx
	cmovgl	%esi, %eax
	xorl	%edx, %r8d
	addl	%ecx, %eax
	addl	%r8d, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	L_.str(%rip), %rdi
	movl	$134, %esi
	xorl	%eax, %eax
	callq	_printf
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Result = %d\n"

.subsections_via_symbols
