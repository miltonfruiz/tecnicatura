nombre = 'Juan'
edad = 25
nota = 4
print(f'El nombre del alumno es {nombre} y tiene {edad} años de edad.')
print(f"{nombre} tiene una nota de {nota}. {'Aprobo' if nota >= 6 else 'Desaprobo'}.")

def verificar_aprobacion(nota):
    return 'Aprobo' if nota >= 6 else 'Desaprobo'

print(f'{nombre} tiene una nota de {nota}. {verificar_aprobacion(nota)}')