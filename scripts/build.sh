#!/bin/bash

# Script de build production

set -e

echo "🏗️  Build de production..."

# Vérifier que Bun est installé
if ! command -v bun &> /dev/null; then
    echo "❌ Bun n'est pas installé. Installez-le depuis https://bun.sh"
    exit 1
fi

# Installer les dépendances
echo "📦 Installation des dépendances..."
bun install

# Build WebAssembly
echo "🦀 Build WebAssembly (Rust)..."
if [ -d "packages/wasm" ]; then
    cd packages/wasm
    if command -v cargo &> /dev/null; then
        wasm-pack build --target web --out-dir pkg
        echo "✅ WebAssembly build terminé"
    else
        echo "⚠️  Cargo non trouvé, skip du build WASM"
    fi
    cd ../..
fi

# Build backend
echo "🔧 Build backend..."
cd packages/backend
bun run build
cd ../..

# Build frontend
echo "🎨 Build frontend..."
cd packages/frontend
bun run build
cd ../..

echo "✅ Build de production terminé!"
echo "   Backend: packages/backend/dist"
echo "   Frontend: packages/frontend/dist"
