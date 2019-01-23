	.file	"5.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	sub	esp, 64
	call	___main
	mov	DWORD PTR [esp+12], 6
	mov	DWORD PTR [esp+16], 45
	mov	DWORD PTR [esp+20], 23
	mov	DWORD PTR [esp+24], 17
	mov	DWORD PTR [esp+28], 85
	mov	DWORD PTR [esp+32], 889
	mov	DWORD PTR [esp+36], 664
	mov	DWORD PTR [esp+40], 24
	mov	DWORD PTR [esp+44], 2
	mov	DWORD PTR [esp+48], 333
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [esp+60], eax
	mov	eax, DWORD PTR [esp+12]
	mov	DWORD PTR [esp+56], eax
	mov	DWORD PTR [esp+52], 1
	jmp	L2
L5:
	mov	eax, DWORD PTR [esp+52]
	mov	eax, DWORD PTR [esp+12+eax*4]
	cmp	eax, DWORD PTR [esp+56]
	jle	L3
	mov	eax, DWORD PTR [esp+52]
	mov	eax, DWORD PTR [esp+12+eax*4]
	mov	DWORD PTR [esp+56], eax
L3:
	mov	eax, DWORD PTR [esp+52]
	mov	eax, DWORD PTR [esp+12+eax*4]
	cmp	eax, DWORD PTR [esp+60]
	jge	L4
	mov	eax, DWORD PTR [esp+52]
	mov	eax, DWORD PTR [esp+12+eax*4]
	mov	DWORD PTR [esp+60], eax
L4:
	add	DWORD PTR [esp+52], 1
L2:
	cmp	DWORD PTR [esp+52], 9
	jle	L5
	mov	eax, 0
	leave
	ret
	.ident	"GCC: (tdm-1) 5.1.0"
