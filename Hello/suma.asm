;ejercicio: impresion de cadena de caracteres
.model small
.data
;declaracion de variables
num1 DB 6
num2 DB 2

.stack
.code
	helloworld:
	mov ax, @data 
	mov ds, ax 

    ;asignar variables a registros 
    mov bl, num1
    mov cl, num2
    
    ; hacer la suma
    add bl, num2

    ;imprimir
    mov dl, bl
    add dl, 30h
    mov ah, 02h 
    int 21h

    ;impresión de enter
    mov dl, 0Ah
    int 21h

    ;resta
    mov bl, num1
    sub bl, cl
    mov dl, bl
    add dl, 30h
    int 21h

    ;finalizar el programa
	mov ah, 4ch ;enviar el parametro de interrupcion
	int 21h ;ejecutando la interrupcion de proceso de ah

END helloworld
