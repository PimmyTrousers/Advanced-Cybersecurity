	.file	"program.c"
	.globl	msg
	.data
	.align 32
	.type	msg, @object
	.size	msg, 357
msg:
	.ascii	"Switch statements are often implemented using a switch table"
	.ascii	" that consists\nof pointers to code that "
	.string	"are indexed by the value of the integer being\ntested.  In this assignment, you you will need to decode the switch table to\nfind out the value that will unlock the level.  The assembly output of the\nprogram is in 3.06_switch.s for your viewing convenience\n\n"
	.section	.rodata
.LC0:
	.string	"%s"
	.text
	.globl	print_msg
	.type	print_msg, @function
print_msg:
.LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$msg, 4(%esp)
	movl	$.LC0, (%esp)
	call	printf
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	print_msg, .-print_msg
	.section	.rodata
.LC1:
	.string	"Enter the password: "
.LC2:
	.string	"%d"
.LC3:
	.string	"Try again."
.LC4:
	.string	"Good Job."
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	print_msg
	movl	$.LC1, (%esp)
	call	printf
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC2, (%esp)
	call	__isoc99_scanf
	movl	28(%esp), %eax
	subl	$26604, %eax
	cmpl	$4, %eax
	ja	.L3
	movl	.L5(,%eax,4), %eax
	jmp	*%eax
	.section	.rodata
	.align 4
	.align 4
.L5:
	.long	.L4
	.long	.L6
	.long	.L7
	.long	.L6
	.long	.L4
	.text
.L4:
	movl	$.LC3, (%esp)
	call	puts
	jmp	.L8
.L6:
	movl	$.LC3, (%esp)
	call	puts
	jmp	.L8
.L7:
	movl	$.LC4, (%esp)
	call	puts
	jmp	.L8
.L3:
	movl	$.LC3, (%esp)
	call	puts
.L8:
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
