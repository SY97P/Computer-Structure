# task2.asm
.data
myArray:   .word 10, 5, 10, 5

.text
main:   la $s1, myArray
        li $s2, 12

        # place your code here!
        # place your code here!
        # place your code here!

        li   $v0, 1
        move  $a0, $t0
        syscall

exit:   li   $v0, 10
        syscall
    