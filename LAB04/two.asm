.model small 
.data 
    numberone db ?
    numbertwo db ?
    msg0 db 10, 13, 7, 'Enter the first number: ', '$'
    msg1 db 10, 13, 7, 'Enter the second number: ', '$'
    msg2 db 10, 13, 7, 'The numbers are the same', '$'
    msg3 db 10, 13, 7, 'The first number is greater', '$'
    msg4 db 10, 13, 7, 'The second number is greater', '$'
.stack
.code
    two:
        ; program start
        mov ax, @data
        mov ds, ax 

        ; obtaining the first number
        mov ah, 09h
        lea dx, msg0
        int 21h

        mov ah, 01h
        int 21h
        sub al, 30h
        mov numberone, al

        ; obtaining the second number   
        mov ah, 09h
        lea dx, msg1
        int 21h

        mov ah, 01h
        int 21h
        sub al, 30h
        mov numbertwo, al

        ; comparetion numbers
        mov al, numberone
        cmp al, numbertwo

        jc secondgreater
        jz equalsnumbers
        jnz firstgreater

        equalsnumbers:
            mov ah, 09h
            lea dx, msg2
            int 21h
            jmp endprogram

        firstgreater:
            mov ah, 09h
            lea dx, msg3
            int 21h
            jmp endprogram

        secondgreater:
            mov ah, 09h
            lea dx, msg4
            int 21h
            jmp endprogram

        endprogram:
            mov ah, 4ch
            int 21h
    end two
; end code     