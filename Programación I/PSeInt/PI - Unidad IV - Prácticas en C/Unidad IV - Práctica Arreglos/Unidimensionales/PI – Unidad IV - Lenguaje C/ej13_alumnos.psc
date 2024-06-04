Algoritmo ej13_alumnos
	definir nombre, apellido, completo como cadena
	definir i como entero
	dimension nombre[10]*[50]
	dimension apellido[10]*[50]
	dimension completo[10]*[50]
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir 'Ingrese nombre: ',i
		Leer nombre[i]
		Escribir 'Ingrese apellido: ',i
		Leer apellido[i]
		completo[i] <- nombre[i] +' '+ apellido[i]
	FinPara
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir completo[i]
	FinPara
FinAlgoritmo
