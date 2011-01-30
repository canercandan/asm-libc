section .text

global my_memcpy

my_memcpy:
	push	ebp
	mov	ebp, esp

	mov	edi, [ebp + 8]
	mov	eax, edi
	mov	esi, [ebp + 12]
	mov	ecx, [ebp + 16]

	cld
	rep	movsb

	leave
	ret
