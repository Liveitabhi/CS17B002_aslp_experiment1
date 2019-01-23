	.file	"7.c"
	.intel_syntax noprefix
	.text
	.globl	_multiplication
	.def	_multiplication;	.scl	2;	.type	32;	.endef
_multiplication:
	push	ebp  ; stack[top-0] <- [ebp]
	mov	ebp, esp  ; ebp <- [ esp ]
	sub	esp, 16  ; esp <- [esp] - [ 16]
	mov	DWORD PTR [ebp-8], 0  ; [ebp-8] <- 0
	jmp	L2 ; jump to L2
L7:
	mov	DWORD PTR [ebp-12], 0  ; [ebp-12] <- 0
	jmp	L3 ; jump to L2
L6:
	mov	DWORD PTR [ebp-4], 0  ; [ebp-4] <- 0
	mov	DWORD PTR [ebp-16], 0  ; [ebp-16] <- 0
	jmp	L4 ; jmup to L4
L5:
	mov	edx, DWORD PTR [ebp-8]  ; edx<- [ebp-8]
	mov	eax, edx  ; eax <- [ edx ]
	add	eax, eax  ; eax <- [eax] + [ eax]
	add	edx, eax  ; edx <- [edx] + [ eax]
	mov	eax, DWORD PTR [ebp-16]  ; eax<- [ebp-16]
	add	eax, edx  ; eax <- [eax] + [ edx]
	lea	edx, [0+eax*4]  ; edx <-  [0+eax*4]
	mov	eax, DWORD PTR [ebp+8]  ; eax<- [ebp+8]
	add	eax, edx  ; eax <- [eax] + [edx]
	mov	ecx, DWORD PTR [eax]  ; ecx<- [eax]
	mov	edx, DWORD PTR [ebp-16]  ; edx<- [ebp-16]
	mov	eax, edx  ; eax <- [edx]
	add	eax, eax  ; eax <- [eax] + [ eax]
	add	edx, eax  ; edx <- [edx] + [ eax]
	mov	eax, DWORD PTR [ebp-12]  ; eax<- [ebp-12]
	add	eax, edx  ; eax <- [eax] + [ edx]
	lea	edx, [0+eax*4]  ; edx <-  [0+eax*4]
	mov	eax, DWORD PTR [ebp+12]  ; eax<- [ebp+12]
	add	eax, edx  ; eax <- [eax] + [edx]
	mov	eax, DWORD PTR [eax]  ; eax<- [eax]
	imul	eax, ecx  ; eax <- [eax] * [ ecx]
	add	DWORD PTR [ebp-4], eax  ;[ebp-4] <- [ebp-4] + [eax] 
	add	DWORD PTR [ebp-16], 1 ; [ebp-16] <- [ebp-16] + 1
L4:
	cmp	DWORD PTR [ebp-16], 2 ; compare [ebp-16] and 2
	jle	L5 ; jump to less than or equal to L5
	mov	edx, DWORD PTR [ebp-8]  ; eax<- [ebp-8]
	mov	eax, edx  ; eax <- [ edx ]
	add	eax, eax  ; eax <- [eax] + [ eax]
	add	edx, eax  ; edx <- [edx] + [ eax]
	mov	eax, DWORD PTR [ebp-12]  ; eax<- [ebp-12]
	add	eax, edx  ; eax <- [eax] + [ edx]
	lea	edx, [0+eax*4]  ; edx <-  [0+eax*4]
	mov	eax, DWORD PTR [ebp+16]  ; eax<- [ebp+16]
	add	edx, eax  ; edx <- [edx] + [ eax]
	mov	eax, DWORD PTR [ebp-4]  ; eax<- [ebp-4]
	mov	DWORD PTR [edx], eax  ; [edx] <- eax
	add	DWORD PTR [ebp-12], 1  ; [ebp-12] <- [ebp-12] + 1
