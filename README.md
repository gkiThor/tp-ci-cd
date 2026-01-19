# TP – Mise en place d’une pipeline CI/CD

Ce projet a pour objectif de mettre en œuvre une pipeline **CI/CD** complète avec **GitHub Actions**, incluant :
- l’exécution automatique de tests unitaires Python,
- une étape de lint avec **pylint**,
- le build et l’exécution d’une image **Docker** lançant les tests.

---

## 🧮 Fonctionnalités

- Classe `SimpleMath`
  - `addition(a, b)`
  - `soustraction(a, b)`
- Tests unitaires avec `unittest`
- Analyse statique du code avec `pylint`

---

## ▶️ Exécution en local

### Prérequis
- Python 3.10+
- pip

### Lancer les tests unitaires
```bash
python3 -m unittest discover -s tests -p "test_*.py"

### Lancer pylint
python3 -m pip install pylint
pylint src tests

⚙️ CI avec GitHub Actions

Un workflow GitHub Actions est configuré dans :

.github/workflows/tests.yml


Il s’exécute automatiquement :

à chaque push sur la branche main

à chaque pull request

🐳 Docker
Build de l’image
docker build -t tp-cicd .

Exécution du conteneur
docker run --rm tp-cicd


👉 Le CMD du conteneur exécute automatiquement les tests unitaires.
