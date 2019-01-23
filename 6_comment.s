	.file	"6.c"
	.intel_syntax noprefix
	.text
	.globl	_fib
	.def	_fib;	.scl	2;	.type	32;	.endef
_fib:
	push	ebp  ; stack[top-0] <- [ebp]
	mov	ebp, esp  ; ebp <- [ esp ]
	push	ebx  ; stack[top-1] <- [ebx]
	sub	esp, 20  ; esp <- [esp] - 20
	cmp	DWORD PTR [ebp+8], 1 ; compare [ebp+8] and 1
	jne	L2 ; jump to L2 if zero flag is cleared
	mov	eax, 0  ; eax <- 0
	jmp	L3 ; jump to L3
L2:
	cmp	DWORD PTR [ebp+8], 2 ; compare [ebp+8] and 2
	jne	L4 ; jump to L4 if zero flag is cleared
	mov	eax, 1  ; eax <- 1
	jmp	L3 ; jump to L3
L4:
	mov	eax, DWORD PTR [ebp+8]  ; eax<- [ebp+8]
	sub	eax, 1  ; eax <- [eax] - 1 
	mov	DWORD PTR [esp], eax  ; [esp] <- eax
	call	_fib
	mov	ebx, eax  ; ebx <- [ eax ] 
	mov	eax, DWORD PTR [ebp+8]  ; eax<- [ebp+8]
	sub	eax, 2  ; eax <- [eax] - 2
	mov	DWORD PTR [esp], eax  ; [esp] <- eax
	call	_fib
	add	eax, ebx  ; eax <- [eax] + [ ebx]
L3:
	add	esp, 20  ; esp <- [esp] + 20
	pop	ebx  ; ebx <- stack[top-1]
	pop	ebp  ; ebp <- stack[top-0]
	ret  ; return
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp  ; stack[top-0] <- [ebp]
	mov	ebp, esp  ; ebp <- [ esp ]
	and	esp, -16 ; esp <- esp & -16
	sub	esp, 32  ; esp <- [esp] - 32 
	call	___main
	mov	DWORD PTR [esp+28], 13  ; [esp+28] <- 13
	mov	eax, DWORD PTR [esp+28]  ; eax<- [esp+28]
	mov	DWORD PTR [esp], eax  ; [esp] <- eax
	call	_fib
	mov	DWORD PTR [esp+24], eax  ; [esp+24] <- eax
	mov	eax, 0  ; eax <- 0
	leave ; high level procedure exit
	ret  ; return
	.ident	"GCC: (tdm-1) 5.1.0"
