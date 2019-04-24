
.align 2
/* Supuestamente no lleva global */
.data

tiro_input: .asciz "%c%d\n"   /*e.g. A4 -- O podemos pedir dos inputs fila -> columna */
intro: .asciz "Bienvenidos a Battleship\n"
mensaje_: .asciz "\n"


main:
    stmfd sp!, {lr} @ inicio de programa.


    @Salida
	mov r0,#0
	mov r3,#0
	ldmfd sp!,{lr}
	bx lr

.data
@   'x', 'o'
@   120 / 88 , 111 / 79

cont_p1: .word 0
p1_arr1: .byte ' ', ' ', ' ', ' '            
p1_arr2: .byte ' ', ' ', ' ', ' '
p1_arr3: .byte ' ', ' ', ' ', ' '
p1_arr4: .byte ' ', ' ', ' ', ' '

p1_arr1_tiros: .byte ' ', ' ', ' ', ' '
p1_arr2_tiros: .byte ' ', ' ', ' ', ' '
p1_arr3_tiros: .byte ' ', ' ', ' ', ' '
p1_arr4_tiros: .byte ' ', ' ', ' ', ' '

cont_p2: .word 0
p2_arr1: .byte ' ', ' ', ' ', ' '
p2_arr2: .byte ' ', ' ', ' ', ' '
p2_arr3: .byte ' ', ' ', ' ', ' '
p2_arr4: .byte ' ', ' ', ' ', ' '

p2_arr1_tiros: .byte ' ', ' ', ' ', ' '
p2_arr2_tiros: .byte ' ', ' ', ' ', ' '
p2_arr3_tiros: .byte ' ', ' ', ' ', ' '
p2_arr4_tiros: .byte ' ', ' ', ' ', ' '

/*
El juego consiste en un tablero 4x4 donde cada jugador coloca un barco 
de 3 posiciones ya sea horizontal o vertical. Luego de confirmar se 
pide la info al otro jugador. Y luego empieza el juego.

El PDF dice:
"El jugador elige 3 posiciones en cualquiera de las casillas de su
 tablero para tratar de hundir el barco de su oponente."

Asi que supongo que cada turno tenes 3 tiros. Luego de ellos se muestra 
si le dio o no, "x" & "o" respectivamente. 
A los 5 segundos pasa al siguiente turno hasta que alguien mate a alguien.

Pensaba que podia ser 8 arreglos, 4 por jugador -> 1 arreglo por linea del tablero.
Donde cada arreglo tuviese:
0, 0, 0, 0 
o algun valor nulo o letra. 


Tiene que existir una serie de subrutinas para:
    - recibir input
    - desplegar a pantalla los tableros
    - actualizar arreglos
    - parsear arreglos ?
    - algun isWinYet?
*/
