Algoritmo ej06_leer
	Definir nota, totalNotas, promedio Como Real
	Definir ingreso Como Cadena
	contador <- 0
	Repetir
		Escribir '¿Desea ingresar nota? S / N'
		Leer ingreso
		Si (ingreso=='S') O (ingreso=='s') Entonces
			Escribir 'Ingrese nota: '
			Leer nota
			totalNotas <- totalNotas+nota
			contador <- contador+1
		FinSi
	Mientras Que (ingreso<>'N')Y(ingreso<>'n')
	Si contador <> 0 Entonces
		promedio <- totalNotas/contador
		Escribir 'Suma de notas: ', totalNotas
		Escribir 'Promedio de notas: ', promedio
	SiNo
		Escribir 'No se registraron notas'
	FinSi
FinAlgoritmo
