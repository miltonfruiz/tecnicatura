Algoritmo integradores03_listado
	Definir productos Como Cadena
	Dimensionar productos(4,3)
	carga(productos)
	cantidad(productos)
FinAlgoritmo

SubProceso carga(arreglo)
	arreglo[1,1]<-'01'
	arreglo[1,2]<-'Mantel 2x2'
	arreglo[1,3]<-'0'
	arreglo[2,1]<-'02'
	arreglo[2,2]<-'Plato playo 24cm'
	arreglo[2,3]<-'0'
	arreglo[3,1]<-'03'
	arreglo[3,2]<-'Copa vino'
	arreglo[3,3]<-'0'
	arreglo[4,1]<-'04'
	arreglo[4,2]<-'Plato hondo 22cm'
	arreglo[4,3]<-'0'
FinSubProceso

SubProceso cantidad(arreglo)
	Definir i, j, aux Como Entero
	Para i<-1 Hasta 4 Hacer
		Escribir 'Ingrese cantidad vendida: '
		Leer arreglo[i,3]
	FinPara
	ordeno(arreglo)
FinSubProceso

SubProceso ordeno(arreglo)
	Definir i, j, k, convierto Como Entero
	Definir aux Como Cadena
	Para i<-1 Hasta 4 Hacer
		convierto <- ConvertirANumero(arreglo[i,3])
	FinPara
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Para j<-i+1 Hasta 4 Con Paso 1 Hacer
			Si arreglo[i,3]<arreglo[j,3] Entonces
				Para k<-1 Hasta 3 Con Paso 1 Hacer
					aux <- arreglo[i,k]
					arreglo[i,k]<-arreglo[j,k]
					arreglo[j,k]<-aux
				FinPara
			FinSi
		FinPara
	FinPara
	Escribir 'Ordenado: '
	muestro(arreglo)
FinSubProceso

SubProceso muestro(arreglo)
	Definir i, j Como Entero
	Para i<-1 Hasta 4 Hacer
		Para j<-1 Hasta 3 Hacer
			Escribir (arreglo[i,j]), ' 'Sin Saltar
		FinPara
		Escribir ' '
	FinPara
FinSubProceso
