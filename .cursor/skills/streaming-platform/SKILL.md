# Streaming Platform Skill

Skill pour développer la plateforme de streaming vidéo en direct avec SolidJS, Bun, tRPC, et WebAssembly+Rust.

## Contexte

Cette skill fournit des connaissances spécialisées pour développer une plateforme de streaming vidéo de pointe avec :
- SolidJS pour le frontend (performance native-like)
- Bun runtime pour le backend (3x performance)
- tRPC pour API type-safe end-to-end
- ScyllaDB pour données temps réel (349x plus rapide)
- WebTransport + RTWebSocket (stratégie multi-protocole)
- WebAssembly + Rust pour traitement vidéo (10-100x performance)

## Patterns spécifiques

### SolidJS Reactivity
- Utiliser `createSignal` pour l'état réactif
- `createEffect` pour les effets de bord
- `createMemo` pour les valeurs calculées coûteuses
- Fine-grained reactivity pour performance optimale

### Bun Runtime
- APIs natives : `Bun.serve()`, `Bun.file()`, `Bun.write()`
- TypeScript natif, pas de compilation séparée
- Performance 3x supérieure à Node.js

### tRPC Routes
- Routes typées avec validation Zod
- Subscriptions pour données temps réel
- Type safety end-to-end automatique

### WebTransport Strategy
- Détection navigateur automatique
- Fallback RTWebSocket pour compatibilité
- Latence optimale (~200ms avec WebTransport)

### WebAssembly + Rust
- Bindings avec wasm-bindgen
- Web Workers pour non-blocking
- Traitement vidéo lourd uniquement

## Bonnes pratiques streaming

- Latence minimale (<300ms avec WebTransport)
- Edge computing pour modération AI
- Cache agressif avec Redis
- Scaling horizontal avec ScyllaDB
- Code splitting agressif pour performance

## Architecture

- Monorepo avec Module Federation
- Edge + Regional + Microservices (hybride)
- Path aliases : `@frontend/*`, `@backend/*`, `@shared/*`
