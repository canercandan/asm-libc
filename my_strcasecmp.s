section .text

global my_strcasecmp

check1str:
	cmp	al, 'A'
	jb	check1str2

check2str:
	cmp	al, 'Z'
	ja	check1str2
	add	al, cl

check1str2:
	cmp	bl, 'A'
	jb	gocmp
	
check2str2:
	cmp	bl, 'Z'
	ja	gocmp
	add	bl, cl

my_strcasecmp:
	push	ebp
	mov	ebp, esp

	mov	esi, [ebp + 8]
	mov	edi, [ebp + 12]
	mov	cl, 32
	xor	eax, eax
	xor	ebx, ebx
try:
	mov	al, byte [esi]
	mov	bl, byte [edi]
	jmp	check1str
gocmp:
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
