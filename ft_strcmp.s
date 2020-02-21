	section	.text
	global	_ft_strcmp

_ft_strcmp:
	mov		rax, 0

loop:

	cmp		BYTE[rdi + rax], 0			
	je		end
	cmp		BYTE[rsi + rax], 0
	je		end						;si rdi[rax] o rsi[rax] == '\0' ir a end
	mov		dl, BYTE[rdi + rax]
	cmp		BYTE[rsi + rax], dl		;comparar s1[rax] y *s2[rax]
	jne		end						;si no son iguales, ir a end
	inc		rax						;rax++
	jmp		loop					;repite el bucle

end:
	mov		dl, BYTE[rdi + rax]
	sub		dl, BYTE[rsi + rax]		;resta rdi[rax] - rsi[rax]
	movsx	rax, dl					;mueve dl al valor de retorno (con signo)
	ret
