#!/bin/bash

# Vérification de l'existence de Serveur.tar.xz
if [ ! -f "Serveur.tar.xz" ]; then
  echo "Le fichier Serveur.tar.xz est introuvable."
  exit 1
fi

# Mise à jour des paquets et installation de PHP
echo "Mise à jour des paquets et installation de PHP..."
sudo apt update
sudo apt install -y php

# Décompresser le fichier Serveur.tar.xz dans /opt
sudo tar -xaf Serveur.tar.xz -C /opt

# Vérification du succès de la décompression
if [ $? -eq 0 ]; then
  echo "Décompression réussie dans /opt."
else
  echo "Erreur lors de la décompression."
  exit 1
fi
