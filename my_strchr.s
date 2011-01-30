section .text

global my_strchr

my_strchr:
	push	ebp
	mov	ebp, esp

	mov	eax, [ebp + 8]
	mov	bl, [ebp + 12]
try:	
	cmp	byte [eax], bl
	je	exit
	cmp	byte [eax], 0
	je	exit
	inc	eax
	jmp	try

exit:
	leave
	ret
