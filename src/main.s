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
    mov r13, #0 @   score player 1
    mov r14, #0 @   score player 2
    mov r11, #0 @   registro para input columna
    mov r12, #0 @   registro para input fila
    mov r15, #0 @   registro para opciones
    bl printf
    bl title_art
    @bl art1
    /*recibir info para p1*/
    ldr r0,=start_1
    bl printf
    bl get_orient

    
    /*recibir info para p2*/
    ldr r0,=start_2
    bl printf


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
get_orient:
/*  
    1 Horizontal
    2 Vertical
*/
    ldr r0,=orientacion
    bl printf
    ldr r1,=N
    ldr r0,=pos_input
    bl scanf
    cmp r1, #2
    beq get_phill_coll
    cmp r1, #1
    beq get_phill_coll
    blt get_orient @    inputs invalidos
    bgt get_orient
    mov pc, lr

set_horizontal:
    ldr r0,=punta
    bl printf

get_phill_coll:
    bl get_fila
    bl get_col
    mov pc,lr

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

    cmp r1, #4
    bgt get_col @   mayor a 4, invalido
    cmp r1, #1
    blt get_col @   menor a 1, invalido
    mov r11, r1 
    @   si llega aqui es input valido por lo tanto lo guardamos 
    @   al regsitro de columnas
    bl mal_input
    bl get_input
    mov pc,lr

get_fila:
    ldr r0,=tiro_fil /* "Ingresar fila:\n" */
    bl printf
    ldr r0,=get_input
    ldr r1,=tiro
    bl scanf

    cmp r1, #4
    beq fila_cuatro
    cmp r1, #3
    beq fila_tres
    cmp r1, #2
    beq fila_dos
    cmp r1, #1
    beq fila_uno
    @   si no es ninguno de los anteriores error
    bl mal_input
    bl get_input
    mov pc,lr


mal_input:
    ldr r0,=wrong_inp
    bl printf
    mov pc,lr

.data
form: .asciz "%s"
wrong_inp: .asciz "Input invalido\n"
tiro_col: .asciz "Ingresar columna:\n"
tiro_fil: .asciz "Ingresar fila:\n"
start_1: .asciz "Datos jugador 1"
start_2: .asciz "Datos jugador 2"
orientacion: .asciz "Ingresar 1 Horizontal / 2 Vertical:\n"
punta: .asciz "Ingresar donde esta la punta del barco"
p1_won: .asciz "Gano el jugador 1!\n"
p2_won: .asciz "Gano el jugador 2!\n"

pos_input: .asciz "%d"
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

p1_barco_1:
    ldr r0,=p1_arr1_barco
    ldr r2,=barco
    strb r0,[r2, ]

p1_barco_2:
    ldr r0,=p1_arr2_barco
    ldr r2,=barco

p1_barco_3:
    ldr r0,=p1_arr3_barco
    ldr r2,=barco

p1_barco_4:
    ldr r0,=p1_arr4_barco
    ldr r2,=barco

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

/*

un arreglo o 3 para guardar los tiros:
    - 

Tiene que existir una serie de subrutinas para:
    - recibir input
    - desplegar a pantalla los tableros
    - actualizar arreglos
    - parsear arreglos ?
    - algun isWinYet?
*/
