class Pato:
    def hablar(self):
        print("¡Cuac! "*3)
class Perro:
    def hablar(self):
        print("!Guau! "*3)
class Cerdo:
    def hablar(self):
        print("!Oink! "*3)

def hacer_hablar(x):
    x.hablar()

#Creamos un pato y lo hacemos "hablar:"
mi_pato = Pato()
hacer_hablar(mi_pato)

#Creamos un perro y lo hacemos "hablar:"
mi_perro = Perro()
mi_perro.hablar()

#Creamos un cerdo y lo hacemos "hablar:"
mi_cerdo = Cerdo()
mi_cerdo.hablar()