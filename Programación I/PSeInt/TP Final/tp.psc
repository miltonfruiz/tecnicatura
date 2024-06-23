Algoritmo tp
	programa()
FinAlgoritmo

SubProceso programa
	Definir i Como Entero
	Definir n Como Cadena
	Repetir
		Escribir ''
		Escribir '>> Ferreteria: El Tornillo Loco <<'
		Escribir ''
		Escribir '   Ingrese cantidad articulos: '
		Leer n
		cantidad <- validoEntero(n)
		Si cantidad=='-1' O cantidad=='' Entonces
			incorrecto()
		FinSi
	Mientras Que cantidad=='-1' O cantidad==''
FinSubProceso

SubProceso verifico <- validoEntero(ingresado)
	Definir i Como Entero
	Definir car, verifico Como Cadena
	verifico <- ingresado
	Para i<-1 Hasta Longitud(ingresado) Hacer
		car <- Subcadena(ingresado,i,i)
		Si (car<>'0' Y car<>'1' Y car<>'2' Y car<>'3' Y car<>'4' Y car<>'5' Y car<>'6' Y car<>'7' Y car<>'8' Y car<>'9') Entonces
			verifico <- '-1'
		FinSi
	FinPara
FinSubProceso

SubProceso incorrecto
	Limpiar Pantalla
	Escribir ''
	Escribir ' x Valor ingresado incorecto! x'
	Escribir ''
	Escribir ' * Pulse una tecla para reintentar...'
	Esperar Tecla
	Limpiar Pantalla
FinSubProceso
