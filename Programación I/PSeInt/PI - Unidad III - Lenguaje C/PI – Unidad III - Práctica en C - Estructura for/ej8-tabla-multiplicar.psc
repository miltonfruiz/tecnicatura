Algoritmo tabla_multiplicar
	Definir i, n1, producto Como Entero
	Escribir 'Ingrese un numero: '
	Leer n1
	Escribir "Tabla de multiplicar de numero ingresado"
	Para i<-0 Hasta 10 Con Paso 1 Hacer
		producto = n1 * i
		Escribir n1," x ",i," = ", producto
	FinPara
FinAlgoritmo
