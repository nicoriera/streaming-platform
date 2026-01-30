# 🚀 Création rapide du repository GitHub

## ✅ État actuel

- ✅ Git initialisé localement
- ✅ Premier commit créé (31 fichiers)
- ✅ Branche `main` configurée
- ✅ GitHub CLI détecté

## 📝 Option 1 : Via GitHub CLI (rapide)

### Étape 1 : Authentification GitHub CLI

```bash
gh auth login
```

Suivez les instructions pour vous authentifier (navigateur ou token).

### Étape 2 : Créer le repository et pousser

```bash
# Exécuter le script automatique
./scripts/setup-github.sh
```

Le script va :
1. Vérifier votre authentification
2. Créer le repository sur GitHub
3. Connecter le remote
4. Pousser le code automatiquement

## 📝 Option 2 : Via interface web GitHub

### Étape 1 : Créer le repository

1. Allez sur https://github.com/new
2. Remplissez :
   - **Repository name** : `streaming-platform`
   - **Description** : `Plateforme de streaming vidéo en direct de pointe avec SolidJS, Bun, tRPC`
   - **Visibility** : Public ou Private
   - ⚠️ **NE PAS** cocher "Initialize with README" (déjà créé)
   - ⚠️ **NE PAS** ajouter .gitignore ou license
3. Cliquez sur "Create repository"

### Étape 2 : Connecter et pousser

Une fois le repository créé, GitHub vous donnera des commandes. Exécutez :

```bash
# Remplacez VOTRE_USERNAME par votre username GitHub
git remote add origin https://github.com/VOTRE_USERNAME/streaming-platform.git

# Pousser le code
git push -u origin main
```

## ✅ Vérification

Après le push, vérifiez :
- Repository : `https://github.com/VOTRE_USERNAME/streaming-platform`
- GitHub Actions : Devrait s'exécuter automatiquement
- Tous les fichiers sont présents

## 🔧 Configuration recommandée après création

### 1. Activer GitHub Actions

Les workflows sont déjà configurés dans `.github/workflows/ci.yml`. Ils s'activeront automatiquement.

### 2. Configurer les secrets (plus tard)

Quand vous aurez besoin de secrets (DB, API keys) :
1. Settings → Secrets and variables → Actions
2. Ajoutez les secrets nécessaires

### 3. Branch protection (optionnel)

Pour protéger la branche `main` :
1. Settings → Branches
2. Add rule pour `main`
3. Activer : Require pull request reviews, Require status checks

---

**Choisissez l'option 1 (CLI) pour plus de rapidité, ou l'option 2 (web) si vous préférez l'interface !**
