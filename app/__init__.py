# Inicializa la app Flask y la conexión a MySQL
from flask import Flask
from config import Config
import mysql.connector

def create_app():
    app = Flask(__name__)
    app.config.from_object(Config)

    app.config['MYSQL_CONNECTION'] = mysql.connector.connect(
        host=Config.DB_HOST,
        user=Config.DB_USER,
        password=Config.DB_PASSWORD,
        database=Config.DB_NAME
    )

    from app.routes.album_routes import album_bp
    app.register_blueprint(album_bp)

    return app
