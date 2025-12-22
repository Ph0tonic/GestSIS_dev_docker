# Clone des différents modules
git clone git@github.com:Ph0tonic/GestSIS_Auth.git
git clone git@github.com:Ph0tonic/GestSIS_API.git
git clone git@github.com:Ph0tonic/GestSIS_APP.git
git clone git@github.com:Ph0tonic/GestSIS_Alarm.git
git clone git@github.com:Ph0tonic/GestSIS_Doc.git

# Génération d'une nouvelle clé ssh pour le système d'authentification
mkdir rsa_keys
openssl genrsa -out ./rsa_keys/auth-private.key 4096
openssl rsa -pubout -in ./rsa_keys/auth-private.key -out ./rsa_keys/auth-public.key

# Config GestSIS Auth
chmod +x ./config_auth.sh
./config_auth.sh

# Config GestSIS API
chmod +x ./config_api.sh
./config_api.sh

# Config GestSIS APP
chmod +x ./config_app.sh
./config_app.sh

# Config GestSIS Alarm
chmod +x ./config_alarm.sh
./config_alarm.sh