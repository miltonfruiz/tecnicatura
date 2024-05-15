Algoritmo ventas
	Definir venta Como Real
	Definir i, j Como Entero
	Dimensionar venta(2,4)
	venta[1,1]<-900
	venta[1,2]<-700
	venta[1,3]<-683
	venta[1,4]<-104
	venta[2,1]<-673
	venta[2,2]<-745
	venta[2,3]<-687
	venta[2,4]<-924
	Escribir 'Ventas'
	Para i<-1 Hasta 2 Con Paso 1 Hacer
		Para j<-1 Hasta 4 Con Paso 1 Hacer
			Escribir 'Sucursal ', i, ' Caja ', j, ': ', venta[i,j]
		FinPara
	FinPara
FinAlgoritmo
