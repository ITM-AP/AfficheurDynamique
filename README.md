# Afficheur Dynamique

## PRE-REQUIS
- Raspberry Pi 4 Model B 4 ou 8Go
- Carte SD de 32 Go 
- Télécharger la dernière version de [Raspberry Pi OS Lite](https://www.raspberrypi.com/software/operating-systems/)
- Utiliser [Raspberry Pi Imager](https://www.raspberrypi.com/software/) pour préparer la carte SD avec ces paramètres :
    - Activer le SSH
    - Définir un utilisateur
    - Ne pas configurer le Wi-Fi
    - Définir les réglages locaux (Fuseau horaire et clavier) sur Français
  
## Installation
Connectez-vous en SSH au Raspberry pour exécuter les commandes ci-dessous.
#### Mise à jour de l'OS
```
sudo apt update && sudo apt upgrade
```

#### Installation du lecteur Vidéo (VLC)  :

```
sudo apt install vlc
```

#### Autoriser VLC à s'exécuter au démarrage
```
sudo sed -i 's/geteuid/getppid/' /usr/bin/vlc
```

## Configuration
#### Créer les différents dossier qui seront utilisés :
```
mkdir /home/pi/mappage /home/pi/videos /home/pi/scripts
```

#### Script de mappage :
Créer le script avec la commande ci-dessous qui mappera les vidéos présents sur le serveur et les copiera en local sous /home/pi/videos`
Copier y le modèle présent dans les fichiers de ce repository en adaptant les valeurs 
```
nano SCRIPT_Afficheur.sh
```
