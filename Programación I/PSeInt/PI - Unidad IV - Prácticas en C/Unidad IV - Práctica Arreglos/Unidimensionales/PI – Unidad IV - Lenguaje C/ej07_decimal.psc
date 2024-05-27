Algoritmo ej07_decimal
	definir i, n como entero
	definir notas, suma, promedio como real
	suma <- 0
	promedio <- 0
	Escribir 'Ingrese total notas: '
	Leer n
	dimension notas[n]
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir 'Ingrese nota: '
		Leer notas[i]
		suma <- suma + notas[i]
	FinPara
	promedio <- suma / n
	Escribir 'Suma de notas: ',suma
	Escribir 'Promedio notas: ',promedio
FinAlgoritmo
