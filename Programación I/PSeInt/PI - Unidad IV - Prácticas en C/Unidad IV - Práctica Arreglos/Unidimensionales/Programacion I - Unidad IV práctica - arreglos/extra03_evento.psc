Algoritmo extra03_evento
	definir i, n como entero
	definir invitados como cadena
	Escribir 'Ingrese total invitados: '
	Leer n
	dimension invitados[n]
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir 'Ingrese nombre invitado: ',i
		Leer invitados[i]
	FinPara
	Escribir 'Invitado   Nombre'
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir '   ',i,'       ',invitados[i]
	FinPara
FinAlgoritmo
