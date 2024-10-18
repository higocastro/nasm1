global_start
 section .text
  _start:
      mov rax,1           ; prepara o sistema para fazer a escrita de um texto
      mov rdi,1           ; preparar a saída do texto na tela
      mov rsi, mensagem   ; imprimir ou exibir mensagem na tela
      mov rdx, 13         ; quantidade de caracteres-bytes
      syscall             ; chama o sistema para prepara a saída
      mov rax,60          ; chamada para a saída do sitema
      xor rdi, rdi        ; executar a saída do sistema
      syscall             ; inovar o sitema operacional

      section .data
      mensagem:db 'hello,world',10   ; o valor 10 representa quebra de linha
