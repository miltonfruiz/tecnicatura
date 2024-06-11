Algoritmo ej06_elementos
	Definir i, elementos, n, j, contador, mayor, mayorRepetido Como Entero
	Escribir 'Ingrese total elementos: '
	Leer n
	dimension elementos[n]
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir 'Ingrese un numero: '
		Leer elementos[i]
	FinPara
	contador <- 0
	mayor <- 0
	mayorRepetido <- 0
	Para i<-1 Hasta n Con Paso 1 Hacer
		Para j<-1 Hasta n Con Paso 1 Hacer
			Si elementos[j] == elementos[j] Entonces
				contador <- contador + 1
			FinSi
		FinPara
		Si contador > mayor Entonces
			mayor <- contador
			mayorRepetido <- elementos[i]
		FinSi
	FinPara
	Escribir 'Número más repetido: ',mayorRepetido
FinAlgoritmo
