#!/bin/bash

# Script de tests

set -e

echo "🧪 Exécution des tests..."

# Vérifier que Bun est installé
if ! command -v bun &> /dev/null; then
    echo "❌ Bun n'est pas installé. Installez-le depuis https://bun.sh"
    exit 1
fi

# Tests backend
if [ -d "packages/backend" ]; then
    echo "🔧 Tests backend..."
    cd packages/backend
    if [ -f "src/**/*.test.ts" ] || [ -f "src/**/*.spec.ts" ]; then
        bun test
    else
        echo "⚠️  Aucun test backend trouvé"
    fi
    cd ../..
fi

# Tests frontend
if [ -d "packages/frontend" ]; then
    echo "🎨 Tests frontend..."
    cd packages/frontend
    if [ -f "src/**/*.test.ts" ] || [ -f "src/**/*.test.tsx" ]; then
        bun test
    else
        echo "⚠️  Aucun test frontend trouvé"
    fi
    cd ../..
fi

# Tests WebAssembly (si disponible)
if [ -d "packages/wasm" ]; then
    echo "🦀 Tests WebAssembly..."
    cd packages/wasm
    if command -v cargo &> /dev/null; then
        wasm-pack test --headless --firefox
    else
        echo "⚠️  Cargo non trouvé, skip des tests WASM"
    fi
    cd ../..
fi

echo "✅ Tests terminés!"
