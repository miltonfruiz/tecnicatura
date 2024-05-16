Algoritmo ej06_leer
	definir nota, totalNotas, promedio como real
	definir ingreso como cadena
	contador <- 0
	Escribir '¿Desea ingresar nota? S / N'
	Leer ingreso
	Mientras (ingreso <> 'N') Y (ingreso <> 'n') Hacer
		Si (ingreso == 'S') O (ingreso == 's') Entonces
			Escribir 'Ingrese nota: '
			Leer nota
			totalNotas <- totalNotas + nota
			contador <- contador + 1
			Escribir '¿Desea ingresar nota? S / N'
			Leer ingreso
		SiNo
			Escribir 'Caracter invalido: '
			Leer ingreso
		FinSi
	FinMientras
	promedio <- totalNotas / contador
	Escribir 'Suma de notas: ',totalNotas
	Escribir 'Promedio de notas: ',promedio
FinAlgoritmo
