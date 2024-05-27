Algoritmo ej02_componentes
	definir i, componentes, suma como entero
	definir promedio como real
	dimension componentes[5]
	suma <- 0
	promedio <- 0
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Escribir 'Ingrese un valor: '
		Leer componentes[i]
		suma <- suma + componentes[i]
	FinPara
	promedio <- suma / 5
	Escribir 'La suma es: ',suma
	Escribir 'El promedio es: ',promedio
FinAlgoritmo
