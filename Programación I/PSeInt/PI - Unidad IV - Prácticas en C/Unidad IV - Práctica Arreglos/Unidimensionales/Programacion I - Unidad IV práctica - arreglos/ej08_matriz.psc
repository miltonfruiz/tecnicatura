Algoritmo ej08_matriz
	definir i,j como entero
	definir matriz,suma como real
	dimension matriz[4,3]
	suma <- 0
	Para i<-1 Hasta 4 Con Paso 1 Hacer
		Para j<-1 Hasta 3 Con Paso 1 Hacer
			Escribir 'Ingrese numero: '
			Leer matriz[i,j]
			suma <- suma+matriz[i,j]
		FinPara
	FinPara
	Escribir 'La suma total es: ',suma
FinAlgoritmo
