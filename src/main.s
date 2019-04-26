/*

Battleship, Assembler ARM

Martin Ortega   18020
Gerardo Pineda  18848

*/
.align 2
.global main
.type main,%function
.text

main:
    stmfd sp!, {lr} @ inicio de programa.
    ldr r0,=intro
    bl printf
    ldr r6,=barco
    ldrb r6,[r6]
    
    mov r8, #0 @   score player 1
    mov r9, #0 @   score player 2
    mov r11, #0 @   registro para input columna
    mov r12, #0 @   registro para input fila
    @mov r12, #0 @   registro para opciones

    @bl title_art
    @bl art1
    /*recibir info para p1*/
    ldr r0,=start_1
    bl printf
    bl get_barco_p1
    bl despliegue

    
    /*recibir info para p2*/
    ldr r0,=start_2
    bl printf
    bl get_barco_p2
    bl despliegue_2

    /*  ya estan ambos barcos   */

    @ Salida
	mov r0,#0
	mov r3,#0
	ldmfd sp!,{lr}
	bx lr


/*---  Subrutinas  ---*/
/*////////////////////*
p1_win_check:
    @/* para revisar si ya gano *
    cmp r13, #3
    beq end_1

p1_victory:
    ldr r0,=form
    ldr r1,=p1_won
    bl printf

p2_victory:
    ldr r0,=form
    ldr r1,=p2_won
    bl printf

p2_win_check:
    cmp r14, #3
    beq end_2
*/
get_barco_p1:

    @ldr r0,=orientacion
    @bl printf
    bl get_col
    bl get_fila
    bl set_barco_p1
    @   set 1

    bl get_col
    bl get_fila
    bl set_barco_p1
    @   set 2
    
    bl get_col
    bl get_fila
    bl set_barco_p1
    @   set 3
    
    mov pc, lr


get_barco_p2:

    @ldr r0,=orientacion
    @bl printf
    bl get_col
    bl get_fila
    bl set_barco_p2
    @   set 1

    bl get_col
    bl get_fila
    bl set_barco_p2
    @   set 2
    
    bl get_col
    bl get_fila
    bl set_barco_p2
    @   set 3
    
    mov pc, lr

get_input:
    @   usamos esta subrutina para obeter columna o fila
    @   solo puede ser valor de 1 - 4
    ldr r0,=pos_input
    ldr r1,=tiro
    bl scanf

get_col:
/*  tanto para set barco como para tiros    */
    ldr r0,=tiro_col /* "Ingresar columna:\n" */
    bl printf
    ldr r0,=pos_input
    ldr r1,=tiro
    bl scanf
    @ldr r0,=test
    bl printf
    @ldr r1,=tiro
    cmp r1, #4
@    ldr r0,=test
@    bl printf
    bgt get_col @   mayor a 4, invalido
@    ldr r0,=test2
@    bl printf
    cmp r1, #1
    ble get_col @   menor a 1, invalido
@    ldr r0,=test
@    bl printf
    mov r11, r1
@    ldr r0,=set
@    bl printf
    sub r11, r11, #1    
    @   si llega aqui es input valido por lo tanto lo guardamos 
    @   al regsitro de columnas
    mov pc,lr

get_fila:
    ldr r0,=tiro_fil /* "Ingresar fila:\n" */
    bl printf
    ldr r0,=pos_input
    ldr r1,=tiro
    bl scanf

    cmp r1, #4
    bgt get_fila
    cmp r1, #1
    blt get_fila    @ revisa inputs
    mov r12,r1
    mov pc,lr

mal_input:
    ldr r0,=wrong_inp
    bl printf
    mov pc,lr

set_barco_p1:
    cmp r12, #4
    beq load_arr4_p1
    cmp r12, #3
    beq load_arr3_p1
    cmp r12, #2
    beq load_arr2_p1
    cmp r12, #1
    beq load_arr1_p1    
    strb r6, [r5, r11]!
    mov pc, lr


load_arr1_p1:
    ldr r5,=p1_arr1_barco
    sub r5,r5,#1
    mov pc, lr

load_arr2_p1:
    ldr r5,=p1_arr2_barco
    sub r5,r5,#1
    mov pc, lr

load_arr3_p1:
    ldr r5,=p1_arr3_barco
    sub r5,r5,#1
    mov pc, lr

load_arr4_p1:
    ldr r5,=p1_arr4_barco
    sub r5,r5,#1
    mov pc, lr

set_barco_p2:
    cmp r12, #4
    beq load_arr4_p2
    cmp r12, #3
    beq load_arr3_p2
    cmp r12, #2
    beq load_arr2_p2
    cmp r12, #1
    beq load_arr1_p2    
    strb r6, [r5, r11]!
    mov pc, lr

load_arr1_p2:
    ldr r5,=p2_arr1_barco
    sub r5,r5,#1
    mov pc, lr

load_arr2_p2:
    ldr r5,=p2_arr2_barco
    sub r5,r5,#1
    mov pc, lr

load_arr3_p2:
    ldr r5,=p2_arr3_barco
    sub r5,r5,#1
    mov pc, lr

load_arr4_p2:
    ldr r5,=p2_arr4_barco
    sub r5,r5,#1
    mov pc, lr

