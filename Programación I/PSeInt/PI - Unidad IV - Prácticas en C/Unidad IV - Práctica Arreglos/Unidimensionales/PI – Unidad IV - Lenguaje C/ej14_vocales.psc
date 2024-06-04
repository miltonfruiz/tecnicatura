Algoritmo ej14_vocales
	Definir cad, vocales Como Cadena
	dimension cad[1]*[50]
	Dimensionar vocales(5)
	vocales[1] <- 'a'
	vocales[2] <- 'e'
	vocales[3] <- 'i'
	vocales[4] <- 'o'
	vocales[5] <- 'u'
	contador <- 0
	Escribir 'Ingrese cadena: '
	Leer cad[1]
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Para j<-1 Hasta longitud(cad[1]) Con Paso 1 Hacer
			Si subcadena(cad[1],j,j)==vocales[i] Entonces
				contador <- contador+1
			FinSi
		FinPara
	FinPara
	Escribir 'Total vocales: ', contador
FinAlgoritmo
