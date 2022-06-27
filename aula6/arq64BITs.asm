section .data
	pergunta db  81, 117, 97, 108, 32, 115, 101, 117, 32, 110, 111, 109, 101, 63, 10
	tamPer EQU $-pergunta

	ola db 79, 108, 97, 44, 32
	tamOla EQU $-ola

	tamNome EQU 32

	pula db 10
	tamPula EQU $-pula

section .bss
	nome resb tamNome

section .text
	global _start

_start:
	; aqui o programa pergunta o nome do individuo
	mov rax, 1
	mov rdi, 1
	mov rsi, pergunta
	mov rdx, tamPer
	syscall

	; aqui o usuario deve digitar seu nome
	mov rax, 0
	mov rdi, 0
	mov rsi, nome
	mov rdx, tamNome
	syscall

	; aqui começa a mensagem para comprimentar o usuario
	mov rax, 1
	mov rdi, 1
	mov rsi, ola
	mov rdx, tamOla
	syscall

	; aqui ira printar o nome do usuario
	mov rax, 1
	mov rdi, 1
	mov rsi, nome
	syscall

	; pular linha
	mov rax, 1
	mov rdi, 1
	mov rsi, pula
	mov rdx, tamPula
	syscall

	; aqui finaliza o programa
	mov rax, 60
	mov rdi, 0
	syscall


