#!/bin/bash

# Script de démarrage de l'API

echo "🚀 Démarrage de l'API Gestion Documents Étudiants..."

# Vérifier si .env existe
if [ ! -f .env ]; then
    echo "⚠️  Fichier .env non trouvé!"
    echo "📝 Créez un fichier .env basé sur env_example.txt"
    echo "   cp env_example.txt .env"
    echo "   Puis modifiez les valeurs dans .env"
    exit 1
fi

# Vérifier si la base de données est initialisée
echo "🔧 Initialisation de la base de données..."
python3 init_db.py

# Démarrer l'application
echo "✅ Démarrage du serveur..."
uvicorn main:app --reload --host 0.0.0.0 --port 8000

