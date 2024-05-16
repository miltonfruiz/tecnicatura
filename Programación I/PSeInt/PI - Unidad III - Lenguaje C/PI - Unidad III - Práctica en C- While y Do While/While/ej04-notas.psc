Algoritmo ej04_notas
	Definir alumnos, parciales Como Entero
	Definir nota, notaAlumno, promedio, totalNota como Real
	notaAlumno <- 0
	totalNota <- 0
	promedioGeneral <- 0
	Escribir 'Ingrese cantidad alumnos: '
	Leer alumnos
	Para i<-1 Hasta alumnos Con Paso 1 Hacer
		Escribir 'Ingrese total parciales: '
		Leer parciales
		Para j<-1 Hasta parciales Con Paso 1 Hacer
			promedioAlumno <- 0
			Escribir 'Ingrese nota: '
			Leer nota
			Mientras (nota < 0) O (nota > 10) Hacer
				Escribir 'La nota debe ser mayor a 0 y menor a 10: '
				Leer nota
			FinMientras
			notaAlumno <- notaAlumno + nota
		FinPara
		promedioAlumno <- notaAlumno / parciales
		Escribir 'Promedio: ',promedioAlumno
		totalNota <- totalNota + promedioAlumno
	FinPara
	promedioGeneral <- totalNota / alumnos
	Escribir 'Promedio general: ',promedioGeneral
FinAlgoritmo
