Algoritmo ej05_usuario
	Definir dni, dniIngresado, intentos Como Entero
	Definir nota Como Real
	dni <- 38632584
	nota <- 7
	intentos <- 0
	Repetir
		Escribir 'Ingrese DNI: '
		Leer dniIngresado
		Si dni==dniIngresado Entonces
			Escribir 'DNI correcto, la nota es: ', nota
		SiNo
			Escribir 'DNI incorrecto: '
			intentos <- intentos+1
		FinSi
		Si intentos==3 Entonces
			Escribir 'Se acabaron los intentos'
		FinSi
	Mientras Que (dni<>dniIngresado)Y(intentos<>3)
FinAlgoritmo
