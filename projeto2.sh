#!/bin/bash

echo "Atualizando o servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando APACHE..."

apt-get install apache2 -y

echo "Instalando UNZIP..."

apt-get install unzip -y

echo "Baixando aplicação..."

cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

echo "Copiando arquivos no diretório padrão do APACHE..."
cp -R * /var/www/html

echo "Subindo para o GITHUB..."

cd /projeto2/
git init
git add .
git commit -m "Arquivo Projeto2"
git branch -M main
git remote add origin https://github.com/AntonioDCJunior/linux-projeto2.git
git push -u origin main
