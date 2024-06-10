Algoritmo ej05_corredores
	Definir marcas, promedio, total Como Real
	Definir i, menor, mayor Como Entero
	Dimensionar marcas(10)
	total <- 0
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir 'Ingrese marca: '
		Leer marcas[i]
		total <- total+marcas[i]
	FinPara
	promedio <- total/10
	Escribir 'Promedio: ', promedio
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Si marcas[i]>=promedio Entonces
			mayor <- mayor+1
		SiNo
			menor <- menor+1
		FinSi
	FinPara
	Escribir 'Corredores mayor promedio: ', mayor
	Escribir 'Corredores menor promedio: ', menor
FinAlgoritmo
