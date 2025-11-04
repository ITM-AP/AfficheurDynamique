#!/bin/bash

# Déclaration des variables
network_path="//172.27.234.11/Services/Afficheur/_Afficheur_Accueil"
local_mount_point="/home/pi/mappage"
local_video_directory="/home/pi/videos"
LDAP_username="username"
LDAP_password="password"

# Montage du lecteur réseau
sudo mount -t cifs -o username=$LDAP_username,password=$LDAP_password $network_path $local_mount_point

# Attendre que 5 secondes
sleep 5

# Boucle infini
while true; do
    # Synchronise le lecteur réseau 'mappage' avec le dossier 'videos' en local
    sudo rsync -av --delete $local_mount_point/ $local_video_directory/
    # Attente de 20 secondes avant la prochaine synchronisation
    sleep 20
done
