#!/bin/bash



echo "Teste verify group create"
groupadd TST > /dev/null 2>&1
saidaCo=$?
if [ $saidaCo -eq 0 ] ;
then
   echo "Grupo criado com sucesso"
else
   echo "Erro ao criar grupo"
fi