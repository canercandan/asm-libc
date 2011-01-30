section .text

global my_memset

my_memset:
	push	ebp
	mov	ebp, esp

	mov	edi, [ebp + 8]
	mov	ebx, edi
	mov	al, [ebp + 12]
	mov	ecx, [ebp + 16]

	cld
	rep	stosb

	mov	eax, ebx
	leave
	ret
