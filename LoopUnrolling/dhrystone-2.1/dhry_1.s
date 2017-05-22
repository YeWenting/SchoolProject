	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI0_0:
	.quad	4696837146684686336     ## double 1.0E+6
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2
LCPI0_1:
	.long	1114636288              ## float 60
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
Ltmp3:
	.cfi_offset %rbx, -56
Ltmp4:
	.cfi_offset %r12, -48
Ltmp5:
	.cfi_offset %r13, -40
Ltmp6:
	.cfi_offset %r14, -32
Ltmp7:
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$56, %edi
	xorl	%eax, %eax
	callq	_malloc
	movq	_Next_Ptr_Glob@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movl	$56, %edi
	xorl	%eax, %eax
	callq	_malloc
	movq	_Ptr_Glob@GOTPCREL(%rip), %rdx
	movq	%rax, (%rdx)
	movq	(%rbx), %rcx
	movq	%rcx, (%rax)
	movq	(%rdx), %rax
	movl	$0, 8(%rax)
	movl	$2, 12(%rax)
	movl	$40, 16(%rax)
	movabsq	$20070800167293728, %rdx ## imm = 0x474E4952545320
	movq	%rdx, 43(%rax)
	movabsq	$2325349785699101773, %rcx ## imm = 0x20454D4F53202C4D
	movq	%rcx, 36(%rax)
	movabsq	$4706902966564560965, %rcx ## imm = 0x4152474F52502045
	movq	%rcx, 28(%rax)
	movabsq	$5642821575076104260, %rsi ## imm = 0x4E4F545359524844
	movq	%rsi, 20(%rax)
	movq	%rdx, -57(%rbp)
	movabsq	$2329578335050411085, %rax ## imm = 0x2054532731202C4D
	movq	%rax, -64(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	_Arr_2_Glob@GOTPCREL(%rip), %r15
	movl	$10, 1628(%r15)
	movl	$10, %edi
	callq	_putchar
	leaq	L_str(%rip), %rdi
	callq	_puts
	movl	$10, %edi
	callq	_putchar
	cmpl	$0, _Reg(%rip)
	je	LBB0_2
## BB#1:
	leaq	L_str.59(%rip), %rdi
	jmp	LBB0_3
LBB0_2:
	leaq	L_str.45(%rip), %rdi
LBB0_3:
	callq	_puts
	movl	$10, %edi
	callq	_putchar
	leaq	L_.str.6(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	leaq	L_.str.7(%rip), %rdi
	leaq	-112(%rbp), %rsi
	xorl	%eax, %eax
	callq	_scanf
	movl	-112(%rbp), %ebx
	movl	$10, %edi
	callq	_putchar
	leaq	L_.str.8(%rip), %rdi
	xorl	%eax, %eax
	movl	%ebx, %esi
	callq	_printf
	movq	_time_info@GOTPCREL(%rip), %r14
	movq	%r14, %rdi
	callq	_times
	movq	(%r14), %rax
	movq	_Begin_Time@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	movl	%ebx, -124(%rbp)        ## 4-byte Spill
	testl	%ebx, %ebx
                                        ## implicit-def: %EDI
                                        ## implicit-def: %EDX
	movq	_Ptr_Glob@GOTPCREL(%rip), %rbx
	jle	LBB0_20
## BB#4:
	movl	$1, %r15d
	movq	_Ch_1_Glob@GOTPCREL(%rip), %rcx
	movq	_Ch_2_Glob@GOTPCREL(%rip), %r14
	.p2align	4, 0x90
LBB0_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_13 Depth 2
	movb	$65, (%rcx)
	movq	_Bool_Glob@GOTPCREL(%rip), %rax
	movq	%rax, %r12
	movl	$1, (%r12)
	movb	$66, (%r14)
	movabsq	$20070800167293728, %rax ## imm = 0x474E4952545320
	movq	%rax, -89(%rbp)
	movabsq	$2325069237881678925, %rax ## imm = 0x20444E2732202C4D
	movq	%rax, -96(%rbp)
	movabsq	$4706902966564560965, %rax ## imm = 0x4152474F52502045
	movq	%rax, -104(%rbp)
	movabsq	$5642821575076104260, %rax ## imm = 0x4E4F545359524844
	movq	%rax, -112(%rbp)
	movl	$1, -120(%rbp)
	xorl	%eax, %eax
	leaq	-80(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	callq	_Func_2
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movl	%ecx, (%r12)
	movl	$7, -116(%rbp)
	movl	$2, %edi
	movl	$3, %esi
	xorl	%eax, %eax
	leaq	-116(%rbp), %rdx
	callq	_Proc_7
	movl	-116(%rbp), %ecx
	movl	$3, %edx
	xorl	%eax, %eax
	movq	_Arr_1_Glob@GOTPCREL(%rip), %rdi
	movq	_Arr_2_Glob@GOTPCREL(%rip), %rsi
	callq	_Proc_8
	movq	(%rbx), %r12
	movq	(%r12), %r13
	movq	48(%r12), %rax
	movq	%rax, 48(%r13)
	movq	40(%r12), %rax
	movq	%rax, 40(%r13)
	movq	32(%r12), %rax
	movq	%rax, 32(%r13)
	movq	24(%r12), %rax
	movq	%rax, 24(%r13)
	movq	16(%r12), %rax
	movq	%rax, 16(%r13)
	movq	(%r12), %rax
	movq	8(%r12), %rcx
	movq	%rcx, 8(%r13)
	movq	%rax, (%r13)
	movl	$5, 16(%r12)
	movl	$5, 16(%r13)
	movq	(%r12), %rax
	movq	%rax, (%r13)
	movq	(%rbx), %rax
	testq	%rax, %rax
	je	LBB0_6
## BB#7:                                ##   in Loop: Header=BB0_5 Depth=1
	movq	(%rax), %rax
	movq	%rax, (%r13)
	movq	(%rbx), %rdx
	jmp	LBB0_8
	.p2align	4, 0x90
LBB0_6:                                 ##   in Loop: Header=BB0_5 Depth=1
	xorl	%edx, %edx
LBB0_8:                                 ##   in Loop: Header=BB0_5 Depth=1
	movq	_Int_Glob@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	addq	$16, %rdx
	movl	$10, %edi
	xorl	%eax, %eax
	callq	_Proc_7
	cmpl	$0, 8(%r13)
	je	LBB0_9
## BB#10:                               ##   in Loop: Header=BB0_5 Depth=1
	movq	(%r12), %rax
	movq	48(%rax), %rcx
	movq	%rcx, 48(%r12)
	movq	40(%rax), %rcx
	movq	%rcx, 40(%r12)
	movq	32(%rax), %rcx
	movq	%rcx, 32(%r12)
	movq	24(%rax), %rcx
	movq	%rcx, 24(%r12)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%r12)
	movq	(%rax), %rcx
	movq	8(%rax), %rax
	movq	%rax, 8(%r12)
	movq	%rcx, (%r12)
	jmp	LBB0_11
	.p2align	4, 0x90
LBB0_9:                                 ##   in Loop: Header=BB0_5 Depth=1
	movl	$6, 16(%r13)
	movl	12(%r12), %edi
	leaq	12(%r13), %rsi
	xorl	%eax, %eax
	callq	_Proc_6
	movq	(%rbx), %rax
	movq	(%rax), %rax
	movq	%rax, (%r13)
	movl	16(%r13), %edi
	leaq	16(%r13), %rdx
	movl	$10, %esi
	xorl	%eax, %eax
	callq	_Proc_7
LBB0_11:                                ##   in Loop: Header=BB0_5 Depth=1
	movl	$3, %r12d
	cmpb	$65, (%r14)
	jl	LBB0_16
## BB#12:                               ##   in Loop: Header=BB0_5 Depth=1
	movb	$65, %bl
	movl	$3, %r12d
	.p2align	4, 0x90
LBB0_13:                                ##   Parent Loop BB0_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsbl	%bl, %edi
	movl	-120(%rbp), %r13d
	movl	$67, %esi
	xorl	%eax, %eax
	callq	_Func_1
	cmpl	%eax, %r13d
	jne	LBB0_15
## BB#14:                               ##   in Loop: Header=BB0_13 Depth=2
	xorl	%edi, %edi
	xorl	%eax, %eax
	leaq	-120(%rbp), %rsi
	callq	_Proc_6
	movabsq	$20070800167293728, %rax ## imm = 0x474E4952545320
	movq	%rax, -89(%rbp)
	movabsq	$2325073635944967245, %rax ## imm = 0x2044522733202C4D
	movq	%rax, -96(%rbp)
	movabsq	$4706902966564560965, %rax ## imm = 0x4152474F52502045
	movq	%rax, -104(%rbp)
	movabsq	$5642821575076104260, %rax ## imm = 0x4E4F545359524844
	movq	%rax, -112(%rbp)
	movq	_Int_Glob@GOTPCREL(%rip), %rax
	movl	%r15d, (%rax)
	movl	%r15d, %r12d
LBB0_15:                                ##   in Loop: Header=BB0_13 Depth=2
	incb	%bl
	cmpb	(%r14), %bl
	jle	LBB0_13
LBB0_16:                                ##   in Loop: Header=BB0_5 Depth=1
	leal	(%r12,%r12,2), %r8d
	movl	-116(%rbp), %esi
	movl	%r8d, %eax
	cltd
	idivl	%esi
                                        ## kill: %EAX<def> %EAX<kill> %RAX<def>
	movq	_Ch_1_Glob@GOTPCREL(%rip), %rcx
	cmpb	$65, (%rcx)
	movl	%eax, %edi
	jne	LBB0_18
## BB#17:                               ##   in Loop: Header=BB0_5 Depth=1
	leal	9(%rax), %edi
	movq	_Int_Glob@GOTPCREL(%rip), %rdx
	subl	(%rdx), %edi
LBB0_18:                                ##   in Loop: Header=BB0_5 Depth=1
	cmpl	-124(%rbp), %r15d       ## 4-byte Folded Reload
	leal	1(%r15), %edx
	movl	%edx, %r15d
	movq	_Ptr_Glob@GOTPCREL(%rip), %rbx
	jne	LBB0_5
## BB#19:
	subl	%esi, %r8d
	leal	(,%r8,8), %edx
	subl	%r8d, %edx
	subl	%eax, %edx
	movq	_Arr_2_Glob@GOTPCREL(%rip), %r15
	movq	_time_info@GOTPCREL(%rip), %r14
LBB0_20:
	movl	%edi, -128(%rbp)        ## 4-byte Spill
	movl	%edx, -132(%rbp)        ## 4-byte Spill
	movq	%r14, %rdi
	callq	_times
	movq	(%r14), %rax
	movq	_End_Time@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	leaq	L_str.46(%rip), %rdi
	callq	_puts
	movl	$10, %edi
	callq	_putchar
	leaq	L_str.47(%rip), %rdi
	callq	_puts
	movl	$10, %edi
	callq	_putchar
	movq	_Int_Glob@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	leaq	L_.str.13(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	leaq	L_.str.14(%rip), %r13
	movl	$5, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	_printf
	movq	_Bool_Glob@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	leaq	L_.str.15(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	_printf
	movq	_Ch_1_Glob@GOTPCREL(%rip), %rax
	movsbl	(%rax), %esi
	leaq	L_.str.16(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	leaq	L_.str.17(%rip), %r14
	movl	$65, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movq	_Ch_2_Glob@GOTPCREL(%rip), %rax
	movsbl	(%rax), %esi
	leaq	L_.str.18(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$66, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movq	_Arr_1_Glob@GOTPCREL(%rip), %rax
	movl	32(%rax), %esi
	leaq	L_.str.19(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$7, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	_printf
	movl	1628(%r15), %esi
	leaq	L_.str.20(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	leaq	L_str.48(%rip), %rdi
	callq	_puts
	leaq	L_str.49(%rip), %rdi
	callq	_puts
	movq	(%rbx), %rax
	movl	(%rax), %esi
	leaq	L_.str.23(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	leaq	L_str.50(%rip), %rdi
	callq	_puts
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	leaq	L_.str.25(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	_printf
	movq	(%rbx), %rax
	movl	12(%rax), %esi
	leaq	L_.str.26(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$2, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	_printf
	movq	(%rbx), %rax
	movl	16(%rax), %esi
	leaq	L_.str.27(%rip), %r14
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movl	$17, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	_printf
	movq	(%rbx), %rsi
	addq	$20, %rsi
	leaq	L_.str.28(%rip), %r12
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	_printf
	leaq	L_str.54(%rip), %r15
	movq	%r15, %rdi
	callq	_puts
	leaq	L_str.52(%rip), %rdi
	callq	_puts
	movq	_Next_Ptr_Glob@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rax
	movl	(%rax), %esi
	xorl	%eax, %eax
	leaq	L_.str.23(%rip), %rdi
	callq	_printf
	leaq	L_str.53(%rip), %rdi
	callq	_puts
	movq	(%rbx), %rax
	movl	8(%rax), %esi
	xorl	%eax, %eax
	leaq	L_.str.25(%rip), %rdi
	callq	_printf
	xorl	%esi, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	_printf
	movq	(%rbx), %rax
	movl	12(%rax), %esi
	xorl	%eax, %eax
	leaq	L_.str.26(%rip), %rdi
	callq	_printf
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	_printf
	movq	(%rbx), %rax
	movl	16(%rax), %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	_printf
	movl	$18, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	_printf
	movq	(%rbx), %rsi
	addq	$20, %rsi
	xorl	%eax, %eax
	movq	%r12, %rdi
	callq	_printf
	movq	%r15, %rdi
	callq	_puts
	leaq	L_.str.32(%rip), %rdi
	xorl	%eax, %eax
	movl	-128(%rbp), %esi        ## 4-byte Reload
	callq	_printf
	movl	$5, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	_printf
	leaq	L_.str.33(%rip), %rdi
	xorl	%eax, %eax
	movl	-132(%rbp), %esi        ## 4-byte Reload
	callq	_printf
	movl	$13, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	_printf
	movl	-116(%rbp), %esi
	leaq	L_.str.34(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$7, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	_printf
	movl	-120(%rbp), %esi
	leaq	L_.str.35(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$1, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	callq	_printf
	leaq	L_.str.36(%rip), %rdi
	leaq	-80(%rbp), %rsi
	xorl	%eax, %eax
	callq	_printf
	leaq	L_str.55(%rip), %rdi
	callq	_puts
	leaq	L_.str.38(%rip), %rdi
	leaq	-112(%rbp), %rsi
	xorl	%eax, %eax
	callq	_printf
	leaq	L_str.56(%rip), %rdi
	callq	_puts
	movl	$10, %edi
	callq	_putchar
	movq	_End_Time@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	_Begin_Time@GOTPCREL(%rip), %rcx
	subq	(%rcx), %rax
	movq	_User_Time@GOTPCREL(%rip), %rcx
	movq	%rax, (%rcx)
	cmpq	$119, %rax
	jg	LBB0_22
## BB#21:
	leaq	L_str.57(%rip), %rdi
	callq	_puts
	leaq	L_str.58(%rip), %rdi
	callq	_puts
	jmp	LBB0_23
LBB0_22:
	cvtsi2ssq	%rax, %xmm0
	cvtss2sd	%xmm0, %xmm1
	mulsd	LCPI0_0(%rip), %xmm1
	movl	-124(%rbp), %eax        ## 4-byte Reload
	cvtsi2ssl	%eax, %xmm2
	mulss	LCPI0_1(%rip), %xmm2
	cvtss2sd	%xmm2, %xmm3
	divsd	%xmm3, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movq	_Microseconds@GOTPCREL(%rip), %rbx
	movss	%xmm1, (%rbx)
	divss	%xmm0, %xmm2
	movq	_Dhrystones_Per_Second@GOTPCREL(%rip), %r14
	movss	%xmm2, (%r14)
	leaq	L_.str.42(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movss	(%rbx), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	leaq	L_.str.43(%rip), %rbx
	movb	$1, %al
	movq	%rbx, %rdi
	callq	_printf
	leaq	L_.str.44(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movss	(%r14), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movb	$1, %al
	movq	%rbx, %rdi
	callq	_printf
LBB0_23:
	movl	$10, %edi
	callq	_putchar
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB0_25
## BB#24:
	xorl	%eax, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_25:
	callq	___stack_chk_fail
	.cfi_endproc

	.globl	_Proc_1
	.p2align	4, 0x90
_Proc_1:                                ## @Proc_1
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp8:
	.cfi_def_cfa_offset 16
Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp10:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
Ltmp11:
	.cfi_offset %rbx, -40
Ltmp12:
	.cfi_offset %r14, -32
Ltmp13:
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	movq	(%r14), %rbx
	movq	_Ptr_Glob@GOTPCREL(%rip), %r15
	movq	(%r15), %rax
	movq	48(%rax), %rcx
	movq	%rcx, 48(%rbx)
	movq	40(%rax), %rcx
	movq	%rcx, 40(%rbx)
	movq	32(%rax), %rcx
	movq	%rcx, 32(%rbx)
	movq	24(%rax), %rcx
	movq	%rcx, 24(%rbx)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rbx)
	movq	(%rax), %rcx
	movq	8(%rax), %rax
	movq	%rax, 8(%rbx)
	movq	%rcx, (%rbx)
	movl	$5, 16(%r14)
	movl	$5, 16(%rbx)
	movq	(%r14), %rax
	movq	%rax, (%rbx)
	movq	(%r15), %rax
	testq	%rax, %rax
	je	LBB1_1
## BB#2:
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movq	(%r15), %rdx
	jmp	LBB1_3
LBB1_1:
	xorl	%edx, %edx
LBB1_3:
	movq	_Int_Glob@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	addq	$16, %rdx
	movl	$10, %edi
	xorl	%eax, %eax
	callq	_Proc_7
	cmpl	$0, 8(%rbx)
	je	LBB1_4
## BB#5:
	movq	(%r14), %rax
	movq	48(%rax), %rcx
	movq	%rcx, 48(%r14)
	movq	40(%rax), %rcx
	movq	%rcx, 40(%r14)
	movq	32(%rax), %rcx
	movq	%rcx, 32(%r14)
	movq	24(%rax), %rcx
	movq	%rcx, 24(%r14)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%r14)
	movq	(%rax), %rcx
	movq	8(%rax), %rax
	movq	%rax, 8(%r14)
	movq	%rcx, (%r14)
	jmp	LBB1_6
LBB1_4:
	movl	$6, 16(%rbx)
	movl	12(%r14), %edi
	leaq	12(%rbx), %rsi
	xorl	%eax, %eax
	callq	_Proc_6
	movq	(%r15), %rax
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movl	16(%rbx), %edi
	leaq	16(%rbx), %rdx
	movl	$10, %esi
	xorl	%eax, %eax
	callq	_Proc_7
LBB1_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_Proc_2
	.p2align	4, 0x90
_Proc_2:                                ## @Proc_2
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp14:
	.cfi_def_cfa_offset 16
Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp16:
	.cfi_def_cfa_register %rbp
	movq	_Ch_1_Glob@GOTPCREL(%rip), %rax
	cmpb	$65, (%rax)
	jne	LBB2_2
## BB#1:
	movl	(%rdi), %eax
	addl	$9, %eax
	movq	_Int_Glob@GOTPCREL(%rip), %rcx
	subl	(%rcx), %eax
	movl	%eax, (%rdi)
LBB2_2:
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_Proc_3
	.p2align	4, 0x90
_Proc_3:                                ## @Proc_3
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp17:
	.cfi_def_cfa_offset 16
Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp19:
	.cfi_def_cfa_register %rbp
	movq	_Ptr_Glob@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	testq	%rcx, %rcx
	je	LBB3_1
## BB#2:
	movq	(%rcx), %rcx
	movq	%rcx, (%rdi)
	movq	(%rax), %rdx
	jmp	LBB3_3
LBB3_1:
	xorl	%edx, %edx
LBB3_3:
	movq	_Int_Glob@GOTPCREL(%rip), %rax
	movl	(%rax), %esi
	addq	$16, %rdx
	movl	$10, %edi
	xorl	%eax, %eax
	popq	%rbp
	jmp	_Proc_7                 ## TAILCALL
	.cfi_endproc

	.globl	_Proc_4
	.p2align	4, 0x90
_Proc_4:                                ## @Proc_4
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp20:
	.cfi_def_cfa_offset 16
Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp22:
	.cfi_def_cfa_register %rbp
	movq	_Ch_1_Glob@GOTPCREL(%rip), %rax
	xorl	%ecx, %ecx
	cmpb	$65, (%rax)
	sete	%cl
	movq	_Bool_Glob@GOTPCREL(%rip), %rax
	orl	%ecx, (%rax)
	movq	_Ch_2_Glob@GOTPCREL(%rip), %rax
	movb	$66, (%rax)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_Proc_5
	.p2align	4, 0x90
_Proc_5:                                ## @Proc_5
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp23:
	.cfi_def_cfa_offset 16
Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp25:
	.cfi_def_cfa_register %rbp
	movq	_Ch_1_Glob@GOTPCREL(%rip), %rax
	movb	$65, (%rax)
	movq	_Bool_Glob@GOTPCREL(%rip), %rax
	movl	$0, (%rax)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_Reg                    ## @Reg
.zerofill __DATA,__common,_Reg,4,2
	.comm	_Next_Ptr_Glob,8,3      ## @Next_Ptr_Glob
	.comm	_Ptr_Glob,8,3           ## @Ptr_Glob
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"DHRYSTONE PROGRAM, SOME STRING"

L_.str.1:                               ## @.str.1
	.asciz	"DHRYSTONE PROGRAM, 1'ST STRING"

	.comm	_Arr_2_Glob,10000,4     ## @Arr_2_Glob
L_.str.6:                               ## @.str.6
	.asciz	"Please give the number of runs through the benchmark: "

L_.str.7:                               ## @.str.7
	.asciz	"%d"

L_.str.8:                               ## @.str.8
	.asciz	"Execution starts, %d runs through Dhrystone\n"

	.comm	_time_info,32,3         ## @time_info
	.comm	_Begin_Time,8,3         ## @Begin_Time
L_.str.9:                               ## @.str.9
	.asciz	"DHRYSTONE PROGRAM, 2'ND STRING"

	.comm	_Bool_Glob,4,2          ## @Bool_Glob
	.comm	_Arr_1_Glob,200,4       ## @Arr_1_Glob
	.comm	_Ch_2_Glob,1,0          ## @Ch_2_Glob
L_.str.10:                              ## @.str.10
	.asciz	"DHRYSTONE PROGRAM, 3'RD STRING"

	.comm	_Int_Glob,4,2           ## @Int_Glob
	.comm	_End_Time,8,3           ## @End_Time
L_.str.13:                              ## @.str.13
	.asciz	"Int_Glob:            %d\n"

L_.str.14:                              ## @.str.14
	.asciz	"        should be:   %d\n"

L_.str.15:                              ## @.str.15
	.asciz	"Bool_Glob:           %d\n"

L_.str.16:                              ## @.str.16
	.asciz	"Ch_1_Glob:           %c\n"

	.comm	_Ch_1_Glob,1,0          ## @Ch_1_Glob
L_.str.17:                              ## @.str.17
	.asciz	"        should be:   %c\n"

L_.str.18:                              ## @.str.18
	.asciz	"Ch_2_Glob:           %c\n"

L_.str.19:                              ## @.str.19
	.asciz	"Arr_1_Glob[8]:       %d\n"

L_.str.20:                              ## @.str.20
	.asciz	"Arr_2_Glob[8][7]:    %d\n"

L_.str.23:                              ## @.str.23
	.asciz	"  Ptr_Comp:          %d\n"

L_.str.25:                              ## @.str.25
	.asciz	"  Discr:             %d\n"

L_.str.26:                              ## @.str.26
	.asciz	"  Enum_Comp:         %d\n"

L_.str.27:                              ## @.str.27
	.asciz	"  Int_Comp:          %d\n"

L_.str.28:                              ## @.str.28
	.asciz	"  Str_Comp:          %s\n"

L_.str.32:                              ## @.str.32
	.asciz	"Int_1_Loc:           %d\n"

L_.str.33:                              ## @.str.33
	.asciz	"Int_2_Loc:           %d\n"

L_.str.34:                              ## @.str.34
	.asciz	"Int_3_Loc:           %d\n"

L_.str.35:                              ## @.str.35
	.asciz	"Enum_Loc:            %d\n"

L_.str.36:                              ## @.str.36
	.asciz	"Str_1_Loc:           %s\n"

L_.str.38:                              ## @.str.38
	.asciz	"Str_2_Loc:           %s\n"

	.comm	_User_Time,8,3          ## @User_Time
	.comm	_Microseconds,4,2       ## @Microseconds
	.comm	_Dhrystones_Per_Second,4,2 ## @Dhrystones_Per_Second
L_.str.42:                              ## @.str.42
	.asciz	"Microseconds for one run through Dhrystone: "

L_.str.43:                              ## @.str.43
	.asciz	"%f \n"

L_.str.44:                              ## @.str.44
	.asciz	"Dhrystones per Second:                      "

	.p2align	4               ## @str
L_str:
	.asciz	"Dhrystone Benchmark, Version 2.1 (Language: C)"

	.p2align	4               ## @str.45
L_str.45:
	.asciz	"Program compiled without 'register' attribute"

L_str.46:                               ## @str.46
	.asciz	"Execution ends"

	.p2align	4               ## @str.47
L_str.47:
	.asciz	"Final values of the variables used in the benchmark:"

	.p2align	4               ## @str.48
L_str.48:
	.asciz	"        should be:   Number_Of_Runs + 10"

L_str.49:                               ## @str.49
	.asciz	"Ptr_Glob->"

	.p2align	4               ## @str.50
L_str.50:
	.asciz	"        should be:   (implementation-dependent)"

L_str.52:                               ## @str.52
	.asciz	"Next_Ptr_Glob->"

	.p2align	4               ## @str.53
L_str.53:
	.asciz	"        should be:   (implementation-dependent), same as above"

	.p2align	4               ## @str.54
L_str.54:
	.asciz	"        should be:   DHRYSTONE PROGRAM, SOME STRING"

	.p2align	4               ## @str.55
L_str.55:
	.asciz	"        should be:   DHRYSTONE PROGRAM, 1'ST STRING"

	.p2align	4               ## @str.56
L_str.56:
	.asciz	"        should be:   DHRYSTONE PROGRAM, 2'ND STRING"

	.p2align	4               ## @str.57
L_str.57:
	.asciz	"Measured time too small to obtain meaningful results"

	.p2align	4               ## @str.58
L_str.58:
	.asciz	"Please increase number of runs"

	.p2align	4               ## @str.59
L_str.59:
	.asciz	"Program compiled with 'register' attribute"


.subsections_via_symbols
