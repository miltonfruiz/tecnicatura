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

class Persona:
    piernas = 2 # Atributo de clase
juan = Persona() # Instanciamos un objeto
juan.edad = 34 # creamos un atributo
# Mostramos el atributo de instancia (objeto)
print(juan.edad) # 34
# Mostramos el atributo de clase
print(Persona.piernas) # 2

class Persona():
    piernas = 2 # Atributo DE CLASE
def caminar(self): # Definimos un método
    print("Está caminando.")
juan = Persona() # Instanciamos un objeto
juan.caminar() # Invocamos el método caminar()

class Persona():
    caminando = False # Atributo
def caminar(self): # Método caminar
    self.caminando = True
print("Estoy caminando.")
def detener(self): # Método detener
    self.caminando = False
print("Estoy detenido.")
juan = Persona() # Instanciamos
juan.caminar() # Estoy caminando
print(juan.caminando) # True
juan.detener() # Estoy detenido
print(juan.caminando) # False

class Persona():
# Método constructor
    def constructor(self, nombre, edad):
     self.nombre = nombre
     self.edad = edad
def identificarse(self): # Método normal
    print(f"Hola. Soy {self.nombre} y
tengo {self.edad} años.")
persona1 = Persona() # Instanciamos
persona1.constructor("Juan", 42)
persona1.identificarse()
persona1.edad = 43 # Modificamos la edad
persona1.identificarse()

class Persona():
# Método constructor
    def __init__ (self, nombre, edad):
        self.nombre = nombre
        self.edad = edad
    def identificarse(self): # Método normal
        print(f"Hola. Soy {self.nombre} y tengo {self.edad} años.")
# Instanciamos
persona1 = Persona("Juan", 42)
persona1.identificarse()
persona1.edad = 43 # Modificamos la edad
persona1.identificarse()

# Creamos la clase "Alumno":
class Alumno:
    def __init__ (self, nombre, nota):
        self.nombre = nombre
        self.nota = nota
    def __str__ (self):
        return f"La nota de {self.nombre} es {self.nota}"
alumno1 = Alumno("Pedro", 7)
print(alumno1) # La nota de Pedro es 7
alumno1.nota = 10
print(alumno1) # La nota de Pedro es 10

class Perro:
    def __init__ (self, nombre, raza):
        self.nombre = nombre
        self.raza = raza
    def __del__ (self):
        print('Objeto eliminado.')
perro1 = Perro("Lassie", "Collie")
print(perro1.nombre) # Lassie
print(perro1.raza) # Collie
del perro1 # Objeto eliminado.