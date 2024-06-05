Algoritmo ejSecuencial
	Definir palabra Como Cadena
	Definir i Como Entero
	Dimensionar palabra(10)
	palabra[1] <- 'S'
	palabra[2] <- 'E'
	palabra[3] <- 'C'
	palabra[4] <- 'U'
	palabra[5] <- 'E'
	palabra[6] <- 'N'
	palabra[7] <- 'C'
	palabra[8] <- 'I'
	palabra[9] <- 'A'
	palabra[10] <- 'L'
	i <- 1
	Mientras i<=10 Hacer
		Si palabra[i]=='I' Entonces
			Escribir 'Encontrado: ', i
			i <- 10
		SiNo
			Escribir 'no existe'
		FinSi
		i <- i+1
	FinMientras
FinAlgoritmo
