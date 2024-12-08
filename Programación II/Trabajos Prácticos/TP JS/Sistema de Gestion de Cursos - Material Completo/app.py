from flask import Flask, render_template, jsonify, request

app = Flask(__name__)
cursos = []
estudiantes = []

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/cursos', methods=['POST'])
def agregar_curso():
    data = request.json
    curso_corregido = data.get('nombre', '').capitalize()
    profesor_corregido = data.get('profesor', '').capitalize()
    if any(curso['nombre'].lower() == curso_corregido.lower() for curso in cursos):
        return jsonify({'mensaje': '¡Ese curso ya existe!', 'tipo': 'error'}), 400
    if not curso_corregido or not profesor_corregido:
        return jsonify({'mensaje': '¡Valores ingresados incorrectos!', 'tipo': 'error'}), 400
    nuevo_curso = {'nombre': curso_corregido, 'profesor': profesor_corregido}
    cursos.append(nuevo_curso)
    return jsonify({'mensaje': '¡Curso creado correctamente!', 'tipo': 'success', 'curso': nuevo_curso}), 201

@app.route('/api/cursos', methods=['GET', 'POST'])
def manejar_cursos():
    if request.method == 'POST':
        nuevo_curso = request.json
        cursos.append(nuevo_curso)
        return jsonify({"mensaje": "Curso agregado", "cursos": cursos}), 201
    return jsonify(cursos)

@app.route('/api/estudiantes', methods=['GET', 'POST'])
def manejar_estudiantes():
    if request.method == 'POST':
        nuevo_estudiante = request.json
        estudiantes.append(nuevo_estudiante)
        return jsonify({"mensaje": "Estudiante agregado", "estudiantes": estudiantes}), 201
    return jsonify(estudiantes)

if __name__ == '__main__':
    app.run(debug=True)
