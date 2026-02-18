section .note.GNU-stack noalloc noexec nowrite progbits

section .text
global ft_read
extern __errno_location

; ssize_t ft_read(int fd, void *buf, size_t count)
; rdi = fd, rsi = buf, rdx = count
ft_read:
	xor rax, rax
	syscall
	cmp rax, 0
	jl .error
	ret
.error:
	neg rax
	push rax
	call __errno_location wrt ..plt
	pop rdx
	mov [rax], edx
	mov rax, -1
	ret
