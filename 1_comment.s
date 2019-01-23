	.file	"1.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp  ; stack[top-0] <- [ebp]
	mov	ebp, esp  ; ebp <- [ esp ] 
	and	esp, -16 ; 
	call	___mainesp <- esp & -16
	mov	eax, 0  ; eax <- 0
	leave  ; high level procedure exit
	ret  ; return
	.ident	"GCC: (tdm-1) 5.1.0"
