section .rodata
message: db "hello, world", 0xa

section .text

global nomain
nomain:
  mov eax, 1
  mov edi, eax
  mov esi, message
  mov edx, 13
  syscall
  xor eax, eax
  mov al, 60
  xor edi, edi
  syscall
