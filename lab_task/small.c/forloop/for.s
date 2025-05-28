	.file	"for.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Enter the number to search: \0"
LC1:
	.ascii "%d\0"
LC2:
	.ascii "Number %d found at index %d\12\0"
	.align 4
LC3:
	.ascii "Number %d not found in the array.\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	and	esp, -16
	sub	esp, 64
	call	___main
	mov	DWORD PTR [esp+28], 3
	mov	DWORD PTR [esp+32], 7
	mov	DWORD PTR [esp+36], 1
	mov	DWORD PTR [esp+40], 9
	mov	DWORD PTR [esp+44], 4
	mov	DWORD PTR [esp+48], 2
	mov	DWORD PTR [esp+52], 6
	mov	DWORD PTR [esp+60], 0
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_printf
	lea	eax, [esp+24]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_scanf
	mov	DWORD PTR [esp+56], 0
	jmp	L2
L5:
	mov	eax, DWORD PTR [esp+56]
	mov	edx, DWORD PTR [esp+28+eax*4]
	mov	eax, DWORD PTR [esp+24]
	cmp	edx, eax
	jne	L3
	mov	eax, DWORD PTR [esp+24]
	mov	edx, DWORD PTR [esp+56]
	mov	DWORD PTR [esp+8], edx
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_printf
	mov	DWORD PTR [esp+60], 1
	jmp	L4
L3:
	add	DWORD PTR [esp+56], 1
L2:
	mov	eax, DWORD PTR [esp+56]
	cmp	eax, DWORD PTR [esp+52]
	jl	L5
L4:
	cmp	DWORD PTR [esp+60], 0
	jne	L6
	mov	eax, DWORD PTR [esp+24]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC3
	call	_printf
L6:
	mov	eax, 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
