#!/bin/bash

# Vérification de l'environnement Termux
if [[ "$(uname -o)" != "Android" ]]; then
    echo "[-] - This script is only compatible on Termux." && exit 1;
fi

# Vérification de l'architecture
ARCHITECTURE=$(dpkg --print-architecture);
case "$ARCHITECTURE" in
    aarch64 | arm | amd64 | x86_64)
        echo "[+] - Architecture $ARCHITECTURE is supported." ;;
    *)
        echo "[-] - Architecture $ARCHITECTURE is not compatible." && exit 1 ;;
esac

# Connexion à Ubuntu avec proot-distro
echo "[...] - Connecting to Ubuntu, please wait..."
sleep 2
proot-distro login ubuntu

echo "[+] - Successfully logged in to Ubuntu!"

# Reste de votre script ici
