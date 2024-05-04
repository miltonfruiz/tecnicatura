Algoritmo decremento_arrobas
	Definir i Como Entero
	Definir arrobas, decremento Como Cadena
	arrobas <- '@@@@@@@@@@'
	decremento <- ''
	Para i<-10 Hasta 1 Con Paso -1 Hacer
		decremento <- SubCadena(arrobas,0,i-1)
		Escribir decremento
	FinPara
FinAlgoritmo
