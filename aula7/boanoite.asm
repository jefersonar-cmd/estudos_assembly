section .data
	msg db 'Boa Noite Bruno!'
	tam EQU $-msg

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rsi, tam
	syscall

	mov rax, 60
	mov rdi, 0
	syscall
