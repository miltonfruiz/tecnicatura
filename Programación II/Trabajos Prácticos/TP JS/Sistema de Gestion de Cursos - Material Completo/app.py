from flask import Flask
from flask_cors import CORS
from app.config import Config
from app.models import db
from app.routes import routes
import os

app = Flask(
    __name__,
    template_folder=os.path.join(os.getcwd(), 'app/templates'),
    static_folder=os.path.join(os.getcwd(), 'app/static')
)

app.config.from_object(Config)
CORS(app, resources={r"/api/*": {"origins": "*"}}, supports_credentials=True)

db.init_app(app)
app.register_blueprint(routes)
with app.app_context():
    try:
        db.create_all()
        app.logger.info("Base de datos inicializada correctamente.")
    except Exception as e:
        app.logger.error(f"Error al inicializar la base de datos: {e}")

@app.errorhandler(Exception)
def handle_exception(e):
    app.logger.error(f"Error no controlado: {e}")
    return {"mensaje": "Error interno del servidor", "tipo": "error"}, 500

if __name__ == '__main__':
    app.run(debug=True)
