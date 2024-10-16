# Definimos la clase Persona
class Persona:
# Atributo, presente en todos
# los objetos que pertenecen a la clase
    piernas = 2
# Instanciamos un objeto de la clase Persona
juan = Persona()
# Imprimimos un atributo del objeto
print(juan.piernas) # 2

class Persona:
    piernas = 2 # Atributo de clase
# Instanciamos un objeto de la clase Persona
juan = Persona()
# creamos un atributo para el objeto
juan.edad = 34
# Mostramos el atributo creado
print(juan.edad) # 34