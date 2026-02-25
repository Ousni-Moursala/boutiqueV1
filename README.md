# Boutique

[![Flutter](https://img.shields.io/badge/Flutter-3.13-blue?logo=flutter&logoColor=white)](https://flutter.dev/)
[![Licence](https://img.shields.io/badge/License-MIT-green)](LICENSE)

Application mobile Flutter pour gérer une boutique locale, visualiser des produits, et naviguer facilement entre les boutiques.

---

## 📌 Fonctionnalités principales

- **Écran d’accueil (`HomePage`)** :
  - Logo et slogan
  - Boutons "Je me lance" et "Suivant" avec icône
- **Écran liste de boutiques (`EventPage`)** :
  - Affichage d’une liste de boutiques ou produits
  - Chaque élément affiche :
    - Image / logo
    - Nom de la boutique
    - Numéro de téléphone
    - Nombre d’étoiles (rating)
    - Distance
    - Bouton “>” pour accéder aux détails
- **Navigation entre les pages** avec `Navigator.push`  
- **Design moderne** avec `Card`, `Padding`, `ClipRRect` et `IconButton`

---

## 📷 Captures d’écran

### Écran d’accueil
![HomePage](assets/screenshots/home_page.jpeg)

### Liste de boutiques / produits
![EventPage](assets/screenshots/event_page.jpeg)

---

## 💻 Installation et exécution

1. Cloner le dépôt :  
```bash
git clone https://github.com/Ousni-Moursala/boutique.git
