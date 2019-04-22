/*printings*/

.global
.align 2
.text

linea: .asciz " --- --- --- ---\n"
formato_hits: .asciz "| %c | %c | %c | %c |\n"

line:
    /*
    symb    code
    |   ->  124
    -   ->  045

    cuadro consiste en

     --- --- --- --- 
    | R | R | R | R |
     --- --- --- --- 
    */

table:
    /*
    read 
    */