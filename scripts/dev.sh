#!/bin/bash

# Script de développement - Démarre frontend et backend en parallèle

set -e

echo "🚀 Démarrage de l'environnement de développement..."

# Vérifier que Bun est installé
if ! command -v bun &> /dev/null; then
    echo "❌ Bun n'est pas installé. Installez-le depuis https://bun.sh"
    exit 1
fi

# Installer les dépendances si nécessaire
if [ ! -d "node_modules" ]; then
    echo "📦 Installation des dépendances..."
    bun install
fi

# Démarrer le backend en arrière-plan
echo "🔧 Démarrage du backend (Bun)..."
cd packages/backend
bun run dev &
BACKEND_PID=$!
cd ../..

# Attendre un peu pour que le backend démarre
sleep 2

# Démarrer le frontend
echo "🎨 Démarrage du frontend (Vite)..."
cd packages/frontend
bun run dev &
FRONTEND_PID=$!
cd ../..

echo "✅ Environnement de développement démarré!"
echo "   Frontend: http://localhost:3000"
echo "   Backend: http://localhost:3001"
echo ""
echo "Appuyez sur Ctrl+C pour arrêter tous les services"

# Attendre les signaux d'arrêt
trap "kill $BACKEND_PID $FRONTEND_PID 2>/dev/null; exit" INT TERM

# Attendre que les processus se terminent
wait