L3:
	cmp	DWORD PTR [ebp-12], 2 ; compare [ebp-12] and 2
	jle	L6 ; jump to less than or equal to L6
	add	DWORD PTR [ebp-8], 1  ; [ebp-8] <- [ebp-8] + 1
L2:
	cmp	DWORD PTR [ebp-8], 2 ; compare [ebp-8] and 2
	jle	L7 ; jump to less than or equal to L7
	nop ; no operation
	leave ; high level procedure exit
	ret  ; return
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp  ;stack[top-1] <- [ebp]
	mov	ebp, esp  ; ebp <- [ esp ]
	and	esp, -16 ; esp <- esp & -16
	sub	esp, 144  ; esp <- [esp] - 144
	call	___main
	mov	DWORD PTR [esp+140], 0  ; [esp+140] <- 0
	jmp	L9 ; jump to L9
L12:
	mov	DWORD PTR [esp+136], 0  ; [esp+136] <- 0
	jmp	L10 ; jump to L10
L11:
	mov	edx, DWORD PTR [esp+140]  ; eax<- [esp+140]
	mov	eax, DWORD PTR [esp+136]  ; eax<- [esp+136]
	add	eax, edx  ; eax <- [eax] + [ edx]
	lea	ecx, [eax+eax]  ; ecx <-  [eax+eax]
	mov	edx, DWORD PTR [esp+140]  ; eax<- [esp+140]
	mov	eax, edx  ; eax <- [ edx ] 
	add	eax, eax  ; eax <- [eax] + [ eax]
	add	eax, edx  ; eax <- [eax] + [ edx]
	mov	edx, DWORD PTR [esp+136]  ; eax<- [esp+136]
	add	eax, edx  ; eax <- [eax] + [ edx]
	mov	DWORD PTR [esp+100+eax*4], ecx  ; [esp+100+eax*4] <- ecx
	mov	eax, DWORD PTR [esp+140]  ; eax<- [esp+140]
	imul	eax, DWORD PTR [esp+140]  ; eax <- [eax] * [esp+140]
	mov	edx, eax  ; edx <- [ eax ]
	mov	eax, DWORD PTR [esp+136]  ; eax<- [esp+136]
	imul	eax, DWORD PTR [esp+136]  ; eax <- [eax] * [esp+136]
	lea	ecx, [edx+eax]  ; ecx <-  [edx+eax]
	mov	edx, DWORD PTR [esp+140]  ; eax<- [esp+140]
	mov	eax, edx  ; eax <- [ edx ]
	add	eax, eax  ; eax <- [eax] + [ eax]
	add	eax, edx  ; eax <- [eax] + [ edx]
	mov	edx, DWORD PTR [esp+136]  ; eax<- [esp+136]
	add	eax, edx  ; eax <- [eax] + [ edx]
	mov	DWORD PTR [esp+64+eax*4], ecx  ; [esp+64+eax*4] <- ecx
	add	DWORD PTR [esp+136], 1  ; [esp+136] <- [esp+136] + 1
L10:
	cmp	DWORD PTR [esp+136], 2 ; compare [ebp+136] and 2
	jle	L11 ; jump to less than or equal to L11
	add	DWORD PTR [esp+140], 1  ; [esp+140] <- [esp+140] + 1
L9:
	cmp	DWORD PTR [esp+140], 2 ; compare [ebp+140] and 2
	jle	L12 ; jump to less than or equal to L12
	lea	eax, [esp+28]  ; eax <-  [esp+28]
	mov	DWORD PTR [esp+8], eax  ; [esp+8] <- eax
	lea	eax, [esp+64]  ; eax <-  [esp+64]
	mov	DWORD PTR [esp+4], eax  ; [esp+4] <- eax
	lea	eax, [esp+100]  ; eax <-  [esp+100]
	mov	DWORD PTR [esp], eax  ; [esp] <- eax
	call	_multiplication
	mov	eax, 0  ; eax <- 0
	leave ; high level procedure exit
	ret  ; return
	.ident	"GCC: (tdm-1) 5.1.0"
