def gestionar_diccionario():
    personas = {}
    cantidad = int(input('Cuantas personas desea ingresar?'))
    for i in range(cantidad):
        nombre = input(f'Ingrese el nombre de la persona {i+1}:')
        edad = int(input(f'Ingrese la edad de {nombre}:'))
        personas[nombre] = edad
    nombre_busqueda = input('Ingresa el nombre de la persona que desea buscar: ')
    if nombre_busqueda in personas:
        print(f'La edad de {nombre_busqueda} es {personas[nombre_busqueda]}')
    else:
        print(f'{nombre_busqueda} no se encuentra en el diccionario.')

gestionar_diccionario()