Algoritmo ej03_tienda
	definir opc1, codigo, talla como cadena
	definir precio, precioVenta, cantidadVentas, totalRecaudado como real
	definir prendas, totalVentas como entero
	Repetir
		Escribir '¿Desea ingresar venta? s / n'
		Leer opc1
		Si opc1=='s' Entonces
			Repetir
				Escribir 'Ingrese codigo: '
				Leer codigo
			Mientras Que longitud(codigo)<>4
			Escribir 'Ingrese precio: '
			Leer precio
			Escribir 'Ingrese talla: S - M - L - XL'
			Leer talla
			Si talla=='xl' Entonces
				precioVenta <- precio +(precio*0.5)
			SiNo
				precioVenta <- precio
			FinSi
			Escribir 'Cantidad de prendas: '
			Leer prendas
			Si prendas>3 Entonces
				precioVenta <- precioVenta*0.90
			FinSi
			cantidadVentas <- cantidadVentas + 1
			totalRecaudado <- totalRecaudado + precioVenta
		FinSi
	Mientras Que opc1<>'n'
	Escribir 'Cantidad ventas: ',cantidadVentas
	Escribir 'Total recaudado: ',totalRecaudado
FinAlgoritmo
