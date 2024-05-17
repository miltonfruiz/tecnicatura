Algoritmo ej09_cliente
	definir dni, pass, cbu, dniIngresado, passIngresado, intentos, ingreso como entero
	definir saldo como real
	dni <- 35654123
	pass <- 1234
	saldo <- 150000
	cbu <- 986323456
	intentos <- 1
	Escribir 'Ingrese usuario: '
	Leer dniIngresado
	Mientras (dniIngresado <> dni) Hacer
		Escribir 'Usuario incorrecto: (ingrese DNI)'
		Leer dniIngresado
	FinMientras
	Escribir 'Ingrese pass: '
	Leer passIngresado
	Mientras (passIngresado <> pass) Y (intentos <> 3) Hacer
		intentos <- intentos + 1
		Escribir 'Ingrese pass: '
		Leer passIngresado
	FinMientras
	Si passIngresado == pass Entonces
		Escribir '1- Consultar Saldo'
		Escribir '2- Consultar CBU'
		Escribir '3- Salir'
		Escribir 'Ingrese opcion: '
		Leer ingreso
		Mientras (ingreso <> 3) Hacer
			Escribir 'Ingrese opcion: '
			Leer ingreso
			Segun ingreso Hacer
				1:
					Escribir '1- Saldo: ',saldo
				2:
					Escribir '2- CBU: ',cbu
				3:
					Escribir 'Hasta luego!'
				De Otro Modo:
					Escribir 'Opcion incorrecta...'
			FinSegun
		FinMientras
	SiNo
		Escribir 'Se acabaron los intentos.'
	FinSi
FinAlgoritmo
