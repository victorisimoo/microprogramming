.model small
.data
    num1 db ?
    num2 db ?
    cadena db 'Addition: ','$'
    cadena2 db 'Subtraction: ','$'
    cadena3 db 'Multiplication: ','$'
    cadena4 db 'Division: ','$'
.stack 
.code
    lab:
        mov ax, @data
        mov ds, ax

        ;obtaining the user's values
        mov ah, 01
        int 21h ; the value is stored in al

        sub al, 30h
        mov num1, al ; storage of the data in the variable

        ;printing of an enter
        mov dl, 0ah
        int 21h

        mov ah, 01
        int 21h ; the value is stored in al

        sub al, 30h
        mov num2, al

        ;printing of an enter
        mov dl, 0ah
        int 21h

        mov dx, offset cadena
        mov ah, 09h
        int 21h

        ;printing of an enter
        mov dl, 0Ah
        int 21h

        ;num1 + num2
        mov bl, num1
        add bl, num2
        add bl, 30h
        mov dl, bl
        mov ah, 02h
        int 21h

        ;printing of an enter
        mov dl, 0ah
        int 21h

        mov dx, offset cadena2
        mov ah, 09h
        int 21h

        ;printing of an enter
        mov dl, 0Ah
        int 21h

        ;num1 - num2
        mov bl, num1
        sub bl, num2
        add bl, 30h
        mov dl, bl
        mov ah, 02h
        int 21h

        ;printing of an enter
        mov dl, 0ah
        int 21h

        mov dx, offset cadena3
        mov ah, 09h
        int 21h

        ;printing of an enter
        mov dl, 0ah
        int 21h

        ;multiplication 
        xor ax, ax
        mov al, num1
        mul num2

        mov dl, al
        add dl, 30h
        mov ah, 02h
        int 21h

        ;printing of an enter
        mov dl, 0ah
        int 21h

        mov dx, offset cadena4
        mov ah, 09h
        int 21h

        ;printing of an enter
        mov dl, 0ah
        int 21h

        ;division
        xor ax, ax
        mov al, num1
        div num2

        mov dl, al
        add dl, 30h
        mov ah, 02h
        int 21h

        ;printing of an enter
        mov dl, 0Ah
        int 21h

        mov ah, 4ch
        int 21h
    end lab

