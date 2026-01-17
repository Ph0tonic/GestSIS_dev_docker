.PHONY: up down restart logs clean rebuild pull init help

help:
	@echo "GestSIS Dev - Commandes disponibles:"
	@echo "  make init     - Initialiser le projet (clone + config)"
	@echo "  make up       - Démarrer tous les services"
	@echo "  make down     - Arrêter tous les services"
	@echo "  make restart  - Redémarrer tous les services"
	@echo "  make logs     - Afficher les logs de tous les services"
	@echo "  make pull     - Mettre à jour tous les sous-modules (git pull)"
	@echo "  make clean    - Arrêter et supprimer volumes + dépendances"
	@echo "  make rebuild  - Rebuild tous les containers"
	@echo ""
	@echo "Logs par service:"
	@echo "  make logs-app   - Logs de l'application Vue"
	@echo "  make logs-api   - Logs de l'API Laravel"
	@echo "  make logs-auth  - Logs de l'Auth Laravel"
	@echo "  make logs-alarm - Logs du service Alarm Django"
	@echo "  make logs-db    - Logs de MySQL"

up:
	docker compose up

down:
	docker compose down

restart:
	docker compose restart

logs:
	docker compose logs -f

logs-app:
	docker compose logs -f app

logs-api:
	docker compose logs -f api

logs-auth:
	docker compose logs -f auth

logs-alarm:
	docker compose logs -f alarm

logs-db:
	docker compose logs -f db

logs-doc:
	docker compose logs -f doc

init:
	@./init.sh

pull:
	@echo "📦 Mise à jour des sous-modules..."
	@git submodule update --remote
	@echo "✅ Tous les sous-modules sont à jour"

clean:
	@echo "⚠️  Arrêt des services et suppression des volumes et dépendances..."
	docker compose down -v
	rm -rf GestSIS_API/vendor
	rm -rf GestSIS_Auth/vendor
	rm -rf GestSIS_APP/node_modules
	rm -rf GestSIS_Doc/node_modules
	@echo "✅ Nettoyage terminé"

rebuild:
	docker compose up --build

rebuild-app:
	docker compose up --build app

rebuild-api:
	docker compose up --build api

rebuild-auth:
	docker compose up --build auth

rebuild-alarm:
	docker compose up --build alarm
