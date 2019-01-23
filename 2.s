	.file	"2.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	push	esi
	push	ebx
	and	esp, -16
	call	___main
	mov	ebx, 4
	mov	esi, 6
	add	ebx, esi
	mov	eax, ebx
	sub	eax, esi
	mov	esi, eax
	sub	ebx, esi
	mov	eax, 0
	lea	esp, [ebp-8]
	pop	ebx
	pop	esi
	pop	ebp
	ret
	.ident	"GCC: (tdm-1) 5.1.0"
