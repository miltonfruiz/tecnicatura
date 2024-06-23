Algoritmo sin_titulo
	Definir i Como Entero
	Definir car Como Cadena
	Definir vaeri Como Logico
	vaeri <- Verdadero
	Escribir "Ingrese numero:  "
	Leer num
	Para i<-1 Hasta Longitud(num) Hacer
		car <- Subcadena(num,i,i)
		Si (car <>'0' Y car <>'1'Y car <>'2' Y car <>'3' Y car <>'4' Y car <>'5' Y car <>'6' Y car <>'7' Y car <>'8' Y car <>'9') Entonces
			vaeri <- Falso
		FinSi
	FinPara
	Si vaeri Entonces
		Escribir 'Es numero'
	SiNo
		Escribir 'No es numero'
	FinSi
FinAlgoritmo