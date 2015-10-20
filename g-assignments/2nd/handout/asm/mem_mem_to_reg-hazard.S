# A MEM hazard where the instruction exiting the MEM stage has read from memory
# (instead of having computed a value using the ALU in the EX stage).
#
# t1 gets the value of t0 (through memory)
# v0 gets t1 + t1

sw  $t0, -4($sp)  # | IF | ID | EX | MEM | WB  |
lw  $t1, -4($sp)  #      | IF | ID | EX  | MEM | t1 loaded from memory
nop               #           | IF | ID  | EX  |
add $v0, $t1, $t1 #                | IF  | ID  | MEM RS + MEM RT hazard

# A very permisive exit sequence:
nop
nop
nop
nop
syscall
nop
nop
nop
nop
