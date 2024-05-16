Algoritmo ej08
	Definir i Como Cadena
	Definir importe, comision, ventas Como Real
	comision <- 0
	ventas <- 0
	Para i<-1 Hasta 5 Con Paso 1 Hacer
		Repetir
			Escribir 'Ingrese importe: '
			Leer importe
			ventas <- ventas+importe
		Mientras Que importe<>0
		comision <- ventas*0.025
		Escribir 'Comisión: ', comision, ' codigo ', i
	FinPara
FinAlgoritmo
