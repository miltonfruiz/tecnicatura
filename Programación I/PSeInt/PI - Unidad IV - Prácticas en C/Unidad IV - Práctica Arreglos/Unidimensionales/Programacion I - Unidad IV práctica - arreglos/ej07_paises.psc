Algoritmo ej07_paises
	Definir i, j Como Entero
	Definir paises Como Cadena
	Dimensionar paises(3,4)
	paises[1,1]<-'Argentina'
	paises[1,2]<-'Buenos aires'
	paises[1,3]<-'Rosario'
	paises[1,4]<-'Cordoba'
	paises[2,1]<-'Colombia'
	paises[2,2]<-'Cali'
	paises[2,3]<-'Bogota'
	paises[2,4]<-'Santa Marta'
	paises[3,1]<-'Brasil'
	paises[3,2]<-'Brasilia'
	paises[3,3]<-'Rio de Janeiro'
	paises[3,4]<-'San pablo'
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Para j<-1 Hasta 4 Con Paso 1 Hacer
			Escribir sinsaltar(paises[i,j]), '  '
		FinPara
		Escribir ''
	FinPara
FinAlgoritmo
