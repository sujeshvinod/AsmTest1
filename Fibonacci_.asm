.model flat, c

.code

Fibonacci_ PROC

; PROLOG
push ebp
mov ebp, esp

push ebx
push edx
push ecx

xor eax, eax
xor edx, edx
xor ecx, ecx
xor ebx, ebx

mov ecx, dword ptr [ebp+8] ; Total Numbers
mov edx, 0
mov eax, 1

PROCEED:
mov ebx, eax
add eax, edx
mov edx, ebx
LOOP PROCEED

pop ecx
pop edx
pop ebx

; EPILOG
mov esp, ebp
pop ebp
ret

Fibonacci_ ENDP

end