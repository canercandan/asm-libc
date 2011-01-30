section .text

global my_bzero

my_bzero:
	push	ebp
	mov	ebp, esp

	mov	edi, [esp+8]
	mov	ecx, [esp+12]
	mov	al, 0

	cld
	rep	stosb

	leave
	ret
