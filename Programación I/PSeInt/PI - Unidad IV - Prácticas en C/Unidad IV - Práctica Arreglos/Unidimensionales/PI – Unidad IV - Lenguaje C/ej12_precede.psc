Algoritmo ej12_precede
	definir cad como cadena
	definir i como entero
	dimension cad[2]*[50]
	Para i<-1 Hasta 2 Con Paso 1 Hacer
		Escribir 'Ingrese nombre: '
		Leer cad[i]
	FinPara
	Si (longitud(cad[1]) == longitud(cad[2])) Entonces
		Escribir 'Son iguales'
	SiNo
		Escribir 'Precede'
	FinSi
FinAlgoritmo
