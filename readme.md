# GestSIS dev Docker

Ce repo permet d'automatiser la création de l'environnement de dev pour le projet GestSIS à l'aide de docker.

## Manuel d'utilisation

Une fois le projet cloné, il suffit d'executer une fois le script `init.sh` pour tout configurer :

```sh
./init.sh
```

Ce script va cloner les différents sous-modules requis et les configurer. Une fois cette étape réalisée il ne reste plus qu'à exécuter la comande suivante pour lancer les containers.

```sh
docker-compose up
```

Il est ainsi possible de modifier le code source en live directement depuis cet OS. Voici les urls des différents services :
- APP -> localhost:8080
- API -> localhost:8000
- Auth -> localhost:8001

Un compte de base a été pré-configuré automatiquement :
- email: test@gmail.com
- pwd: apptest

## Arrêt du système

La comande suivante permet d'arrêter les différents containers.

```sh
docker-compose down
```

## Informations complémentaires

Un script de config séparé a été créé pour chaque projet afin qu'il soit possible de reconfigurer un seul projet à la fois.

## Utilisation avec Docker-Desktop et WSL2.0

Attention, le système peut se révéler particulièrement lent si ce projet se trouve sur une partition windows et non pas sur le filesystem de wsl. Faites attention de bien être dans le disque virtuel de votre distro `\\wsl$\DISTRO_NAME` et non pas sur une partition de votre windows monté sur le système linux !

## Idées d'améliorations

- Génération des fichiers .env de config des projets Laravel à la volée.
- Génération d'un script permettant de nettoyer les dépendances des projets notemment le dossier vendor des projets Laravel.
- La config actuelle nécessite deux databases et le fichier de config `docker-compose\mysql\gestsis.sql` est hardcodé.
