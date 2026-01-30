# Guide d'utilisation Cursor pour Plateforme Streaming

Ce guide explique comment utiliser efficacement Cursor pour développer la plateforme de streaming avec SolidJS, Bun, tRPC, et WebAssembly+Rust.

## 🆕 Nouvelles fonctionnalités Cursor (2025-2026)

### Subagents (Jan 2026)
Utilisez des agents spécialisés en parallèle pour accélérer le développement :
- **Frontend Agent** : Développe les composants SolidJS
- **Backend Agent** : Crée les routes tRPC et services Bun
- **WASM Agent** : Optimise le code Rust/WebAssembly
- **Testing Agent** : Écrit et exécute les tests

**Exemple** : "Crée le composant de streaming avec un agent frontend, et la route tRPC avec un agent backend en parallèle"

### Skills (Jan 2026)
Le projet inclut une Skill spécialisée dans `.cursor/skills/streaming-platform/SKILL.md` qui fournit :
- Connaissances spécifiques au streaming
- Patterns SolidJS/Bun/tRPC optimisés
- Bonnes pratiques performance et latence

### Plan Mode (Oct 2025)
Créez des plans détaillés avant l'implémentation :
- Recherche automatique dans le codebase
- Plans interactifs avec références de code
- Exécution en arrière-plan pour review

**Utilisation** : Cursor suggère automatiquement Plan Mode pour les tâches complexes

### Debug Mode (Dec 2025)
Debugging interactif avec :
- Logs runtime en temps réel
- Génération de multiples hypothèses
- Instrumentation de code pour tests
- Boucles de vérification humaine

### Browser Tool (GA)
Testez directement dans le navigateur :
- Automatisation DOM
- Test des composants de streaming
- Vérification WebTransport/RTWebSocket
- Itération jusqu'à résultats corrects

### Semantic Search amélioré
- 12.5% d'amélioration de précision
- Recherche codebase-wide automatique
- Compréhension contextuelle améliorée

## 🚀 Démarrage rapide

### 1. Installation des dépendances

```bash
# Installer Bun (si pas déjà installé)
curl -fsSL https://bun.sh/install | bash

# Installer les dépendances du projet
bun install
```

### 2. Démarrage du développement

```bash
# Démarrer frontend + backend en parallèle
bun run dev

# Ou utiliser le script directement
./scripts/dev.sh
```

## 🎯 Fonctionnalités Cursor pour ce projet

### Agent Mode (Mode par défaut - Fév 2025)

Agent Mode unifie Chat, Composer, et Agent en une interface intelligente :

**Capacités avancées :**
- **Multi-step execution** : Gère les features complexes sur plusieurs fichiers
- **Autonomous exploration** : Explore le codebase et comprend les requirements
- **Planning-first** : Planifie avant d'implémenter pour réduire les erreurs
- **25 tool calls** : Peut faire jusqu'à 25 appels d'outils par requête
- **Web search automatique** : Recherche info à jour sans commande explicite

**Exemples de prompts efficaces :**

```
Crée un composant SolidJS pour afficher une liste de streams avec virtual scrolling, 
et génère la route tRPC correspondante avec pagination
```

```
Implémente le système de chat temps réel avec WebTransport, 
incluant le fallback RTWebSocket et les tests
```

```
Crée une fonction Rust pour détecter les deepfakes dans une frame vidéo,
avec bindings WebAssembly et intégration dans le frontend
```

### Subagents (Jan 2026) - NOUVEAU

Utilisez plusieurs agents spécialisés en parallèle :

**Exemple avec Subagents :**
```
[Frontend Agent] Crée le composant broadcaster SolidJS avec WebCodecs
[Backend Agent] Implémente la route tRPC pour créer un stream
[WASM Agent] Optimise la fonction Rust d'enhancement vidéo
[Testing Agent] Écrit les tests pour tous les composants
```

