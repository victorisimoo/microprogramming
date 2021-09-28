; Ejercicio dos: sumas y restas
; Deberá declarar 3 variables numéricas con un valor fijo de un dígito.
; Realice las siguientes operaciones: A + B, A - C y A + B + C
.model small
.data
; declaracion de variables numéricas
num1 DB 6
num2 DB 2
num3 DB 1

.stack
.code
   lab:
    mov ax, @data
    mov ds, ax

    ; A + B
    mov bl, num1
    add bl, num2
    add bl, 30h
    mov dl, bl
    mov ah, 02h
    int 21h

    ;impresión de un enter
    mov dl, 0Ah
    int 21h

    ; A - C
    mov bl, num1
    sub bl, num3
    add bl, 30h
    mov dl, bl
    mov ah, 02h
    int 21h

    ;impresión de un enter
    mov dl, 0Ah
    int 21h

    ; A + B + C
    mov bl, num1
    add bl, num2
    add bl, num3
    add bl, 30h
    mov dl, bl
    mov ah, 02h
    int 21h

    ;impresión de un enter
    mov dl, 0Ah
    int 21h

    ;finalización del programa
    mov ah, 4ch
    int 21h
end lab