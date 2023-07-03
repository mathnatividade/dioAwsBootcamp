# Dio AWS Bootcamp

Bem-vindo ao repositório Dio AWS Bootcamp! Este repositório contém o código e os recursos de vários projetos concluídos durante o AWS Bootcamp na plataforma DIO. Abaixo está a estrutura de diretórios deste repositório:

```
dioAwsBootcamp/
│
├── iacServerlessAWS/
│   └── src/
│       ├── fetchitem.js
│       ├── fetchitems.js
│       ├── handler.js
│       ├── insertitem.js
│       └── updateitem.js
│   └── serverless.yml
│
├── infrastructureAsACode/
│   └── createServers/
│       ├── iacServers.sh
│       ├── notes.sh
│       └── smbConf.txt
│   └── createUsersFoldersPermissions/
│       └── iacUsersFoldersGroups.sh
│
└── README.md
```

## Projeto Serverless da AWS

O diretório `iacServerlessAWS` contém um projeto serverless com funções Lambda da AWS, utilizando o DynamoDB para armazenamento. O arquivo `serverless.yml` configura os recursos e eventos da AWS para as funções Lambda. As funções Lambda são implementadas em Node.js. O arquivo `src/handler.js` manipula os eventos da aplicação.

### Funções Lambda:

1. **hello**: Uma função Lambda simples que responde a solicitações HTTP GET.
2. **insertItem**: Uma função Lambda para inserir itens na tabela DynamoDB.
3. **fetchItems**: Uma função Lambda para buscar todos os itens da tabela DynamoDB.
4. **fetchItem**: Uma função Lambda para buscar um item específico na tabela DynamoDB usando seu ID.
5. **updateItem**: Uma função Lambda para atualizar um item existente na tabela DynamoDB usando seu ID.

### Recursos da AWS:

- **Tabela DynamoDB (ItemTableNew)**: Uma tabela NoSQL usada para armazenar itens, com a chave primária como 'id'.

## Infrastructure as Code

O diretório `infrastructureAsACode` contém scripts em shell para automatizar a configuração de servidores e pastas de usuários com as permissões adequadas.

### Script de Criação de Servidor (`iacServers.sh`):

Este script instala o Apache e o Samba em um servidor Linux, faz o download e implanta uma aplicação do repositório GitHub (linux-site-dio) e inicia o servidor web Apache.

### Instalação do Samba (`notes.sh`):

Este script instala o Samba, cria a pasta de compartilhamento `/disk2/publico` e inicia o serviço do Samba.

### Configuração do Samba (`smbConf.txt`):

Este arquivo contém a configuração para o serviço Samba, permitindo acesso à pasta compartilhada `/disk2/publico` para convidados.

### Script de Criação de Usuário e Pasta (`iacUsersFoldersGroups.sh`):

Este script cria grupos de usuários (`GRP_ADM`, `GRP_VEN`, `GRP_SEC`) e as respectivas pastas (`adm`, `ven`, `sec`) no diretório raiz. Além disso, ele cria usuários específicos em cada grupo e atribui as permissões adequadas às pastas correspondentes.
