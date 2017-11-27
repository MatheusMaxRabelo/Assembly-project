.data

message:	.asciiz "Enter a number\n"
number: 	.word 1
successor: 	.word 1
		
	.text
	#print the message
main:	li $v0, 4 
	la $a0, message
	syscall

	#read an integer
	li $v0, 5 
	syscall
			
	#stores the number in memory
	sw $v0, number
			
	#calculate the successor
	addi $t0, $v0, 1

	#stores the successor in memory
	sw $t0, successor
			
	#print an integer
	li $v0, 1
	move $a0, $t0
	syscall

	jr $ra