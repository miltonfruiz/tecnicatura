from flask import Blueprint, jsonify, request, render_template
from app.models import db, Curso, Estudiante

routes = Blueprint('routes', __name__)

@routes.route('/')
def index():
    return render_template('index.html')

@routes.route('/api/cursos', methods=['GET', 'POST'])
def manejar_cursos():
    if request.method == 'POST':
        data = request.json
        curso_corregido = data.get('nombre', '').capitalize()
        profesor_corregido = data.get('profesor', '').capitalize()
        if Curso.query.filter_by(nombre=curso_corregido).first():
            return jsonify({"mensaje": "¡Ese curso ya existe!", "tipo": "error"}), 400
        nuevo_curso = Curso(nombre=curso_corregido, profesor=profesor_corregido)
        db.session.add(nuevo_curso)
        db.session.commit()
        return jsonify({"mensaje": "Curso agregado correctamente", "tipo": "success", "curso": nuevo_curso.to_dict()}), 201
    cursos = [curso.to_dict() for curso in Curso.query.all()]
    return jsonify(cursos)

@routes.route('/api/cursos/<int:id>', methods=['PUT'])
def editar_curso(id):
    datos_actualizados = request.json
    curso = Curso.query.get(id)
    if not curso:
        return jsonify({"mensaje": "Curso no encontrado", "tipo": "error"}), 404
    curso.nombre = datos_actualizados.get('nombre', curso.nombre).capitalize()
    curso.profesor = datos_actualizados.get('profesor', curso.profesor).capitalize()
    db.session.commit()
    return jsonify({"mensaje": "Curso actualizado correctamente", "tipo": "success", "curso": curso.to_dict()}), 200

@routes.route('/api/cursos/<int:id>', methods=['DELETE'])
def eliminar_curso(id):
    curso = Curso.query.get(id)
    if not curso:
        return jsonify({"mensaje": "Curso no encontrado", "tipo": "error"}), 404
    db.session.delete(curso)
    db.session.commit()
    return jsonify({"mensaje": f"Curso '{curso.nombre}' eliminado correctamente", "tipo": "success"}), 200

@routes.route('/api/estudiantes', methods=['POST'])
def agregar_estudiante():
    data = request.get_json()
    nombre = data.get('nombre')
    edad = data.get('edad')
    nota = data.get('nota')
    curso_id = data.get('curso_id')

    if not nombre or edad <= 0 or nota < 0 or nota > 10:
        return jsonify({"mensaje": "Datos incorrectos", "tipo": "error"}), 400
    curso = Curso.query.get(curso_id)
    if not curso:
        return jsonify({"mensaje": "Curso no encontrado", "tipo": "error"}), 404
    estudiante_existente = next(
        (est for est in curso.estudiantes if est.nombre.lower() == nombre.lower()), None)
    if estudiante_existente:
        return jsonify({"mensaje": "El estudiante ya existe", "tipo": "error"}), 400
    nuevo_estudiante = Estudiante(nombre=nombre, edad=edad, nota=nota)
    curso.estudiantes.append(nuevo_estudiante)
    db.session.commit()
    return jsonify({"mensaje": "Estudiante agregado correctamente", "tipo": "success", "estudiante": nuevo_estudiante.to_dict()}), 201

@routes.route('/api/estudiantes/<int:id>', methods=['DELETE'])
def eliminar_estudiante(id):
    estudiante = Estudiante.query.get(id)
    if not estudiante:
        return jsonify({"mensaje": "Estudiante no encontrado", "tipo": "error"}), 404
    db.session.delete(estudiante)
    db.session.commit()
    return jsonify({"mensaje": f"Estudiante {estudiante.nombre} eliminado correctamente", "tipo": "success"}), 200

@routes.route('/api/estudiantes/<int:id>', methods=['PUT'])
def editar_estudiante(id):
    estudiante = Estudiante.query.get(id)
    if not estudiante:
        return jsonify({"mensaje": "Estudiante no encontrado", "tipo": "error"}), 404
    data = request.get_json()
    nombre = data.get('nombre')
    edad = data.get('edad')
    nota = data.get('nota')
    if not nombre or edad <= 0 or nota < 0 or nota > 10:
        return jsonify({"mensaje": "Datos incorrectos", "tipo": "error"}), 400
    estudiante.nombre = nombre
    estudiante.edad = edad
    estudiante.nota = nota
    db.session.commit()
    return jsonify({"mensaje": "Estudiante actualizado correctamente", "tipo": "success", "estudiante": estudiante.to_dict()}), 200
