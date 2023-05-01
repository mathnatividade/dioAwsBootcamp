#!/bin/bash



echo "Teste verify permission"
sudo chown root:root publico > /dev/null 2>&1
saidaPP=$?
if [ $saidaPP -eq 0 ] ;
then
   sudo chmod 777 publico
   echo "Permissões da pasta publico alteradas com sucesso"
else
   echo "Erro ao alterar permissões da pasta publico"
   exit
fi