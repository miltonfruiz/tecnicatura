# Listas
numeros = [1,2,3,4,5] #Lista de números
dias = ["Lunes", "Martes", "Miércoles"] #Lista de strings 
elementos = [] #Lista vacía
sublistas = [ [1,2,3], [4,5,6] ] # lista de listas

#Listas | Acceso por subíndice
dias = ["Lunes", "Martes", "Miércoles"] 
print(dias)
print(dias[0])
print(dias[1])
print(dias[-1])

#Listas | Métodos sort(), pop(), insert()
def manipular_lista():
    numeros = input("Ingrese una lista de numeros separados por comas: ").split(',')
    numeros = [int(n) for n in numeros]
    print('Lista original: ',numeros)
    numeros.sort()
    print('Lista ordenada: ',numeros)
    numeros.pop()
    print('Lista después de eliminar el último número: ',numeros)
    nuevo_numero = int(input('Ingresa el número para agregar al inicio de la lista: '))
    numeros.insert(0,nuevo_numero)
manipular_lista()