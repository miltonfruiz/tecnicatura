Algoritmo triangulo
	definir lado1, lado2 como entero
	Definir hipotenusa, perimetro, superficie como real
	Escribir "Ingrese primer lado"
	Leer lado1
	Escribir "Ingrese segundo lado"
	Leer lado2
	hipotenusa = raiz(lado1^2 + lado2^2)
	perimetro = lado1 + lado2 + hipotenusa
	superficie = (lado1 * lado2) / 2
	Escribir "La hipotenusa es ", hipotenusa
	Escribir "El perímetro es ", perimetro
	Escribir "La superficie es ", superficie
FinAlgoritmo
