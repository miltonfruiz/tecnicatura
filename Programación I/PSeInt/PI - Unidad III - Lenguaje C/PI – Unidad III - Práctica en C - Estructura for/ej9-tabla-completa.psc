Algoritmo tabla_completa
	Definir i,j, producto Como Entero
	Para i<-1 Hasta 9 Con Paso 1 Hacer
		Escribir 'Tabla de multiplicar del ',i
		Para j<-0 Hasta 9 Con Paso 1 Hacer
			producto <- i*j
			Escribir i, ' x ', j, ' = ', producto
		FinPara
	FinPara
FinAlgoritmo
