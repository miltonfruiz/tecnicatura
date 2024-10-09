#Funcion para agregar nombres y ordenarlos.
def ordenar_nombres():
    cantidad = int(input('¿Cuantos nombres quieres ingresar a la lista? \n'))

    nombres = []

    for i in range(cantidad):
        nombre = input(f'Ingrese el nombre {i+1}: ')
        nombres.append(nombre)
        nombres.sort()
        print('\nLista de nombres ordenados:\n')
        for nombre in  nombres:
            print(nombre)

ordenar_nombres()