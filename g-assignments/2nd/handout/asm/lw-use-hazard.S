# lw, use hazard
#
# t0 must be non-zero for this to work.
# t1 gets the value of t0 (through memory)
# t2 gets t0 * 2
# You should see an extra clock-cycle wasted. mem_mem_read should work before
# you try to get this to work.

sw $t0, -4($sp)   # | IF | ID | EX |
lw $t1, -4($sp)   #      | IF | ID | t1 will be loaded
add $t2, $t1, $t1 #           | IF | nop before using t1 in EX


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
