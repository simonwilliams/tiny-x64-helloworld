section .rodata
message: db "hello, world", 0xa

section .text

global nomain
nomain:
  mov eax, 1
  mov edi, 1
  mov esi, message
  mov edx, 13
  syscall
  mov eax, 60
  xor edi, edi
  syscall
