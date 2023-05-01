#!/bin/bash



echo "Teste verify user create"
sudo useradd carlos -c "Carlos Silva" -G GRP_ADM -s /bin/bash -m -p $(openssl passwd -crypt Senha123) > /dev/null 2>&1
saidaCo=$?
if [ $saidaCo -eq 0 ] ;
then
   sudo passwd carlos -e > /dev/null 2>&1
   echo "Usuário criado com sucesso"
else
   echo "Erro ao criar usuário"
fi