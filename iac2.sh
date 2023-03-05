#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Baixando e instalando apache2 e unzip..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando o projeto do site..."
cd /temp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando e movendo os arquivos do site para o diretório do apache..."
unzip main.zip

cp -R ./linux-site-dio-main/* /var/www/html
