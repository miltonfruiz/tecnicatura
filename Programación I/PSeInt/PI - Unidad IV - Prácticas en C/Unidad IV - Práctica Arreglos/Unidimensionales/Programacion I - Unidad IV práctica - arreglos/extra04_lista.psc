Algoritmo extra04_lista
	definir i, lista como entero
	dimension nombre[5]
	dimension nota[5]
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir 'Ingrese nombre: '
		Leer nombre[i]
		Escribir 'Ingrese nota: '
		Leer nota[i]
	FinPara
	Escribir 'Aprobó: '
	Para i<-1 Hasta 30 Con Paso 1 Hacer
		Si nota[i] >= 6 Entonces
			Escribir sinsaltar(nombre[i]),' '
		FinSi
	FinPara
	Escribir ''
	Escribir 'No aprobó: '
	Para i<-1 Hasta 30 Con Paso 1 Hacer
		Si nota[i]<6 Entonces
			Escribir sinsaltar(nombre[i]),' '
		FinSi
	FinPara
FinAlgoritmo
