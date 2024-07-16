# GestSIS_Print

# Initialisation du fichier de config
cp ./GestSIS_Print/.env.docker ./GestSIS_Print/.env

# Config des clés pour GestSIS API
mkdir -p ./GestSIS_Print/keys
cp ./rsa_keys/auth-public.key ./GestSIS_Print/keys/auth-public.key
