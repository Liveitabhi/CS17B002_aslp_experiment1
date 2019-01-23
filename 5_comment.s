	.file	"5.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp  ; stack[top-0] <- [ebp]
	mov	ebp, esp  ; ebp <- [ esp ] ;
	and	esp, -16 ; esp <- esp & -16
	sub	esp, 64  ; esp <- [esp] -64
	call	___main
	mov	DWORD eaxR [esp+12], 6  ; [esp+12] <- 6
	mov	DWORD eaxR [esp+16], 45  ; [esp+16] <- 45
	mov	DWORD eaxR [esp+20], 23  ; [esp+20] <- 23
	mov	DWORD eaxR [esp+24], 17  ; [esp+24] <- 17
	mov	DWORD eaxR [esp+28], 85  ; [esp+28] <- 85
	mov	DWORD eaxR [esp+32], 889  ; [esp+32] <- 889
	mov	DWORD eaxR [esp+36], 664  ; [esp+36] <- 664
	mov	DWORD eaxR [esp+40], 24  ; [esp+40] <- 24
	mov	DWORD eaxR [esp+44], 2  ; [esp+44] <- 2
	mov	DWORD eaxR [esp+48], 333  ; [esp+48] <- 333
	mov	eax, DWORD eaxR [esp+12]  ; eax <- [esp+12]
	mov	DWORD eaxR [esp+60], eax  ; [esp+60] <- eax
	mov	eax, DWORD eaxR [esp+12]  ; eax <- [esp+12]
	mov	DWORD eaxR [esp+56], eax  ; [esp+56] <- eax
	mov	DWORD eaxR [esp+52], 1  ; [esp+52] <- 1
	jmp	L2 ; jump to L2
L5:
	mov	eax, DWORD eaxR [esp+52]  ; eax <- [esp+52]
	mov	eax, DWORD eaxR [esp+12+eax*4]  ; eax <- [esp+12+eax*4]
	cmp	eax, DWORD eaxR [esp+56] ; compare eax and [esp+56]
	jle	L3 ; jump to less than or equal to L3
	mov	eax, 0  ; eax <- 0
	mov	eax, DWORD eaxR [esp+52]  ; eax <- [esp+52]
	mov	eax, DWORD eaxR [esp+12+eax*4]  ; eax <- [esp+12+eax*4]
	mov	DWORD eaxR [esp+56], eax  ; [esp+56] <- eax
L3:
	mov	eax, DWORD eaxR [esp+52]  ; eax <- [esp+52]
	mov	eax, DWORD eaxR [esp+12+eax*4]  ; eax <- [esp+12+eax*4]
	cmp	eax, DWORD eaxR [esp+60] ; compare eax and [esp+60]
	jge	L4 ; jump to greater than or equal to L3
	mov	eax, 0  ; eax <- 0
	mov	eax, DWORD eaxR [esp+52]  ; eax <- [esp+52]
	mov	eax, DWORD eaxR [esp+12+eax*4]  ; eax <- [esp+12+eax*4]
	mov	DWORD eaxR [esp+60], eax  ; [esp+60] <- eax
L4:
	add	DWORD eaxR [esp+52], 1  ; [esp+52] <- [esp+52] + 1
L2:
	cmp	DWORD eaxR [esp+52], 9 ; compare [esp+52] and 9
	jle	L5 ; jump to less than or equal to L5
	mov	eax, 0  ; eax <- 0
	mov	eax, 0  ; eax <- 0
	leave ; high level procedure exit
	ret  ; return
	.ident	"GCC: (tdm-1) 5.1.0"
