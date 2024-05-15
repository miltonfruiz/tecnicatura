Algoritmo ej05_corredores
	Definir marca_corredor, marcas, promedio, suma_marcas como Real
	Definir i,menor_promedio, mayor_promedio como Entero
	Dimension marca_corredor[10]
	suma_marcas = 0
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir 'Ingrese marca: '
		Leer marca_corredor[i]
		suma_marcas = suma_marcas + marca_corredor[i]
	FinPara
	promedio = suma_marcas / 10
	Escribir 'Promedio: ', promedio
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Si marca_corredor[i] > promedio Entonces
			mayor_promedio = mayor_promedio + 1
		SiNo
			menor_promedio = menor_prromedio + 1
		FinSi
	FinPara
	Escribir 'Corredores mayor promedio: ',mayor_promedio
	Escribir 'Corredores menor promedio: ',menor_promedio
FinAlgoritmo
