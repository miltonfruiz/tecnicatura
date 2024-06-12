Algoritmo extra05_evento2
	definir i,j,n como entero
	definir invitados como cadena
	Escribir 'Ingrese total invitados: '
	Leer n
	dimension invitados[n,2]
	Para i<-1 Hasta n Con Paso 1 Hacer
		Para j<-1 Hasta 2 Con Paso 1 Hacer
			Si j == 1 Entonces
				Escribir 'Ingrese nombre: '
				Leer invitados[i,j]
			SiNo
				Escribir 'Ingrese tipo: '
				Leer invitados[i,j]
			FinSi
		FinPara
	FinPara
	Escribir 'Nombre   Menu'
	Para i<-1 Hasta n Con Paso 1 Hacer
		Para j<-1 Hasta 2 Con Paso 1 Hacer
			Escribir sinsaltar(invitados[i,j]),'   '
		FinPara
		Escribir ' '
	FinPara
FinAlgoritmo
