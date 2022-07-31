# GestSIS_Alarm

# Initialisation du fichier de config
cp ./GestSIS_Alarm/.env.docker ./GestSIS_Alarm/.env

# Config des clés pour GestSIS API
mkdir ./GestSIS_Alarm/storage/keys
cp ./rsa_keys/auth-public.key ./GestSIS_Alarm/storage/keys/auth-public.key
