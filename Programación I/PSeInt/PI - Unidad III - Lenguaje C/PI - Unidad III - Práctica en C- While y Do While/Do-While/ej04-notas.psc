Algoritmo ej04_notas
	Definir alumnos, parciales Como Entero
	Definir nota, notaAlumno, promedio, totalNota Como Real
	totalNota <- 0
	promedioGeneral <- 0
	Escribir 'Ingrese cantidad alumnos: '
	Leer alumnos
	Para i<-1 Hasta alumnos Con Paso 1 Hacer
		Escribir 'Ingrese total parciales: '
		Leer parciales
		promedioAlumno <- 0
		notaAlumno <- 0
		Para j<-1 Hasta parciales Con Paso 1 Hacer
			Repetir
				Escribir 'Ingrese nota: '
				Leer nota
				Si (nota>0)Y(nota<=10) Entonces
					notaAlumno <- notaAlumno+nota
				SiNo
					Escribir 'La nota debe ser mayor a 0 y menor a 10: '
				FinSi
			Mientras Que (nota<0)O(nota>10)
		FinPara
		promedioAlumno <- notaAlumno/parciales
		Escribir 'Promedio: ', promedioAlumno
		totalNota <- totalNota+promedioAlumno
	FinPara
	promedioGeneral <- totalNota/alumnos
	Escribir 'Promedio general: ', promedioGeneral
FinAlgoritmo
