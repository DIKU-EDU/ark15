.globl _start
_start:
  jal main
  syscall
  nop # nop the ID stage
  nop # nop the IF stage (never reached, due to inverse pipeline order)
