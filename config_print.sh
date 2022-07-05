# GestSIS_API

# Initialisation du fichier de config
cp ./GestSIS_API/.env.docker ./GestSIS_API/.env

# Config des clés pour GestSIS API
mkdir ./GestSIS_Print/keys
cp ./rsa_keys/auth-public.key ./GestSIS_Print/keys/auth-public.key
