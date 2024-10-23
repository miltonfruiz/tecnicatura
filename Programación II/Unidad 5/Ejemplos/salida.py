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

#Cadenas de caracteres |.join(), .split() y .replace()
cadena = "12345"
cadena = '-'.join(cadena)
print(cadena)
#1-2-3-4-5

cadena = "Codo a Codo"
lista = cadena.split(' ')
print(lista)
#['Codo', 'a', 'Codo']

cadena = "Codo a Codo"
cadena = cadena.replace('Codo',
'Mano')
print(cadena)
# Mano a Mano

#Cadenas de caracteres |Detección de tipos
cad1 = "Python"
cad2 = "Python3"
print(cad1.isalpha())
# True
print(cad2.isalpha())
# False

cad1 = "1234"
cad2 = "1234a"
print(cad1.isdigit())
# True
print(cad2.isdigit())
# False

cad1 = "12Ab"
cad2 = "12Ab%"
print(cad1.isalnum())
# True
print(cad2.isalnum())
# False

#Cadenas de caracteres | Recorte
cad1 = "---Hola-Mundo----"
cad1 = cad1.lstrip('-')
print(cad1)
# Hola-Mundo----

cad1 = "---Hola-Mundo----"
cad1 = cad1.rstrip('-')
print(cad1)
# ---Hola-Mundo

cad1 = "---Hola-Mundo----"
cad1 = cad1.strip('-')
print(cad1)
# Hola-Mundo

#Cadenas de caracteres | Búsquedas
cad="Codo a Codo"
pos= cad.find("Codo")
print(pos) # 0

cad="Codo a Codo"
pos= cad.rfind("Codo")
print(pos) # 7

#Cadenas de caracteres | f-Strings
legajo = 12212
nombre = "María"
nota = 10
print(f"Legajo: {legajo} Nombre: {nombre} Nota: {nota}") 
# Legajo: 12212 Nombre: María Nota: 10