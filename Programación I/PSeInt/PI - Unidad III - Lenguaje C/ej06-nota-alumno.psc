Algoritmo nota_alumno
	Definir nota Como Entero
	Escribir 'Ingrese nota: '
	Leer nota
	Si (nota>=0) Y (nota<=10) Entonces
		Si nota<4 Entonces
			Escribir 'Reprobado'
		SiNo
			Si nota<6 Entonces
				Escribir 'Regular'
			SiNo
				Escribir 'Promocionado'
			FinSi
		FinSi
	SiNo
		Escribir 'Nota ingresada incorrecta'
	FinSi
FinAlgoritmo
