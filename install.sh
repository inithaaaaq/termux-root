#!/bin/bash

if [[ "$(uname -o)" != "Android" ]]; then
    echo "[-] - The script is only compatible on Termux." && exit 1;
else
    echo "[+] - Termux Android is supported."
fi

ARCHITECTURE=$(dpkg --print-architecture);

case "$ARCHITECTURE" in
    aarch64 | arm | amd64 | x86_64)
        echo "[+] - Architecture $ARCHITECTURE is supported." ;;
    *)
        echo "[-] - Architecture $ARCHITECTURE is not compatible." && exit 1 ;;
esac

echo "[...] - Installing proot-distro, please wait..."
sleep 4
pkg install -y proot-distro

echo "[+] Successfully installed !"

echo "[...] - Installing rooted Ubuntu, please wait..."
sleep 4
proot-distro install ubuntu

echo "[+] - Successfully installed !"

echo "[...] - Connecting to Ubuntu, please wait..."
sleep 2
proot-distro login ubuntu

echo "[+] - Successfully logging !"
