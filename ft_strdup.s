section .note.GNU-stack noalloc noexec nowrite progbits

section .text
global ft_strdup
extern malloc
extern ft_strlen

; char *ft_strdup(const char *s)
; rdi = s
ft_strdup:
	push rbx
	mov rbx, rdi
	call ft_strlen
	lea rdi, [rax + 1]
	call malloc wrt ..plt
	test rax, rax
	jz .done
	mov rdx, rax
	mov rsi, rbx
	mov rdi, rax
.loop:
	mov cl, byte [rsi]
	mov byte [rdi], cl
	inc rsi
	inc rdi
	test cl, cl
	jnz .loop
	mov rax, rdx
.done:
	pop rbx
	ret
