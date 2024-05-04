Algoritmo valor_n
	Definir i, j, n Como Entero
	Escribir 'Ingrese un valor: '
	Leer n
	Si n>=0 Entonces
		Para i<-n Hasta 1 Con Paso -1 Hacer
			Para j<-1 Hasta i Con Paso 1 Hacer
				Escribir j, ' 'Sin Saltar
			FinPara
			Escribir ''
		FinPara
	SiNo
		Escribir 'Valor ingresado Negativo'
	FinSi
FinAlgoritmo
