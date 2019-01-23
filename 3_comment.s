	.file	"3.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp  ; stack[top-0] <- [ebp]
	mov	ebp, esp  ; ebp <- [ esp ] ;
	and	esp, -16 ; esp <- esp & -16
	sub	esp, 48  ; esp <- [esp] - 48
	call	___main
	mov	DWORD PTR [esp+4], 1  ; [esp+4] <- 1
	mov	DWORD PTR [esp+8], 2  ; [esp+8] <- 2
	mov	DWORD PTR [esp+12], 4  ; [esp+12] <- 4
	mov	DWORD PTR [esp+16], 8  ; [esp+16] <- 8
	mov	DWORD PTR [esp+20], 16  ; [esp+20] <- 16
	mov	DWORD PTR [esp+24], 32  ; [esp+24] <- 32
	mov	DWORD PTR [esp+28], 64  ; [esp+28] <- 64
	mov	DWORD PTR [esp+32], 128  ; [esp+32] <- 128
	mov	DWORD PTR [esp+36], 256  ; [esp+36] <- 256
	mov	DWORD PTR [esp+40], 512  ; [esp+40] <- 512
	mov	DWORD PTR [esp+44], 0  ; [esp+44] <- 0
	jmp	L2 ; jump to L2
L3:
	mov	eax, DWORD PTR [esp+44]  ; eax <- [esp+44]
	mov	eax, DWORD PTR [esp+4+eax*4]  ; eax <- [esp+4+eax*4]
	lea	edx, [eax+1]  ; edx <-  [eax+1]
	mov	eax, DWORD PTR [esp+44]  ; eax <- [esp+44]
	mov	DWORD PTR [esp+4+eax*4], edx  ; [esp+4+eax*4] <- edx
	add	DWORD PTR [esp+44], 1  ; [esp+44] <- [esp+44] + 1
L2:
	cmp	DWORD PTR [esp+44], 9 ; compare [esp+44] and 9
	jle	L3 ; jump to less than or equal to L3
	mov	eax, 0  ; eax <- 0
	leave ; high level procedure exit
	ret  ; return
	.ident	"GCC: (tdm-1) 5.1.0"
