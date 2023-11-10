section .text
    global _start           ;precisa ser adicionado para o  gerador do executavel saiba onde começa

_start:
  mov edx,len               ;tamanho do texto. len(lenth-> comprimento)
  mov ecx,msg               ;mensagen de texto para exibir
  mov ebx,1                 ;descritor de arquivo
  mov eax,4                 ;chamada para escrever o texto na tela
  int 0x80                  ;chama o terminal para exibir o texto

  section .data             ;seçao de dados 
  msg db 'hello, world!'     ;mensagenqe deve aparecernasm
  len equ $ - msg             ;obtem a quantidade de caracteres da mensagen
  