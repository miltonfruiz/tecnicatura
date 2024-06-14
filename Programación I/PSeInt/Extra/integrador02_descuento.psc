Algoritmo integrador02_descuento
	Definir medios Como Cadena
	Dimensionar medios(3,3)
	carga(medios)
	vendidos(medios)
	descuentos(medios)
FinAlgoritmo

SubProceso carga(arreglo)
	arreglo[1,1]<-'Efectivo'
	arreglo[1,2]<-'0.15'
	arreglo[1,3]<-'0'
	arreglo[2,1]<-'Débito'
	arreglo[2,2]<-'0.10'
	arreglo[2,3]<-'0'
	arreglo[3,1]<-'Crédito'
	arreglo[3,2]<-'0'
	arreglo[3,3]<-'0'
FinSubProceso

SubProceso vendidos(arreglo)
	Definir i Como Entero
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Escribir 'Ingrese monto: '
		Leer arreglo[i,3]
	FinPara
FinSubProceso

SubProceso descuentos(arreglo)
	Definir i Como Entero
	Para i<-1 Hasta 3 Hacer
		porcentaje <- ConvertirANumero(arreglo[i,2])
		monto <- ConvertirANumero(arreglo[i,3])
		aplico <- calculo(porcentaje,monto)
		Escribir 'Medio: ', arreglo[i,1], ', total descuento:', aplico
	FinPara
FinSubProceso

SubProceso total <- calculo(valor1,valor2)
	Definir total Como Real
	total <- valor1*valor2
FinSubProceso

SubProceso muestro(arreglo)
	Definir i, j Como Entero
	Para i<-1 Hasta 3 Hacer
		Para j<-1 Hasta 3 Hacer
			Escribir (arreglo[i,j]), ' 'Sin Saltar
		FinPara
		Escribir ' '
	FinPara
FinSubProceso
