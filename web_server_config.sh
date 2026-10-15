#!/bin/bash

# Atualizar o servidor (comandos descritos como por um user root)

apt update

apt upgrade -y

# Instalando o apache2 e unzip

apt install -y apache2 unzip

# Baixando a aplicação do endereço em questão

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Descompactando o arquivo copiado

unzip main.zip

# Copiando os arquivos necessários para o diretório padrão do apache

cp -r /tmp/linux-site-dio-main/* /var/www/html/

# Garantindo que o Apache esteja rodando
systemctl enable --now apache2

echo "Instalação e publicação concluídas!"
