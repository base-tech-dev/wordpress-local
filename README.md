# Wordpress local com Docker

Este repositório contém instruções para rodar instalações locais do Wordpress usando `docker-compose`, para Windows e Linux.

## Instalação

Baixe o repositório através do download do Github ou rodando o seguinte no seu terminal:

```sh
git clone https://github.com/base-tech-dev/wordpress-local
```

Entre na pasta na pasta do projeto (a que tem um arquivo `docker-compose.yaml`), crie um arquivo `.env` baseado no arquivo `env.example`
```sh
cp env.example .env
```
e configure lá as versões do Wordpress, do PhpMyAdmin e da MariaDB, bem como as credenciais da base de dados.

### Como rodar (Windows)

Entre no terminal (`Windows + R` e digite `powershell` + `<Enter>`).

Vá para o diretório do projeto:
```sh
cd "C:\Users\...\wordpress-local"
```

Rode o script:
```sh
./deploy.ps1
```

Talvez você seja questionado para permitir a execução do script. Digite `r` se isso acontecer. Caso contrário, pule essa etapa:
```sh
[R] Run once ...: r
```

Agora você deve especificar como o seu projeto será rodado localmente pelo `docker-compose`:

Escreva o nome do seu projeto (ele não pode conflitar com nenhum outro grupo de containers do Docker):
```sh
Por favor, digite um nome de projeto: nome_aqui
```

Digite a porta para acessar o Wordpress localmente (um número, entre 1025 e 65535):
```sh
Por favor, digite a porta em que o projeto estará disponível: porta_aqui
```

Digite a porta para acessar o PhpMyAdmin localmente:
```sh
Por favor, digite a porta para o phpmyadmin: porta_aqui
```

E pronto! Agora você já pode acessar o wordpress localmente.

## Acessando o Wordpress

Acesse o seu navegador e digite `http://localhost:<sua_porta_wordpress_aqui>`
