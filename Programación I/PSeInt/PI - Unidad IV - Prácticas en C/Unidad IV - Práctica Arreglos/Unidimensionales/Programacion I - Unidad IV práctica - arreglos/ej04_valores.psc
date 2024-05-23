Algoritmo ej04_valores
	definir valores, i, resultado, mayor como entero
	dimension valores[10]
	resultado <- 0
	mayor <- 0
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir 'Ingrese valor: '
		Leer valores[i]
		Si valores[i] > mayor Entonces
			mayor <- valores[i]
		FinSi
	FinPara
	Escribir 'El mayor es: ',mayor
FinAlgoritmo
