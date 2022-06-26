section .data
	pergunta db 'Como te chamas?', 10
	tamPer EQU $-pergunta

	ola db 'Ola, '
	tamOla EQU $-ola

	tamNome EQU 30
section .bss
	nome resb tamNome

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, pergunta
	mov rdx, tamPer
	syscall

	mov rax, 0
	mov rdi, 0
	mov rsi, nome
	mov rdx, tamNome
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, ola
	mov rdx, tamOla
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, nome
	syscall

	mov rax, 60
	mov rdi, 0
	syscall
