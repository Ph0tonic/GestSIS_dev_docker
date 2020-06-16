# GestSIS dev Docker

Ce repo permet d'automatiser la création de l'environnement de dev pour le projet GestSIS à l'aide de docker.

## Manuel d'utilisation

Une fois le projet cloné, il suffit d'executer une fois le script `init.sh` pour ce faire:

```sh
chmod +x init.sh
./init.sh
```

Ce script va cloner les différents sous-modules requis et configurer les différents projets. Une fois cette étape réalisée il ne reste plus qu'à exécuter la comande suivante pour lancer les différents containers.

```sh
docker-compose up
```

## Arrêt du système

La comande suivante permet d'arrêter les différents containers.

```sh
docker-compose down
```

## Informations complémentaires

Un script de config séparé a été créé pour chaque projet afin qu'il soit possible de reconfigurer un seul projet à la fois.

## Idées d'améliorations

- Génération des fichiers .env de config des projets Laravel à la volée.
- Génération d'un script permettant de nettoyer les dépendances des projets notemment le dossier vendor des projets Laravel.
- La config actuelle nécessite deux databases et le fichier de config `docker-compose\mysql\gestsis.sql` est hardcodé.

## Utilisation avec Docker-Desktop et WSL2.0

Attention, le système peut se révéler particulièrement lent si ce projet se trouve sur une partition windows et non pas sur le filesystem de wsl. Faites attention de bien être dans le disque virtuel de votre distro `\\wsl$\DISTRO_NAME` et non pas sur une partition de votre windows monté sur le système linux !