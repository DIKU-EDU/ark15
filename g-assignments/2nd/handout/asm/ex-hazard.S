# EX data hazard, the value needed in EX stage has only just passed EX.
#
# t0 should be non-zero for this to work
# t1 should get t0*2
# t2 should get t0*4

add $t1, $t0, $t0 # | IF | ID | EX | t1 reached EX stage
add $t2, $t1, $t1 #      | IF | ID | EX RS + EX RT hazard

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
