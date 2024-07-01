// Programa Principal
Algoritmo tp
	bienvenida()
	ingreso()
FinAlgoritmo

// Proceso Ingreso Cantidad de Artículos
// ------------------------------------------------------------------------------------------
SubProceso ingreso
	Definir i Como Entero
	Definir n, articulos, rubro Como Cadena
	Dimensionar rubro(5,2)
	cargaRubros(rubro)
	Repetir
		Escribir ''
		Escribir ' >> Ferreteria: El Tornillo Loco <<'
		Escribir ''
		Escribir ' # Ingrese Cantidad de Artículos: '
		Leer n
		cantidad <- validoEntero(n)
		Si cantidad=='-1' O cantidad=='' Entonces
			incorrecto('¡Cantidad ingresada incorrecta!')
		FinSi
	Mientras Que cantidad=='-1' O cantidad==''
	fil <- ConvertirANumero(cantidad)
	Dimensionar articulos(fil,6)
	cargaArticulos(articulos,fil,rubro)
FinSubProceso

// Proceso de Carga de Rubros
// ------------------------------------------------------------------------------------------
SubProceso cargaRubros(arreglo)
	arreglo[1,1]<-'100'
	arreglo[1,2]<-'T/Tuercas   '
	arreglo[2,1]<-'300'
	arreglo[2,2]<-'Adhesivos   '
	arreglo[3,1]<-'450'
	arreglo[3,2]<-'Herrajes    '
	arreglo[4,1]<-'680'
	arreglo[4,2]<-'Pinturas    '
	arreglo[5,1]<-'720'
	arreglo[5,2]<-'Electricidad'
FinSubProceso

// Proceso de Carga de Datos Artículos
// ------------------------------------------------------------------------------------------
SubProceso cargaArticulos(arreglo1,total,arreglo2)
	Para i<-1 Hasta total Con Paso 1 Hacer
		ingresoCodigo(arreglo1,total,arreglo2,i)
		descripcion(arreglo1,i)
		precioVenta(arreglo1,i)
		cantidadExistente(arreglo1,i)
		quincenas(arreglo1,i)
	FinPara
	menu(arreglo1,total,arreglo2)
FinSubProceso

// Proceso Ingreso de Código
// ------------------------------------------------------------------------------------------
SubProceso ingresoCodigo(arreglo1,f,arreglo2,i)
	Definir codigo, subCodigo, cod, antes, union Como Cadena
	Repetir
		Repetir
			Repetir
				Limpiar Pantalla
				Escribir ''
				Escribir ' >>> Carga de datos: Artículo N°', i
				Escribir ''
				Escribir ' # Ingrese código: (3 digitos)'
				Leer cod
				Si Longitud(cod)<>3 Entonces
					incorrecto('¡Código ingresado incorrecto!')
				FinSi
			Mientras Que Longitud(cod)<>3
			codigo <- buscoCodigo(cod,arreglo2,5)
			Si codigo=='-1' Entonces
				incorrecto('¡Ese codigo de Rubro no existe!')
			SiNo
				Repetir
					Limpiar Pantalla
					Escribir ''
					Escribir ' >>> Carga de datos: Artículo N°', i
					Escribir ''
					Escribir ' # Ingrese numero de articulo: (5 digitos)'
					Leer nArticulo
					Si Longitud(nArticulo)<>5 Entonces
						incorrecto('¡Numero de Artículo Ingresado Incorrecto!')
					FinSi
				Mientras Que Longitud(nArticulo)<>5
			FinSi
		Mientras Que codigo=='-1'
		antes <- Concatenar(cod,nArticulo)
		union <- buscoCodigo(antes,arreglo1,f)
		Si union<>'-1' Entonces
			incorrecto('¡Ese codigo ya existe!')
		FinSi
	Mientras Que union<>'-1'
	arreglo1[i,1]<-antes
FinSubProceso

// Función Verificación de Valores Enteros Ingresados
// ------------------------------------------------------------------------------------------
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
// ------------------------------------------------------------------------------------------
SubProceso incorrecto(texto)
	Limpiar Pantalla
	Escribir ''
	Escribir ' x ', texto, ' x'
	Escribir ''
	Escribir ' [*] Pulse una tecla para reintentar...'
	Esperar Tecla
	Limpiar Pantalla
