Algoritmo ej03_positivo
	Definir i, num, suma Como Entero
	suma <- 0
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir 'Ingrese numero: '
		Leer num
		Mientras num < 1 Hacer
			Escribir 'El numero debe ser positivo: '
			Leer num
		FinMientras
		suma <- suma + num
	FinPara
	Escribir 'La suma es: ',suma
FinAlgoritmo
