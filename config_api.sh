# GestSIS_API

# Initialisation du fichier de config
cp ./GestSIS_API/.env.docker ./GestSIS_API/.env

# Config des clés pour GestSIS API
mkdir -p ./GestSIS_API/storage/keys
cp ./rsa_keys/auth-private.key ./GestSIS_API/storage/keys/auth-private.key
cp ./rsa_keys/auth-public.key ./GestSIS_API/storage/keys/auth-public.key
