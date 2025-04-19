# Especifica a imagem base
FROM debian:bookworm

ENV DEBIAN_FRONTEND=noninteractive

# Adiciona arquitetura i386
RUN dpkg --add-architecture i386 

# Atualiza os pacotes e realiza o upgrade
RUN apt update && apt upgrade -y

# Adiciona os repositorios contrib e non-free
RUN sed -i 's/Components: main/Components: main contrib non-free-firmware/g' /etc/apt/sources.list.d/debian.sources

# Executa o update apos adicionar novos repositorios
RUN apt update

# Instala os pacotes necessarios
RUN apt install -y --fix-missing libxml-dom-perl libxml2-dev libssl-dev libpcre3-dev
RUN apt install -y --fix-missing libstdc++5 build-essential gcc-multilib g++-multilib libstdc++6 libgcc1
RUN apt install -y --fix-missing zlib1g libncurses5 mc screen htop mono-complete exim4 p7zip* libpcap-dev

RUN apt install -y --fix-missing curl wget ipset net-tools tzdata ntpdate
RUN apt install -y --fix-missing make gcc g++ libssl-dev libcrypto++-dev libpcre3 libpcre3-dev

RUN apt install -y --fix-missing libtesseract-dev libx11-dev gcc-multilib libc6-dev
RUN apt install -y --fix-missing build-essential gcc-multilib g++-multilib libtemplate-plugin-xml-perl libxml2-dev

RUN apt install -y --fix-missing php libapache2-mod-php php-cli php-fpm php-json php-pdo php-zip php-gd php-mbstring
RUN apt install -y --fix-missing php-curl php-xml php-pear php-bcmath php-cgi php-mysqli php-common php-phpseclib php-mysql

RUN apt install -y --fix-missing libdb++-dev libdb-dev libdb5.3 libdb5.3++ libdb5.3++-dev
RUN apt install -y --fix-missing libdb5.3-dbg libdb5.3-dev libmysqlcppconn-dev dos2unix

RUN apt install -y --fix-missing nano git-all mariadb-client

RUN apt install -y --fix-missing make gcc g++ libssl-dev:i386 libssl-dev libcrypto++-dev libpcre3 libpcre3-dev libpcre3:i386 libpcre3-dev:i386 libtesseract-dev libx11-dev:i386 libx11-dev gcc-multilib libc6-dev:i386 build-essential gcc-multilib g++-multilib libtemplate-plugin-xml-perl libxml2-dev libxml2-dev:i386 libxml2:i386 libstdc++6:i386 libmariadb-dev-compat:i386 libmariadb-dev:i386

RUN apt install -y --fix-missing make gcc g++ libssl-dev libssl-dev libcrypto++-dev libpcre3 libpcre3-dev libpcre3 libpcre3-dev libtesseract-dev libx11-dev libx11-dev gcc-multilib libc6-dev build-essential gcc-multilib g++-multilib libtemplate-plugin-xml-perl libxml2-dev libxml2-dev libxml2 libstdc++6 libmariadb-dev-compat libmariadb-dev

RUN apt install -y --fix-missing make gcc g++ libssl-dev:i386 libssl-dev libcrypto++-dev libpcre3 libpcre3-dev libpcre3:i386 libpcre3-dev:i386 libtesseract-dev libx11-dev:i386 libx11-dev gcc-multilib libc6-dev:i386 build-essential gcc-multilib g++-multilib libtemplate-plugin-xml-perl libxml2-dev libxml2-dev:i386 libxml2:i386 libstdc++6:i386 libmariadb-dev-compat:i386 libmariadb-dev:i386

RUN apt install -y --fix-missing make gcc g++ libssl-dev libssl-dev libcrypto++-dev libpcre3 libpcre3-dev libpcre3 libpcre3-dev libtesseract-dev libx11-dev libx11-dev gcc-multilib libc6-dev build-essential gcc-multilib g++-multilib libtemplate-plugin-xml-perl libxml2-dev libxml2-dev libxml2 libstdc++6 libmariadb-dev-compat libmariadb-dev

RUN apt install -y --fix-missing php libapache2-mod-php php-cli php-fpm php-json php-pdo php-zip php-gd  php-mbstring php-curl php-xml php-pear php-bcmath php-cgi php-mysqli php-common php-phpseclib php-mysql

