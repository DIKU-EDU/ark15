# t1 gets the value of t0 (through memory).
#
# This will work in a simulator that supports sw, lw, nop, and syscall
# instructions.

sw $t0, -4($sp) # | IF  | ID  | EX  | MEM | WB  |
lw $t1, -4($sp) #       | IF  | ID  | EX  | MEM | WB  |
nop             #             | IF  | ID  | EX  | MEM |
syscall         #                   | IF  | ID  | EX  | halt the simulator
nop             #                         | IF  | ID  |
nop             #                               | IF  |
