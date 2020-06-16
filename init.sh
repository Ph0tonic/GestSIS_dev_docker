# Clone des différents modules
git clone git@github.com:Ph0tonic/GestSIS_Auth.git
git clone git@github.com:Ph0tonic/GestSIS_API.git
git clone git@github.com:Ph0tonic/GestSIS_APP.git

# Génération d'une nouvelle clé ssh pour le système d'authentification
mkdir rsa_keys
yes n | ssh-keygen -t rsa -b 2048 -f ./rsa_keys/auth.key -q -N ""
chmod a+rw ./rsa_keys/*

# Config GestSIS Auth
chmod +x ./config_auth.sh
./config_auth.sh

# Config GestSIS API
chmod +x ./config_api.sh
./config_api.sh