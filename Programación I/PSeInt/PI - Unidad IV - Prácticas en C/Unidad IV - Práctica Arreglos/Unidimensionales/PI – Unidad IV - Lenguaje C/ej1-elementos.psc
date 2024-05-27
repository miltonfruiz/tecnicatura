Algoritmo ej01_elementos
	definir i, elementos como entero
	dimension elementos[5]
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir 'Ingrese un numero: '
		Leer elementos[i]
	FinPara
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir 'Indice: ',i,' valor ',elementos[i]
	FinPara
	Para i<-5 Hasta 1 Con Paso -1 Hacer
		Escribir 'Indice: ',i,' valor ',elementos[i]
	FinPara
FinAlgoritmo
