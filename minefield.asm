mov dl," "
mov ah,2h  ;koordinatlarimiz en soldan baslamasin diye satir ve sutun tarafindan 1 bosluk veriyoruz 
int 21h    

mov bx,'1'
mov cx,5      ;sutun siralarini 1-2-3-4-5 diye siralandiriyoruz   


sutunNumara:
   
   mov dx,bx
   mov ah,2h
   int 21h
   inc bx
   loop sutunNumara 
         
mov dl,13d  
mov ah,2h
int 21h
     
mov dl,10d
mov ah,2h
int 21h  

  
mov bx,'1'
mov cx,5
satir:        ;satir siralarini belirtmeye calisiyoruz fakat 1 rakamindan sonra gulucuk sembolleri geliyor(sebebini henuz bulamadik)
     
     mov dx,bx
     mov ah,2h
     int 21h     
     
    mov bx,5
    sutun:
         mov dl,'*'
         mov ah,2h
         int 21h
         dec bx
         inc cx
         cmp bx,0
         je newline 
   loop sutun
      
   newline:     
         mov dl,13d
         mov ah,2h
         int 21h
     
         mov dl,10d
         mov ah,2h
         int 21h  
   mov ax,5
   dec cx 
   sub ax,cx
   add ax,50
   mov bx,ax
   
loop satir 
                