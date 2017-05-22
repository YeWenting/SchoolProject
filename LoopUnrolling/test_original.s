	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.intel_syntax noprefix
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI0_0:
	.quad	4636737291354636288     ## double 100
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
## BB#0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 48
	xor	eax, eax
	mov	edi, eax
	mov	dword ptr [rbp - 4], 0
	call	_time
	mov	qword ptr [rbp - 24], rax		## start_time -> rbp - 24
	mov	dword ptr [rbp - 12], 0			## epoch -> rbp - 12
LBB0_1:                                 ## 
	cmp	dword ptr [rbp - 12], 100
	jge	LBB0_8
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	mov	dword ptr [rbp - 8], 0			## i -> rbp - 8
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmp	dword ptr [rbp - 8], 100000000
	jge	LBB0_6
## BB#4:                                ##   in Loop: Header=BB0_3 Depth=2
	mov	rax, qword ptr [rip + _a@GOTPCREL]
	mov	ecx, dword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rbp - 8]
	mov	dword ptr [rax + 4*rdx], ecx
## BB#5:                                ##   in Loop: Header=BB0_3 Depth=2
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	LBB0_3
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	LBB0_1
LBB0_8:
	xor	eax, eax
	mov	edi, eax
	call	_time
	lea	rdi, [rip + L_.str]
	movsd	xmm0, qword ptr [rip + LCPI0_0] ## xmm0 = mem[0],zero
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 32]
	sub	rax, qword ptr [rbp - 24]
	cvtsi2sd	xmm1, rax
	divsd	xmm1, xmm0
	movaps	xmm0, xmm1
	mov	al, 1
	call	_printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 36], eax ## 4-byte Spill
	mov	eax, ecx
	add	rsp, 48
	pop	rbp
	ret

	.comm	_a,400000000,4          ## @a
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%f\n"


.subsections_via_symbols
