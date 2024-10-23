def contar_caracteres(cadena, caracter):
    return cadena.count(caracter)

cadena = input('Ingrese una de cadena de texto: ')
caracter = input('Ingrese el caracter que quiere contar: ')

contador = contar_caracteres(cadena, caracter)
print(f"El caracter '{caracter}' aparece {contador} veces en la cadena.")