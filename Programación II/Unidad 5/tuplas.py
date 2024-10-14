def mostrar_dia(numero):
    dias_semana = ('Lunes','Martes','Miercoles','Jueves','Viernes','Sábados','Domingos')
    if 1 <= numero <=7:
        print(f'El dia correspondiente es: {dias_semana[numero-1]}')
    else:
        print('Numero no valido. Debe estar entre 1 y 7')
numero = int(input('Ingresa un numero del 1 al 7: '))
mostrar_dia(numero)