Algoritmo ej03
	Definir x como Entero
	Definir nro, suma como Real
	suma <- 0
	Para x<-1 Hasta 10 Con Paso 1 Hacer
		Repetir
			Escribir 'Ingrese un valor positivo: '
			Leer nro
			Si nro <= 0 Entonces
				Escribir 'Numero ingresado invalido'
			SiNo
				suma <- suma + nro
			FinSi
		Mientras Que nro <= 0
	FinPara
	Escribir 'La suma es: ', suma
FinAlgoritmo
