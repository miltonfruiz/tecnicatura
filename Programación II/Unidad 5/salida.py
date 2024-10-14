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
'''var3 = 3 + "5" # TypeError'''
var4 = str(3) + "5" # 35 (cadena)
var5 = 3 + int("5") # 8 (entero)

#Cadenas de caracteres |Comparación
cadena1 = "Hola"
cadena2 = "Codo a Codo"
print(cadena1 > cadena2)
print(cadena1 == cadena2)
print(cadena1 < cadena2)

cadena1 = "Hola"
cadena2 = "hola"
print(cadena1 == cadena2)

#Cadenas de caracteres |Métodos
cadena = "Codo a Codo"
print(cadena.upper()) # CODO A CODO
print(cadena.lower()) # codo a codo
print(cadena.capitalize()) # Codo a codo

#         012345678901
cadena = "¡Hola mundo!"
print(cadena[6:11]) # mundo
print(cadena[2:12:2]) # oamno
print(cadena[6:]) # mundo!
print(cadena[:5]) # ¡Hola
print(cadena[:]) # ¡Hola mundo!
print(cadena[::2]) # ¡oamno
print(cadena[::-1]) # !odnum aloH¡

#Cadenas de caracteres | for ,min() y max()

cadena = "Python"
for letra in cadena:
    print(letra)

cadena2 = "Programador"
print(max(cadena))
print(min(cadena))