FinSubProceso

// Proceso Búsqueda de Código
// ------------------------------------------------------------------------------------------
SubProceso encontrado <- buscoCodigo(codigo,arreglo,limite)
	Definir i Como Entero
	Definir encontrado Como Cadena
	i <- 0
	Repetir
		i <- i+1
	Mientras Que codigo<>arreglo[i,1] Y i<>limite
	Si codigo==arreglo[i,1] Entonces
		encontrado <- codigo
	SiNo
		encontrado <- '-1'
	FinSi
FinSubProceso

// Proceso Opción Ingresada Correcta
// ------------------------------------------------------------------------------------------
SubProceso correcto(codigo,texto,numero)
	Limpiar Pantalla
	Escribir ''
	Escribir ' ¡Datos Ingresados Correctamente!'
	Escribir ''
	Escribir '     Codigo   |  Descripción  |  Precio de Venta  |  Cantidad Existente  |  Ventas 1ra Quincena  |  Ventas 2da Quincena  |'
	Escribir ' ------------------------------------------------------------------------------------------------------------------------'
	Escribir '       ', codigo, '           ', texto, '               ', numero
	Escribir ''
	Escribir ' [*] Pulse una tecla para continuar...'
	Esperar Tecla
FinSubProceso

// Proceso de ingreso de descripcion
// ------------------------------------------------------------------------------------------
SubProceso descripcion(arreglo,f)
	Limpiar Pantalla
	Repetir
		Escribir ''
		Escribir ' >>> Carga de datos: Artículo N°', f
		Escribir ''
		Escribir ' # Ingrese una descripcion: '
		Leer arreglo[f,2]
		Si Longitud(arreglo[f,2])==0 Entonces
			incorrecto('!Descripcion incorrecta!')
		FinSi
	Mientras Que Longitud(arreglo[f,2])==0
FinSubProceso

// Proceso de ingreso de precio
// ------------------------------------------------------------------------------------------
SubProceso precioVenta(arreglo,f)
	Limpiar Pantalla
	Repetir
		Escribir ''
		Escribir ' >>> Carga de datos: Artículo N°', f
		Escribir ''
		Escribir ' # Ingrese precio de articulo: '
		Leer arreglo[f,3]
		precio <- validoEntero(arreglo[f,3])
		Si precio=='-1' O precio=='' Entonces
			incorrecto('datos incorrectos')
		FinSi
	Mientras Que precio=='-1' O precio==''
	precioEntero <- ConvertirANumero(precio)
FinSubProceso

// Proceso de cantidad total
// ------------------------------------------------------------------------------------------
SubProceso cantidadExistente(arreglo,f)
	Limpiar Pantalla
	Repetir
		Escribir ''
		Escribir ' >>> Carga de datos: Artículo N°', f
		Escribir ''
		Escribir ' # Ingrese Stock de Producto: '
		Leer arreglo[f,4]
		cantidad <- validoEntero(arreglo[f,4])
		Si cantidad=='-1' O cantidad=='' Entonces
			incorrecto('datos incorrectos')
		FinSi
	Mientras Que cantidad=='-1' O cantidad==''
	cantidadEntero <- ConvertirANumero(cantidad)
FinSubProceso

