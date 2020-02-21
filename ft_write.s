		section	.text
		global	_ft_write
;	rdi = fd (primer parámetro)
;	rsi = &buff (segundo parámetro)
;	rdx = count (tercer parámetro)
_ft_write:
		mov	rax, 0x2000004 ; 0x2000004 = syscall write
		syscall
		ret
