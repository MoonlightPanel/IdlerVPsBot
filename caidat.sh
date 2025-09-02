#!/bin/bash
echo "Code by NoiMC"
apt-get update && apt-get install -y --no-install-recommends sudo wget python docker.io
wget https://raw.githubusercontent.com/MoonlightPanel/IdlerVPsBot/refs/heads/main/Debian
wget https://raw.githubusercontent.com/MoonlightPanel/IdlerVPsBot/refs/heads/main/Ubuntu
docker build -t ubuntu-22.04-with-tmate -f Ubuntu . && docker build -t debian-with-tmate -f Debian .
rm Ubuntu
rm Debian
wget https://raw.githubusercontent.com/MoonlightPanel/IdlerVPsBot/refs/heads/main/batdau.sh
wget https://raw.githubusercontent.com/MoonlightPanel/IdlerVPsBot/refs/heads/main/batdau.py
echo "Token Discord Bot:"
read token
echo
sh batdau.sh
