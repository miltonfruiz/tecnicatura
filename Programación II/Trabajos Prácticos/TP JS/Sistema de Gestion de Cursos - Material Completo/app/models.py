from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

class Curso(db.Model):
    __tablename__ = 'curso'
    id = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(120), nullable=False)
    profesor = db.Column(db.String(120), nullable=False)
    estudiantes = db.relationship('Estudiante', backref='curso', lazy=True)

class Estudiante(db.Model):
    __tablename__ = 'estudiante'
    id = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(120), nullable=False)
    curso_id = db.Column(db.Integer, db.ForeignKey('curso.id'), nullable=False)
