		section .text
		global  _ft_strlen
		
_ft_strlen:
        mov     rax, 0              ;rax es la longitud. Inicializar a 0.

loop:
        cmp     BYTE[rdi + rax], 0     ;comparar el byte a cero
        je      end
        inc     rax                    ;rdi++
        jmp     loop                   ;repetir el bucle

end:
        ret