Algoritmo ej09_multiplicados
	definir i, ingreso, multiplicados como entero
	dimension ingreso[5]
	dimension multiplicados[5]
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir 'Ingrese numero: '
		Leer ingreso[i]
		multiplicados[i] <- ingreso[i]*2
	FinPara
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir multiplicados[i]
	FinPara
FinAlgoritmo
