; Victor Noe Hernandez Melendez
; Carne: 1301219
; ejercicio de impresión de caracteres
.model small
.data 
; declaración de variables
cadenauno DB 'Nombre: Victor Hernandez$'
cadenados DB 'Carnet: 1301219$'

.stack
.code
    lab01:
    ;iniciar el programa
    mov ax, @data
    mov ds, ax

    ;impresión de cadena
    mov dx, offset cadenauno
    mov ah, 09h
    int 21h

    ;impresión de enter
    mov dl, 0Ah
    mov ah, 02h
    int 21h

    mov dx, offset cadenados
    mov ah, 09h
    int 21h

    ;impresión de enter
    mov dl, 0Ah
    mov ah, 02h
    int 21h

    ;Impresión de iniciales
    mov dl, 56h; V
    int 21h

    mov dl, 2Eh; .
    int 21h

    mov dl, 4eh; N
    int 21h

    mov dl, 2Eh; .
    int 21h

    mov dl, 48h; H
    int 21h

    mov dl, 2Eh; .
    int 21h

    mov dl, 4dh; M
    int 21h

    mov dl, 2Eh; .
    int 21h

    ;finalizar el programa
    mov ah, 4ch
    int 21h
end lab01