	section	.text
	global	_ft_read

_ft_read:
	; rdi = fd
	; rsi = buff
	; rdx = count

	mov	rax, 0x2000003
	syscall
	jc err				;si sys_read devuelve error, se activa el carry bit
	ret

err:
	mov		dl, -1
	movsx	rax, dl		;return -1
	ret