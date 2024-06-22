Algoritmo integrador01_calculo
	Definir productos Como Cadena
	Dimensionar productos(4,4)
	cargaDatos(productos)
	registrarVentas(productos)
	calculoMontos(productos)
FinAlgoritmo

SubProceso cargaDatos(arreglo)
	arreglo[1,1]<-'01'
	arreglo[1,2]<-'3500.00'
	arreglo[1,3]<-'Mantel 2x2'
	arreglo[1,4]<-'0'
	arreglo[2,1]<-'02'
	arreglo[2,2]<-'800.99'
	arreglo[2,3]<-'Plato playo 24cm'
	arreglo[2,4]<-'0'
	arreglo[3,1]<-'03'
	arreglo[3,2]<-'1450.50'
	arreglo[3,3]<-'Copa vino'
	arreglo[3,4]<-'0'
	arreglo[4,1]<-'04'
	arreglo[4,2]<-'650.50'
	arreglo[4,3]<-'Plato hondo 22cm'
	arreglo[4,4]<-'0'
FinSubProceso

SubProceso mostrarDatos(arreglo)
	Para i<-1 Hasta 4 Hacer
		Escribir 'Codigo; ', arreglo[i,1], ' Precio: ', arreglo[i,2], ' Descripcion: ', arreglo[i,3], ' Cantidad vendida: ', arreglo[i,4]
	FinPara
FinSubProceso

SubProceso registrarVentas(arreglo)
	Definir i Como Entero
	Para i<-1 Hasta 4 Hacer
		Escribir 'Ingrese cantidad vendida: '
		Leer arreglo[i,4]
	FinPara
FinSubProceso

SubProceso calculoMontos(arreglo)
	Definir i Como Entero
	Definir precio, cantidad, ivaProducto, adicional, total, montoProducto Como Real
	ivaProducto <- 0
	total <- 0
	montoProducto <- 0
	Para i<-1 Hasta 4 Hacer
		precio <- ConvertirANumero(arreglo[i,2])
		cantidad <- ConvertirANumero(arreglo[i,4])
		montoProducto <- calculo(precio,cantidad)
		ivaProducto <- montoProducto*0.21
		totalProducto <- montoProducto+ivaProducto
		totalVendido <- totalVendido+totalProducto
		ivaTotal <- ivaTotal+ivaProducto
	FinPara
	Escribir 'El monto total neto es: ', totalVendido
	Escribir 'El iva total es: ', ivaTotal
FinSubProceso

SubProceso total <- calculo(valor1,valor2)
	Definir total Como Real
	total <- valor1*valor2
FinSubProceso
