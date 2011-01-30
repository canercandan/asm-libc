section	.text
global	my_rindex
my_rindex:
	push	ebp
	mov	ebp, esp

	mov	ebx, [ebp + 8]
	mov	cl, [ebp + 12]

	xor	eax, eax
try_ri:
	cmp	byte [ebx], 0
	je	exit
	cmp	byte [ebx], cl
	je	last_val
inc_char:
	inc	ebx
	jmp	try_ri
last_val:
	mov	eax, ebx
	jmp	inc_char
exit:
	leave
	ret