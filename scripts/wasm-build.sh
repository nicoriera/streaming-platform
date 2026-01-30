#!/bin/bash

# Script de build WebAssembly (Rust)

set -e

echo "🦀 Build WebAssembly (Rust)..."

# Vérifier que Rust/Cargo est installé
if ! command -v cargo &> /dev/null; then
    echo "❌ Cargo n'est pas installé. Installez Rust depuis https://rustup.rs"
    exit 1
fi

# Vérifier que wasm-pack est installé
if ! command -v wasm-pack &> /dev/null; then
    echo "📦 Installation de wasm-pack..."
    cargo install wasm-pack
fi

cd packages/wasm

echo "🔨 Compilation Rust vers WebAssembly..."
wasm-pack build --target web --out-dir pkg --release

echo "✅ WebAssembly build terminé!"
echo "   Output: packages/wasm/pkg/"

cd ../..
