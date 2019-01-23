	.file	"2.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp  ; stack[top-0] <- [ebp]
	mov	ebp, esp  ; ebp <- [ esp ]
	push	esi  ; stack[top-1] <- [esi]
	push	ebx  ; stack[top-2] <- [ebx]
	and	esp, -16 ; esp <- esp & -16
	call	___main
	mov	ebx, 4  ; ebx <- 4
	mov	esi, 6  ; esi <- 6
	add	ebx, esi  ; ebx <- [ebx] + [esi] ; ebx <- 10
	mov	eax, ebx  ; eax <- [ ebx ]
	sub	eax, esi  ; eax <- [eax] - [ esi] ; eax <- -2
	mov	esi, eax  ; esi <- [ eax ]
	sub	ebx, esi  ; ebx <- [ebx] - [ esi] ; ebx <- 12
	mov	eax, 0  ; eax <- 0
	lea	esp, [ebp-8]  ; esp <- [ebp-8] ;
	pop	ebx  ; ebx <- stack[top-2]
	pop	esi  ; esi <- stack[top-1]
	pop	ebp  ; ebp <- stack[top-0]
	ret  ; return
	.ident	"GCC: (tdm-1) 5.1.0"
