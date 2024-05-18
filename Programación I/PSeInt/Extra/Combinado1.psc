Algoritmo sin_titulo
	// Definir Variables 
	Definir dniCliente, clienteFrecuente, tipo_de_pago Como Caracter
	Definir medioPago, tarjetaCredito, cantidadVentas Como Entero
	Definir iva, montoFinal, montoVenta, montoTotal Como Real
	definir opcion Como Entero
	iva = 1.21
	montoTotal = 0
	
	// Repetir mientras el empleado desee ingresar ventas 
	Repetir
		Repetir
			//1.- Solicitar y Validar DNI del cliente (longitud mayor a 7)
			Escribir "Ingrese el DNI del cliente "
			leer dniCliente
		Mientras Que Longitud(dniCliente) <= 7
		Escribir "Ingrese el monto de la venta "
		leer montoVenta
		Escribir "INGRESE EL MEDIO DE PAGO "
		Escribir "<1> Efectivo   <2> Debito   <3> Credito (solo 1 pago)"
		leer medioPago
		segun medioPago
			1: montoFinal= montoVenta * 0.85
				tipo_de_pago = "Efectivo"
			2: montoFinal= montoVenta * 0.90
				tipo_de_pago = "Debito"
			3: montoFinal= montoVenta
				tipo_de_pago = "Credito "
			De Otro Modo:
				Escribir "No tenemos otros medio de pago "
		FinSegun
		montoFinal = montoFinal * iva
		cantidadVentas= cantidadVentas + 1
		montoTotal = montoTotal + montoFinal
		
		Escribir "Es un cliente frecuente SI/NO "
		leer clienteFrecuente
		
		// MOSTRAR EL RESUMEN DE LA VENTA 
		Escribir "Dni Cliente   ", dniCliente
		Escribir "Medio de Pago ", tipo_de_pago
		Escribir "Total         ", montoFinal
		
		Escribir " Continua con el ingreso de las ventas <1> Si  <2> Finaliza "
		leer opcion
		
	Mientras Que opcion <> 2
	Escribir " La cantidad de Ventas del dia son    :" , cantidadVentas
	Escribir " El monto total de las ventas realizadas  : ", montoTotal
		
	
FinAlgoritmo
