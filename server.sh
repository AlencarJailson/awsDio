#! /bin/bash
echo "Atualizando Servidor"

apt update
apt upgrade

echo "Criando Servidor Web"

apt install apache2 -y
apt install unzip -y
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip ./main.zip
cd linux-site-dio-main
cp -R -v ./* /var/www/html/
