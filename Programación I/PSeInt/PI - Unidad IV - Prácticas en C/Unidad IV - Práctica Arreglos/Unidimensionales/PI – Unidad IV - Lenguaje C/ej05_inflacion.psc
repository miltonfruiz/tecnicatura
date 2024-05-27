Algoritmo ej05_inflacion
	definir i, mesBaja, mesAlta como entero
	definir inflacion, baja, anual como real
	dimension inflacion[12]
	inflacion[1] <- 0.8
	inflacion[2] <- 0.1
	inflacion[3] <- 0.3
	inflacion[4] <- 0.4
	inflacion[5] <- 0.3
	inflacion[6] <- 0.6
	inflacion[7] <- 0.5
	inflacion[8] <- 0.3
	inflacion[9] <- 0.7
	inflacion[10] <- 0.3
	inflacion[11] <- 0.2
	inflacion[12] <- 0.9
	anual <- 0
	baja <- 10
	mesBaja <- 12
	alta <- 0
	mesAlta <- 0
	Para i<-1 Hasta 12 Con Paso 1 Hacer
		anual <- anual + inflacion[i]
		Si inflacion[i] < baja Entonces
			baja <- inflacion[i]
			mesBaja <- i
		FinSi
		Si inflacion[i]>alta Entonces
			alta <- inflacion[i]
			mesAlta <- i
		FinSi
	FinPara
	Escribir 'a) Inflacion anual: ',anual
	Escribir 'b) Inflacion mas baja: Mes ',mesBaja,' = ',baja
	Escribir 'c) Inflacion mas alta: Mes ',mesAlta,' = ',alta
FinAlgoritmo
