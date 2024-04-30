Algoritmo mostrar_iguales
	Definir num1, num2 Como Entero
	Escribir 'Ingrese el primer numero: '
	Leer num1
	Escribir 'Ingrese el segundo numero: '
	Leer num2
	Si (num1 > num2) Entonces
		Escribir 'El primer numero ingresado es el mayor: ', num1
	SiNo
		Si (num2 > num1) Entonces
			Escribir 'El segundo numero ingresado es el mayor: ', num2
		SiNo
			Escribir 'Son iguales'
		FinSi
	FinSi
FinAlgoritmo
