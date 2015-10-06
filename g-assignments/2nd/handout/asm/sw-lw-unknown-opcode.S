# t1 gets the value of t0 (through memory).
#
# This will work in a simulator that supports sw, lw, and nop, but not e.g.
# R-type instructions, such as, in particular, syscall.

sw $t0, -4($sp) # | IF  | ID  | EX  | MEM | WB  |
lw $t1, -4($sp) #       | IF  | ID  | EX  | MEM | WB  |
nop             #             | IF  | ID  | EX  | MEM |
nop             #                   | IF  | ID  | EX  |
syscall         #                         | IF  | ID  | unknown opcode
nop             #                               | IF  |
