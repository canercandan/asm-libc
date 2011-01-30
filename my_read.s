section .text

global my_read

my_read:
	mov	eax, 3
	int	80h
	ret
