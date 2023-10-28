; hello.asm
SECTION .data				; Начало секции данных
    hello: 	DB 'Hello world!',10	; 'Hello world!' плюс
    					; символ перевода строки
    helloLen:   EQU $-hello		; Длина строки hello
    
SECTION .text	      ; Начало секции кода
    GLOBAL _start
    
_start:		      ; Точка входа в программу
    mov eax,4	      ; Системый вызов для записи (sys_write)
    mov ebx,1	      ; писатель файла '1' - стандартный вывод
    mov ecx,hello     ; дрес строки hello в ecx
    mov edx,helloLen  ; азмер строки hello
    int 80h           ; Вызов ядра
    
     mov eax,1	      ; Системый вызов для вывода (sys_exit)
     mov ebx,0	      ; Выход с кодом возврата '0' (без ошибок)
     int 80h          ; Вызов ядра
