#Cadenas de caracteres

#Definición de cadenas usando comillas dobles
dia1 = "Lunes"
x = "" # x es un string de longitud cero
# Definición de cadenas usando comillas simples
dia2 = 'Martes'
z = "121" # z contiene dígitos, pero es un string

risa = 'ja'
carcajada = risa*5 # jajajajaja
asteriscos = "*"*10 # **********

# Definición de cadenas usando comillas dobles triples:
cadena1 = """En Python es posible definir
cadenas de caracteres utilizando más de una
línea de código"""
# Definición de cadenas usando comillas simples triples:
cadena2 = '''Por supuesto, se puede hacer
lo mismo utilizando comillas simples'''

#Cadenas de caracteres |Concatenación
nombre= input("Ingrese su nombre: ")
saludo= "Hola "+ nombre
print(saludo)

var1 = 3 + 5 # 8 (entero)
var2 = "3" + "5" # 35 (cadena)
var3 = 3 + "5" # TypeError
var4 = str(3) + "5" # 35 (cadena)
var5 = 3 + int("5") # 8 (entero)

