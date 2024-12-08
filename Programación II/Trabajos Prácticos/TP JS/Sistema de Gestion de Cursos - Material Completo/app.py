from flask import Flask
from app.config import Config
from app.models import db
from app.routes import routes

app = Flask(__name__)
app.config.from_object(Config)

db.init_app(app)

app.register_blueprint(routes)

with app.app_context():
    db.create_all()

if __name__ == '__main__':
    app.run(debug=True)
