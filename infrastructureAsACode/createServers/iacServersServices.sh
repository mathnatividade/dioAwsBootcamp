#!/bin/bash

#Instalar Samba
sudo apt install samba -y

#Criar pasta de compartilhamento
cd /
sudo mkdir /disk2
cd /disk2
sudo mkdir /publico
sudo chmod 777 publico
#sudo nano /etc/samba/smb.conf
cd ~
sudo cat smbConf.txt >> /etc/samba/smb.conf
sudo systemctl restart smbd
sudo systemctl enable smbd

#Instalar Apache
sudo apt install apache2 -y

#Instalar MySQL
sudo apt instal mysql-server-8.0


