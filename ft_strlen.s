section .note.GNU-stack noalloc noexec nowrite progbits

section .text
global ft_strlen

ft_strlen:
	xor rcx, rcx
.loop:
	cmp byte [rdi + rcx], 0
	je .done
	inc rcx
	jmp .loop
.done:
	mov rax, rcx
	ret
