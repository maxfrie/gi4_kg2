SECTION .data
	; no data

SECTION .text

; oeffentliche Functionen deklarieren
	global main

; Funktionen implementieren
main:
	push ebp	; neuer Stackframe erzeugen
	mov ebp, esp

	; HIER KOMMT DER EIGENTLICHE CODE
	; Register initialisieren
	mov ebx, 100
	mov ecx, ebx

schleife:
	mov eax, ebx
	sub eax, ecx
	add eax, 1
	mul eax		; Quadrat bilden
	loop schleife	; wiederholen

	mov esp, ebp	; alter Stackframe restaurieren
	pop ebp	

	; Programm verlassen & signalisieren,
	; dass bei bei der Ausführung kein Fehler
	; aufgetreten ist.
	mov ebx, 0
	mov eax, 1
	int 0x80
