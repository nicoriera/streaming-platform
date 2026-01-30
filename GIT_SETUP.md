# Configuration Git - Plateforme Streaming

## Recommandation : GitHub ou GitLab ?

### GitHub (Recommandé pour ce projet)

**Avantages :**
- ✅ **Intégration Cursor native** : Meilleure intégration avec Cursor IDE
- ✅ **Écosystème plus large** : Plus de packages, outils, intégrations
- ✅ **GitHub Actions** : CI/CD intégré, gratuit pour repos publics
- ✅ **GitHub Copilot** : Complémentaire avec Cursor (optionnel)
- ✅ **Communauté** : Plus grande communauté pour SolidJS, Bun, tRPC
- ✅ **Project Cyclops** : Optimisations monorepo améliorées en 2025

**Inconvénients :**
- ❌ Repos privés payants (gratuit pour publics)
- ❌ CI/CD limité pour repos privés gratuits

### GitLab (Alternative)

**Avantages :**
- ✅ **Repos privés illimités gratuits**
- ✅ **CI/CD complet gratuit** : 400 minutes/mois
- ✅ **DevOps intégré** : CI/CD, monitoring, déploiement
- ✅ **Gitaly optimisé** : Cache pack-objects pour monorepos
- ✅ **Métriques monorepo** : Monitoring performance détaillé

**Inconvénients :**
- ❌ Intégration Cursor moins native
- ❌ Communauté plus petite pour certaines technologies

## Recommandation finale

**Pour ce projet : GitHub** (si repo public) ou **GitLab** (si repo privé gratuit nécessaire)

## Configuration Git

### 1. Initialiser le repository

```bash
# Si nouveau repo
git init
git add .
git commit -m "feat: initial commit - streaming platform setup"

# Si repo existant
git remote add origin https://github.com/votre-username/streaming-platform.git
# ou
git remote add origin https://gitlab.com/votre-username/streaming-platform.git
```

### 2. Structure des branches

```
main          # Production
├── develop   # Développement
├── feature/*  # Features
├── fix/*      # Bug fixes
└── release/*  # Releases
```

### 3. Conventional Commits

Utilisez Conventional Commits pour les messages :

```
feat: add streaming component with WebTransport
fix: resolve WebTransport fallback issue
docs: update CURSOR_SETUP.md
refactor: optimize SolidJS reactivity
perf: improve ScyllaDB query performance
test: add tests for tRPC routes
```

## CI/CD configuré

### GitHub Actions
- Fichier : `.github/workflows/ci.yml`
- Stages : Lint, Test, Build
- Déclenchement : Push sur main/develop, Pull Requests

### GitLab CI
- Fichier : `.gitlab-ci.yml`
- Stages : Lint, Test, Build, Deploy
- Cache configuré pour accélérer les builds

## Prochaines étapes

1. **Choisir la plateforme** (GitHub ou GitLab)
2. **Créer le repository** sur la plateforme choisie
3. **Initialiser Git** :
   ```bash
   git init
   git add .
   git commit -m "feat: initial commit - streaming platform foundation"
   git branch -M main
   git remote add origin <URL_DU_REPO>
   git push -u origin main
   ```

4. **Configurer les secrets** (si nécessaire) :
   - Variables d'environnement
   - Clés API (Cloudflare, Stripe, etc.)
   - Credentials DB (dans les secrets de la plateforme)

## Fichiers Git créés

- ✅ `.gitignore` - Fichiers à ignorer (node_modules, dist, etc.)
- ✅ `.github/workflows/ci.yml` - CI/CD GitHub Actions
- ✅ `.gitlab-ci.yml` - CI/CD GitLab

## Sécurité

⚠️ **Important** : Ne jamais commiter :
- Fichiers `.env` avec secrets
- Clés API ou tokens
- Credentials de base de données
- Certificats SSL privés

Utilisez les secrets de la plateforme (GitHub Secrets / GitLab CI Variables) pour les valeurs sensibles.
