SECTION .data
	; no data

SECTION .text

; oeffentliche Functionen deklarieren
	global main

; Funktionen implementieren
main:
	push ebp	; neuer Stackframe erzeugen
	mov ebp, esp

	; HIER KOMMT DER CODE

	mov ebx, 0	; Iterator
	mov ecx, 100	; Schleifen-Counter initialisieren

schleife1:
	add ebx, 1
	mov eax, ebx
	mul eax
	push eax
	loop schleife1

	mov eax, 0	; Akkumulator leeren
	mov ecx, 100	; Erneut 100-Mal zählen

schleife2:
	pop ebx
	add eax, ebx
	loop schleife2

exit:
	mov esp, ebp	; alter Stackframe restaurieren
	pop ebp	

	; Programm verlassen & signalisieren,
	; dass bei bei der Ausführung kein Fehler
	; aufgetreten ist.
	mov ebx, 0
	mov eax, 1
	int 0x80
