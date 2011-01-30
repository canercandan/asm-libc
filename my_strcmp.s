section .text

global my_strcmp

my_strcmp:
	push	ebp
	mov	ebp, esp

	mov	esi, [ebp + 8]
	mov	edi, [ebp + 12]
	xor	eax, eax
	xor	ebx, ebx
try:
	mov	al, byte [esi]
	mov	bl, byte [edi]
	cmp	al, bl
	jne	return
	cmp	al, 0
	je	return
	inc	esi
	inc	edi
	jmp	try

return:
	sub	eax, ebx

exit:	
	leave
	ret
