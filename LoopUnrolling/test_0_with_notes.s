	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.intel_syntax noprefix
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp2:
	.cfi_def_cfa_register rbp
	sub	rsp, 64
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 52], 0
	mov	dword ptr [rbp - 56], 0
LBB0_1:                                 ## Fetch i
	cmp	dword ptr [rbp - 56], 10
	jge	LBB0_4
## BB#2:                                ## a[i] = i
	mov	eax, dword ptr [rbp - 56]
	movsxd	rcx, dword ptr [rbp - 56]
	mov	dword ptr [rbp + 4*rcx - 48], eax
## BB#3:                                ## i++
	mov	eax, dword ptr [rbp - 56]
	add	eax, 1
	mov	dword ptr [rbp - 56], eax
	jmp	LBB0_1
LBB0_4:
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_6
## BB#5:
	xor	eax, eax
	add	rsp, 64
	pop	rbp
	ret
LBB0_6:
	call	___stack_chk_fail
	.cfi_endproc


.subsections_via_symbols
