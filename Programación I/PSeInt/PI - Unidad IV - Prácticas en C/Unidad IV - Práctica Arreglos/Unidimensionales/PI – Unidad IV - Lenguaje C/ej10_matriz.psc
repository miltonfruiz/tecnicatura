Algoritmo ej10_matriz
	Definir i, j, matriz Como Entero
	Dimensionar matriz(3,3)
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Para j<-1 Hasta 3 Con Paso 1 Hacer
			Escribir 'Ingrese valor: '
			Leer matriz[i,j]
		FinPara
	FinPara
	suma <- 0
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Para j<-1 Hasta 3 Con Paso 1 Hacer
			Escribir sinsaltar(matriz[i,j]), ' '
			Si (matriz[i,j]<>matriz[1,1])Y(matriz[i,j]<>matriz[2,2])Y(matriz[i,j]<>matriz[3,3]) Entonces
				suma <- suma + matriz[i,j]
			FinSi
		FinPara
		Escribir ' '
	FinPara
	Escribir 'Suma total: ',suma
FinAlgoritmo
