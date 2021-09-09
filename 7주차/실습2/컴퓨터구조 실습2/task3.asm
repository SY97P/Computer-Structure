# task3.asm
.data 
myArray:      .word 11, 0, 31, 22, 9, 17, 6, 9
myArraySize:  .word 32
delimiter:    .asciiz " "

.text
main:
    # Map variables(memory addresses) to register
    la   $t0, myArray       # $t0 -> Q5-1
    lw   $t1, myArraySize   # $t1 -> Q5-2
	
# loop every array elements
	li   $t2, 0           # $t2 -> Q5-3

arrayloop:
	add $t3, $t0, $t2     # $t3 -> Q5-4
	addi $t2, $t2, 4      # store next arrayloop array index
	
    # print array body
	li $v0, 1             # system call for print_int
	lw $a0, ($t3)         # copy arguments
	syscall               # print integer

    # print delimiter (" ")
    li $v0, 4             # system call for print_string
    la $a0, delimiter     # copy arguments
    syscall               # print string
	
	bne $t1, $t2, arrayloop  # branch if loop is end (array boundary)
# end of loop

    # terminate program
    li  $v0, 10           # system call for exit
    syscall               # exit program
