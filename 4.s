	.file	"4.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	sub	esp, 96
	call	___main
	mov	DWORD PTR [esp+52], 1
	mov	DWORD PTR [esp+56], 2
	mov	DWORD PTR [esp+60], 4
	mov	DWORD PTR [esp+64], 8
	mov	DWORD PTR [esp+68], 16
	mov	DWORD PTR [esp+72], 32
	mov	DWORD PTR [esp+76], 64
	mov	DWORD PTR [esp+80], 128
	mov	DWORD PTR [esp+84], 256
	mov	DWORD PTR [esp+88], 512
	mov	DWORD PTR [esp+92], 0
	jmp	L2
L3:
	mov	eax, DWORD PTR [esp+92]
	mov	edx, DWORD PTR [esp+52+eax*4]
	mov	eax, DWORD PTR [esp+92]
	mov	DWORD PTR [esp+12+eax*4], edx
	add	DWORD PTR [esp+92], 1
L2:
	cmp	DWORD PTR [esp+92], 9
	jle	L3
	mov	eax, 0
	leave
	ret
	.ident	"GCC: (tdm-1) 5.1.0"
