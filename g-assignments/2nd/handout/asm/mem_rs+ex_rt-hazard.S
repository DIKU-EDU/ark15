# An RS hazard with the MEM stage, an RT hazard with the EX stage.
# t2 gets 2 * t0
# t3 gets 2 * t1
# t4 gets t2 + t3 (in that order)
# t0 and t1 must be non-zero, and different(!) for this to have a clear effect.

add $t2, $t0, $t0 # | IF | ID | EX | MEM |
add $t3, $t1, $t1 #      | IF | ID | EX  |
add $t4, $t2, $t3 #           | IF | ID  | MEM RS hazard + EX RT hazard

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
