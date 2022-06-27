main: 
    addi $a0, $0, 0
    lui $a0, 0x1000
    addi $a0, $a0, 0x1000
    addi $a1, $0, 0
    addi $a2, $0, 1
    add $v0, $0, $0
while:
    bne $v0, $0, fim_main
    jal f1
    addi $a1, $a1, 1
    addi $a2, $a2, 1
    j while
fim_main:
    jr $s4
f1:
    addi $t0, $0, $0
    addi $v0, $0, 1
    sll $a1, $a1, 2
    sll $a2, $a2, 2
    add $t1, $a0, $a1
    add $t2, $a0, $a2
    lw $t0, 0($t1)
    lw $t3, 0($t2)
    sw $t3, 0($t1)
    sw $t0, 0($t2)
    bne $t0, $t3, fim_f1
    add $v0, $0, $0
fim_f1:
    jr $ra