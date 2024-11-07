
# Furrunix

Furrunix é um ambiente Linux baseado em `proot` para o Termux. Este repositório contém o rootfs e um script de instalação para configurar e iniciar o ambiente de maneira fácil no Termux.

## Requisitos

- Termux instalado no seu dispositivo Android.
- Acesso à internet para baixar os arquivos necessários.

## Como Usar

### Passo 1: Clonar o Repositório

Clone este repositório no seu dispositivo Termux:

```bash
git clone https://github.com/exfurr-bash/furrunix.git
```
Isso criará uma cópia local do repositório no diretório atual.

### Passo 2: Navegar para o Diretório do Repositório

Mude para o diretório do repositório recém-clonado:

```bash
cd furrunix
```

### Passo 3: Tornar o Script Executável

O script de instalação `install.sh` precisa de permissões para ser executado. Use o comando a seguir para torná-lo executável:

```bash
chmod +x install.sh
```

### Passo 4: Executar o Script de Instalação

Agora, execute o script para baixar o rootfs e configurar o ambiente:

```bash
./install.sh
```

Este script irá:
- Baixar o arquivo `UwU.tar.xz` (o rootfs).
- Descompactá-lo no diretório `furrunix`.
- Criar um script para iniciar o ambiente com `proot`.

### Passo 5: Iniciar o Furrunix

Após a instalação, para iniciar o ambiente Furrunix, basta executar o script criado pelo instalador:

```bash
./start_furrunix.sh
```

Isso iniciará o rootfs com o usuário "furrunix" utilizando o `proot` no Termux.

## Como Funciona

O **Furrunix** utiliza o `proot` para emular um ambiente Linux dentro do Termux. Isso permite que você execute um sistema Linux completo no seu dispositivo Android sem a necessidade de root. O rootfs é um sistema básico que pode ser expandido conforme necessário.

## Contribuição

Se você deseja contribuir para o Furrunix, sinta-se à vontade para abrir issues ou pull requests.








readme made by chatgpt(openai)
99.9% of this distro is from https://github.com/modded-ubuntu/modded-ubuntu
