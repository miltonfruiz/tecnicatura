Algoritmo extra06_matriz
	definir i, j, matriz como entero
	dimension matriz[3,3]
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Para j<-1 Hasta 3 Con Paso 1 Hacer
			Escribir 'Ingrese valor: '
			Leer matriz[i,j]
		FinPara
	FinPara
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Para j<-1 Hasta 3 Con Paso 1 Hacer
			Si (i==1 y j==1) O (i==2 y j==2) O (i==3 y j==3) Entonces
				Escribir sinsaltar(matriz[i,j]),' '
			SiNo
				Escribir sinsaltar('#'),' '
			FinSi
		FinPara
		Escribir ''
	FinPara
FinAlgoritmo
