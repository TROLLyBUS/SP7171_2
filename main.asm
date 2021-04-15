;Задача: найти сумму положительных байтов массива, 
;заключенных между А и В. 
;Предусмотреть сообщение о возникшем переполнении.

extern printf
section .text
global main
main:
push rbp
mov rbp, rsp
mov rsi, array
mov rax, 0	
mov rbx, 0
mov rcx, 0
next_element:
cmp rax, 3
jl skip
cmp rax, 7
jg skip
mov bl, [rsi]
cmp bl, 0
jl skip
add cl, bl
jnc skip
push rsi
push rax
push rbx
push rcx
mov eax, 0
mov rdi, perepolnenie
mov esi, ecx
mov edx, ebx
call printf
pop rcx
pop rbx
pop rax
pop rsi
skip:
add rax, 1
add rsi, 1
cmp rax, 10
jne next_element
mov rdi, summa
mov rsi, 3
mov rdx, 7
mov ecx, ecx
mov eax, 0
call    printf
pop rbp
mov eax, 0
ret
section .data
a db 3
b db 7
array db 1, 2, 3, 127, 127, -6, 7, 8, 9, 10 
summa db "Сумма положительных байтов массива между %d и %d равна %d", 10, 0
perepolnenie db "Произошло переполнение", 10, 0
