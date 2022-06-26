section .data
	ola db 'Ola,'
	ana db 'Ana.'
	
	tamOla EQU $-ola
	tamAna EQU $-ana

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, ola
	mov rdx, tamOla
	syscall

	; finalizar programa
	mov rax, 60
	mov rdi, 0
	syscall
