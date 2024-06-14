Algoritmo ej01_buscar
	Definir pacientes, dni Como Cadena
	Definir pos, opc Como Entero
	Dimensionar pacientes(8,5)
	carga(pacientes)
	Escribir 'Ingrese DNI paciente: '
	Leer dni
	pos <- buscar(pacientes,dni)
	encontrado(pacientes,pos)
	Repetir
		menu
		Leer opc
	Mientras Que opc<>1 Y opc<>2
	opciones(pacientes,opc)
FinAlgoritmo

SubProceso carga(arreglo)
	arreglo[1,1]<-'Ana'
	arreglo[1,2]<-'Martinez'
	arreglo[1,3]<-'17.123456'
	arreglo[1,4]<-'+541141200011'
	arreglo[1,5]<-'56'
	arreglo[2,1]<-'Camila'
	arreglo[2,2]<-'Noe'
	arreglo[2,3]<-'25.789101'
	arreglo[2,4]<-'+543419485831'
	arreglo[2,5]<-'45'
	arreglo[3,1]<-'Bruno'
	arreglo[3,2]<-'Noe'
	arreglo[3,3]<-'39.121314'
	arreglo[3,4]<-'+541145565789'
	arreglo[3,5]<-'26'
	arreglo[4,1]<-'Dardo'
	arreglo[4,2]<-'Pistilli'
	arreglo[4,3]<-'21.151617'
	arreglo[4,4]<-'+541158637543'
	arreglo[4,5]<-'48'
	arreglo[5,1]<-'Ernestina'
	arreglo[5,2]<-'Quesada'
	arreglo[5,3]<-'33.181920'
	arreglo[5,4]<-'+541161294758'
	arreglo[5,5]<-'35'
	arreglo[6,1]<-'Fausto'
	arreglo[6,2]<-'Ramirez'
	arreglo[6,3]<-'15.212223'
	arreglo[6,4]<-'+543423444567'
	arreglo[6,5]<-'60'
	arreglo[7,1]<-'Jasmín'
	arreglo[7,2]<-'Sosa'
	arreglo[7,3]<-'40.242526'
	arreglo[7,4]<-'+543402512345'
	arreglo[7,5]<-'25'
	arreglo[8,1]<-'Leonardo'
	arreglo[8,2]<-'Tolosa'
	arreglo[8,3]<-'11.272829'
	arreglo[8,4]<-'+541151234567'
	arreglo[8,5]<-'70'
FinSubProceso

SubProceso posicion <- buscar(arreglo,num)
	Definir i Como Entero
	Definir posicion Como Entero
	i <- 0
	Repetir
		i <- i+1
	Mientras Que arreglo[i,3]<>num Y i<8
	Si arreglo[i,3]==num Entonces
		posicion <- i
	SiNo
		posicion <- -1
	FinSi
FinSubProceso

SubProceso encontrado(arreglo,posicion)
	Definir i Como Entero
	Si posicion<>-1 Entonces
		Para i<-1 Hasta 5 Con Paso 1 Hacer
			Escribir (arreglo[posicion,i]), ' 'Sin Saltar
		FinPara
	SiNo
		Escribir 'NO SE ENCONTRO'
	FinSi
FinSubProceso

SubProceso apellido(arreglo)
	Definir i, j, k Como Entero
	Definir aux Como Cadena
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		Para j<-i+1 Hasta 8 Con Paso 1 Hacer
			Si arreglo[i,2]<arreglo[j,2] Entonces
				Para k<-1 Hasta 5 Con Paso 1 Hacer
					aux <- arreglo[i,k]
					arreglo[i,k]<-arreglo[j,k]
					arreglo[j,k]<-aux
				FinPara
			FinSi
		FinPara
	FinPara
	muestro(arreglo)
FinSubProceso

SubProceso muestro(arreglo)
	Para i<-1 Hasta 8 Con Paso 1 Hacer
		Para j<-1 Hasta 5 Con Paso 1 Hacer
			Escribir (arreglo[i,j]), ' 'Sin Saltar
		FinPara
		Escribir ' '
	FinPara
FinSubProceso

SubProceso opciones(arreglo,opcion)
	Si opcion==1 Entonces
		Escribir '1- Ordenada por edad'
		edad(arreglo)
	SiNo
		Escribir '2- Ordenada por apellido'
		apellido(arreglo)
	FinSi
FinSubProceso

SubProceso edad(arreglo)
	Definir i, j, k Como Entero
	Definir aux Como Cadena
	Para i<-1 Hasta 8 Hacer
		convertir <- ConvertirANumero(arreglo[i,5])
	FinPara
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		Para j<-i+1 Hasta 8 Con Paso 1 Hacer
			Si arreglo[i,5]>arreglo[j,5] Entonces
				Para k<-1 Hasta 5 Con Paso 1 Hacer
					aux <- arreglo[i,k]
					arreglo[i,k]<-arreglo[j,k]
					arreglo[j,k]<-aux
				FinPara
			FinSi
		FinPara
	FinPara
	muestro(arreglo)
FinSubProceso

SubProceso menu
	Escribir '* Bienvenido al Menu *'
	Escribir '1- Lista ordenada por edad'
	Escribir '2- Lista ordenada por apellido'
	Escribir 'Ingrese opcion'
FinSubProceso
	