Algoritmo ej09_cliente
	Definir dni, pass, cbu, dniIngresado, passIngresado, intentos, ingreso Como Entero
	Definir saldo Como Real
	dni <- 35654123
	pass <- 1234
	saldo <- 150000
	cbu <- 986323456
	intentos <- 0
	Repetir
		Escribir 'Ingrese usuario: '
		Leer dniIngresado
		Si dniIngresado == dni Entonces
			Repetir
				Escribir 'Ingrese pass: '
				Leer passIngresado
				Si passIngresado == pass Entonces
					Repetir
						Escribir '1- Consultar Saldo'
						Escribir '2- Consultar CBU'
						Escribir '3- Salir'
						Escribir 'Ingrese opcion: '
						Leer ingreso
						Segun ingreso Hacer
							1:
								Escribir '1- Saldo: ', saldo
							2:
								Escribir '2- CBU: ', cbu
							3:
								Escribir 'Hasta luego!'
							De Otro Modo:
								Escribir 'x Opcion incorrecta x'
						FinSegun
					Mientras Que ingreso <> 3
				SiNo
					Escribir 'x Pass incorrecto x'
					intentos <- intentos+1
					Si intentos==3 Entonces
						Escribir 'x Se acabaron los intentos x'
					FinSi
				FinSi
			Mientras Que (intentos<>3) Y (ingreso<>3)
		SiNo
			Escribir 'x Usuario incorrecto (ingrese DNI) x'
		FinSi
	Mientras Que dniIngresado <> dni
FinAlgoritmo