// Proceso de ingreso de quincena
// ------------------------------------------------------------------------------------------
SubProceso quincenas(arreglo,f)
	Limpiar Pantalla
	Limpiar Pantalla
	Repetir
		Repetir
			Repetir
				Escribir ''
				Escribir ' >>> Carga de datos: Artículo N°', f
				Escribir ''
				Escribir ' # Ingrese cantidad vendida Quincena 1: '
				Leer arreglo[f,5]
				quincena1 <- validoEntero(arreglo[f,5])
				Si quincena1=='-1' O quincena1=='' Entonces
					incorrecto('datos incorrectos')
				FinSi
			Mientras Que quincena1=='-1' O quincena1==''
			quincena1Entero <- ConvertirANumero(quincena1)
			stock <- ConvertirANumero(arreglo[f,4])
			Si quincena1Entero>stock Entonces
				incorrecto('El valor supero el stock')
			FinSi
		Mientras Que quincena1Entero>stock
		Limpiar Pantalla
		Repetir
			Repetir
				Escribir ''
				Escribir ' >>> Carga de datos: Artículo N°', f
				Escribir ''
				Escribir ' # Ingrese cantidad vendida Quincena 2: '
				Leer arreglo[f,6]
				quincena2 <- validoEntero(arreglo[f,6])
				Si quincena2=='-1' O quincena2=='' Entonces
					incorrecto('datos incorrectos')
				FinSi
			Mientras Que quincena2=='-1' O quincena2==''
			quincena2Entero <- ConvertirANumero(quincena2)
			stock <- ConvertirANumero(arreglo[f,4])
			Si quincena2Entero>stock Entonces
				incorrecto('El valor supero el stock')
			FinSi
		Mientras Que quincena2Entero>stock
		totalQuincena <- quincena1Entero+quincena2Entero
		Si stock<totalQuincena Entonces
			incorrecto('La suma de los valores supero el stock')
		FinSi
	Mientras Que stock<totalQuincena
	Escribir ''
	Escribir '  # !Datos ingresados correctamente! #'
	Esperar Tecla
FinSubProceso

// Proceso de opciones de menu
// ------------------------------------------------------------------------------------------
SubProceso opciones
	Limpiar Pantalla
	Escribir ''
	Escribir '         >>> Bienvenido al Menú Principal <<<'
	Escribir ''
	Escribir '1. Mostrar lista de artículos ordenada por descripción '
	Escribir '2. Mostrar lista de artículos ordenada por cantidad vendida'
	Escribir '3. Mostrar stock actual de artículos '
	Escribir '4. Buscar artículo por código'
	Escribir '5. Mostrar estadísticas'
	Escribir '6. Salir '
	Escribir ''
FinSubProceso

// Proceso de Menu Principal
// ------------------------------------------------------------------------------------------
SubProceso menu(arreglo,total,arreglo2)
	Definir opcion Como Cadena
	Definir rsp Como Cadena
	Repetir
		Repetir
			opciones()
			Escribir '[*] Ingrese una opción: '
			Leer opcion
			Si opcion<>'1' Y opcion<>'2' Y opcion<>'3' Y opcion<>'4' Y opcion<>'5' Y opcion<>'6' Entonces
				incorrecto('Opcion Ingresada Incorrecta')
			FinSi
		Mientras Que opcion<>'1' Y opcion<>'2' Y opcion<>'3' Y opcion<>'4' Y opcion<>'5' Y opcion<>'6'
		Segun opcion Hacer
			'1':
				muestraDescripcion(arreglo,total)
				rsp <- pregunta(desea,'Desea volver al menu principal')
			'2':
				muestraCantidad(arreglo,total)
				rsp <- pregunta(desea,'Desea volver al menu principal')
			'3':
				muestraStock(arreglo,total)
				rsp <- pregunta(desea,'Desea volver al menu principal')
			'4':
				muestraCodigo(arreglo,total)
				rsp <- pregunta(desea,'Desea volver al menu principal')
			'5':
				muestraEstadisticas(arreglo,total,arreglo2)
		FinSegun
	Mientras Que opcion<>'6' Y rsp<>'n'
	Limpiar Pantalla
	Escribir ''
	Escribir ' ~ ¡Gracias por su visita!'
	Escribir ''
FinSubProceso

// Proceso de Ordenamiento menor a mayor
// ------------------------------------------------------------------------------------------
SubProceso ordenAscendente(arreglo,fila)
	Definir i, j, k Como Entero
	Para i<-1 Hasta fila-1 Con Paso 1 Hacer
		Para j<-i+1 Hasta fila Con Paso 1 Hacer
			Si arreglo[i,2]>arreglo[j,2] Entonces
				Para k<-1 Hasta 6 Con Paso 1 Hacer
					aux <- arreglo[i,k]
					arreglo[i,k]<-arreglo[j,k]
					arreglo[j,k]<-aux
				FinPara
			FinSi
		FinPara
	FinPara
FinSubProceso

