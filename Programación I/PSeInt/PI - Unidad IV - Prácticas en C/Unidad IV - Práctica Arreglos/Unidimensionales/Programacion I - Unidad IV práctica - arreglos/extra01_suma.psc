Algoritmo extra01_suma
	Definir auno, ados, ares, i, n Como Entero
	Repetir
		Escribir 'Ingrese tamaño arreglo: (minimo 3 elementos)'
		Leer n
	Mientras Que n<3
	Dimensionar auno(n)
	Dimensionar ados(n)
	Dimensionar ares(n)
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir 'Elemento arreglo 1: '
		Leer auno[i]
		Escribir 'Elemento arreglo 2: '
		Leer ados[i]
		ares[i] <- auno[i] + ados[i]
	FinPara
	Escribir 'Elementos arreglo resultante: '
	Para i<-1 Hasta n Con Paso 1 Hacer
		Escribir ares[i]
	FinPara
FinAlgoritmo
