.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

.data
	
	alpha DWORD 10000h
	beta DWORD 20000h
	gamma DWORD 40000h ; I tried using a, b, and c as variable names but kept getting compile errors 

.code

main PROC

	mov EAX, alpha
	add EAX, beta
	mov gamma, EAX

	INVOKE ExitProcess, 0
main ENDP
END main