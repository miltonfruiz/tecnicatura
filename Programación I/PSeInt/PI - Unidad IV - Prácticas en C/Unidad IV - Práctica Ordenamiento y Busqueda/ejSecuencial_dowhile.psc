Algoritmo ejSecuencial
	definir palabra como cadena
	definir i como entero
	dimension palabra[10]
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
	i <- 0
	Repetir
		i <- i + 1
	Mientras Que palabra[i] <> 'Z' Y i<10
	Si palabra[i] == 'Z' Entonces
		Escribir 'Encontrado: ',i
	SiNo
		Escribir 'No existe'
	FinSi
FinAlgoritmo
