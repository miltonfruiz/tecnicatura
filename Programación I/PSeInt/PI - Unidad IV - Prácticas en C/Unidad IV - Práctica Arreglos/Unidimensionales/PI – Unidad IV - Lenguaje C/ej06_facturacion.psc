Algoritmo ej06_facturacion
	definir i, factura como entero
	definir total, promedio, maxima, minima como real
	dimension factura[6]
	total <- 0
	promedio <- 0
	minima <- 9999
	maxima <- 0
	Para i<-1 Hasta 6 Con Paso 1 Hacer
		Escribir 'Ingrese factura: '
		Leer factura[i]
		total <- total + factura[i]
		Si factura[i] > maxima Entonces
			maxima <- factura[i]
		FinSi
		Si factura[i] < minima Entonces
			minima <- factura[i]
		FinSi
	FinPara
	promedio <- total / 6
	Escribir 'a) Facturacion total: ',total
	Escribir 'b) Promedio facturacion: ',promedio
	Escribir 'c) Facturacion maxima: ',maxima
	Escribir 'd) Facturacion minima: ',minima
FinAlgoritmo
