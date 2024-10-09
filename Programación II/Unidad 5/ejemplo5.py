# Funcion que reciba una lista de numeros y retorne:
# -el numero mayor
# -el numero menor
# -la suma de los elementos

def menor_mayor_suma(lista):
    menor = min(lista)
    mayor = max(lista)
    suma = sum(lista)
    return menor, mayor, suma

numeros = []

cantidad = int(input('¿Cuantos numeros quiere ingresar? \n'))
for i in range(cantidad):
    numero = int(input(f'Ingrese el numero {i+1}:'))
    numeros = numeros.append(numero)

menor, mayor, suma = menor_mayor_suma(numeros)

print(f'Numero menor: {menor}')
print(f'Numero mayor: {mayor}')
print(f'Suma total: {suma}')
