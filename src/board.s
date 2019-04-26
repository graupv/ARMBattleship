/*printings*/

.align 2

.global board
.type board, %function
.data
arreglo:	.byte ' ', 'x', ' ', 'o'
arreglo2:	.byte 'x', ' ', ' ', 'x'
arreglo3:	.byte ' ', 'o', ' ', 'x'
arreglo4:	.byte ' ', ' ', ' ', 'x'

line: .asciz " --- --- --- --- \n"
form1:	.asciz	"| %c | %c "
form2:	.asciz	"| %c | %c |\n"
.text
board:
	
	stmfd sp!,{lr}
	bl despliegue

    mov r0,#0
	mov r3,#0
	ldmfd sp!,{lr}
	bx lr

despliegue:

    ldr r5,=arreglo
	ldr r0,=line
	bl printf	/* --- --- --- --- */
	
	ldrb r1,[r5],#1
	ldrb r2,[r5],#1
	ldr r0,=form1
	bl printf
	ldrb r1,[r5],#1
	ldrb r2,[r5],#1
	ldr r0,=form2
	bl printf
	ldr r0,=line
	bl printf

    /* Leer siguiente arreglo */
    /* p1_arr_n+1... */
	ldr r5,=arreglo2

	ldrb r1,[r5],#1
	ldrb r2,[r5],#1
	ldr r0,=form1
	bl printf
	ldrb r1,[r5],#1
	ldrb r2,[r5],#1
	ldr r0,=form2
	bl printf
	ldr r0,=line
	bl printf
	
    ldr r5,=arreglo3

	ldrb r1,[r5],#1
	ldrb r2,[r5],#1
	ldr r0,=form1
	bl printf
	ldrb r1,[r5],#1
	ldrb r2,[r5],#1
	ldr r0,=form2
	bl printf
	ldr r0,=line
	bl printf
	
    ldr r5,=arreglo4

	ldrb r1,[r5],#1
	ldrb r2,[r5],#1
	ldr r0,=form1
	bl printf
	ldrb r1,[r5],#1
	ldrb r2,[r5],#1
	ldr r0,=form2
	bl printf
	ldr r0,=line
	bl printf
