; prints first 90 numbers in fib sequence using _printf
; uses jnz for jump if not zero
; because we use the stack pointer we need to save it with push rbx
; printf may mess with our registers so we save them on the stack and pop them
; off again

  global  _main
  extern  _printf

  section.text
_main:
  push rbx                           ;saved because of calling convention req
  mov  ecx, 90
  xor  rax, rax                      ;xor used like this sets to 0
  xor  rbx, rbx
  inc  rbx
print:
  push rax
  push rcx

  mov  rdi, format
  mov  rsi, rax
  xor  rax, rax

  call _printf

  pop rcx
  pop rax

  mov  rdx, rax
  mov  rax, rbx
  add  rbx, rdx
  dec  ecx
  jnz  print
  pop  rbx
  ret

format:
  db  "%20ld", 10, 0
