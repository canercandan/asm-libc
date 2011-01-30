section .text

global my_strlen

my_strlen:
	push	ebp
	mov	ebp, esp

	mov	eax, [esp + 8]
	xor	ecx, ecx
count_chars:
	inc	ecx
	cmp	byte [eax + ecx - 1], 0
	jne	count_chars
	dec	ecx
	mov	eax, ecx
	
	leave
	ret
