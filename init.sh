#!/bin/bash
set -e  # Arrêter en cas d'erreur

echo "🚀 Initialisation du projet GestSIS"
echo ""

# Clone des différents modules (submodules)
echo "📦 Initialisation des sous-modules..."
git submodule update --init --recursive
echo "✓ Sous-modules initialisés"
echo ""

# Génération d'une nouvelle clé ssh pour le système d'authentification
echo "🔑 Génération des clés RSA..."
mkdir -p rsa_keys
if [ ! -f rsa_keys/auth-private.key ]; then
    openssl genrsa -out ./rsa_keys/auth-private.key 4096 2>/dev/null
    openssl rsa -pubout -in ./rsa_keys/auth-private.key -out ./rsa_keys/auth-public.key 2>/dev/null
    echo "✓ Clés RSA générées"
else
    echo "✓ Clés RSA déjà existantes"
fi
echo ""

# Configuration de tous les services
echo "⚙️  Configuration des services..."

# GestSIS Auth
if [ -d "GestSIS_Auth" ]; then
    echo "  → GestSIS Auth"
    cp ./GestSIS_Auth/.env.docker ./GestSIS_Auth/.env
    mkdir -p ./GestSIS_Auth/storage/keys
    cp ./rsa_keys/auth-private.key ./GestSIS_Auth/storage/keys/auth-private.key
    cp ./rsa_keys/auth-public.key ./GestSIS_Auth/storage/keys/auth-public.key
fi

# GestSIS API
if [ -d "GestSIS_API" ]; then
    echo "  → GestSIS API"
    cp ./GestSIS_API/.env.docker ./GestSIS_API/.env
    mkdir -p ./GestSIS_API/storage/keys
    cp ./rsa_keys/auth-private.key ./GestSIS_API/storage/keys/auth-private.key
    cp ./rsa_keys/auth-public.key ./GestSIS_API/storage/keys/auth-public.key
fi

# GestSIS APP
if [ -d "GestSIS_APP" ]; then
    echo "  → GestSIS APP"
    cp ./GestSIS_APP/.env.docker ./GestSIS_APP/.env.local
fi

# GestSIS Alarm
if [ -d "GestSIS_Alarm" ]; then
    echo "  → GestSIS Alarm"
    cp ./GestSIS_Alarm/.env.docker ./GestSIS_Alarm/.env
    mkdir -p ./GestSIS_Alarm/storage/keys
    cp ./rsa_keys/auth-public.key ./GestSIS_Alarm/storage/keys/auth-public.key
fi

echo "✓ Configuration terminée"

echo ""
echo "✅ Initialisation terminée!"
echo "Lancez: docker compose up"
