section .text

global my_strncmp

my_strncmp:
	push	ebp
	mov	ebp, esp

	mov	esi, [ebp + 8]
	mov	edi, [ebp + 12]
	mov	ecx, [ebp + 16]
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
	cmp	ecx, 0
	ja	try

return:
	sub	eax, ebx

exit:	
	leave
	ret