// Proceso de Muestra por Descripcioón
// ------------------------------------------------------------------------------------------
SubProceso muestraDescripcion(arreglo,total)
	ordenAscendente(arreglo,total)
	Limpiar Pantalla
	Escribir ''
	Escribir ' 1. Mostrar lista de artículos ordenada por descripción '
	Escribir ''
	Escribir ' |      Codigo      |      Descripción      |      Precio Venta     |'
	Escribir ' -------------------------------------------------------------------'
	Para i<-1 Hasta total Con Paso 1 Hacer
		Escribir '       ', arreglo[i,1], '                ', arreglo[i,2], '                  $ ', arreglo[i,3]
	FinPara
	Escribir ''
	Escribir ' [*] Pulse una tecla para continuar...'
	Escribir ''
	Esperar Tecla
FinSubProceso

// Proceso deseaa
// ------------------------------------------------------------------------------------------
SubProceso respuesta <- pregunta(opcDesea,texto)
	Repetir
		Limpiar Pantalla
		Escribir ''
		Escribir ' ¿', texto, '? [s/n]'
		Leer opcDesea
		Si opcDesea<>'n' Y opcDesea<>'s' Entonces
			incorrecto('¡Opción Ingresada Incorrecta!')
		FinSi
	Mientras Que opcDesea<>'s' Y opcDesea<>'n'
	respuesta <- opcDesea
FinSubProceso

// Proceso de Ordenamiento mayor a menor
// ------------------------------------------------------------------------------------------
SubProceso ordenDescendente(arreglo,fila)
	Definir i, j, k, q1, q2, q3, q4 Como Entero
	Para i<-1 Hasta fila-1 Con Paso 1 Hacer
		Para j<-i+1 Hasta fila Con Paso 1 Hacer
			q1 <- ConvertirANumero(arreglo[i,5])
			q2 <- ConvertirANumero(arreglo[i,6])
			q3 <- ConvertirANumero(arreglo[j,5])
			q4 <- ConvertirANumero(arreglo[j,5])
			Si (q1+q2)<(q3+q4) Entonces
				Para k<-1 Hasta 6 Con Paso 1 Hacer
					aux <- arreglo[i,k]
					arreglo[i,k]<-arreglo[j,k]
					arreglo[j,k]<-aux
				FinPara
			FinSi
		FinPara
	FinPara
FinSubProceso

// Proceso de Muestra por cantidad vendida
// ------------------------------------------------------------------------------------------
SubProceso muestraCantidad(arreglo,total)
	Definir q1, q2, mes, precio, importe, monto Como Real
	ordenDescendente(arreglo,total)
	Limpiar Pantalla
	Escribir ''
	Escribir ' 2. Mostrar lista de artículos ordenada por cantidad vendida '
	Escribir ''
	Escribir ' |      Codigo     |      Descripción     |    Total Vendido Mes   |    Importe Total   |'
	Escribir ' ---------------------------------------------------------------------------------------'
	Para i<-1 Hasta total Con Paso 1 Hacer
		q1 <- ConvertirANumero(arreglo[i,5])
		q2 <- ConvertirANumero(arreglo[i,6])
		mes <- q1+q2
		precio <- ConvertirANumero(arreglo[i,3])
		importe <- mes*precio
		monto <- monto+importe
		Escribir '       ', arreglo[i,1], '              ', arreglo[i,2], '                    ', mes, '                   $ ', importe
	FinPara
	Escribir ''
	Escribir ' # Monto total de ventas realizadas en el mes: $', monto
	Escribir ''
	Escribir ' [*] Pulse una tecla para continuar...'
	Escribir ''
	Esperar Tecla
FinSubProceso

// Proceso de Muestra por Stock
// ------------------------------------------------------------------------------------------
SubProceso muestraStock(arreglo,total)
	Definir i, q1, q2, mes, stock, actual Como Real
	Limpiar Pantalla
	Escribir ''
	Escribir ' >>> 3. Mostrar stock actual de artículos '
	Escribir ''
	Escribir ' |      Codigo      |      Descripción      |      Stock Actual     |'
	Escribir ' -------------------------------------------------------------------'
	Para i<-1 Hasta total Con Paso 1 Hacer
		q1 <- ConvertirANumero(arreglo[i,5])
		q2 <- ConvertirANumero(arreglo[i,6])
		mes <- q1+q2
		stock <- ConvertirANumero(arreglo[i,4])
		actual <- stock-mes 
		Escribir '       ', arreglo[i,1], '               ', arreglo[i,2], '                     ', actual
	FinPara
	Escribir ''
	Escribir ' [*] Pulse una tecla para continuar...'
	Escribir ''
	Esperar Tecla
