Algoritmo ej01_empleado
	Definir dni, opc1, frecuente, medio Como Cadena
	Definir opc2, opc3 Como Entero
	Definir monto, descuento, iva, cantidadVentas, montoTotal, montoTotalVentas Como Real
	descuento <- 0
	iva <- 0
	montoTotal <- 0
	cantidadVentas <- 0
	monTotalVentas <- 0
	medio <- ''
	Repetir
		Escribir '¿Desea ingresar venta? S / N'
		Leer opc1
		Si (opc1=='S') O (opc1=='s') Entonces
			Repetir
				Escribir 'Ingrese DNI: '
				Leer dni
				Si longitud(dni)==8 Entonces
					Repetir
						Escribir 'Ingrese monto: '
						Leer monto
						Si monto>0 Entonces
							Repetir
								Escribir '1 - Efectivo'
								Escribir '2 - Debito'
								Escribir '3 - Credito (1 pago)'
								Escribir '4 - Salir'
								Escribir 'Ingrese medio de pago: '
								Leer opc2
								Segun opc2 Hacer
									1:
										Escribir '* Efectivo'
										descuento <- monto *0.85
										medio <- 'Efectivo'
									2:
										Escribir '* Debito'
										descuento <- monto*0.90
										medio <- 'Debito'
									3:
										Repetir
											Escribir '* Credito'
											Escribir '1 - Visa'
											Escribir '2 - MasterCard'
											Escribir '3 - American Express'
											Leer opc3
											Si (opc3<1) O (opc3>3) Entonces
												Escribir 'x Opcion invalida x'
											FinSi
										Mientras Que (opc3>3)O(opc3<1)
										descuento <- monto
										medio <- 'Credito'
									4:
										Escribir 'Volviendo al menu...'
									De Otro Modo:
										Escribir 'x Opcion incorrecta x'
								FinSegun
								iva <- descuento *0.21
								montoTotal <- descuento + iva
								Si (opc2>=1)Y(opc2<=3) Entonces
									Repetir
										Escribir '¿Cliente frecuente? S/N'
										Leer frecuente
									Mientras Que (frecuente<>'s')Y(frecuente<>'n')
									Escribir 'DNI: ',dni
									Escribir 'Medio: ',medio
									Escribir 'Total: ',montoTotal
									opc2 <- 4
									cantidadVentas <- cantidadVentas + 1
									montoTotalVentas <- montoTotalVentas + montoTotal
								FinSi
							Mientras Que opc2<>4
						SiNo
							Escribir 'x Monto invalido x'
						FinSi
					Mientras Que monto<0
				SiNo
					Escribir 'x DNI invalido (8 caracteres) x'
				FinSi
			Mientras Que longitud(dni)<8
		SiNo
			Si (opc1<>'N') Y (opc1<>'n') Entonces
				Escribir 'x Opcion incorrecta x'
			FinSi
		FinSi
	Mientras Que (opc1<>'N') Y (opc1<>'n')
	Escribir 'Cantidad Ventas: ',cantidadVentas
	Escribir 'Monto Total de Ventas: $',montoTotalVentas
	Escribir 'Hasta pronto!'
FinAlgoritmo
