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

SecondElement proc
	
	mov rax, rcx
	add rax, 4

	ret
SecondElement endp

getElement PROC
	dec rdx
	mov rax, 4
	mul	rdx

	add rcx, rax
	mov rax, rcx	

	ret
getElement endp

incElements proc
	mov r9, 3
	mov r10, 4
	loophead:
	mov r8, [rcx]
	inc r8
	mov [rcx], r8
	add rcx, r10
	dec r9
	cmp r9, 0
	jne loophead
	
	ret
incElements endp

makeUpper proc
	mov rax, rcx
	sub rax, 32 
	ret
makeUpper endp

makeLower proc
	mov rax, rcx
	add rax, 32

	ret
makeLower endp

switchCase proc
	mov rax, rcx
	
	cmp rax, 91
	
	jg lowerCase
	
	add rax, 32
	ret
	lowerCase:
	sub rax, 32 
	ret
switchCase endp

swapChar proc
	
	mov r8, rcx
	mov r9, rdx
	mov rcx, r9
	mov rdx, r8

	ret
swapChar endp
end