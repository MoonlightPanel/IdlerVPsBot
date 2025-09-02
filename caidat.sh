#!/bin/bash
clear
echo "Code by NoiMC"
apt-get update
apt install docker.io -y
wget https://raw.githubusercontent.com/MoonlightPanel/IdlerVPsBot/refs/heads/main/Debian
wget https://raw.githubusercontent.com/MoonlightPanel/IdlerVPsBot/refs/heads/main/Ubuntu
docker build -t ubuntu-22.04-with-tmate -f Ubuntu . && docker build -t debian-with-tmate -f Debian .
wget https://raw.githubusercontent.com/MoonlightPanel/IdlerVPsBot/refs/heads/main/batdau.sh
wget https://raw.githubusercontent.com/MoonlightPanel/IdlerVPsBot/refs/heads/main/batdau.py
echo "Token Discord Bot:"
read -r DISCORD_TOKEN
sed -i "s/TOKEN = ''/TOKEN = '$DISCORD_TOKEN'/" batdau.py
echo "Đang bắt đầu chạy Bot"
sh batdau.sh
