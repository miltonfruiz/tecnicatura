Algoritmo ej15_invertida
	definir i como entero
	definir cad como cadena
	dimension cad[1]*[50]
	Escribir 'Ingrese cadena: '
	Leer cad[1]
	Para i<-longitud(cad[1]) Hasta 1 Con Paso -1 Hacer
		Escribir sinsaltar(subcadena(cad[1],i,i))
	FinPara
FinAlgoritmo
