Algoritmo ej10_retomamos
	definir opc como entero
	definir num1, num2, suma, resta, division, multiplicacion como real
	suma <- 0
	resta <- 0
	division <- 0
	multiplicacion <- 0
	operaciones <- 0
	Escribir 'Ingrese el primero numero: '
	Leer num1
	Escribir 'Ingrese el segundo numero: '
	Leer num2
	Escribir '1. Informar suma'
	Escribir '2. Informar resta'
	Escribir '3. Informar multiplicacion'
	Escribir '4. Informar division'
	Escribir '5. Informar operaciones realizadas'
	Escribir '6. Salir'
	Escribir 'Seleccione una operacion: '
	Leer opc
	Mientras opc <> 6 Hacer
		Segun opc Hacer
			1:
				suma <- num1 + num2
				Escribir '1. Suma: ',suma
				operaciones <- operaciones + 1
			2:
				resta <- num1 - num2
				Escribir '2. Resta: ',resta
				operaciones <- operaciones + 1
			3:
				multiplicacion <- num1 * num2
				Escribir '3. Multiplicacion: ',multiplicacion
				operaciones <- operaciones + 1
			4:
				division <- num1 / num2
				Escribir '4. Division: ',division
				operaciones <- operaciones + 1
			5:
				Escribir '5. Operaciones realizada: ',operaciones
			De Otro Modo:
				Escribir 'Opcion incorrecta...'
		FinSegun
		Escribir 'Ingrese una opcion: '
		Leer opc
	FinMientras
	Escribir 'Hasta pronto!'
FinAlgoritmo
