from flask import Blueprint, jsonify, request, render_template
from models import db, Curso

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
