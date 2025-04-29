# 🧪 3D Playground – Expérimentations Visuelles avec Godot

**3D_Playgound** est un projet personnel utilisant le moteur **Godot** pour explorer et expérimenter diverses techniques visuelles en 3D. Il sert de terrain d'essai pour des shaders, des scènes dynamiques et des effets visuels, sans contrainte thématique spécifique.

## 🎯 Objectifs

- Expérimenter la création de shaders personnalisés.
- Explorer des scènes 3D dynamiques, comme des systèmes solaires.
- Tester des effets visuels avancés, notamment sur des éléments comme l'eau et le soleil.
- Développer des compétences en GDScript et en conception 3D avec Godot.

## 🧱 Structure du projet

Le dépôt est organisé comme suit :

- `water.gdshader` : Shader générant procéduralement des vagues, simulant une surface d'eau dynamique.
- `test.tscn` & `test.gd` : Scène de test principale intégrant les différents éléments expérimentaux.
- `map.gd` : Script associé à la gestion de la scène ou de la carte.
- `new_fast_noise_lite.tres` & `new_gradient.tres` : Ressources utilisées pour les effets visuels, comme les textures procédurales ou les dégradés.
- `project.godot` : Fichier de configuration principal du projet Godot.
- `icon.svg` & `icon.svg.import` : Icône du projet.

## 🛠️ Technologies utilisées

- **Godot Engine** : Moteur de jeu open-source pour le développement 2D et 3D.
- **GDScript** : Langage de script intégré à Godot, utilisé pour la logique du projet.
- **Shaders personnalisés** : Création de shaders en langage Godot pour des effets visuels spécifiques.

## 🚀 Lancer le projet

1. Assurez-vous d'avoir installé [Godot Engine](https://godotengine.org/download), le projet n'est pas forcément sur la dernière version de Godot.
2. Clonez le dépôt :
   ```bash
   git clone https://github.com/SuperBabaFR/3D_Playgound.git
   ```
3. Ouvrez le projet dans Godot via le fichier `project.godot`.
4. Lancez une des scènes pour explorer les différentes expérimentations visuelles.

## 📄 Licence

Ce projet est réalisé dans un but expérimental et éducatif. Aucune licence spécifique n'est associée pour le moment.
