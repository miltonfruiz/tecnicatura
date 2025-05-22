from sqlalchemy import Column,Integer,String,Date, ForeignKey, Boolean, Enum, PrimaryKeyConstraint
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship

Base = declarative_base() #base para modelos declarativos

class Autor(Base):
    __tablename__ = 'autores' #nombre de la tabla
    id = Column(Integer, primary_key=True, autoincrement=True) #id incremental
    nombre = Column(String(50), nullable=False) #campo no nulo
    nacionalidad = Column(String(30),)
    fecha_nacimiento = Column(Date)
    libro = relationship("Libro", back_populates="autor")
    def __repr__(self):
        return f"<Autor(id={self.id}, nombre='{self.nombre}', nacionalidad={self.nacionalidad}, fecha={self.fecha_nacimiento})"

class Libro(Base):
    __tablename__ = 'libros'
    id = Column(Integer, primary_key=True, autoincrement=True)
    titulo = Column(String(50), nullable=False)
    autor_id = Column(Integer, ForeignKey("autores.id"), nullable=False)
    isbn = Column(String(20), unique=True)
    genero = Column(String(30))
    anio_publicacion = Column(Integer)
    disponible = Column(Boolean, default=True)
    tipo = Column(String(30), Enum(['fisico', 'digital']))
    autor = relationship("Autor", back_populates="libro")
    def __repr__(self):
        return (f"<Libro(id={self.id}, titulo='{self.titulo}', autor_id='{self.autor_id}', "
                f"isbn='{self.isbn}', genero='{self.genero}', anio_publicacion='{self.anio_publicacion}', "
                f"disponible='{self.disponible}', tipo='{self.tipo}')")
    
class Socio(Base):
    __tablename__ = 'socios'
    id = Column(Integer, primary_key=True, autoincrement=True)
    nombre = Column(String(50), nullable=False)
    apellido = Column(String(50), nullable=False)
    direccion = Column(String(50))
    prestamos = relationship("Prestamo", back_populates="socio")
    def __repr__(self):
        return f"<Socio(id={self.id}, nombre='{self.nombre}', apellido='{self.apellido}', direccin='{self.direccion}')"
    

class Prestamos(Base):
    libro_id = Column(Integer, ForeignKey("libros.id"), nullable=False)
    socio_id = Column(Integer, ForeignKey("socios.id"), nullable=False)
    fecha_prestamo = Column(Date, nullable=False)
    fecha_devolucion = Column(Date)
    # clave primaria compuesta
    __table_args__ = (
        PrimaryKeyConstraint('libro_id', 'socio_id', 'fecha_prestamo'),
    )
    libro = relationship("Libro", backref="prestamos")
    socio = relationship("Socio", back_populates="prestamos")
    def __repr__(self):
        return (f"<Prestamo(libro_id={self.libro_id}, socio_id={self.socio_id}, "
                f"fecha_prestamo={self.fecha_prestamo}, fecha_devolucion={self.fecha_devolucion},")