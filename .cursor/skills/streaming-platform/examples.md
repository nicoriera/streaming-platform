# Exemples d'utilisation - Streaming Platform Skill

## Exemples de prompts optimisés avec nouvelles fonctionnalités Cursor

### 1. Développement parallèle avec Subagents

**Prompt :**
```
[Frontend Agent] Crée un composant SolidJS StreamViewer avec WebTransport,
supportant AV1/HEVC et virtual scrolling pour liste de streams

[Backend Agent] Implémente la route tRPC streaming.getStreams avec pagination
et filtres, utilisant ScyllaDB pour performance temps réel

[Testing Agent] Écrit les tests unitaires et d'intégration pour les deux composants
```

**Résultat :** 3 agents travaillent en parallèle, développement 3x plus rapide

### 2. Plan Mode pour feature complexe

**Prompt :**
```
Crée un plan détaillé pour implémenter le système de modération AI en temps réel :
- Edge computing avec Cloudflare Workers
- Analyse frame-by-frame avec STREAMGUARD
- Détection deepfake avec DigiShield
- Intégration avec le frontend pour notifications
```

**Résultat :** Plan structuré avec références de code, fichiers à créer, étapes détaillées

### 3. Browser Tool pour test streaming

**Prompt :**
```
Ouvre le navigateur et teste le composant StreamViewer :
1. Charge un stream avec WebTransport
2. Vérifie que la latence est <300ms
3. Teste le fallback RTWebSocket si WebTransport non supporté
4. Vérifie que le stream fonctionne en fullscreen
5. Teste la reconnexion automatique si déconnexion
```

**Résultat :** Test automatisé dans le navigateur avec itération jusqu'à succès

### 4. Debug Mode pour problème complexe

**Prompt :**
```
Debug le problème où les viewers voient des artefacts vidéo après 10 minutes :
- Génère plusieurs hypothèses (buffer overflow, codec issue, network)
- Instrumente le code pour logger chaque hypothèse
- Teste chaque hypothèse avec Browser Tool
- Fix le problème identifié
```

**Résultat :** Debugging systématique avec logs runtime et tests automatisés

### 5. Optimisation avec Semantic Search

**Prompt :**
```
Optimise la performance du composant StreamList :
- Trouve tous les endroits où on peut utiliser createMemo
- Identifie les re-renders inutiles
- Suggère virtual scrolling si liste >100 items
- Optimise les imports pour code splitting
```

**Résultat :** Suggestions basées sur recherche sémantique dans le codebase

### 6. Feature complète avec Plan + Subagents

**Prompt :**
```
Crée un plan pour implémenter le système de tips/dons avec Web3 :
1. Plan détaillé avec architecture
2. [Frontend] Composant de tip avec intégration crypto
3. [Backend] Route tRPC pour traitement paiements
4. [Smart Contract] Contrat Solidity pour tokens
5. [Testing] Tests end-to-end avec Browser Tool
```

**Résultat :** Feature complète avec plan structuré et exécution parallèle

### 7. Migration avec Plan Mode

**Prompt :**
```
Crée un plan pour migrer de WebSocket vers WebTransport :
- Analyse l'usage actuel de WebSocket
- Identifie tous les fichiers à modifier
- Plan de migration étape par étape
- Tests de régression avec Browser Tool
```

**Résultat :** Plan de migration sûr avec références précises

### 8. Performance avec Debug Mode

**Prompt :**
```
Analyse la performance du streaming avec Debug Mode :
- Mesure la latence réelle avec WebTransport
- Identifie les bottlenecks (network, encoding, rendering)
- Optimise chaque bottleneck identifié
- Vérifie les améliorations avec Browser Tool
```

**Résultat :** Optimisation basée sur données réelles avec logs runtime
