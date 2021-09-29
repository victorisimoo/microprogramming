.model small
.stack
.data 
    ; number framing variables
    units db 0
    tens db 0
    number db 0
    msg0 db 10, 13, 7, 'Enter the desired length of the spiral: ', '$'
    msg1 db 10, 13, 7, 'Value is greater', '$'
    msg2 db 10, 13, 7, 'Value is less', '$'
    msg3 db 10, 13, 7, 'Value: ', '$'
.code
    proyect:
        ; program start
        mov ax, @data
        mov ds, ax

        ; obtaining the ulam spiral extension
        mov ah, 09h
        lea dx, msg0
        int 21h

        ; tens
        mov ah, 01h
        int 21h
        sub al, 30h
        mov tens, al

        ; units
        mov ah, 01h
        int 21h
        sub al, 30h
        mov units, al
        
        ; number construction
        mov al, tens
        mov bl, 10
        mul bl
        add al, units
        mov number, al

        mov ah, 09h
        lea dx, msg3
        int 21h

        ; print result
        mov al, number
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

        ; number  validation
        mov al, number
        cmp al, 50
        jc  lower
        jnz higher

    higher:
        mov ah, 09h
        lea dx, msg1
        int 21h
        jmp endprogram

    lower:
        mov ah, 09h
        lea dx, msg2
        int 21h
        jmp endprogram

    endprogram:
        ; end of program
        mov ah, 4ch
        int 21h
end proyect


