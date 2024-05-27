Algoritmo ej04_vector
	Definir i, j, total, mayor, repetidos, vector Como Entero
	Dimensionar vector(6)
	vector[1] <- 10
	vector[2] <- 20
	vector[3] <- 5
	vector[4] <- 15
	vector[5] <- 30
	vector[6] <- 20
	total <- 0
	repetidos <- 0
	Escribir 'a) Valores de vector'
	Para i<-1 Hasta 6 Con Paso 1 Hacer
		Escribir 'Indice ', i, ', Valor ', vector[i]
		total <- total+vector[i]
		Si vector[i]==20 Entonces
			repetidos <- repetidos+1
		FinSi
	FinPara
	Escribir 'b) Total suma elementos: ', total
	Escribir 'c) Contenidos impares'
	Para i<-1 Hasta 6 Con Paso 1 Hacer
		Si vector[i] MOD 2==1 Entonces
			Escribir vector[i]
		FinSi
	FinPara
	Escribir 'd) Posiciones impares'
	Para i<-1 Hasta 6 Con Paso 1 Hacer
		Si vector[i] MOD 2==1 Entonces
			Escribir i
		FinSi
	FinPara
	mayor <- 0
	Para i<-1 Hasta 6 Con Paso 1 Hacer
		Si vector[i]>mayor Entonces
			mayor <- vector[i]
		FinSi
	FinPara
	Escribir 'e) El mayor numero es: ',mayor
	Escribir 'f) Numero 20 se repite: ',repetidos
FinAlgoritmo
