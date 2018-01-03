.model flat, c

.code

Accumulator_ PROC

; PROLOG
push ebp
mov ebp, esp

push edx
push ecx

xor eax, eax
xor edx, edx
xor ecx, ecx

mov ecx, dword ptr [ebp+8] ; Total Numbers
mov edx, 0

PROCEED:
inc edx
add eax, edx
LOOP PROCEED

pop ecx
pop edx

; EPILOG
mov esp, ebp
pop ebp
ret

Accumulator_ ENDP

end