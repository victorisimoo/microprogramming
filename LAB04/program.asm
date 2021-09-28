.model small
.data 

    number db ?
    residue db ?
    msg0 db 10, 13, 7, 'Enter number to analyze: ', '$'
    msg1 db 10, 13, 7, 'The number is even!', '$'
    msg2 db 10, 13, 7, 'The number is odd!', '$'

.stack
.code
    program:
        ; program start
        mov ax, @data
        mov ds, ax

        ; obtaining the number to analyze
        mov ah, 09h
        lea dx, msg0
        int 21h

        mov ah, 01h
        int 21h
        sub al, 30h
        mov number, al

        ; division /
        xor ax, ax
        mov al, number
        mov bl, 2
        div bl
        mov residue, ah

        ; verification
        mov al, residue
        cmp al, 0
        jz even
        cmp al, 0
        jzn odd

        ; even
        even:
            mov ah, 09h
            lea dx, msg1
            int 21h
            jmp endprogram  ;end program method

        ; odd
        odd:
            mov ah, 09h
            lea dx, msg2
            int 21h
            jmp endprogram  ;end program method

        ; end program
        endprogram:
            mov ah, 4ch
            int 21h
        ;
    end program
;
