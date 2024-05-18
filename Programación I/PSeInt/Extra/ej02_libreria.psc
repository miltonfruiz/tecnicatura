Algoritmo ej02_libreria
	definir nombre, socio, opc1 como cadena
	definir monto, montoVenta, totalRecaudado como real
	definir cantidad, totalVentas como entero
	montoVenta <- 0
	totalRecaudado <- 0
	totalVentas <- 0
	Repetir
		Escribir '¿Desea ingresar venta? S / N'
		Leer opc1
		Si (opc1=='s') Entonces
			Escribir 'Ingrese nombre: '
			Leer nombre
			Escribir 'Ingrese monto de la compra: '
			Leer monto
			Escribir 'Ingrese cantidad de libros: '
			Leer cantidad
			Si cantidad>5 Entonces
				montoVenta <- monto*0.95
			SiNo
				montoVenta <- monto
			FinSi
			Escribir '¿Es socio?'
			Leer socio
			Si (socio=='s') Entonces
				montoVenta <- montoVenta*0.90
			FinSi
			Escribir 'Total a pagar: ',montoVenta
			totalVentas <- totalVentas + 1
			totalRecaudado <- totalRecaudado + montoVenta
		FinSi
	Mientras Que (opc1<>'N')Y(opc1<>'n')
	Escribir 'Total ventas realizadas: ',totalVentas
	Escribir 'Total recaudado: ',totalRecaudado
FinAlgoritmo
