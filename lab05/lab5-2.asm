%include 'in_out.asm'
SECTION .data
msg: DB 'Input string:',0h
SECTION .bss
bufl: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, msg
call sprint
mov ecx, bufl
mov edx, 80
call sread
call quit
