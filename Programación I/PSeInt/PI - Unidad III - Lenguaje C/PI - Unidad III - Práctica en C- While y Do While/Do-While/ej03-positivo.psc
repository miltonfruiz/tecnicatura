Algoritmo ej03_positivo
	Definir i, num, suma Como Entero
	suma <- 0
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Repetir
			Escribir 'Ingrese numero:'
			Leer num
			Si num>0 Entonces
				suma <- suma+num
			SiNo
				Escribir 'Debe ser positivo...'
			FinSi
		Mientras Que num<1
	FinPara
	Escribir 'La suma es: ', suma
FinAlgoritmo
