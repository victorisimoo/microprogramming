.model small
.data
    num1 db ?
    num2 db ?
    result db 0
    msg0 db 10, 13, 7, 'Enter a number: ','$'
    msg1 db 10, 13, 7, 'Addition result : ','$'
    msg2 db 10, 13, 7, 'Subtraction result :','$'
    msg3 db 10, 13, 7, 'Multiplication result :','$'
    msg4 db 10, 13, 7, 'Division result :','$'
.stack 
.code 
    labtwo:
        ; program start
        mov ax, @data 
        mov ds, ax 

        ; obtaining the numbers    
        mov ah, 09h
        lea dx, msg0
        int 21h

        ; first number
        mov ah, 01h
        int 21h
        sub al, 30h
        mov num1, al

        mov ah, 09h
        lea dx, msg0
        int 21h

        ; second number
        mov ah, 01h
        int 21h
        sub al, 30h
        mov num2, al

        ; addition +
        mov al, num1
        add al, num2
        mov result, al

        mov ah, 09h
        lea dx, msg1
        int 21h

        ; print result
        mov al, result
        AAM
        mov bx, ax
        mov ah, 02h
        mov dl, bh
        add dl, 30h
        int 21h

        mov ah, 02h
        mov dl, bl
        add dl, 30h
        int 21h

        ; subtraction -
        mov al, num1
        sub al, num2
        mov result, al

        mov ah, 09h
        lea dx, msg2
        int 21h

        ; print result
        mov al, result
        AAM
        mov bx, ax
        mov ah, 02h
        mov dl, bh
        add dl, 30h
        int 21h

        mov ah, 02h
        mov dl, bl
        add dl, 30h
        int 21h

        ; multiplication * 
        xor ax, ax
        mov al, num1
        mov bl, num2
        mul bl
        mov result, al

        mov ah, 09h
        lea dx, msg3
        int 21h

        ; print result
        mov al, result
        AAM
        mov bx, ax
        mov ah, 02h
        mov dl, bh
        add dl, 30h
        int 21h

        mov ah, 02h
        mov dl, bl
        add dl, 30h
        int 21h

        ; division /
        xor ax, ax
        mov al, num1
        mov bl, num2
        div bl
        mov result, al

        mov ah, 09h
        lea dx, msg4
        int 21h

        ; print result
        mov al, result
        AAM
        mov bx, ax
        mov ah, 02h
        mov dl, bh
        add dl, 30h
        int 21h

        mov ah, 02h
        mov dl, bl
        add dl, 30h
        int 21h

        ;printing of an enter
        mov dl, 0Ah
        int 21h
        
        ; end of program
        mov ah, 4ch
        int 21h
    end labtwo