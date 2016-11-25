	.file	"BCD.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s"
.LC1:
	.string	"0000 "
.LC2:
	.string	"0001 "
.LC3:
	.string	"0010 "
.LC4:
	.string	"0011 "
.LC5:
	.string	"0100 "
.LC6:
	.string	"0101 "
.LC7:
	.string	"0110 "
.LC8:
	.string	"0111 "
.LC9:
	.string	"1000 "
.LC10:
	.string	"1001 "
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB48:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$.LC0, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rsi
	movq	%rsp, %rbx
	call	__isoc99_scanf
	movq	%rsp, %rdx
.L2:
	movl	(%rdx), %ecx
	addq	$4, %rdx
	leal	-16843009(%rcx), %eax
	notl	%ecx
	andl	%ecx, %eax
	andl	$-2139062144, %eax
	je	.L2
	movl	%eax, %ecx
	movb	$0, 16(%rsp)
	shrl	$16, %ecx
	testl	$32896, %eax
	cmove	%ecx, %eax
	leaq	2(%rdx), %rcx
	cmove	%rcx, %rdx
	addb	%al, %al
	sbbq	$3, %rdx
	subq	%rbx, %rdx
	testl	%edx, %edx
	jle	.L26
	movq	%rbx, %rsi
	leal	-1(%rdx), %r12d
	leaq	1(%rbx), %rbx
	movsbq	(%rsi), %rsi
	leaq	16(%rsp), %rbp
	addq	%rbx, %r12
	leal	-48(%rsi), %eax
	cmpb	$9, %al
	ja	.L5
	.p2align 4,,10
	.p2align 3
.L27:
	movzbl	%al, %eax
	movl	$45, %edx
	jmp	*.L7(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L7:
	.quad	.L6
	.quad	.L8
	.quad	.L9
	.quad	.L10
	.quad	.L11
	.quad	.L12
	.quad	.L13
	.quad	.L14
	.quad	.L15
	.quad	.L16
	.section	.text.startup
	.p2align 4,,10
	.p2align 3
.L15:
	movl	$.LC9, %esi
	movq	%rbp, %rdi
	call	__strcat_chk
	.p2align 4,,10
	.p2align 3
.L17:
	cmpq	%r12, %rbx
	movq	%rbx, %rsi
	je	.L18
.L28:
	movsbq	(%rsi), %rsi
	addq	$1, %rbx
	leal	-48(%rsi), %eax
	cmpb	$9, %al
	jbe	.L27
.L5:
	movl	$45, %edx
	movq	%rbp, %rdi
	call	__strcat_chk
	cmpq	%r12, %rbx
	movq	%rbx, %rsi
	jne	.L28
	.p2align 4,,10
	.p2align 3
.L18:
	movq	%rbp, %rdi
	call	puts
	xorl	%eax, %eax
	movq	72(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L29
	addq	$80, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	.cfi_restore_state
	movl	$.LC8, %esi
	movq	%rbp, %rdi
	call	__strcat_chk
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L13:
	movl	$.LC7, %esi
	movq	%rbp, %rdi
	call	__strcat_chk
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L12:
	movl	$.LC6, %esi
	movq	%rbp, %rdi
	call	__strcat_chk
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L11:
	movl	$.LC5, %esi
	movq	%rbp, %rdi
	call	__strcat_chk
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L10:
	movl	$.LC4, %esi
	movq	%rbp, %rdi
	call	__strcat_chk
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L9:
	movl	$.LC3, %esi
	movq	%rbp, %rdi
	call	__strcat_chk
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L8:
	movl	$.LC2, %esi
	movq	%rbp, %rdi
	call	__strcat_chk
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L6:
	movl	$.LC1, %esi
	movq	%rbp, %rdi
	call	__strcat_chk
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L16:
	movl	$.LC10, %esi
	movq	%rbp, %rdi
	call	__strcat_chk
	jmp	.L17
.L26:
	leaq	16(%rsp), %rbp
	jmp	.L18
.L29:
	.p2align 4,,6
	call	__stack_chk_fail
	.cfi_endproc
.LFE48:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
