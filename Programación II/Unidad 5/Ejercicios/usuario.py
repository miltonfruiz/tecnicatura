from datetime import date

class Usuario:
    def __init__(self, user_name: str, nombre: str, apellido: str, password: str, email: str) -> None:
        self.__user_name:str = user_name
        self.__nombre:str = nombre
        self.__apellido:str = apellido
        self.__password:str = password
        self.__email:str = email
        self.__estado:bool = True
        self.__fecha_alta:date = date.today()
        self.__fecha_baja:date = None

def get_user_name(self)->str:
    return self.__user_name

def get_nombre(self)->str:
    return self.__nombre

def set_nombre(self, nuevo_nombre:str)->None:
    self.__nombre = nuevo_nombre

def get_apellido(self)->str:
    return self.__apellido

def set_apellido(self, nuevo_apellido:str)->None:
    self.__apellido = nuevo_apellido

def get_password(self)->str:
    return self.__password

def set_password(self, nuevo_password:str)->None:
    self.__password = nuevo_password

def get_email(self)->str:
    return self.__email

def set_email(self, nuevo_email:str)->None:
    self.__email = nuevo_email

def get_estado(self)->bool:
    return self.__estado

def set_estado(self, nuevo_estado:bool)->None:
    self.__estado = nuevo_estado

def get_fecha_alta(self)->date:
    return self.__fecha_alta

def set_fecha_alta(self, nueva_fecha_alta:date)->None:
    self.__fecha_alta = nueva_fecha_alta

def get_fecha_baja(self)->date:
    return self.__fecha_baja

def set_fecha_baja(self, nueva_fecha_baja:date)->None:
    self.__fecha_baja = nueva_fecha_baja

def baja_usuario(self)->None:
    self.__estado = False
    self.__fecha_baja = date.today()

def vuelta_usuario(self)->None:
    self.__estado = True
    self.__fecha_baja = None

def validar_credenciales(self, usuario:str, password:str)->bool:
    return usuario == self.__user_name and password == self.__password