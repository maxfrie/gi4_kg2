SECTION .data
	ERGEBNIS DD 0

SECTION .text

; oeffentliche Functionen deklarieren
	global main

; Funktionen implementieren
main:
	push ebp	; neuer Stackframe erzeugen
	mov ebp, esp

	; HIER KOMMT DER EIGENTLICHE CODE
	; Register initialisieren
	mov ebx, 0
	mov ecx, 100

schleife:
	add ebx, 1
	mov eax, ebx
	mul eax		; Quadrat bilden
	add dword [ERGEBNIS], eax	; Ergebnis speichern
	loop schleife	; wiederholen

	mov esp, ebp	; alter Stackframe restaurieren
	pop ebp	

	; Programm verlassen & signalisieren,
	; dass bei bei der Ausführung kein Fehler
	; aufgetreten ist.
	mov ebx, 0
	mov eax, 1
	int 0x80