FinSubProceso

// Proceso de Muestra por Codigo
// ------------------------------------------------------------------------------------------
SubProceso muestraCodigo(arreglo1,total)
	Definir cod, busco, rsp Como Cadena
	Repetir
		Repetir
			Limpiar Pantalla
			Escribir ''
			Escribir ' >>> 4. Buscar artículo por código '
			Escribir ''
			Escribir ' # Ingrese código: (8 digitos)'
			Leer cod
			Si Longitud(cod)<>8 Entonces
				incorrecto('¡Código ingresado incorrecto!')
			FinSi
		Mientras Que Longitud(cod)<>8
		busco <- buscoCodigo(cod,arreglo1,total)
		Si busco=='-1' Entonces
			incorrecto('¡Ese codigo no existe!')
		SiNo
			Limpiar Pantalla
			q1 <- ConvertirANumero(arreglo1[1,5])
			q2 <- ConvertirANumero(arreglo1[1,6])
			precio <- ConvertirANumero(arreglo1[1,3])
			stock <- ConvertirANumero(arreglo1[1,4])
			mes <- q1+q2
			actual <- stock-mes
			importe <- mes*precio
			Escribir ''
			Escribir ' >>> 4. Buscar artículo por código '
			Escribir ''
			Escribir ' |    Ventas Q1    |    Ventas Q2    |    Stock Actual   | Importe Total Mes  |'
			Escribir ' -----------------------------------------------------------------------------'
			Escribir '          ', q1, '               ', q2, '                ', actual, '                $ ', importe
			Escribir ''
			Escribir ' [*] Pulse una tecla para continuar...'
			Escribir ''
			Esperar Tecla
		FinSi
		rsp <- pregunta(desea,'Desea realizar otra busqueda')
	Mientras Que rsp<>'n'
FinSubProceso

// Proceso de Muestra por Estadísticas
// ------------------------------------------------------------------------------------------
SubProceso muestraEstadisticas(arreglo1,total,arreglo2)
	Limpiar Pantalla
	Repetir
		Repetir
			subOpciones()
			Escribir ' [*] Ingrese Opción: '
			Leer subOpcion
		Mientras Que subOpcion<>'a' Y subOpcion<>'b' Y subOpcion<>'c' Y subOpcion<>'x'
		letra <- Minusculas(subOpcion)
		Segun letra Hacer
			'a':
				opcionA(arreglo1,total,arreglo2)
				rsp <- pregunta(desea,'Desea volver al menu principal')
			'b':
				opcionB(arreglo1,total,arreglo2)
				rsp <- pregunta(desea,'Desea volver al menu principal')
			'c':
				opcionC(arreglo1,total,arreglo2)
				rsp <- pregunta(desea,'Desea volver al menu principal')
			'x':
				Escribir 'Opcion X'
		FinSegun
	Mientras Que letra<>'x' Y rsp<>'s'
FinSubProceso

// Proceso de Sub Menu Estadisticas
// ------------------------------------------------------------------------------------------
SubProceso subOpciones
	Limpiar Pantalla
	Escribir ''
	Escribir ' >>> 5. Mostrar Estadísticas'
	Escribir ''
	Escribir '   a) Porcentaje Cantidad Artículos Vendidos de Cada Rubro'
	Escribir '   b) Porcentaje Venta Cada Quincena por Rubro'
	Escribir '   c) Rubro Mayor Importe Total Ventas Cada Quincena'
	Escribir '   x) Volver al Menu Principal'
	Escribir ''
FinSubProceso

