section	.bss
	buffer resb 1024

section .rodata
	msgError db "Error can't open file", 10, 0
	msgSize equ $-msgError

section	.text

global	_start

_start:

my_cat:

	;; check av
	add	esp, byte 8 	; on vire ac et av[0]
av:
	pop	ecx
	jecxz	exit

	;; open
	push	0
	push	ecx
	mov	eax, 5
	call	kernel
	add	esp, byte 8
	cmp	eax, 2
	je	fileerror
	mov	ebx, eax

read:	
	;; read
	push	1024
	push	buffer
	push	ebx
	mov	eax, 3
	call	kernel
	add	esp, byte 12

	cmp	eax, 0
	je	close

	;; write
	push	eax
	push	buffer
	push	1
	mov	eax, 4
	call	kernel
	add	esp, byte 12
	jmp	read

close:
	push	ebx
	mov	eax, 6
	call	kernel
	add	esp, byte 4
	jmp	av

exit:
	;; exit
	push	32
	mov	eax, 1
	call	kernel

fileerror:
	push	msgSize
	push	msgError
	push	2
	mov	eax, 4
	call	kernel
	add	esp, byte 12
	jmp	av

kernel:
	int	80h
	ret
