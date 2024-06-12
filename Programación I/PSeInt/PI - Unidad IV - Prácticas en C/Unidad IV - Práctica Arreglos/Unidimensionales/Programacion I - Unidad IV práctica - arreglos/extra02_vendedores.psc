Algoritmo extra02_vendedores
	definir i, n, vendedores como entero
	definir totalTienda, totalVendedor como real
	Escribir 'Ingrese vendedores: '
	Leer n
	dimension vendedores[n,5]
	totalTienda <- 0
	Para i<-1 Hasta n Con Paso 1 Hacer
		totalVendedor <- 0
		Escribir 'Vendedor: ',i
		Para j<-1 Hasta 5 Con Paso 1 Hacer
			Escribir 'Ingreso producto: ',j
			Leer vendedores[i,j]
			totalVendedor <- totalVendedor + vendedores[i,j]
		FinPara
		Escribir 'Total vendedor ',i,': $',totalVendedor
		totalTienda <- totalTienda + totalVendedor
	FinPara
	Escribir 'Total tienda: $',totalTienda
FinAlgoritmo
