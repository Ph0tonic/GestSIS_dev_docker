#GestSIS_Auth

# Initialisation du fichier de config
cp ./GestSIS_Auth/.env.docker ./GestSIS_Auth/.env

# Config des clés pour GestSIS Auth
mkdir -p ./GestSIS_Auth/storage/keys
cp ./rsa_keys/auth-private.key ./GestSIS_Auth/storage/keys/auth-private.key
cp ./rsa_keys/auth-public.key ./GestSIS_Auth/storage/keys/auth-public.key
