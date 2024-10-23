#Funcion que recibe dos numeros y retorna la suma
def sumar(a,b):
    return a + b

num1 = int(input('Ingrese el primer numero: '))
num2 = int(input('Ingrese el segundo numero: '))

resultado = sumar(num1,num2)
print(f'El resultado es: ',resultado)