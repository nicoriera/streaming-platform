#!/bin/bash

# Script pour créer le repository GitHub et pousser le code

set -e

REPO_NAME="streaming-platform"
DESCRIPTION="Plateforme de streaming vidéo en direct de pointe avec SolidJS, Bun, tRPC"

echo "🚀 Configuration du repository GitHub..."

# Vérifier que gh est installé
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI n'est pas installé."
    echo "   Installez-le avec: brew install gh"
    exit 1
fi

# Vérifier l'authentification
if ! gh auth status &> /dev/null; then
    echo "🔐 Authentification GitHub requise..."
    echo "   Exécutez: gh auth login"
    echo "   Puis relancez ce script"
    exit 1
fi

# Obtenir le username GitHub
GITHUB_USER=$(gh api user --jq .login)
echo "✅ Connecté en tant que: $GITHUB_USER"

# Demander la visibilité
echo ""
echo "Choisissez la visibilité du repository:"
echo "1) Public (recommandé)"
echo "2) Private"
read -p "Votre choix (1 ou 2): " visibility_choice

if [ "$visibility_choice" = "2" ]; then
    VISIBILITY="--private"
    echo "📦 Repository sera privé"
else
    VISIBILITY="--public"
    echo "🌍 Repository sera public"
fi

# Créer le repository
echo ""
echo "📦 Création du repository sur GitHub..."
gh repo create "$REPO_NAME" $VISIBILITY --description "$DESCRIPTION" --source=. --remote=origin --push

echo ""
echo "✅ Repository créé avec succès!"
echo "🔗 URL: https://github.com/$GITHUB_USER/$REPO_NAME"
echo ""
echo "📊 Prochaines étapes:"
echo "   1. Vérifiez le repository: https://github.com/$GITHUB_USER/$REPO_NAME"
echo "   2. GitHub Actions s'exécutera automatiquement"
echo "   3. Configurez les secrets si nécessaire (Settings → Secrets → Actions)"
