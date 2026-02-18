section .note.GNU-stack noalloc noexec nowrite progbits

section .text
global ft_strcpy

; char *ft_strcpy(char *dst, const char *src)
; rdi = dst, rsi = src
; returns dst in rax
ft_strcpy:
	mov rax, rdi
.loop:
	mov cl, byte [rsi]
	mov byte [rdi], cl
	inc rdi
	inc rsi
	test cl, cl
	jnz .loop
	ret
