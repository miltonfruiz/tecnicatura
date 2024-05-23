Algoritmo ej03_suma
	definir dato, i, suma como entero
	dimension dato[5]
	suma <- 0
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir 'Ingrese dato numerico: '
		Leer dato[i]
		suma <- suma + dato[i]
	FinPara
	Escribir 'Total de la suma: ',suma
FinAlgoritmo
