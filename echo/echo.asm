    global    _main
    extern    _puts

    section   .text

_main:
    push   rdi
    push   rsi
    sub    rsp, 8                    ;allign stack

    mov    rdi, [rsi]
    call   _puts

    add    rsp, 8                    ;unallign stack
    pop    rsi
    pop    rdi

    add    rsi, 8                    ;this points to next arg, why?
    dec    rdi
    jnz    _main

    ret
