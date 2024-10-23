#Funcion para agregar un elemento a lista
def agregar_elemento(lista,numero):
    lista.append(numero)
    print('Lista actualizada: ', lista)

mi_lista = []
for i in range(3):
    numero = int(input('Ingrese un elemento: '))
    agregar_elemento(mi_lista, numero)