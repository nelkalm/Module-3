TITLE Program Template     (template.asm)

; Author: 
; Last Modified:
; OSU email address: ONID_ID@oregonstate.edu
; Course number/section:   CS271 Section ???
; Project Number:                 Due Date:
; Description: Implement the following decision structure:

; if (k < n): print(yes)
; else: print(no)


INCLUDE Irvine32.inc

; (insert macro definitions here)

; (insert constant definitions here)

.data   ; Data Segment ALPHA
k       SDWORD  3
n       SDWORD  2
x       SDWORD  ?
y       SDWORD  ?
;z       SDWORD  ?
yes     BYTE    "Yes",13,10,0
no      BYTE    "No",13,10,0
maybe   BYTE    "Maybe",13,10,0

.code
main PROC

; evaluate and print appropriate response
	mov		EAX, k
	cmp		EAX, n
	jge		_incorrect
	mov		EDX, OFFSET yes
	call	WriteString
	jmp		_donePrint

; incorrect
_incorrect:
	mov		EDX, OFFSET no
	call	WriteString


_donePrint:

	Invoke ExitProcess,0	; exit to operating system
main ENDP

; (insert additional procedures here)

END main
