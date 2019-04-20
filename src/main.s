
.align 2
.global main
.data

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
