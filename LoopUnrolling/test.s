	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.intel_syntax noprefix
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI0_0:
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
LCPI0_1:
	.long	4                       ## 0x4
	.long	4                       ## 0x4
	.long	4                       ## 0x4
	.long	4                       ## 0x4
LCPI0_2:
	.long	8                       ## 0x8
	.long	8                       ## 0x8
	.long	8                       ## 0x8
	.long	8                       ## 0x8
LCPI0_3:
	.long	12                      ## 0xc
	.long	12                      ## 0xc
	.long	12                      ## 0xc
	.long	12                      ## 0xc
LCPI0_4:
	.long	16                      ## 0x10
	.long	16                      ## 0x10
	.long	16                      ## 0x10
	.long	16                      ## 0x10
LCPI0_5:
	.long	20                      ## 0x14
	.long	20                      ## 0x14
	.long	20                      ## 0x14
	.long	20                      ## 0x14
LCPI0_6:
	.long	24                      ## 0x18
	.long	24                      ## 0x18
	.long	24                      ## 0x18
	.long	24                      ## 0x18
LCPI0_7:
	.long	28                      ## 0x1c
	.long	28                      ## 0x1c
	.long	28                      ## 0x1c
	.long	28                      ## 0x1c
LCPI0_8:
	.long	32                      ## 0x20
	.long	32                      ## 0x20
	.long	32                      ## 0x20
	.long	32                      ## 0x20
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI0_9:
	.quad	4636737291354636288     ## double 100
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
## BB#0:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	xor	ebx, ebx
	xor	edi, edi
	call	_time
	mov	r14, rax
	movdqa	xmm8, xmmword ptr [rip + LCPI0_0] ## xmm8 = [0,1,2,3]
	movdqa	xmm9, xmmword ptr [rip + LCPI0_1] ## xmm9 = [4,4,4,4]
	mov	rax, qword ptr [rip + _a@GOTPCREL]
	movdqa	xmm10, xmmword ptr [rip + LCPI0_2] ## xmm10 = [8,8,8,8]
	movdqa	xmm11, xmmword ptr [rip + LCPI0_3] ## xmm11 = [12,12,12,12]
	movdqa	xmm4, xmmword ptr [rip + LCPI0_4] ## xmm4 = [16,16,16,16]
	movdqa	xmm5, xmmword ptr [rip + LCPI0_5] ## xmm5 = [20,20,20,20]
	movdqa	xmm6, xmmword ptr [rip + LCPI0_6] ## xmm6 = [24,24,24,24]
	movdqa	xmm7, xmmword ptr [rip + LCPI0_7] ## xmm7 = [28,28,28,28]
	movdqa	xmm0, xmmword ptr [rip + LCPI0_8] ## xmm0 = [32,32,32,32]
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_2 Depth 2
	mov	ecx, 28
	movdqa	xmm1, xmm8
	.p2align	4, 0x90
LBB0_2:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movdqa	xmm2, xmm1
	paddd	xmm2, xmm9
	movdqa	xmmword ptr [rax + 4*rcx - 112], xmm1
	movdqa	xmmword ptr [rax + 4*rcx - 96], xmm2
	movdqa	xmm2, xmm1
	paddd	xmm2, xmm10
	movdqa	xmm3, xmm1
	paddd	xmm3, xmm11
	movdqa	xmmword ptr [rax + 4*rcx - 80], xmm2
	movdqa	xmmword ptr [rax + 4*rcx - 64], xmm3
	movdqa	xmm2, xmm1
	paddd	xmm2, xmm4
	movdqa	xmm3, xmm1
	paddd	xmm3, xmm5
	movdqa	xmmword ptr [rax + 4*rcx - 48], xmm2
	movdqa	xmmword ptr [rax + 4*rcx - 32], xmm3
	movdqa	xmm2, xmm1
	paddd	xmm2, xmm6
	movdqa	xmm3, xmm1
	paddd	xmm3, xmm7
	movdqa	xmmword ptr [rax + 4*rcx - 16], xmm2
	movdqa	xmmword ptr [rax + 4*rcx], xmm3
	paddd	xmm1, xmm0
	add	rcx, 32
	cmp	rcx, 100000028
	jne	LBB0_2
## BB#3:                                ##   in Loop: Header=BB0_1 Depth=1
	inc	ebx
	cmp	ebx, 100
	jne	LBB0_1
## BB#4:
	xor	edi, edi
	call	_time
	sub	rax, r14
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	divsd	xmm0, qword ptr [rip + LCPI0_9]
	lea	rdi, [rip + L_.str]
	mov	al, 1
	call	_printf
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	rbp
	ret

	.comm	_a,400000000,4          ## @a
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%f\n"


.subsections_via_symbols
