# Rutas para álbumes musicales
from flask import Blueprint

album_bp = Blueprint('albums', __name__)

@album_bp.route('/')
def home():
    return 'Bienvenido al sistema de colección de álbumes'