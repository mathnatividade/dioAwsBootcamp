#!/bin/bash

#Criação de pastas#
echo "Criando pastas na raíz"
cd / #Acessando diretório raíz#

mkdir publico > /dev/null 2>&1
saidaFP=$?
if [ $saidaFP -eq 0 ] ;
then
   echo "Pasta publico criada com sucesso"
else
   echo "Erro ao criar a pasta publico"
fi

mkdir adm > /dev/null 2>&1
saidaFA=$?
if [ $saidaFA -eq 0 ] ;
then
   echo "Pasta adm criada com sucesso"
else
   echo "Erro ao criar a pasta adm"
fi

mkdir ven > /dev/null 2>&1
saidaFV=$?
if [ $saidaFV -eq 0 ] ;
then
   echo "Pasta ven criada com sucesso"
else
   echo "Erro ao criar a pasta ven"
fi

mkdir sec > /dev/null 2>&1
saidaFS=$?
if [ $saidaFS -eq 0 ] ;
then
   echo "Pasta sec criada com sucesso"
else
   echo "Erro ao criar a pasta sec"
fi

cd ~ #Voltando para diretório home do usuário#

#Criação de grupos#
echo "Criando grupos"

groupadd GRP_ADM > /dev/null 2>&1
saidaGA=$?
if [ $saidaGA -eq 0 ] ;
then
   echo "Grupo GRP_ADM criado com sucesso"
else
   echo "Erro ao criar o grupo GRP_ADM"
fi

groupadd GRP_VEN > /dev/null 2>&1
saidaGV=$?
if [ $saidaGV -eq 0 ] ;
then
   echo "Grupo GRP_VEN criado com sucesso"
else
   echo "Erro ao criar o grupo GRP_VEN"
fi

groupadd GRP_SEC > /dev/null 2>&1
saidaGS=$?
if [ $saidaGS -eq 0 ] ;
then
   echo "Grupo GRP_SEC criado com sucesso"
else
   echo "Erro ao criar o grupo GRP_SEC"
fi

#Definindo permissão de pastas#
cd / #Acessando diretório raíz#
echo "Alterando propriedades das pastas"

sudo chown root:root publico > /dev/null 2>&1
saidaPP=$?
if [ $saidaPP -eq 0 ] ;
then
   sudo chmod 777 publico
   echo "Propriedades da pasta publico alteradas com sucesso"
else
   echo "Erro ao alterar propriedades da pasta publico"
   exit
fi

sudo chown root:GRP_ADM adm > /dev/null 2>&1
saidaPA=$?
if [ $saidaPA -eq 0 ] ;
then
   sudo chmod 777 adm
   echo "Propriedades da pasta adm alteradas com sucesso"
else
   echo "Erro ao alterar propriedades da pasta adm"
   exit
fi

sudo chown root:GRP_VEN ven > /dev/null 2>&1
saidaPV=$?
if [ $saidaPV -eq 0 ] ;
then
   sudo chmod 777 ven
   echo "Propriedades da pasta ven alteradas com sucesso"
else
   echo "Erro ao alterar propriedades da pasta ven"
   exit
fi

sudo chown root:GRP_SEC sec > /dev/null 2>&1
saidaPS=$?
if [ $saidaPS -eq 0 ] ;
then
   sudo chmod 777 sec
   echo "Propriedades da pasta sec alteradas com sucesso"
else
   echo "Erro ao alterar propriedades da pasta sec"
   exit
fi

cd ~ #Voltando para diretório home do usuário#

#Criação de usuários#
echo "Criando usuários do  sistema"

#Criando usuários carlos"
sudo useradd carlos -c "Carlos Silva" -G GRP_ADM -s /bin/bash -m -p $(openssl passwd -crypt Senha123) > /dev/null 2>&1
saidaUC=$?
if [ $saidaUC -eq 0 ] ;
then
   sudo passwd carlos -e > /dev/null 2>&1
   echo "Usuário carlos criado com sucesso"
else
   echo "Erro ao criar usuário carlos"
fi

#Criando usuários maria"
sudo useradd maria -c "Maria Silva" -G GRP_ADM -s /bin/bash -m -p $(openssl passwd -crypt Senha123) > /dev/null 2>&1
saidaUC=$?
if [ $saidaUC -eq 0 ] ;
then
   sudo passwd maria -e > /dev/null 2>&1
   echo "Usuário maria criado com sucesso"
else
   echo "Erro ao criar usuário maria"
fi

#Criando usuários joao"
sudo useradd joao -c "João Silva" -G GRP_ADM -s /bin/bash -m -p $(openssl passwd -crypt Senha123) > /dev/null 2>&1
saidaUC=$?
if [ $saidaUC -eq 0 ] ;
then
   sudo passwd joao -e > /dev/null 2>&1
   echo "Usuário joao criado com sucesso"
else
   echo "Erro ao criar usuário joao"
fi

#Criando usuários debora"
sudo useradd debora -c "Débora Costa" -G GRP_VEN -s /bin/bash -m -p $(openssl passwd -crypt Senha123) > /dev/null 2>&1
saidaUC=$?
if [ $saidaUC -eq 0 ] ;
then
   sudo passwd debora -e > /dev/null 2>&1
   echo "Usuário debora criado com sucesso"
else
   echo "Erro ao criar usuário debora"
fi

#Criando usuários sebastiana"
sudo useradd sebastiana -c "Sebastiana Costa" -G GRP_VEN -s /bin/bash -m -p $(openssl passwd -crypt Senha123) > /dev/null 2>&1
saidaUC=$?
if [ $saidaUC -eq 0 ] ;
then
   sudo passwd sebastiana -e > /dev/null 2>&1
   echo "Usuário sebastiana criado com sucesso"
else
   echo "Erro ao criar usuário sebastiana"
fi

#Criando usuários roberto"
sudo useradd roberto -c "Roberto Costa" -G GRP_VEN -s /bin/bash -m -p $(openssl passwd -crypt Senha123) > /dev/null 2>&1
saidaUC=$?
if [ $saidaUC -eq 0 ] ;
then
   sudo passwd roberto -e > /dev/null 2>&1
   echo "Usuário roberto criado com sucesso"
else
   echo "Erro ao criar usuário roberto"
fi

#Criando usuários josefina"
sudo useradd josefina -c "Josefina Oliveira" -G GRP_SEC -s /bin/bash -m -p $(openssl passwd -crypt Senha123) > /dev/null 2>&1
saidaUC=$?
if [ $saidaUC -eq 0 ] ;
then
   sudo passwd josefina -e > /dev/null 2>&1
   echo "Usuário josefina criado com sucesso"
else
   echo "Erro ao criar usuário josefina"
fi

#Criando usuários amanda"
sudo useradd amanda -c "Amanda Oliveira" -G GRP_SEC -s /bin/bash -m -p $(openssl passwd -crypt Senha123) > /dev/null 2>&1
saidaUC=$?
if [ $saidaUC -eq 0 ] ;
then
   sudo passwd amanda -e > /dev/null 2>&1
   echo "Usuário amanda criado com sucesso"
else
   echo "Erro ao criar usuário amanda"
fi

#Criando usuários rogerio"
sudo useradd rogerio -c "Rogério Oliveira" -G GRP_SEC -s /bin/bash -m -p $(openssl passwd -crypt Senha123) > /dev/null 2>&1
saidaUC=$?
if [ $saidaUC -eq 0 ] ;
then
   sudo passwd rogerio -e > /dev/null 2>&1
   echo "Usuário rogerio criado com sucesso"
else
   echo "Erro ao criar usuário rogerio"
fi

echo "Script finalizado"