// Proceso Opcion A
// ------------------------------------------------------------------------------------------
SubProceso opcionA(arreglo1,total,arreglo2)
	Definir totalArticulos Como Real
	Limpiar Pantalla
	Escribir ''
	Escribir '  >>> a) Porcentaje Artículos Vendidos de Cada Rubro'
	Escribir ''
	Escribir '  |       Rubro       |        Stock      |      Vendidos     |     Porcentaje    |'
	Escribir '  ---------------------------------------------------------------------------------'
	Para i<-1 Hasta total Con Paso 1 Hacer
		q1 <- ConvertirANumero(arreglo1[i,5])
		q2 <- ConvertirANumero(arreglo1[i,6])
		stock <- ConvertirANumero(arreglo1[i,4])
		totalArticulos <- q1+q2
		porcentaje <- (totalArticulos*stock)/100
		Escribir '        ', arreglo2[i,2], '            ', arreglo1[i,4], '                 ', totalArticulos, '                % ', porcentaje
	FinPara
	Escribir ''
	Escribir '  [*] Pulse una tecla para continuar...'
	Escribir ''
	Esperar Tecla
FinSubProceso

// Proceso Opcion B
// ------------------------------------------------------------------------------------------
SubProceso opcionB(arreglo1,total,arreglo2)
	Limpiar Pantalla
	Escribir ''
	Escribir ' >>> b) Porcentaje Venta Cada Quincena por Rubro'
	Escribir ''
	Escribir ' |       Rubro       |    Total Mes   |   Ventas Q1   |  Ventas Q2  |   Porcentaje Q1   |   Porcentaje Q2   |'
	Escribir ' ------------------------------------------------------------------------------------------------------------'
	Para i<-1 Hasta total Con Paso 1 Hacer
		q1 <- ConvertirANumero(arreglo1[i,5])
		q2 <- ConvertirANumero(arreglo1[i,6])
		stock <- ConvertirANumero(arreglo1[i,4])
		mes <- q1+q2
		porcentaje1 <- trunc((q1/mes)*100)
		porcentaje2 <- trunc((q2/mes)*100)
		Escribir '      ', arreglo2[i,2], '            ', mes, '               ', arreglo1[i,5], '              ', arreglo1[i,6], '             % ', porcentaje1, '              % ', porcentaje2
	FinPara
	Escribir ''
	Escribir ' [*] Pulse una tecla para continuar...'
	Escribir ''
	Esperar Tecla
FinSubProceso

// Proceso Opcion C
// ------------------------------------------------------------------------------------------
SubProceso opcionC(arreglo1,total,arreglo2)
	Definir totalArticulos, mayor Como Real
	Limpiar Pantalla
	Escribir ''
	Escribir ' >>> c) Rubro con Mayor Importe de Cada Quincena '
	Escribir ''
	Escribir ' |       Rubro       |   Mayor Importe Q1  |   Mayor Importe Q2  |'
	Escribir ' ----------------------------------------------------------------'
	mayor1 <- 0
	mayor2 <- 0
	Para i<-1 Hasta total Con Paso 1 Hacer
		precio <- ConvertirANumero(arreglo1[i,3])
		q1 <- ConvertirANumero(arreglo1[i,5])
		q2 <- ConvertirANumero(arreglo1[i,6])
		totalQ1 <- precio*q1
		totalQ2 <- precio*q2
		Si mayor1<totalQ1 Entonces
			mayor1 <- totalQ1
			pos1 <- i
		FinSi
		Si mayor2<totalQ2 Entonces
			mayor2 <- totalQ2
			pos2 <- i
		FinSi
	FinPara
	Escribir '       ', arreglo2[pos1,2], '          $ ', mayor1
	Escribir '       ', arreglo2[pos2,2], '                               $ ', mayor2
	Escribir ''
	Escribir ' [*] Pulse una tecla para continuar...'
	Escribir ''
	Esperar Tecla
FinSubProceso

// Proceso Presentacion
// ------------------------------------------------------------------------------------------
SubProceso bienvenida
	Limpiar Pantalla
	Escribir ''
	Escribir ' # Programación I - Trabajo Práctico Integrador'
	Escribir ''
	Escribir ' # Proyecto: El Tornillo Loco'
	Escribir ' # Alumnos: Delfina Varela, Martina Reol, Lautaro Pereyra, Milton F. Ruiz'
	Escribir ' # Comisión: 2'
	Escribir ' # Turno: Mañana'
	Escribir ''
	Escribir ' [*] Pulse una tecla para empezar... :)'
	Escribir ''
	Esperar Tecla
	Limpiar Pantalla
FinSubProceso
