section .text

global my_write

my_write:
	mov	eax, 4
	int	80h
	ret
