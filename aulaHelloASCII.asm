section .data
	mensagem db  72, 101, 108, 108, 111, 32, 87, 111, 114, 108, 100, 33, 10
section .text
	global _start
_start:
	mov rax, 1 ;identificador da chamada sys_write
	mov rdi, 1 ;saida padrao
	mov rsi, mensagem
	mov rdx, 14
	syscall
	mov rax, 60 ;identificador de chamada sys_exit
	mov rdi, 0
	syscall
