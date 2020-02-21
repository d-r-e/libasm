	section	.text
	global	_ft_strcpy

_ft_strcpy:
	cmp		rsi, 0       ;rsi = src.
	jz		end			 ;rsi == 0 -> end
	mov		rcx, 0
bucle:
	mov		dl, BYTE[rsi + rcx]		;copiar src[rcx] en dl
	mov		BYTE[rdi + rcx], dl		;copiar dl a dst
	cmp		dl, 0					;dl == \0 -> end
	je		end
	inc		rcx						;rcx++:
	jmp		bucle
end:
	mov		rax, rdi				;return dst
	ret