RUN apt install -y --fix-missing php libapache2-mod-php php-cli php-fpm php-json php-pdo php-zip php-gd  php-mbstring php-curl php-xml php-pear php-bcmath php-cgi php-mysqli php-common php-phpseclib php-mysql

RUN apt install -y --fix-missing make gcc g++ libssl-dev libssl-dev libcrypto++-dev libpcre3 libpcre3-dev libpcre3 libpcre3-dev libtesseract-dev libx11-dev libx11-dev gcc-multilib libc6-dev build-essential gcc-multilib g++-multilib libtemplate-plugin-xml-perl libxml2-dev libxml2-dev libxml2 libstdc++6 libmariadb-dev-compat libmariadb-dev

RUN apt install -y --fix-missing php libapache2-mod-php php-cli php-fpm php-json php-pdo php-zip php-gd  php-mbstring php-curl php-xml php-pear php-bcmath php-cgi php-mysqli php-common php-phpseclib php-mysql

RUN apt install -y --fix-missing libxml-dom-perl libxml2-dev:i386 libssl-dev:i386 libpcre3-dev:i386 libstdc++5:i386 build-essential gcc-multilib g++-multilib libstdc++6:i386 libgcc1:i386 zlib1g:i386 libncurses5:i386 -y

RUN apt install -y --fix-missing libdb++-dev:i386 libdb-dev:i386 libdb5.3:i386 libdb5.3++:i386 libdb5.3++-dev:i386 libdb5.3-dbg:i386 libdb5.3-dev:i386

RUN apt install -y --fix-missing libdb++-dev libdb-dev libdb5.3 libdb5.3++ libdb5.3++-dev libdb5.3-dbg libdb5.3-dev

RUN apt install -y --fix-missing libmysqlcppconn-dev

RUN apt install -y --fix-missing mariadb-server mariadb-client mariadb-common

RUN apt install -y --fix-missing libjsoncpp25 libjsoncpp-dev libjsoncpp-doc

RUN apt install -y --fix-missing libcurl4 libcurl4-openssl-dev

RUN apt install -y --fix-missing libmariadb3 libmariadb-dev

RUN apt install -y --fix-missing wget tar xz-utils bash

RUN wget https://github.com/upx/upx/releases/download/v3.96/upx-3.96-amd64_linux.tar.xz

RUN tar -xf upx-3.96-amd64_linux.tar.xz

RUN mv upx-3.96-amd64_linux/upx /usr/local/bin/

RUN rm -r upx-3.96-amd64_linux upx-3.96-amd64_linux.tar.xz

# Cria o diretorio e ajusta as permissoes
RUN mkdir /PWServer && chmod -R 0777 /PWServer

# Cria os links simbolicos
RUN ln -s /PWServer/gamed/libtask.so /lib/libtask.so && ln -s /PWServer/gamed/libskill.so /lib/libskill.so

# Limpa os pacotes nao mais necessorios
RUN apt autoremove -y

# Cria pasta /PWSource
RUN mkdir /PWSource && chmod -R 0777 /PWSource

# Instalacao de Locales e Correcao de Configuracoes
RUN apt-get update && apt-get install -y locales dialog \
    && rm -rf /var/lib/apt/lists/* \
    && sed -i '5,$s/^# \([^ ]\)/\1/' /etc/locale.gen \
    && locale-gen

# Configuracao de variaveis de ambiente para localidade
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_CTYPE=en_US.UTF-8
ENV LC_NUMERIC=en_US.UTF-8
ENV LC_TIME=en_US.UTF-8
ENV LC_COLLATE=en_US.UTF-8
ENV LC_MONETARY=en_US.UTF-8
ENV LC_MESSAGES=en_US.UTF-8
ENV LC_PAPER=en_US.UTF-8
ENV LC_NAME=en_US.UTF-8
ENV LC_ADDRESS=en_US.UTF-8
ENV LC_TELEPHONE=en_US.UTF-8
ENV LC_MEASUREMENT=en_US.UTF-8
ENV LC_IDENTIFICATION=en_US.UTF-8

RUN chmod -R 0777 /PWSource

RUN echo "deb http://deb.debian.org/debian/ bullseye main contrib non-free" >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y gcc-10 g++-10 \
    && sed -i '/bullseye/d' /etc/apt/sources.list \
    && apt-get update && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


# Copia o script de inicialização
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN dos2unix /entrypoint.sh
# Define o script como ponto de entrada
ENTRYPOINT ["/entrypoint.sh"]

CMD ["/bin/bash"]
