Algoritmo ej05_usuario
	Definir dni, dniIngresado, intentos Como Entero
	Definir nota Como Real
	dni <- 38632584
	nota <- 7
	intentos <- 1
	Escribir 'Ingrese DNI: '
	Leer dniIngresado
	Mientras (dni<>dniIngresado) Y (intentos<>3) Hacer
		intentos <- intentos+1
		Escribir 'DNI incorrecto: '
		Leer dniIngresado
	FinMientras
	Si dni==dniIngresado Entonces
		Escribir 'DNI correcto, la nota es: ', nota
	SiNo
		Escribir 'Se acabaron los intentos'
	FinSi
FinAlgoritmo
