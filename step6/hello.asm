section .rodata
message: db "hello, world", 0xa

section .text

global nomain
nomain:
  inc al
  mov edi, eax
  mov esi, message
  mov dl, 13
  syscall
  xor eax, eax
  mov al, 60
  xor edi, edi
  syscall
