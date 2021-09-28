.MODEL small
.DATA
cadena DB 'Hola Mundo$'
.Code
programa:
; Iniciar programa
    MOV AX, @DATA ; Se obtiene la dirección de inicio del segmento de datos
    MOV DS, AX ; asignamos el registro data segment la direccion de inicio de segmento
; Imprimir cadena
    MOV DX, offset cadena
    MOV AH, 09h ;etiqueta h hace que asuma hexadecimal, b binario y d decimal
    INT 21h
; finalizar el programa
    MOV AH, 4Ch
    INT 21h
.STACK
END programa