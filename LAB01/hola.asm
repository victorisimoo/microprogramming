;ejercicio: impresion de cadena de caracteres
.model small
.data
;declaracion de variables
cadena1 DB 'Nombre: Victor Hernandez$'
cadena2 DB 'Carnet: 1301219$'
cadena3 DB 'Ejercicio 3$ '
.stack
.code
	helloworld:
	;inicializar el programa
	mov ax, @data ;obteniendo la direccion del segmento de datos asignandola a ax el lugar donde estaran las variables o el segmento de datos
	mov ds, ax ; ds almacenara el semento de datos asignados, asignar al data segment la direccion de la linea anterior
	
	;imprimir cadena
	mov dx, offset cadena1 ; el mov solamente se puede hacer directo con variables enteras
	mov ah, 09h
	int 21h
	
	mov dx, offset cadena2
	mov ah, 09h
	int 21h
	
	mov dx, offset cadena3
	mov ah, 09h
	int 21h
	
	;impresion de caracter
	mov dl, 4bh
	mov ah, 09h
	int 21h
	
	mov dl, 2eh
	mov ah, 09h
	int 21h
	
	;finalizar el programa
	mov ah, 4ch ;enviar el parametro de interrupcion
	int 21h ;ejecutando la interrupcion de proceso de ah
END helloworld
