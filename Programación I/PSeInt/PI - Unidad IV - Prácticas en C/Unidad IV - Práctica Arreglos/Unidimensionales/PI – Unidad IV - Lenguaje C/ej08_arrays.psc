Algoritmo ej08_arrays
	Definir i, uno, dos Como Entero
	Dimensionar uno(5)
	Dimensionar dos(5)
	Dimensionar union(10)
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir 'Ingrese numero: '
		Leer uno[i]
		union[i] <- uno[i]
	FinPara
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir 'Ingrese numero: '
		Leer dos[i]
		union[i+5]<-dos[i]
	FinPara
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir union[i]
	FinPara
FinAlgoritmo
