// Programa Principal
Algoritmo tp
	ingreso()
FinAlgoritmo

//Proceso Ingreso cantidad de articulos
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
	cargaArticulos(articulos,fil)
FinSubProceso

// Proceso de carga de rubros
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

// Proceso de carga de datos articulos
SubProceso cargaArticulos(arreglo,total)
	Definir i Como Entero
	Para i<-1 Hasta total Con Paso 1 Hacer
		Repetir
			Limpiar Pantalla
			Escribir ''
			Escribir '>>> Carga de datos: Artículo N°', i
			Escribir ''
			Escribir '    Ingrese código:'
			Leer arreglo[i,1]
			Si Longitud(arreglo[i,1])<>3 Entonces
				incorrecto('¡Código ingresado incorrecto!')
			FinSi
		Mientras Que Longitud(arreglo[1,1])<>3
	FinPara
FinSubProceso

// Función verificación de valores enteros ingresados
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

// Proceso opción ingresada incorrecta
SubProceso incorrecto(texto)
	Limpiar Pantalla
	Escribir ''
	Escribir ' x ', texto, ' x'
	Escribir ''
	Escribir ' * Pulse una tecla para reintentar...'
	Esperar Tecla
	Limpiar Pantalla
FinSubProceso
