# GestSIS_Alarm

# Initialisation du fichier de config
cp ./GestSIS_Alarm/gestsis_alarm/.env.docker ./GestSIS_Alarm/gestsis_alarm/.env

# Config des clés pour GestSIS API
mkdir ./GestSIS_Alarm/gestsis_alarm/storage/keys
cp ./rsa_keys/auth-public.key ./GestSIS_Alarm/gestsis_alarm/storage/keys/auth-public.key
