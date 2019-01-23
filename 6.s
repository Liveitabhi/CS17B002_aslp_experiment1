	.file	"6.c"
	.intel_syntax noprefix
	.text
	.globl	_fib
	.def	_fib;	.scl	2;	.type	32;	.endef
_fib:
	push	ebp
	mov	ebp, esp
	push	ebx
	sub	esp, 20
	cmp	DWORD PTR [ebp+8], 1
	jne	L2
	mov	eax, 0
	jmp	L3
L2:
	cmp	DWORD PTR [ebp+8], 2
	jne	L4
	mov	eax, 1
	jmp	L3
L4:
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 1
	mov	DWORD PTR [esp], eax
	call	_fib
	mov	ebx, eax
	mov	eax, DWORD PTR [ebp+8]
	sub	eax, 2
	mov	DWORD PTR [esp], eax
	call	_fib
	add	eax, ebx
L3:
	add	esp, 20
	pop	ebx
	pop	ebp
	ret
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	sub	esp, 32
	call	___main
	mov	DWORD PTR [esp+28], 13
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp], eax
	call	_fib
	mov	DWORD PTR [esp+24], eax
	mov	eax, 0
	leave
	ret
	.ident	"GCC: (tdm-1) 5.1.0"
