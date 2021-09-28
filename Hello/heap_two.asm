# programa que obtiene un valor de tamaño como entrada, crea un array de enteros del tamaño
# obtiene valores enteros, los almacena en el array y después imprime el array

.data

# definir la cadena de entrada
size: .asciiz "Give array size: "
input: .asciiz "Give a number: "
space: .asciiz " " 
newline: .asciiz "\n"

.text

main:

# mensaje de impresión para obtener el tamaño
li $v0, 4
la $a0, size
syscall
|
# obtener el tamaño de la entrada
li $v0, 5
syscall

move $s0, $v0

# cambiar a bytes
mul $s0, $s0, 4

# asignar memoria dinámica
li $v0, 9
move $a0, $s0
syscall

move $s1, $v0
# s1 contiene ahora la dirección

# bucle para obtener la entrada
li $t0, 0 # loop counter
for:

# comprobar la condición del bucle
bge $t0, $s0, end_for

# imprimir el mensaje para obtener la entrada
li $v0, 4
la $a0, input
syscall

# obtener entrada de enteros
li $v0, 5
syscall

move $t1, $v0

# escribir en la matriz/dirección
addu $t2, $s1, $t0
sw $t1, ($t2)

# incrementar el contador del bucle
addi $t0, $t0, 4

j for 
end_for:

# imprimir el array
li $t0, 0 # loop counter

for2:
# verificar la condición del loop
bge $t0, $s0, end_for2

# cargar desde un array/dirección
addu $t2, $s1, $t0
lw $t1, ($t2)

# impresión del entero
li $v0, 1
move $a0, $t1
syscall

# impresión del espacio
li $v0, 4
la $a0, space
syscall

# incrementar el contador del loop
addi $t0, $t0, 4

j for2
end_for2:

# impresión de la nueva linea
li $v0, 4
la $a0, newline
syscall

# termina el programa
li $v0, 10
syscall