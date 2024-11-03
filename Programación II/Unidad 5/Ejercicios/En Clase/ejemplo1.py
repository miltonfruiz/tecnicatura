from usuario import Usuario
from datetime import date

user = Usuario('JPerez','Juan','Perez','123','jperez@gmail.com')
print(f'Bienvenido {user.get_apellido()}, {user.get_nombre()}')
print(f'Tu nombre de usuario es:{user.get_user_name()}. Usted es usuario desde {user.get_fecha_alta()}')



assert user.validar_credenciales('JPerez','Sda') == False
assert user.validar_credenciales('jPez','asd123') == False
assert user.validar_credenciales('JPerez','123') == True
'''
try:
    user = Usuario()
    assert False, 'No se puede instanciar un usuario sin los datos'
except TypeError:
    assert True

try:
    user = Usuario('JPerez','Juan','Perez','123asd','jperez@gmail.com')
    user.get_user_name = 'juanperez'
    assert False, 'No se puede modificar el nombre del usuario'
except AttributeError:
    assert True

user = Usuario('JPerez','Juan','Perez','123','jperez@gmail.com')
user.baja_usuario()
assert user.get_fecha_baja == date.today()
assert user.estado == False

print('Datos del usuario', user)
'''

print(user.__dict__)
user.baja_usuario()
print(user.__dict__)
user.vuelta_usuario()
print(user.__dict__)