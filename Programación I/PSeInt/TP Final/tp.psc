// Programa Principal
Algoritmo tp
	ingreso()
FinAlgoritmo

// Proceso Ingreso Cantidad de Artículos
SubProceso ingreso
	Definir i Como Entero
	Definir n, articulos, rubro Como Cadena
	Dimensionar rubro(5,2)
	cargaRubros(rubro)
	Repetir
		Escribir ''
		Escribir '>> Ferreteria: El Tornillo Loco <<'
		Escribir ''
		Escribir '   Ingrese cantidad articulos: '
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
SubProceso cargaRubros(arreglo)
	arreglo[1,1]<-'100'
	arreglo[1,2]<-'Tornillos y Tuercas'
	arreglo[2,1]<-'300'
	arreglo[2,2]<-'Adhesivos'
	arreglo[3,1]<-'450'
	arreglo[3,2]<-'Herrajes'
	arreglo[4,1]<-'680'
	arreglo[4,2]<-'Pinturas'
	arreglo[5,1]<-'720'
	arreglo[5,2]<-'Electricidad'
FinSubProceso

// Proceso de Carga de Datos Artículos
SubProceso cargaArticulos(arreglo1,total,arreglo2)
	Para i<-1 Hasta total Con Paso 1 Hacer
		ingresoCodigo(arreglo1,arreglo2,i)
	FinPara
FinSubProceso

// Proceso Ingreso de Código
SubProceso ingresoCodigo(arreglo1,arreglo2,f)
	Definir codigo, subCodigo Como Cadena
	Repetir
		Repetir
			Limpiar Pantalla
			Escribir ''
			Escribir '>>> Carga de datos: Artículo N°', f
			Escribir ''
			Escribir '    Ingrese código:'
			Leer arreglo1[f,1]
			Si Longitud(arreglo1[f,1])<>8 Entonces
				incorrecto('¡Código ingresado incorrecto!')
			FinSi
		Mientras Que Longitud(arreglo1[f,1])<>8
		subCodigo <- Subcadena(arreglo1[f,1],1,3)
		codigo <- buscoCodigo(subCodigo,arreglo2)
		Si codigo=='-1' Entonces
			incorrecto('¡Ese codigo no existe!')
		SiNo
			Segun codigo Hacer
				'100':
					correcto(codigo,'Tornillos y Tuercas')
				'300':
					correcto(codigo,'Adhesivos')
				'450':
					correcto(codigo,'Herrajes')
				'680':
					correcto(codigo,'Pinturas')
				'720':
					correcto(codigo,'Electricidad')
			FinSegun
		FinSi
	Mientras Que cod=='-1'
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

// Proceso Búsqueda de Código
SubProceso encontrado <- buscoCodigo(codigo,arreglo)
	Definir i Como Entero
	Definir encontrado Como Cadena
	i <- 0
	Repetir
		i <- i+1
	Mientras Que codigo<>arreglo[i,1] Y i<>5
	Si codigo==arreglo[i,1] Entonces
		encontrado <- codigo
	SiNo
		encontrado <- '-1'
	FinSi
FinSubProceso

// Proceso Opción Ingresada Correcta
SubProceso correcto(codigo,texto)
	Limpiar Pantalla
	Escribir ''
	Escribir ' ¡Dato Ingresado Correctamente!'
	Escribir ''
	Escribir '     Codigo     |        Rubro            '
	Escribir ' ------------------------------------------'
	Escribir '       ', codigo, '      |      ', texto
	Escribir ''
	Escribir ' * Pulse una tecla para continuar...'
	Esperar Tecla
FinSubProceso
