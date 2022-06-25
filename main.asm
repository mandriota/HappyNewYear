org 100h


; ###CODE###
; clear screen
  mov ax,03h
  int 10h

; hide cursor
  mov ch,10h
  mov ah,01h
  int 10h

; mode 80x30
  mov ax,6Ch
  int 10h

; console output
  mov dx,0C28h-len/2
  mov bl,84h
  mov cx,len
  mov bp,msg
  mov ah,13h
  int 10h

; waiting for a key press
  mov ah,00h
  int 16h

; exit
  ret


; ###DATA###
  msg db 'Happy New Year!'
  len = $-msg
