from flask import Flask, render_template, jsonify, request

app = Flask(__name__)
cursos = []
estudiantes = []

@app.route('/')
def index():
    return render_template('index.html')

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
