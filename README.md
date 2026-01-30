# Plateforme de Streaming Vidéo en Direct

Plateforme de streaming vidéo en direct de pointe avec SolidJS, Bun, tRPC, ScyllaDB, WebTransport, et WebAssembly+Rust.

## 📦 Hébergement

Le code est organisé en monorepo et peut être hébergé sur :
- **GitHub** (recommandé pour intégration Cursor) - [Guide Git](GIT_SETUP.md)
- **GitLab** (recommandé pour repos privés gratuits) - [Guide Git](GIT_SETUP.md)

CI/CD configuré pour les deux plateformes.

## 🚀 Stack Technologique

- **Frontend** : SolidJS (98/100 Lighthouse, 12KB bundle)
- **Backend** : Bun runtime (3x performance, 40% moins mémoire)
- **API** : tRPC (type safety end-to-end automatique)
- **Base de données** : PostgreSQL + ScyllaDB + Redis
- **Protocoles** : WebTransport + RTWebSocket (stratégie multi-protocole)
- **Traitement vidéo** : WebAssembly + Rust (10-100x performance)
- **Architecture** : Monorepo avec Module Federation

## 📦 Installation

```bash
# Installer Bun (si pas déjà installé)
curl -fsSL https://bun.sh/install | bash

# Installer les dépendances
bun install
```

## 🛠️ Développement

```bash
# Démarrer frontend + backend
bun run dev

# Build production
bun run build

# Tests
bun run test

# Build WebAssembly
bun run wasm:build
```

## 📁 Structure

```
packages/
  frontend/     # SolidJS application
  backend/      # Bun API server
  shared/       # Code partagé
  types/        # Types TypeScript
  wasm/         # WebAssembly + Rust
```

## 📚 Documentation

- [Guide Cursor](CURSOR_SETUP.md) - Comment utiliser Cursor efficacement
- [Plan de développement](.cursor/plans/plateforme_streaming_cam_mvp_83e572cb.plan.md)

## 🎯 Prochaines étapes

Voir le plan de développement pour la roadmap complète.
