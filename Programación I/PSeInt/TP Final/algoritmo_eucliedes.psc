Algoritmo algoritmo_eucliedes
	Definir desea Como Cadena
	bienvenida()
	Limpiar Pantalla
	menu()
FinAlgoritmo

// Proceso calculo mcd
SubProceso mcd
	Definir valor1, valor2 Como Cadena
	Repetir
		Limpiar Pantalla
		Escribir ''
		Escribir '>> 1. Hallar el MCD '
		Escribir ''
		Escribir '  # Ingrese el 1er valor: '
		Leer valor1
		num1 <- validoEntero(valor1)
		Si num1=='-1' O num1=='' Entonces
			incorrecto('¡Valor Ingresado Incorrecto!')
		FinSi
	Mientras Que num1=='-1' O num1==''
	valor1Convertido <- ConvertirANumero(num1)
	Repetir
		Limpiar Pantalla
		Escribir ''
		Escribir '>> 1. Hallar el MCD '
		Escribir ''
		Escribir '  # Ingrese el 2do valor: '
		Leer valor2
		num2 <- validoEntero(valor2)
		Si num2=='-1' O num2=='' Entonces
			incorrecto('¡Valor Ingresado Incorrecto!')
		FinSi
	Mientras Que num2=='-1' O num2==''
	valor2Convertido <- ConvertirANumero(num2)
	resolucionMCD(valor1Convertido,valor2Convertido)
FinSubProceso

// Proceso calculo mcm
SubProceso mcm
	Definir valor1, valor2 Como Cadena
	Repetir
		Limpiar Pantalla
		Escribir ''
		Escribir '>> 2. Hallar el MCM '
		Escribir ''
		Escribir '  # Ingrese el 1er valor: '
		Leer valor1
		num1 <- validoEntero(valor1)
		Si num1=='-1' O num1=='' Entonces
			incorrecto('¡Valor Ingresado Incorrecto!')
		FinSi
	Mientras Que num1=='-1' O num1==''
	valor1Convertido <- ConvertirANumero(num1)
	Repetir
		Limpiar Pantalla
		Escribir ''
		Escribir '>> 2. Hallar el MCM '
		Escribir ''
		Escribir '  # Ingrese el 2do valor: '
		Leer valor2
		num2 <- validoEntero(valor2)
		Si num2=='-1' O num2=='' Entonces
			incorrecto('¡Valor Ingresado Incorrecto!')
		FinSi
	Mientras Que num2=='-1' O num2==''
	valor2Convertido <- ConvertirANumero(num2)
	resolucionMCM(valor1Convertido,valor2Convertido)
FinSubProceso

// Proceso de Resolucion MCM
SubProceso resolucionMCM(valor1,valor2)
	Definir resto, aux1, aux2, mac Como Real
	aux1 <- valor1
	aux2 <- valor2
	Repetir
		resto <- valor1 MOD valor2
		valor1 <- valor2
		valor2 <- resto
	Mientras Que valor2<>0
	Limpiar Pantalla
	Escribir ''
	Escribir ' >>  RESPUESTA  <<'
	resultado <- valor1
	mac <- (aux1*aux2)/resultado
	Escribir ''
	Escribir ' # El MCM es: ', mac
	Escribir ''
	Escribir ' * Presione una tecla para continuar...'
	Esperar Tecla
	Limpiar Pantalla
FinSubProceso

// Función Verificación de Valores Enteros Ingresados
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

// Proceso Opción Ingresada Incorrecta
SubProceso incorrecto(texto)
	Limpiar Pantalla
	Escribir ''
	Escribir ' x ', texto, ' x'
	Escribir ''
	Escribir ' * Pulse una tecla para reintentar...'
	Esperar Tecla
	Limpiar Pantalla
FinSubProceso

// Proceso de Resolucion MCD
SubProceso resolucionMCD(valor1,valor2)
	Definir resto Como Real
	Repetir
		resto <- valor1 MOD valor2
		valor1 <- valor2
		valor2 <- resto
	Mientras Que valor2<>0
	resultado <- valor1
	Limpiar Pantalla
	Escribir ''
	Escribir ' >>  RESPUESTA  <<'
	Escribir ''
	Escribir ' # El MCD es: ', resultado
	Escribir ''
	Escribir ' * Presione una tecla para continuar...'
	Esperar Tecla
	Limpiar Pantalla
FinSubProceso

// Proceso de Bienvenida
SubProceso bienvenida
	Limpiar Pantalla
	Escribir ''
	Escribir '# Trabajo Práctico Final de Matemática'
	Escribir ''
	Escribir '* Pulse una tecla para empezar...'
	Esperar Tecla
FinSubProceso

// Proceso de opciones
SubProceso opciones
	Limpiar Pantalla
	Escribir ''
	Escribir ' >> Bienvenido al Menu Principal <<'
	Escribir ''
	Escribir ' 1. Hallar MCD'
	Escribir ' 2. Hallar MCM'
	Escribir ' 3. Salir'
	Escribir ''
FinSubProceso

// Proceso de Menu Principal
SubProceso menu
	Definir opcion Como Cadena
	Definir rsp Como Cadena
	Repetir
		Repetir
			opciones()
			Escribir ' * Ingrese una opción: '
			Leer opcion
			Si opcion<>'1' Y opcion<>'2' Y opcion<>'3' Entonces
				incorrecto('¡Opción Ingresada Incorrecta!')
			FinSi
		Mientras Que opcion<>'1' Y opcion<>'2' Y opcion<>'3'
		Segun opcion Hacer
			'1':
				mcd()
				rsp <- pregunta(desea)
			'2':
				mcm()
				rsp <- pregunta(desea)
			'3':
		FinSegun
	Mientras Que opcion<>'3' Y rsp<>'n'
	Limpiar Pantalla
	Escribir ''
	Escribir ' ¡Hasta Pronto!'
	Escribir ''
FinSubProceso

// Proceso desea
SubProceso respuesta <- pregunta(ingreso)
	Repetir
		Escribir ''
		Escribir '¿Desea realizar otro cálculo? [s/n]'
		Leer ingreso
		Si ingreso<>'n' Y ingreso<>'s' Entonces
			incorrecto('¡Opción Ingresada Incorrecta!')
		FinSi
	Mientras Que ingreso<>'s' Y ingreso<>'n'
	respuesta <- ingreso
FinSubProceso