**Avantages :**
- Exécution parallèle (jusqu'à 8 agents)
- Contexte focalisé par agent
- Pas de conflits de fichiers (git worktrees)

### Plan Mode (Oct 2025)

Pour les tâches complexes, utilisez Plan Mode :

**Comment l'utiliser :**
1. Cursor suggère automatiquement Plan Mode pour les tâches complexes
2. Ou demandez explicitement : "Crée un plan pour implémenter le système de modération AI"
3. Le plan est créé avec références de code et chemins de fichiers
4. Vous pouvez éditer le plan inline avant exécution
5. Exécutez le plan avec un agent

**Exemple :**
```
Crée un plan détaillé pour implémenter le système de streaming 
avec WebTransport, incluant frontend, backend, et tests
```

### Debug Mode (Dec 2025) - NOUVEAU

Debugging interactif pour problèmes complexes :

**Fonctionnalités :**
- Logs runtime en temps réel
- Génération de multiples hypothèses de bugs
- Instrumentation de code pour tests
- Boucles de vérification humaine

**Utilisation :**
```
Debug le problème de latence avec WebTransport - 
les streams prennent plus de 500ms à démarrer
```

### Browser Tool (GA) - NOUVEAU

Testez directement dans le navigateur :

**Capacités :**
- Automatisation DOM
- Sélection d'éléments
- Test des composants de streaming
- Vérification WebTransport/RTWebSocket
- Itération jusqu'à résultats corrects

**Exemple :**
```
Teste le composant de streaming dans le navigateur,
vérifie que WebTransport fonctionne et que la latence est <300ms
```

### Semantic Search amélioré

- **12.5% d'amélioration de précision** dans les réponses
- **Codebase-wide search** automatique
- **Compréhension contextuelle** améliorée
- **Index réutilisé** : Partage d'index avec l'équipe (92% similarité moyenne)

### Codebase Indexing rapide

- **Index réutilisé** : Copie l'index d'un teammate si similaire
- **Merkle tree** : Sync delta seulement (~3.2 MB pour 50k fichiers)
- **Time-to-first-query** : De heures à secondes sur gros repos

## 📁 Structure du projet

```
packages/
  frontend/          # SolidJS application
    src/
      modules/       # Micro frontends (Module Federation)
      components/    # Composants SolidJS
      routes/        # Routes avec Solid Router
  backend/           # Bun API server
    src/
      router/        # Routes tRPC
      services/      # Services métier
      db/            # Connexions DB (PostgreSQL, ScyllaDB, Redis)
  shared/            # Code partagé frontend/backend
  types/             # Types TypeScript partagés
  wasm/              # WebAssembly + Rust
    src/             # Code Rust
    pkg/             # Build WASM (généré)
```

## 🔧 Commandes utiles

### Développement

```bash
# Démarrer l'environnement complet
bun run dev

# Build production
bun run build

# Tests
bun run test

# Build WebAssembly uniquement
bun run wasm:build
```

### Type checking

```bash
# Vérifier les types dans tous les packages
bun run --filter "*" type-check
```

## 💡 Tips & Tricks avec nouvelles fonctionnalités

### 1. Utiliser Subagents pour paralléliser

Au lieu d'une seule requête séquentielle, utilisez plusieurs agents :

**❌ Ancienne méthode :**
```
Crée le composant frontend, puis la route backend, puis les tests
```

**✅ Nouvelle méthode avec Subagents :**
```
[Frontend] Crée le composant SolidJS de streaming
[Backend] Implémente la route tRPC getStream
[Testing] Écrit les tests unitaires et d'intégration
```

Résultat : 3x plus rapide avec exécution parallèle !

### 2. Plan Mode pour features complexes

Pour les features majeures, créez d'abord un plan :

**Exemple :**
```
Crée un plan pour implémenter le système de modération AI en temps réel
avec edge computing, incluant architecture, fichiers, et étapes
```

Le plan sera créé avec références de code, puis vous pourrez l'exécuter étape par étape.

### 3. Browser Tool pour tester le streaming

Testez directement les composants de streaming :

```
Ouvre le navigateur, charge le composant de streaming,
et vérifie que WebTransport fonctionne avec latence <300ms
```

L'agent peut itérer jusqu'à ce que tout fonctionne correctement.

### 4. Debug Mode pour problèmes complexes

Pour les bugs difficiles à reproduire :

```
Debug le problème où les streams se déconnectent après 5 minutes.
Génère plusieurs hypothèses et teste chacune avec instrumentation.
```

### 5. Skills pour connaissances spécialisées

Le projet inclut une Skill dans `.cursor/skills/streaming-platform/SKILL.md` :
- Patterns SolidJS/Bun/tRPC optimisés
- Bonnes pratiques streaming
- Architecture hybride Edge + Regional

L'agent découvre automatiquement cette skill quand nécessaire.

### 6. Type Safety avec tRPC

Cursor comprend automatiquement les types tRPC grâce au type safety end-to-end :

```typescript
// Dans le frontend, autocomplétion complète !
const stream = await trpc.streaming.getStream.query({ 
  streamId: "..." // TypeScript sait que c'est un string
});
```

### 2. SolidJS Reactivity

Cursor génère du code SolidJS correct grâce aux règles dans `.cursorrules` :

```typescript
// ✅ Cursor génère ceci automatiquement
const [count, setCount] = createSignal(0);
createEffect(() => {
  console.log(count());
});
```

### 3. WebAssembly + Rust

Pour travailler avec WASM, Cursor comprend les bindings Rust :

```rust
// Dans Rust
#[wasm_bindgen]
pub fn enhance_video(frame: &[u8]) -> Vec<u8> {
    // ...
}
```

```typescript
// Dans TypeScript, autocomplétion disponible
import { enhance_video } from '@wasm/streaming-wasm';
const enhanced = enhance_video(frameData);
```

### 4. Monorepo Path Aliases

Utilisez les path aliases pour les imports :

```typescript
// ✅ Bon
import { User } from '@types/user';
import { apiClient } from '@shared/api';

// ❌ Mauvais
import { User } from '../../../types/user';
```

## 🐛 Debugging

### Frontend (SolidJS)

1. Utilisez SolidJS DevTools dans le navigateur
2. Cursor peut aider à déboguer les problèmes de reactivity
3. Utilisez `console.log` avec les signals : `console.log(count())`

### Backend (Bun)

1. Utilisez `bun --inspect` pour le debugging Node.js-compatible
2. Cursor comprend les erreurs Bun natives
3. Utilisez les logs structurés pour le debugging

### WebAssembly

1. Utilisez `wasm-pack test` pour tester le code Rust
2. Cursor peut aider à déboguer les bindings WASM
3. Utilisez les source maps pour le debugging

## 📚 Ressources

### Documentation officielle

- [SolidJS](https://www.solidjs.com/docs/latest)
- [Bun](https://bun.sh/docs)
- [tRPC](https://trpc.io/docs)
- [WebAssembly + Rust](https://rustwasm.github.io/docs/book/)

### Extensions recommandées

- SolidJS Language Support (si disponible)
- Rust Analyzer (pour WebAssembly)
- TypeScript Vue Plugin (pour JSX SolidJS)

## 🔍 Recherche dans le codebase

Cursor permet de rechercher sémantiquement dans le codebase :

- "Comment fonctionne la stratégie multi-protocole WebTransport ?"
- "Où est implémentée la modération AI ?"
- "Comment sont gérées les subscriptions tRPC ?"

## ⚡ Performance

### Optimisations automatiques

Cursor génère du code optimisé grâce aux règles dans `.cursorrules` :

- Fine-grained reactivity pour SolidJS
- Prepared statements pour ScyllaDB
- Web Workers pour WebAssembly
- Code splitting pour Module Federation

### Vérifications de performance

Cursor peut suggérer des optimisations :

- "Ce composant pourrait utiliser `createMemo`"
- "Cette query pourrait être batchée"
- "Ce traitement devrait être dans un Web Worker"

## 🎓 Apprentissage avec nouvelles fonctionnalités

### Demander des explications

Utilisez Agent Mode (web search automatique) pour comprendre les concepts :

- "Explique-moi comment fonctionne la fine-grained reactivity de SolidJS" 
  → L'agent recherche automatiquement la doc à jour
  
- "Quelle est la différence entre WebTransport et WebSocket ?"
  → Recherche web automatique + explication contextuelle
  
- "Comment fonctionne le type safety end-to-end avec tRPC ?"
  → Explication avec exemples de code du projet

### Code examples avec contexte

Demandez des exemples avec contexte du projet :

- "Montre-moi un exemple de composant SolidJS avec virtual scrolling 
   similaire à notre liste de streams"
   
- "Donne un exemple de route tRPC avec subscription 
   pour notre système de chat temps réel"
   
- "Montre comment utiliser WebTransport dans le frontend 
   avec notre stratégie de fallback RTWebSocket"

L'agent utilise le contexte du projet pour des exemples pertinents.

### Plan Mode pour apprendre

Créez un plan d'apprentissage :

```
Crée un plan pour comprendre l'architecture complète du streaming :
- Comment WebTransport communique avec le backend Bun
- Comment ScyllaDB stocke les données temps réel
- Comment WebAssembly traite les frames vidéo
```

Le plan vous guidera à travers le codebase avec références précises.

## 🚨 Problèmes courants

### Type errors avec tRPC

Si vous avez des erreurs de types avec tRPC, vérifiez que :
1. Les types sont exportés depuis `@shared/types`
2. Le router tRPC est correctement typé
3. Les imports utilisent les path aliases

### SolidJS reactivity ne fonctionne pas

Vérifiez que :
1. Vous utilisez `createSignal` et non des variables mutables
2. Vous accédez aux valeurs avec `()` : `count()` et non `count`
3. Les effets utilisent `createEffect`

### WebAssembly ne charge pas

Vérifiez que :
1. Le build WASM a été exécuté : `bun run wasm:build`
2. Le fichier `.wasm` est dans `packages/wasm/pkg/`
3. Les imports utilisent `@wasm/*` alias

## 📝 Bonnes pratiques

1. **Toujours typer** : Utilisez TypeScript strict partout
2. **Path aliases** : Utilisez `@frontend/*`, `@backend/*`, etc.
3. **Composer** : Utilisez Composer pour générer du code conforme
4. **Chat** : Posez des questions avant de coder
5. **Tests** : Écrivez des tests pour le code critique

## 🎯 Workflow recommandé (optimisé 2026)

### Workflow simple (1 feature)

1. **Planifier** : Utilisez Plan Mode pour créer un plan détaillé
2. **Générer** : Utilisez Agent Mode (ou Subagents pour paralléliser)
3. **Tester** : Utilisez Browser Tool pour tester dans le navigateur
4. **Debug** : Utilisez Debug Mode si problèmes
5. **Optimiser** : Demandez des suggestions d'optimisation

### Workflow complexe (feature majeure)

1. **Plan détaillé** : Plan Mode avec références de code
2. **Subagents parallèles** : 
   - Frontend Agent pour composants SolidJS
   - Backend Agent pour routes tRPC
   - WASM Agent pour optimisation Rust
   - Testing Agent pour tests
3. **Intégration** : Agent principal pour intégrer les parties
4. **Test Browser** : Browser Tool pour test end-to-end
5. **Debug si nécessaire** : Debug Mode pour problèmes
6. **Review** : Review des changements multi-fichiers

### Workflow debugging

1. **Reproduire** : Utilisez Browser Tool pour reproduire le bug
2. **Debug Mode** : Activez Debug Mode pour logs runtime
3. **Hypothèses** : L'agent génère plusieurs hypothèses
4. **Test** : Instrumentation de code pour tester chaque hypothèse
5. **Fix** : Correction avec vérification humaine
6. **Vérifier** : Browser Tool pour vérifier le fix

## 🆘 Support avec nouvelles fonctionnalités

Si vous rencontrez des problèmes :

1. **Debug Mode** : Activez Debug Mode pour logs runtime détaillés
2. **Skills** : Vérifiez la Skill dans `.cursor/skills/streaming-platform/`
3. **Règles** : Consultez `.cursorrules` pour patterns spécifiques
4. **Plan Mode** : Créez un plan de debugging pour problèmes complexes
5. **Browser Tool** : Testez dans le navigateur pour reproduire
6. **Web Search** : Agent Mode recherche automatiquement les solutions

### Exemple de debugging avec nouvelles fonctionnalités

**Problème** : "Les streams se déconnectent après 5 minutes"

**Workflow optimisé :**
1. Browser Tool : Reproduire le problème dans le navigateur
2. Debug Mode : Activer pour logs runtime
3. Plan Mode : Créer un plan de debugging avec hypothèses
4. Subagents : 
   - Network Agent : Analyse les connexions WebTransport
   - Backend Agent : Vérifie les timeouts côté serveur
   - Frontend Agent : Analyse la gestion de reconnexion
5. Fix : Correction avec vérification Browser Tool

## 📖 Exemples pratiques

Consultez `.cursor/skills/streaming-platform/examples.md` pour des exemples détaillés d'utilisation des nouvelles fonctionnalités Cursor avec ce projet.

## 🔄 Migration depuis anciennes versions

Si vous utilisez Cursor depuis avant 2025 :

### Ancien workflow → Nouveau workflow

**Avant (Chat + Composer séparés) :**
```
1. Chat : "Comment créer un composant SolidJS ?"
2. Composer : "Crée le composant"
3. Chat : "Comment l'intégrer avec tRPC ?"
```

**Maintenant (Agent Mode unifié) :**
```
Agent : "Crée un composant SolidJS intégré avec route tRPC,
         avec tests et documentation"
→ Tout en une seule requête avec contexte complet
```

### Avantages nouveaux workflow

- **4x plus rapide** : Composer Model optimisé
- **Parallélisation** : Subagents pour tâches multiples
- **Meilleure compréhension** : Semantic search amélioré
- **Test intégré** : Browser Tool natif
- **Debug avancé** : Debug Mode avec logs runtime

---

**Bon développement avec Cursor 2.0+ ! 🚀**
