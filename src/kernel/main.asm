org 0x0
bits 16

start:
	; print message
	mov si, msg_hello
	call puts

.hlt:
	cli
	hlt



;
; Prints a string to the screen
; Params:
;	- ds:si points to string
;

puts:
	; Save registers we will modify
	push si
	push ax

.loop:
	lodsb		; loads next charecter in al
	or al, al	; verify if next char is null?
	jz .done
	
	mov ah, 0x0e	; calls BIOS interrupt
	int 0x10
	jmp .loop

.done:
	pop ax
	pop si
	ret


msg_hello: db 'Hello world from KERNEL!', 0
