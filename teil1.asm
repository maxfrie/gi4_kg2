;#############################
; if- Anweisung Code Snippet
;###########################

main:
	mov eax, 0	;erster Operand in eax
	mov ebx, 1 	;zweiter Operand in ebx
	cmp eax, ebx	;Vergleich der if Abfrage
	je wahr 	;Springe, wenn gleich
	mov edx, 1 	;Anweisung, wenn ungleich
	ret

wahr:
	mov edx, 0	; Anweisung für true
	ret		


;##############################
; for-Schleife Snippet
;##############################

	mov ecx, 3 ; Anzahl der Schleifendurchläufe in Counter Register
	
schleife:
	; Hier können die Anweisungen rein
	loop schleife ; wiederholung wenn ecx nach dekrementierung ungleich 0
