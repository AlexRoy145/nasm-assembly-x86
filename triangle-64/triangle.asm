  global start
  section .text
start:
  mov  rdx, output                   ;rdx register holds location of next write
  mov  r8, 1                         ;initial line length
  mov  r9, 0                         ;current line length
line:
  mov  byte [rdx], "*"
  inc  rdx
  inc  r9
  cmp  r9, r8                        ;this is a conditional statement
  jne  line
lineDone:
  mov  byte [rdx], 10                ;writes a newline, why does it need [byte]?
  inc  rdx
  inc  r8
  mov  r9, 0
  cmp  r8, maxline
  jng  line
done:
  mov  rax, 0x02000004
  mov  rdi, 1
  mov  rsi, output
  mov  rdx, datasize
  syscall
  mov  rax, 0x02000001
  xor  rdi, rdi
  syscall

  section .bss
maxline  equ  8
datasize equ  44
output   resb datasize
