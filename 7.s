	.file	"7.c"
	.intel_syntax noprefix
	.text
	.globl	_multiplication
	.def	_multiplication;	.scl	2;	.type	32;	.endef
_multiplication:
	push	ebp
	mov	ebp, esp
	sub	esp, 16
	mov	DWORD PTR [ebp-8], 0
	jmp	L2
L7:
	mov	DWORD PTR [ebp-12], 0
	jmp	L3
L6:
	mov	DWORD PTR [ebp-4], 0
	mov	DWORD PTR [ebp-16], 0
	jmp	L4
L5:
	mov	edx, DWORD PTR [ebp-8]
	mov	eax, edx
	add	eax, eax
	add	edx, eax
	mov	eax, DWORD PTR [ebp-16]
	add	eax, edx
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+8]
	add	eax, edx
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [ebp-16]
	mov	eax, edx
	add	eax, eax
	add	edx, eax
	mov	eax, DWORD PTR [ebp-12]
	add	eax, edx
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	mov	eax, DWORD PTR [eax]
	imul	eax, ecx
	add	DWORD PTR [ebp-4], eax
	add	DWORD PTR [ebp-16], 1
L4:
	cmp	DWORD PTR [ebp-16], 2
	jle	L5
	mov	edx, DWORD PTR [ebp-8]
	mov	eax, edx
	add	eax, eax
	add	edx, eax
	mov	eax, DWORD PTR [ebp-12]
	add	eax, edx
	lea	edx, [0+eax*4]
	mov	eax, DWORD PTR [ebp+16]
	add	edx, eax
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR [edx], eax
	add	DWORD PTR [ebp-12], 1
L3:
	cmp	DWORD PTR [ebp-12], 2
	jle	L6
	add	DWORD PTR [ebp-8], 1
L2:
	cmp	DWORD PTR [ebp-8], 2
	jle	L7
	nop
	leave
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	sub	esp, 144
	call	___main
	mov	DWORD PTR [esp+140], 0
	jmp	L9
L12:
	mov	DWORD PTR [esp+136], 0
	jmp	L10
L11:
	mov	edx, DWORD PTR [esp+140]
	mov	eax, DWORD PTR [esp+136]
	add	eax, edx
	lea	ecx, [eax+eax]
	mov	edx, DWORD PTR [esp+140]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	mov	edx, DWORD PTR [esp+136]
	add	eax, edx
	mov	DWORD PTR [esp+100+eax*4], ecx
	mov	eax, DWORD PTR [esp+140]
	imul	eax, DWORD PTR [esp+140]
	mov	edx, eax
	mov	eax, DWORD PTR [esp+136]
	imul	eax, DWORD PTR [esp+136]
	lea	ecx, [edx+eax]
	mov	edx, DWORD PTR [esp+140]
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	mov	edx, DWORD PTR [esp+136]
	add	eax, edx
	mov	DWORD PTR [esp+64+eax*4], ecx
	add	DWORD PTR [esp+136], 1
L10:
	cmp	DWORD PTR [esp+136], 2
	jle	L11
	add	DWORD PTR [esp+140], 1
L9:
	cmp	DWORD PTR [esp+140], 2
	jle	L12
	lea	eax, [esp+28]
	mov	DWORD PTR [esp+8], eax
	lea	eax, [esp+64]
	mov	DWORD PTR [esp+4], eax
	lea	eax, [esp+100]
	mov	DWORD PTR [esp], eax
	call	_multiplication
	mov	eax, 0
	leave
	ret
	.ident	"GCC: (tdm-1) 5.1.0"
