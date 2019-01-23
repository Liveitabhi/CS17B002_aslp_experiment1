	.file	"1.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	call	___main
	mov	eax, 0
	leave
	ret
	.ident	"GCC: (tdm-1) 5.1.0"
