Algoritmo ej08_vendedores
	definir i como entero
	definir importe, totalVentas, comision como real
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		totalVentas <- 0
		Escribir 'Ingrese importe: '
		Leer importe
		Mientras importe <> 0 Hacer
			totalVentas <- totalVentas + importe
			Escribir 'Ingrese importe: '
			Leer importe
		FinMientras
		comision <- totalVentas * 0.025
		Escribir 'Codigo ',i,', Comision: ',comision
	FinPara
FinAlgoritmo
