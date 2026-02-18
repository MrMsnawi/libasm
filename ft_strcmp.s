section .note.GNU-stack noalloc noexec nowrite progbits

section .text
global ft_strcmp

; int ft_strcmp(const char *s1, const char *s2)
; rdi = s1, rsi = s2
ft_strcmp:
.loop:
	mov al, byte [rdi]
	mov cl, byte [rsi]
	cmp al, 0
	je .done
	cmp al, cl
	jne .done
	inc rdi
	inc rsi
	jmp .loop
.done:
	movzx eax, al
	movzx ecx, cl
	sub eax, ecx
	ret
