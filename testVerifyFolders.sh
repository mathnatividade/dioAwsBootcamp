#!/bin/bash



echo "Teste verify folder create"
mkdir publico > /dev/null 2>&1
saidaCo=$?
if [ $saidaCo -eq 0 ] ;
then
   echo "Pasta criada com sucesso"
#elif [ $saidaCo -eq 1 ]
#then
#   echo "Erro ao criar, pasta já existente"
else
   echo "Erro ao criar a pasta"
fi