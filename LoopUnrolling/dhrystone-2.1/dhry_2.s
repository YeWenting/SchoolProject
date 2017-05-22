	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_Proc_6
	.p2align	4, 0x90
_Proc_6:                                ## @Proc_6
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	cmpl	$2, %edi
	setne	%al
	orl	$2, %eax
	movl	%eax, (%rsi)
	cmpl	$4, %edi
	ja	LBB0_8
## BB#1:
	movl	%edi, %eax
	leaq	LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
LBB0_2:
	movl	$0, (%rsi)
	popq	%rbp
	retq
LBB0_6:
	movl	$1, (%rsi)
	popq	%rbp
	retq
LBB0_3:
	movq	_Int_Glob@GOTPCREL(%rip), %rax
	cmpl	$101, (%rax)
	jl	LBB0_5
## BB#4:
	movl	$0, (%rsi)
	popq	%rbp
	retq
LBB0_7:
	movl	$2, (%rsi)
LBB0_8:
	popq	%rbp
	retq
LBB0_5:
	movl	$3, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
L0_0_set_2 = LBB0_2-LJTI0_0
L0_0_set_3 = LBB0_3-LJTI0_0
L0_0_set_6 = LBB0_6-LJTI0_0
L0_0_set_8 = LBB0_8-LJTI0_0
L0_0_set_7 = LBB0_7-LJTI0_0
LJTI0_0:
	.long	L0_0_set_2
	.long	L0_0_set_3
	.long	L0_0_set_6
	.long	L0_0_set_8
	.long	L0_0_set_7
	.end_data_region

	.globl	_Proc_7
	.p2align	4, 0x90
_Proc_7:                                ## @Proc_7
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
                                        ## kill: %ESI<def> %ESI<kill> %RSI<def>
                                        ## kill: %EDI<def> %EDI<kill> %RDI<def>
	leal	2(%rdi,%rsi), %eax
	movl	%eax, (%rdx)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_Proc_8
	.p2align	4, 0x90
_Proc_8:                                ## @Proc_8
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
Ltmp9:
	.cfi_offset %rbx, -40
Ltmp10:
	.cfi_offset %r14, -32
Ltmp11:
	.cfi_offset %r15, -24
	movslq	%edx, %r15
	leaq	5(%r15), %r8
	leal	5(%r15), %eax
	movl	%ecx, 20(%rdi,%r15,4)
	movl	%ecx, 24(%rdi,%r15,4)
	movl	%eax, 140(%rdi,%r15,4)
	leaq	7(%r15), %r14
	subq	%r8, %r14
	cmpq	$8, %r14
	movq	%r8, %rcx
	jb	LBB2_11
## BB#1:
	movq	%r14, %r9
	andq	$-8, %r9
	movq	%r14, %r10
	andq	$-8, %r10
	movq	%r8, %rcx
	je	LBB2_11
## BB#2:
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        ## xmm0 = xmm0[0,0,0,0]
	leaq	-8(%r10), %r11
	movl	%r11d, %ecx
	shrl	$3, %ecx
	incl	%ecx
	andq	$3, %rcx
	je	LBB2_3
## BB#4:
	imulq	$204, %r8, %rdx
	leaq	16(%rsi,%rdx), %rdx
	negq	%rcx
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB2_5:                                 ## =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -16(%rdx,%rbx,4)
	movdqu	%xmm0, (%rdx,%rbx,4)
	addq	$8, %rbx
	incq	%rcx
	jne	LBB2_5
	jmp	LBB2_6
LBB2_3:
	xorl	%ebx, %ebx
LBB2_6:
	cmpq	$24, %r11
	jb	LBB2_9
## BB#7:
	movq	%r10, %rcx
	subq	%rbx, %rcx
	imulq	$51, %r8, %rdx
	addq	%rbx, %rdx
	leaq	112(%rsi,%rdx,4), %rbx
	.p2align	4, 0x90
LBB2_8:                                 ## =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -112(%rbx)
	movdqu	%xmm0, -96(%rbx)
	movdqu	%xmm0, -80(%rbx)
	movdqu	%xmm0, -64(%rbx)
	movdqu	%xmm0, -48(%rbx)
	movdqu	%xmm0, -32(%rbx)
	movdqu	%xmm0, -16(%rbx)
	movdqu	%xmm0, (%rbx)
	subq	$-128, %rbx
	addq	$-32, %rcx
	jne	LBB2_8
LBB2_9:
	cmpq	%r10, %r14
	je	LBB2_13
## BB#10:
	addq	%r8, %r9
	movq	%r9, %rcx
LBB2_11:
	leaq	6(%r15), %rdx
	decq	%rcx
	imulq	$200, %r8, %rbx
	addq	%rsi, %rbx
	.p2align	4, 0x90
LBB2_12:                                ## =>This Inner Loop Header: Depth=1
	movl	%eax, 4(%rbx,%rcx,4)
	incq	%rcx
	cmpq	%rdx, %rcx
	jl	LBB2_12
LBB2_13:
	imulq	$200, %r8, %rax
	addq	%rsi, %rax
	incl	16(%rax,%r15,4)
	movl	(%rdi,%r8,4), %eax
	addl	$25, %r15d
	movslq	%r15d, %rcx
	imulq	$200, %rcx, %rcx
	addq	%rsi, %rcx
	movl	%eax, (%rcx,%r8,4)
	movq	_Int_Glob@GOTPCREL(%rip), %rax
	movl	$5, (%rax)
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_Func_1
	.p2align	4, 0x90
_Func_1:                                ## @Func_1
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	xorb	%dil, %sil
	jne	LBB3_2
## BB#1:
	movq	_Ch_1_Glob@GOTPCREL(%rip), %rax
	movb	%dil, (%rax)
	movl	$1, %eax
LBB3_2:
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_Func_2
	.p2align	4, 0x90
_Func_2:                                ## @Func_2
	.cfi_startproc
## BB#0:
	movb	3(%rsi), %al
	cmpb	2(%rdi), %al
	jne	LBB4_2
	.p2align	4, 0x90
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	jmp	LBB4_1
LBB4_2:
	pushq	%rbp
Ltmp15:
	.cfi_def_cfa_offset 16
Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp17:
	.cfi_def_cfa_register %rbp
	callq	_strcmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	popq	%rbp
	jle	LBB4_4
## BB#3:
	movq	_Int_Glob@GOTPCREL(%rip), %rax
	movl	$10, (%rax)
	movl	$1, %eax
LBB4_4:
	retq
	.cfi_endproc

	.globl	_Func_3
	.p2align	4, 0x90
_Func_3:                                ## @Func_3
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp18:
	.cfi_def_cfa_offset 16
Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp20:
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	cmpl	$2, %edi
	sete	%al
	popq	%rbp
	retq
	.cfi_endproc


.subsections_via_symbols