despliegue:

    ldr r7,=p1_arr1_barco
	ldr r0,=line
	bl printf	/* --- --- --- --- */
	
	ldrb r1,[r7],#1
	ldrb r2,[r7],#1
	ldr r0,=form1
	bl printf
	ldrb r1,[r7],#1
	ldrb r2,[r7],#1
	ldr r0,=form2
	bl printf
	ldr r0,=line
	bl printf

    /* Leer siguiente p1_arr1_barco */
    /* p1_arr_n+1... */
	ldr r7,=p1_arr2_barco

	ldrb r1,[r7],#1
	ldrb r2,[r7],#1
	ldr r0,=form1
	bl printf
	ldrb r1,[r7],#1
	ldrb r2,[r7],#1
	ldr r0,=form2
	bl printf
	ldr r0,=line
	bl printf
	
    ldr r7,=p1_arr3_barco

	ldrb r1,[r7],#1
	ldrb r2,[r7],#1
	ldr r0,=form1
	bl printf
	ldrb r1,[r7],#1
	ldrb r2,[r7],#1
	ldr r0,=form2
	bl printf
	ldr r0,=line
	bl printf
	
    ldr r7,=p1_arr4_barco

	ldrb r1,[r7],#1
	ldrb r2,[r7],#1
	ldr r0,=form1
	bl printf
	ldrb r1,[r7],#1
	ldrb r2,[r7],#1
	ldr r0,=form2
	bl printf
	ldr r0,=line
	bl printf
	mov pc, lr

despliegue_2:

    ldr r7,=p1_arr1_barco
	ldr r0,=line
	bl printf	/* --- --- --- --- */
	
	ldrb r1,[r7],#1
	ldrb r2,[r7],#1
	ldr r0,=form1
	bl printf
	ldrb r1,[r7],#1
	ldrb r2,[r7],#1
	ldr r0,=form2
	bl printf
	ldr r0,=line
	bl printf

    /* Leer siguiente p1_arr1_barco */
    /* p1_arr_n+1... */
	ldr r7,=p1_arr2_barco

	ldrb r1,[r7],#1
	ldrb r2,[r7],#1
	ldr r0,=form1
	bl printf
	ldrb r1,[r7],#1
	ldrb r2,[r7],#1
	ldr r0,=form2
	bl printf
	ldr r0,=line
	bl printf
	
    ldr r7,=p1_arr3_barco

	ldrb r1,[r7],#1
	ldrb r2,[r7],#1
	ldr r0,=form1
	bl printf
	ldrb r1,[r7],#1
	ldrb r2,[r7],#1
	ldr r0,=form2
	bl printf
	ldr r0,=line
	bl printf
	
    ldr r7,=p1_arr4_barco

	ldrb r1,[r7],#1
	ldrb r2,[r7],#1
	ldr r0,=form1
	bl printf
	ldrb r1,[r7],#1
	ldrb r2,[r7],#1
	ldr r0,=form2
	bl printf
	ldr r0,=line
	bl printf
	mov pc, lr

.data
set: .asciz "Set\n"
test: .asciz "test\n"
test2: .asciz "test2\n"
test3: .asciz "test3\n"
line: .asciz " --- --- --- --- \n"
form1:	.asciz	"| %c | %c "
form2:	.asciz	"| %c | %c |\n"
form: .asciz "%s"
wrong_inp: .asciz "Input invalido\n"
tiro_col: .asciz "Ingresar columna:\n"
tiro_fil: .asciz "Ingresar fila:\n"
start_1: .asciz "Datos jugador 1\n"
start_2: .asciz "Datos jugador 2\n"
orientacion: .asciz "Ingresar 1 Horizontal / 2 Vertical:\n"
punta: .asciz "Ingresar donde esta la punta del barco"
p1_won: .asciz "Gano el jugador 1!\n"
p2_won: .asciz "Gano el jugador 2!\n"

pos_input: .asciz " %d"
tiro: .word 0
N: .word 0
barco: .byte '+'

intro: .asciz "Bienvenidos a Battleship\n"
mensaje_: .asciz "\n"

cont_p1: .word 0
p1_arr1_barco: .byte ' ', ' ', ' ', ' '            
p1_arr2_barco: .byte ' ', ' ', ' ', ' '
p1_arr3_barco: .byte ' ', ' ', ' ', ' '
p1_arr4_barco: .byte ' ', ' ', ' ', ' '


p1_arr1_tiros: .byte ' ', ' ', ' ', ' '
p1_arr2_tiros: .byte ' ', ' ', ' ', ' '
p1_arr3_tiros: .byte ' ', ' ', ' ', ' '
p1_arr4_tiros: .byte ' ', ' ', ' ', ' '

cont_p2: .word 0
p2_arr1_barco: .byte ' ', ' ', ' ', ' '
p2_arr2_barco: .byte ' ', ' ', ' ', ' '
p2_arr3_barco: .byte ' ', ' ', ' ', ' '
p2_arr4_barco: .byte ' ', ' ', ' ', ' '

p2_arr1_tiros: .byte ' ', ' ', ' ', ' '
p2_arr2_tiros: .byte ' ', ' ', ' ', ' '
p2_arr3_tiros: .byte ' ', ' ', ' ', ' '
p2_arr4_tiros: .byte ' ', ' ', ' ', ' '
