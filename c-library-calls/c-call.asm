; ----------------------------------------------------------------------------------------
; This is an macOS console program that writes "Hola, mundo" on one line and then exits.
; It uses puts from the C library.  To assemble and run:
;
;     nasm -fmacho64 hola.asm && gcc hola.o && ./a.out
; ----------------------------------------------------------------------------------------

  global  _main
  extern  _puts

  section.text
_main:
  push rbx
  lea  rdi, [rel message]
  call _puts
  pop  rbx
  ret

  section.data
message:  db        "Hola, Alice", 0
