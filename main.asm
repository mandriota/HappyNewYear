org 100h


; ###CODE###
; clear screen
  mov ax,03h
  int 10h

; hide cursor
  mov ah,01h
  mov ch,10h
  int 10h

; mode 80x30
  xor ah,ah
  mov al,6Ch
  int 10h

; console output
  mov ah,13h
  mov dl,28h-len/2
  mov dh,0Ch
  mov bl,84h
  mov cx,len
  mov bp,msg
  int 10h

; waiting for a key press
  mov ah,08h
  int 21h

; exit
  ret


; ###DATA###
  msg db 'Happy New Year!'
  len = $-msg
