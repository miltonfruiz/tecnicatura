Algoritmo tres_numeros
	Definir num1, num2, num3 Como Entero
	Escribir 'Ingrese el primer numero: '
	Leer num1
	Escribir 'Ingrese el segundo numero: '
	Leer num2
	Escribir 'Ingrese el tercer numero: '
	Leer num3
	Si (num1 > num2) Y (num1 > num3) Entonces
		Escribir 'El primer numero ingresado es el mayor: ',num1
	SiNo
		Si (num2 > num1) Y (num2 > num3) Entonces
			Escribir 'El segundo numero ingresado es el mayor: ',num2
		SiNo
			Escribir 'El tercer numero ingresado es el mayor: ',num3
		FinSi
	FinSi
FinAlgoritmo
