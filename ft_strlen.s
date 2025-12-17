global ft_strlen

ft_strlen:
	xor rcx, rcx
	.loop:
		cmp byte [rdi + rcx], 0x0
		je .done
		inc rcx
		jmp .loop
	.done:
	mov rax, rcx
	ret
