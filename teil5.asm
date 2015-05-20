SECTION .data
	; no data

SECTION .text

; oeffentliche Functionen deklarieren
	global main

; Funktionen implementieren
main:
	push ebp	; neuer Stackframe erzeugen
	mov ebp, esp

	; Diese Datei kann als Vorlage für die
	; Entwicklung von Assembler-Programmen
	; verwendet werden. Hierzu muss die nächste
	; Zeile nur durch den gewünschten Code
	; ersetzt werden.
	
	; HIER KOMMT DER CODE

	push 0 ; Stack vorinitialisieren
	push 1
	
	mov ecx, 4 ; Anzahl der Schleifendurchläufe 4 entspricht F(5)
schleife:
	pop ebx
	pop eax
	add eax, ebx
	push ebx
	push eax
	loop schleife

	mov esp, ebp	; alter Stackframe restaurieren
	pop ebp	

	; Programm verlassen & signalisieren,
	; dass bei bei der Ausführung kein Fehler
	; aufgetreten ist.
	mov ebx, 0
	mov eax, 1
	int 0x80
