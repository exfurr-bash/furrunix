#!/bin/bash
apt install -y proot
# Passo 1: Definir o link do rootfs diretamente
ROOTFS_URL="https://github.com/exfurr-bash/furrunix/releases/download/rootfs/UwU.tar.xz"

# Baixando o rootfs
echo "Baixando o rootfs..."
wget -O /data/data/com.termux/files/home/UwU.tar.xz $ROOTFS_URL

# Passo 2: Descompactar o rootfs na pasta furrunix
echo "Descompactando o rootfs..."
mkdir -p /data/data/com.termux/files/home/furrunix
tar -xvJf /data/data/com.termux/files/home/UwU.tar.xz -C /data/data/com.termux/files/home/furrunix

# Passo 3: Criar o comando para iniciar o rootfs com proot
echo "Criando o comando para iniciar o rootfs com proot..."

# Criar um script que inicia o rootfs
cat > /data/data/com.termux/files/home/start_furrunix.sh <<EOL
#!bin/bash
proot -0 -r ~/furrunix -b /dev -b /proc -b /sys -b /storage -w /home/furrunix /bin/su - furrunix
EOL

# Tornar o script executável
chmod +x /data/data/com.termux/files/home/start_furrunix.sh

# Passo 4: Finalizando
echo "Rootfs baixado e descompactado com sucesso!"
echo "Para iniciar o rootfs, execute o comando: bash start_furrunix.sh"


#made with chat gpt thanks for the help :D
