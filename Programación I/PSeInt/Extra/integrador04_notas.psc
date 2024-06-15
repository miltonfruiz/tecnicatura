Algoritmo integrador04_notas
	Definir opc, totalAplazos Como Entero
	Definir desea Como Cadena
	Definir total Como Real
	total <- 0
	Escribir 'Ingrese cantidad de alumnos: '
	Leer n
	Dimensionar uno(n)
	Dimensionar dos(n)
	Dimensionar tres(n)
	Repetir
		Repetir
			menu()
			Leer opc
		Mientras Que opc>7 O opc<1
		Segun opc Hacer
			1:
				Escribir '1. Carga de Notas'
				carga(uno,dos,tres,n)
			2:
				Escribir '2. Promedios'
				promedio(uno,dos,tres,n)
			3:
				Escribir '3. Promedio total de la materia: '
				materia(uno,dos,tres,n)
			4:
				Escribir '4. Nota menor a 3:'
				aplazos(uno,dos,tres,n)
			5:
				Escribir '5. Regulares 4/6'
				regulares(uno,dos,tres,n)
			6:
				Escribir '6. Aprobados '
				aprobados(uno,dos,tres,n)
		FinSegun
		Escribir '¿Desea cerrar sesion? [s/n]'
		Leer desea
	Mientras Que desea<>'s'
FinAlgoritmo

SubProceso carga(arreglo1,arreglo2,arreglo3,n)
	Escribir 'Cargando la comisión 1...'
	Para i<-1 Hasta n Hacer
		Repetir
			Escribir 'Ingrese nota alumno: ', i
			Leer arreglo1[i]
		Mientras Que arreglo1[i]<0 O arreglo1[i]>11
	FinPara
	Escribir 'Cargando la comisión 2...'
	Para i<-1 Hasta n Hacer
		Repetir
			Escribir 'Ingrese nota alumno: ', i
			Leer arreglo2[i]
		Mientras Que arreglo2[i]<0 O arreglo2[i]>11
	FinPara
	Escribir 'Cargando la comisión 3...'
	Para i<-1 Hasta n Hacer
		Repetir
			Escribir 'Ingrese nota alumno: ', i
			Leer arreglo3[i]
		Mientras Que arreglo3[i]<0 O arreglo3[i]>11
	FinPara
FinSubProceso

SubProceso menu
	Escribir '* Bienvenido al Menu *'
	Escribir '1. Cargar notas'
	Escribir '2. Promedio por Comision'
	Escribir '3. Promedio por materia'
	Escribir '4. Cantidad de aplazas en la materia'
	Escribir '5. Cantidad regularizados en la materia'
	Escribir '6. Cantidad de aprobados en la materia'
	Escribir '7. Salir'
FinSubProceso

SubProceso promedio(arreglo1,arreglo2,arreglo3,limite)
	Definir i Como Entero
	Definir suma, calculo Como Real
	Para i<-1 Hasta limite Hacer
		suma <- suma+arreglo1[i]
	FinPara
	calculo <- suma/limite
	Escribir 'Promedio comision 1: ', calculo
	suma <- 0
	Para i<-1 Hasta limite Hacer
		suma <- suma+arreglo2[i]
	FinPara
	calculo <- suma/limite
	Escribir 'Promedio comision 2: ', calculo
	suma <- 0
	Para i<-1 Hasta limite Hacer
		suma <- suma+arreglo3[i]
	FinPara
	calculo <- suma/limite
	Escribir 'Promedio comision 3: ', calculo
FinSubProceso

SubProceso materia(arreglo1,arreglo2,arreglo3,limite)
	Definir i Como Entero
	Definir suma, calculo Como Real
	Para i<-1 Hasta limite Hacer
		suma <- (arreglo1[i]+arreglo2[i]+arreglo3[i])/3
		total <- total+suma
	FinPara
	totalMateria <- total/3
	Escribir 'Promedio total de la materia: ', totalMateria
FinSubProceso

SubProceso aplazos(arreglo1,arreglo2,arreglo3,n)
	Definir contador Como Real
	Para i<-1 Hasta n Hacer
		Si arreglo1[i]<4 Entonces
			contador <- contador+1
		FinSi
		Si arreglo2[i]<4 Entonces
			contador <- contador+1
		FinSi
		Si arreglo3[i]<4 Entonces
			contador <- contador+1
		FinSi
	FinPara
	Escribir 'Aplazos: ', contador
FinSubProceso

SubProceso regulares(arreglo1,arreglo2,arreglo3,n)
	Definir contador, totalAplazos Como Real
	Para i<-1 Hasta n Hacer
		Si arreglo1[i]>=4 O arreglo1[i]<6 Entonces
			contador <- contador+1
		FinSi
		Si arreglo2[i]>=4 O arreglo2[i]<6 Entonces
			contador <- contador+1
		FinSi
		Si arreglo3[i]>=4 O arreglo3[i]<6 Entonces
			contador <- contador+1
		FinSi
	FinPara
	Escribir 'Regulares: ', contador
FinSubProceso

SubProceso aprobados(arreglo1,arreglo2,arreglo3,n)
	Definir contador, totalAplazos Como Real
	Para i<-1 Hasta n Hacer
		Si arreglo1[i]>=6 Entonces
			contador <- contador+1
		FinSi
		Si arreglo1[i]>=6 Entonces
			contador <- contador+1
		FinSi
		Si arreglo1[i]>=6 Entonces
			contador <- contador+1
		FinSi
	FinPara
	Escribir 'Aprobados: ', contador
FinSubProceso
