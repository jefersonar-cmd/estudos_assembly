section .data
	pergunta db "Como voce se chama?", 10
	tamPerg EQU $-pergunta

	ola db "Ola, "
	tamOla EQU $-ola
	tamNome EQU 10

section .bss
	nome resb tamNome

section .text
	global _start

_start:
	; faz pergunta
	mov rax, 1
	mov rdi, 1
	mov rsi, pergunta
	mov rdx, tamPerg
	syscall

	; ler o nome do usuário
	mov rax, 0
	mov rdi, 0
	mov rsi, nome
	mov rdx, tamNome
	syscall

	; imprimindo mensagem 'Ola, '
	mov rax, 1
	mov rdi, 1
	mov rsi, ola
	mov rdx, tamOla
	syscall

	; imprimindo o nome do usuario
	mov rax, 1
	mov rdi, 1
	mov rsi, nome
	syscall

	; encerrar programa
	mov rax, 60
	mov rdi, 0
	syscall
