;xor swap using NASM
;@_hddananjaya


section .text

  global main
  extern printf

  main:

    mov eax, [num1]
    mov ebx, [num2]

    push eax
    push fmt
    call printf
    add esp,8
    
    push ebx
    push fmt2
    call printf
    add esp,8


    push txt
    call printf

    mov eax, [num1]
    mov ebx, [num2]

    ;xor swaping
    xor eax, ebx
    xor ebx, eax
    xor eax, ebx

    push eax
    push fmt
    call printf
    add esp,8
    
    push ebx
    push fmt2
    call printf
    add esp,8
    ret

section .data

  fmt: db 'Value in EAX : %d',10,0
  fmt2: db 'Value in EBX : %d',10,0
  txt: db '--After XOR Swap--',10,0  

  num1: dd 500
  num2: dd 1000









