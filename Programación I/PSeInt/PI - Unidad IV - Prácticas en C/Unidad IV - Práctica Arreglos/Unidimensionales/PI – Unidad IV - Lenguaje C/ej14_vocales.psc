Algoritmo ej14_vocales
	definir cad, vocales como cadena
	dimension vocales[5]
	vocales[1] <- 'a'
	vocales[2] <- 'e'
	vocales[3] <- 'i'
	vocales[4] <- 'o'
	vocales[5] <- 'u'
	contador <- 0
	Escribir 'Ingrese cadena: '
	Leer cad
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Para j<-1 Hasta longitud(cad) Con Paso 1 Hacer
			Si subcadena(cad,j,j) == vocales[i] Entonces
				contador <- contador + 1
			FinSi
		FinPara
	FinPara
	Escribir 'Total vocales: ',contador
FinAlgoritmo
