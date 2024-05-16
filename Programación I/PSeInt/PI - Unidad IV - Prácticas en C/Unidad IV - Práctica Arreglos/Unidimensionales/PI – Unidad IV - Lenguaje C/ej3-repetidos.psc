Algoritmo ej03_repetido
	Definir i, elementos como Entero
	Dimension elementos[5]
	contador <- 0
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir 'Ingrese un valor: '
		Leer elementos[i]
		Si elementos[i] == 5 Entonces
			contador <- contador + 1
		FinSi
	FinPara
	Escribir 'Se repite: ',contador
FinAlgoritmo
