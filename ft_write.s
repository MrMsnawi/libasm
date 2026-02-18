section .note.GNU-stack noalloc noexec nowrite progbits

section .text
global ft_write
extern __errno_location

; ssize_t ft_write(int fd, const void *buf, size_t count)
; rdi = fd, rsi = buf, rdx = count
ft_write:
	mov rax, 1
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
