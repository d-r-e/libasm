; _malloc reserva memoria y devuelve un puntero a la dirección reservada
; en rax

; char *ft_strdup(const char *s);

	section	.text
	global	_ft_strdup
	extern	_ft_strlen
	extern	_malloc
	extern 	_ft_strcpy
_ft_strdup:

	push	rdi			; copiar la string en la pila
	call	_ft_strlen 		; rax = ft_strlen(s);
	mov		rdi, rax 		; copiar el valor de strlen en rdi para hacer malloc
	inc		rdi      		; añadir un espacio para '\0'
	call 	_malloc		 	; malloc con el valor de
	cmp		rax, 0
	je		end
	mov		rdi, rax		;poner *new en *dest
	pop		rsi			; sacar la string de la pila para llamar a _ft_strcpy
	call	_ft_strcpy
	mov		rax, rdi
	jmp		end

end:
	ret