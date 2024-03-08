# esx_gym

## Description
Votre ressource de gym pour FiveM est conçue pour permettre aux joueurs d'effectuer différents exercices et de gagner des compétences en fonction des exercices effectués. Les joueurs peuvent interagir avec les marqueurs dans les lieux de gym pour démarrer des exercices et gagner des points de compétences.

## Dépendances
- [gamz-skillsystem](https://github.com/gamziboi/gamz-skillsystem)
- [rpemotes](https://github.com/TayMcKenzieNZ/rpemotes)

## Installation
1. Assurez-vous d'avoir installé les dépendances requises pour que la ressource fonctionne correctement.
2. Téléchargez et placez cette ressource dans le dossier "resources" de votre serveur FiveM.
3. Assurez-vous d'avoir ajouté "ensure esx_gym" dans le fichier server.cfg pour charger la ressource au démarrage du serveur.

## Configuration
1. Ouvrez le fichier `client.lua`.
2. Dans la section `Config.ExerciseAnims`, assurez-vous que les animations sont correctement configurées pour chaque exercice. Si vous utilisez un script comme "rpemotes" pour certaines animations, assurez-vous d'utiliser les noms d'animations appropriés fournis par ce script.
3. Assurez-vous que le script "gamz-skillsystem" est correctement configuré sur votre serveur pour gérer les compétences des joueurs lorsqu'ils effectuent des exercices.
4. Assurez-vous que le script "rpemotes" est correctement configuré sur votre serveur pour gérer les animations des joueurs lorsqu'ils effectuent des exercices.

## Utilisation
1. Les marqueurs d'exercices seront automatiquement affichés dans les lieux de gym définis dans le fichier `config.lua`.
2. Les joueurs peuvent interagir avec les marqueurs en se plaçant à proximité et en appuyant sur la touche [E].
3. Lorsqu'un joueur effectue un exercice, il gagne des points de compétences dans les catégories spécifiées dans le fichier `config.lua`.
4. Les animations appropriées seront jouées lorsque les joueurs effectuent les exercices.

## Crédits
- Auteur de la ressource: ChouCookieSan
- Serveur : CalicoCity
- Script "gamz-skillsystem": https://github.com/gamziboi/gamz-skillsystem
- Script "rpemotes": https://github.com/TayMcKenzieNZ/rpemotes