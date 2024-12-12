from flask import Blueprint, jsonify, request, render_template
from app.models import db, Curso, Estudiante
from sqlalchemy import func
from sqlalchemy.orm import joinedload

routes = Blueprint('routes', __name__)

@routes.route('/')
def index():
    return render_template('index.html')

@routes.route('/api/cursos/<string:nombre>', methods=['OPTIONS'])
def preflight(nombre):
    response = jsonify({'message': 'Preflight request successful'})
    response.headers.add('Access-Control-Allow-Origin', '*')
    response.headers.add('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS')
    response.headers.add('Access-Control-Allow-Headers', 'Content-Type')
    return response, 200

#-------------------------------- * Rutas para Cursos * -----------------------------#
@routes.route('/api/cursos', methods=['GET', 'POST'])
def agregar_curso():
    if request.method == 'POST':
        data = request.json
        curso_corregido = data.get('nombre', '').capitalize()
        profesor_corregido = data.get('profesor', '').capitalize()
        if Curso.query.filter_by(nombre=curso_corregido).first():
            return jsonify({"mensaje": "¡Ese curso ya existe!", "tipo": "error"}), 400
        nuevo_curso = Curso(nombre=curso_corregido, profesor=profesor_corregido)
        db.session.add(nuevo_curso)
        db.session.commit()
        return jsonify({"mensaje": "¡Curso agregado correctamente!", "tipo": "success", "curso": nuevo_curso.to_dict()}), 201
    cursos = [curso.to_dict() for curso in Curso.query.all()]
    return jsonify(cursos)

@routes.route('/api/cursos/<string:nombre>', methods=['PUT'])
def editar_curso(nombre):
    curso = Curso.query.filter_by(nombre=nombre).first()
    if not curso:
        return jsonify({"mensaje": "Curso no encontrado", "tipo": "error"}), 404
    datos_actualizados = request.json
    curso.nombre = datos_actualizados.get('nombre', curso.nombre).capitalize()
    curso.profesor = datos_actualizados.get('profesor', curso.profesor).capitalize()
    db.session.commit()
    return jsonify({"mensaje": "Curso actualizado correctamente", "tipo": "success", "curso": curso.to_dict()}), 200

@routes.route('/api/cursos/<string:nombre>', methods=['DELETE'])
def eliminar_curso(nombre):
    try:
        curso_nombre = nombre.strip().lower()
        curso = Curso.query.filter(func.lower(Curso.nombre) == curso_nombre).first()
        if not curso:
            return jsonify({"mensaje": "Curso no encontrado", "tipo": "error"}), 404
        db.session.delete(curso)
        db.session.commit()
        return jsonify({"mensaje": f"Curso '{curso.nombre}' eliminado correctamente", "tipo": "success"}), 200
    except Exception as e:
        print(f"Error al eliminar curso: {e}")
        return jsonify({"mensaje": "Error interno del servidor", "tipo": "error"}), 500

#------------------------------ * Rutas para Estudiantes * --------------------------#
@routes.route('/api/estudiantes', methods=['POST'])
def agregar_estudiante():
    try:
        data = request.get_json()
        nombre = data.get('nombre')
        edad = data.get('edad')
        nota = data.get('nota')
        curso_index = data.get('curso_id')
        if not nombre or not isinstance(nombre, str):
            return jsonify({"mensaje": "Nombre inválido", "tipo": "error"}), 400
        if not isinstance(edad, int) or edad <= 0:
            return jsonify({"mensaje": "Edad inválida", "tipo": "error"}), 400
        if not isinstance(nota, (int, float)) or nota < 0 or nota > 10:
            return jsonify({"mensaje": "Nota inválida", "tipo": "error"}), 400
        if not isinstance(curso_index, int):
            return jsonify({"mensaje": "Curso no válido", "tipo": "error"}), 400
        cursos = Curso.query.order_by(Curso.id).all()
        if curso_index < 0 or curso_index >= len(cursos):
            return jsonify({"mensaje": "Curso no encontrado", "tipo": "error"}), 404
        curso = cursos[curso_index]
        estudiante_existente = next(
            (est for est in curso.estudiantes if est.nombre.lower() == nombre.lower()), None
        )
        if estudiante_existente:
            return jsonify({"mensaje": "¡El estudiante ya existe!", "tipo": "error"}), 400
        nuevo_estudiante = Estudiante(nombre=nombre, edad=edad, nota=nota)
        curso.estudiantes.append(nuevo_estudiante)
        db.session.commit()
        return jsonify({
            "mensaje": f"¡Estudiante {nombre} agregado!",
            "tipo": "success",
            "estudiante": nuevo_estudiante.to_dict()
        }), 201
    except Exception as e:
        db.session.rollback()
        print(f"Error al agregar estudiante: {e}")
        return jsonify({"mensaje": "Error interno del servidor", "tipo": "error"}), 500

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

@routes.route('/cursos', methods=['GET'])
def obtener_cursos():
    cursos = Curso.query.all()
    cursos_data = [curso.to_dict() for curso in cursos]
    return jsonify(cursos_data)