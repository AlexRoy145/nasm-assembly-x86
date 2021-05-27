  global    start             ;This is to tell the compiler where to start
                              ;If this is ommitted nasm needs a start to be
                              ;declared with -e

  section   .text             ;The section text is for holding code, should
                              ;be preceded by a global <section name>

start:                        ;Coresponds to the global start declaration
  mov       rax, 0x02000004   ;Moves contents of 0x02000004 to rax
                              ;rax stores function returns
                              ;this is a system call to write

  mov       rdi, 1            ;Moves contents of 1 to rdi
                              ;rdi is used to pass perameters to functions
                              ;file descriptor stdout (writing to command line)

  mov       rsi, message      ;Moves contents of message to rsi
                              ;Sets location of message

  mov       rdx, 13           ;number of bytes

  syscall                     ;syscall executes the above commands

  mov       rax, 0x02000001   ;syscall for exit

  xor       rdi, rdi          ;sets exit code to 0

  syscall                     ;executes above commands


  section   .data             ;This section is for holding variables

message:                      ;This is our message variable
  db        "Hello, Alice", 10;db defines byte
