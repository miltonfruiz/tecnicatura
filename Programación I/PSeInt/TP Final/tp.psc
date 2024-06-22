Algoritmo tp
	programa()
FinAlgoritmo

SubProceso programa
	Definir i, n Como Entero
	Repetir
		Escribir ''
		Escribir '>> Ferreteria: El Tornillo Loco <<'
		Escribir ''
		Escribir '   Ingrese cantidad articulos: '
		Leer n
		Si n<=0 Entonces
			incorrecto()
		FinSi
	Mientras Que n<=0
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
