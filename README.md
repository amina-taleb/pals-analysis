
# 🧬 Pals Analysis — Analyse de données du jeu Palworld

> Non, ce ne sont pas des Pokémons, mais des Pals !  
Ce projet est une analyse de données des créatures du jeu **Palworld**, mêlant SQL, Python, et Streamlit, dans le but d'optimiser la stratégie de jeu autour du combat, de la collecte et de la production.

---

## 🎮 Contexte

Palworld est un jeu de survie en monde ouvert, où vous collectionnez des créatures appelées *Pals* pour construire, vous battre, cultiver ou encore automatiser votre campement. Ce projet vise à analyser un dataset extrait du jeu afin de comprendre les caractéristiques, compétences et comportements de ces Pals.

---

## 🧩 Objectifs

- Importer et nettoyer les données extraites du jeu.
- Structurer une base de données SQL avec MariaDB ou MySQL.
- Réaliser une **analyse exploratoire** des Pals à l’aide de requêtes SQL et de visualisations Python.
- Créer une application interactive avec **Streamlit** pour présenter les résultats.

---

## 📁 Structure du projet

```bash
pals-analysis/
├── app/                      # Application Streamlit
│   └── app.py
├── assets/                   # Graphiques pour le rapport / app
│   └── figures/
├── data/
│   ├── raw/                  # Données brutes
│   └── processed/            # Données nettoyées
├── database/
│   ├── create_tables.sql     # Scripts SQL de création des tables
│   └── insert_data.sql       # Insertion des données
├── notebooks/
│   └── pals_eda.ipynb        # Analyse exploratoire
├── .gitignore
├── README.md
├── requirements.txt
└── slides_presentation.pdf   # Présentation finale
```

---

## 🧪 Stack technique

- **SQL** (MariaDB / MySQL)
- **Python 3.10+**
  - pandas, numpy, matplotlib, seaborn, plotly
- **Jupyter Notebook** pour l’analyse
- **Streamlit** pour l’app interactive
- **HeidiSQL** (ou autre outil de gestion de base de données)

---

## 🔍 Analyses réalisées

- Distribution des tailles, rareté, points de vie, puissance, compétences…
- Top 10 des Pals les plus puissants
- Corrélations entre attributs
- Comparaison Pals rapides vs puissants
- Stratégie de capture
- Équipe équilibrée de 5 Pals
- Analyse des boss (Ordinary / Tower)
- Et plus encore...

---

## 🚀 Lancer le projet

### 1. Cloner le dépôt

```bash
git clone https://github.com/ton-utilisateur/pals-analysis.git
cd pals-analysis
```

### 2. Créer un environnement virtuel

```bash
python -m venv venv
venv\Scripts\activate  # Sous Windows
# source venv/bin/activate  # Sous Linux/Mac
```

### 3. Installer les dépendances

```bash
pip install -r requirements.txt
```

### 4. Démarrer l’application Streamlit

```bash
cd app
streamlit run app.py
```

---

## 📊 Résultats

L’interface Streamlit permet d’explorer les données de manière interactive et de filtrer les Pals selon des critères utiles pour le gameplay : rareté, compétences de travail, puissance, vitesse, zones d’apparition, etc.

---

## 📚 Ressources

- [Palworld Fandom Wiki](https://palworld.fandom.com/wiki/Palworld)
- [Documentation Streamlit](https://docs.streamlit.io/)
- [Guide Visualisation](https://www.smashingmagazine.com/2023/01/guide-getting-data-visualization-right/)
- [Blog Streamlit](https://blog.streamlit.io/crafting-a-dashboard-app-in-python-using-streamlit/)

---

## 👨‍💻 Auteurs

Projet réalisé par **Yannis Messadia** et **Amina Taleb**, dans le cadre d’un exercice d’analyse de données.

---

## 📄 Licence

Ce projet est open source, sous licence MIT.