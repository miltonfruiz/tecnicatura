Algoritmo ej03_suma
	Definir dato, i, suma Como Entero
	Dimensionar dato(5)
	suma <- 0
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir 'Ingrese dato numerico: '
		Leer dato[i]
		suma <- suma+dato[i]
	FinPara
	Escribir 'Suma de datos ingresados: ', suma
FinAlgoritmo
