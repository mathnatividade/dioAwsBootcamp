#!/bin/bash

#Atualizar sistema
echo "Atualizando sistema"
sudo apt update
sudo apt upgrade -y

#Instalar Apache
echo "Instalando Apache"
sudo apt install apache2 -y

#Instalar unzip
echo "Instalando unzip"
sudo apt install unzip -y

#Acessar pasta temp
echo "Obtendo arquivos do site"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
sudo cp -r * /var/www/html/
sudo service apache2 start
echo "Arquivos obtidos com sucesso, site no ar"
