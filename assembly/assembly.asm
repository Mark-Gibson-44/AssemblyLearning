.code


testReturn proc
	;;The first integer passed to a function is stored in rcx, we move this value into rax
	mov rax, rcx
	; rax is the register responsible for returning a value

	ret
testReturn endp

addTwo proc
	mov rax, rcx ; Move first arg into rax
	add rax, rdx ; Second arg is passed into rdx so add value	

	ret
addTwo endp	

multiplyTwo proc
	mov rax, rcx
	mul rdx ;Mul is hard coded to have the dest reg as rax so only need to pass rdx

	ret
multiplyTwo endp

powerOf proc
	mov rax, rcx;Move rcx into rax as the first process
	mov r8, rdx;move rdx into a different register for some reason I'll figure out
Start:
	;Create label to start of the loop
	mul rcx;Multiply rax by the value passed by the function
	dec r8 ; decrement counter
	cmp r8, 1;check if counter is one
	jg 	Start; if greater that one jump back to label
	
	ret
powerOf endp


end